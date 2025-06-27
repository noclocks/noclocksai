// shinylive-communication.js
// JavaScript for Shiny Assistant app - handles communication with Shinylive iframe
(function(){
  "use strict";

  // 1) Always target the SAME iframe ID
  const IFRAME_ID = "shinylive-frame";

  // Ready flag & queue
  let ready = false,
      queue = null;

  // Grab the iframe once
  function iframeEl() {
    return document.getElementById(IFRAME_ID);
  }

  // Helper to post files into the iframe
  function postFiles(files) {
    const win = iframeEl()?.contentWindow;
    if (!win) {
      console.error("Shinylive iframe not found!");
      return;
    }
    win.postMessage({ type: "setFiles", files }, "*");
  }

  // Listen for shinyliveReady from the iframe
  window.addEventListener("message", (evt) => {
    if (evt.data?.type === "shinyliveReady") {
      ready = true;
      if (queue) {
        postFiles(queue);
        queue = null;
      }
    }
  });

  // Handler: server → client pushes code
  Shiny.addCustomMessageHandler("set-shinylive-content", (msg) => {
    if (ready) {
      postFiles(msg.files);
    } else {
      queue = msg.files;
    }
  });

  // 2) Intercept every chat send to pull current editor code
  Shiny.initializedPromise.then(() => {
    let ctr = 0;
    document.getElementById("chat")
      .addEventListener("shiny-chat-input-sent", async () => {

        // request files
        const win = iframeEl()?.contentWindow;
        if (!win) return;
        const chan = new MessageChannel();
        chan.port1.onmessage = (ev) => {
          // ev.data.files is an array of {name,content,type}
          Shiny.setInputValue("editor_code", ev.data.files, {priority: "event"});
          Shiny.setInputValue("message_trigger", ctr++, {priority: "event"});
          // also stash the latest code for share URL
          Shiny.setInputValue("shinyliveCode", ev.data.files, {priority: "event"});
        };
        win.postMessage({ type: "getFiles" }, "*", [chan.port2]);
      });
  });
})();
