---
mode: agent
tools: ["codebase"]
description: "Test R Package"
---

To test the R package, run the following command from package root:

```pwsh
Rscript -e "devtools::test()"
```

This will execute all unit tests defined in the package.

IMPORTANT: This will take a long time. BE PATIENT AND WAIT FOR IT TO COMPLETE BEFORE MOVING ON.

Be sure to thoroughly review all console output and issues from the test.
