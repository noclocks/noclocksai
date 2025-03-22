Shiny.addCustomMessageHandler("sendToShinylive", function(message) {
  const iframe = document.getElementById("shinylive-frame");

  if (!iframe) {
    console.error("Shinylive iframe not found!");
    return;
  }

  // Wait for iframe to load before sending message
  const sendMessage = function() {
    try {
      console.log("Attempting to send files to iframe:", message.files);
      iframe.contentWindow.postMessage({
        type: "setFiles",
        files: message.files
      }, "*");
      console.log("Message sent successfully");
    } catch (e) {
      console.error("Error sending files to Shinylive iframe:", e);
    }
  };

  //if (iframe.contentDocument && iframe.contentDocument.readyState === "complete") {
    sendMessage();
  //} else {
    //console.log("Iframe not loaded yet, waiting...");
    //iframe.onload = sendMessage;
  //}
});

window.addEventListener("message", function(event) {
  console.log("Received message from iframe:", event.data);

  // Handle any error messages from the iframe
  if (event.data && event.data.type === "error") {
    console.error("Error from Shinylive iframe:", event.data.message);
    Shiny.setInputValue("shinylive_error", event.data.message);
  }
});
