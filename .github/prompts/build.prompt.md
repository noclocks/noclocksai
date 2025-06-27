---
mode: agent
tools: ["codebase"]
description: "Build the R Package."
---

Before building the package you should first perform the following:

1. Ensure Package can load without any issues: `pkgload::load_all()` from the package root.
2. [Document R Package](document.prompt.md) to apply roxygen and update NAMESPACE/DESCRIPTION.
3. [Check R Package](check.prompt.md) to check for issues.
4. [Test R Package](test.prompt.md) to run unit tests.

then, you can build/install the package.

Run from package root:

```pwsh
devtools::build()
```
