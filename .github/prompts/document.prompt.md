---
mode: agent
tools: ["codebase"]
description: "Roxygenize/document the R package."
---
To document the R package, run the following command from the root of the package:

```pwsh
Rscript -e "pkgload::load_all(); attachment::att_amend_desc(); devtools::document()"
```

Then,

- Review the console output for any warnings or errors that may need to be addressed.
- Review any changes in `DESCRIPTION` or `NAMESPACE` and ensure they are valid.
- If needed, update your memory with any relevant details.
