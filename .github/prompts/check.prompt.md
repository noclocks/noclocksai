---
mode: agent
tools: ["codebase"]
description: "Check the R Package"
---

To check the R package, run the following command from package root:

```pwsh
Rscript -e "devtools::check()"
```

IMPORTANT: This will take a long time. BE PATEIENT AND WAIT FOR IT TO COMPLETE BEFORE MOVING ON.

Be sure to thoroughly review all console output and issues from the check.
