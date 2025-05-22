This file is a merged representation of the entire codebase, combined into a single document by Repomix.
The content has been processed where security check has been disabled.

# File Summary

## Purpose
This file contains a packed representation of the entire repository's contents.
It is designed to be easily consumable by AI systems for analysis, code review,
or other automated processes.

## File Format
The content is organized as follows:
1. This summary section
2. Repository information
3. Directory structure
4. Multiple file entries, each consisting of:
  a. A header with the file path (## File: path/to/file)
  b. The full contents of the file in a code block

## Usage Guidelines
- This file should be treated as read-only. Any changes should be made to the
  original repository files, not this packed version.
- When processing this file, use the file path to distinguish
  between different files in the repository.
- Be aware that this file may contain sensitive information. Handle it with
  the same level of security as you would the original repository.

## Notes
- Some files may have been excluded based on .gitignore rules and Repomix's configuration
- Binary files are not included in this packed representation. Please refer to the Repository Structure section for a complete list of file paths, including binary files
- Files matching patterns in .gitignore are excluded
- Files matching default ignore patterns are excluded
- Security check has been disabled - content may contain sensitive information
- Files are sorted by Git change count (files with more changes are at the bottom)

## Additional Info

# Directory Structure
```
.github/
  workflows/
    live-api.yaml
    pkgdown.yaml
    pr-commands.yaml
    R-CMD-check.yaml
  .gitignore
data-raw/
  openai.csv
  prices.R
inst/
  examples/
    third-party-testing.txt
  tool_prompt.md
man/
  figures/
    lifecycle-deprecated.svg
    lifecycle-experimental.svg
    lifecycle-stable.svg
    lifecycle-superseded.svg
  batch_chat.Rd
  chat_anthropic.Rd
  chat_aws_bedrock.Rd
  chat_azure_openai.Rd
  chat_cloudflare.Rd
  chat_cortex_analyst.Rd
  chat_databricks.Rd
  chat_deepseek.Rd
  chat_github.Rd
  chat_google_gemini.Rd
  chat_groq.Rd
  chat_huggingface.Rd
  chat_mistral.Rd
  chat_ollama.Rd
  chat_openai.Rd
  chat_openrouter.Rd
  chat_perplexity.Rd
  chat_portkey.Rd
  chat_snowflake.Rd
  chat_vllm.Rd
  Chat.Rd
  content_image_url.Rd
  content_pdf_file.Rd
  Content.Rd
  contents_text.Rd
  create_tool_def.Rd
  deprecated.Rd
  ellmer-package.Rd
  google_upload.Rd
  has_credentials.Rd
  interpolate.Rd
  live_console.Rd
  parallel_chat.Rd
  params.Rd
  Provider.Rd
  token_usage.Rd
  tool_annotations.Rd
  tool_reject.Rd
  tool.Rd
  Turn.Rd
  type_boolean.Rd
  Type.Rd
pkgdown/
  favicon/
    favicon.svg
    site.webmanifest
R/
  as-json.R
  batch-chat.R
  chat-parallel.R
  chat-structured.R
  chat.R
  content-image.R
  content-pdf.R
  content-tools.R
  content.R
  deprecated.R
  ellmer-package.R
  httr2.R
  import-standalone-obj-type.R
  import-standalone-purrr.R
  import-standalone-types-check.R
  interpolate.R
  params.R
  provider-azure.R
  provider-bedrock.R
  provider-claude.R
  provider-cloudflare.R
  provider-cortex.R
  provider-databricks.R
  provider-deepseek.R
  provider-gemini-upload.R
  provider-gemini.R
  provider-github.R
  provider-groq.R
  provider-huggingface.r
  provider-mistral.R
  provider-ollama.R
  provider-openai.R
  provider-openrouter.R
  provider-perplexity.R
  provider-portkey.R
  provider-snowflake.R
  provider-vllm.R
  provider.R
  shiny.R
  tokens.R
  tools-def-auto.R
  tools-def.R
  turns.R
  types.R
  utils-callbacks.R
  utils-cat.R
  utils-coro.R
  utils-merge.R
  utils-prettytime.R
  utils-S7.R
  utils.R
  zzz.R
revdep/
  .gitignore
  cran.md
  failures.md
  problems.md
  README.md
tests/
  testthat/
    _snaps/
      batch-chat.md
      chat-structured.md
      chat.md
      content-image.md
      content-tools.md
      content.md
      interpolate.md
      params.md
      provider-azure.md
      provider-bedrock.md
      provider-claude.md
      provider-cloudflare.md
      provider-cortex.md
      provider-databricks.md
      provider-deepseek.md
      provider-gemini.md
      provider-groq.md
      provider-huggingface.md
      provider-mistral.md
      provider-ollama.md
      provider-openai.md
      provider-openrouter.md
      provider-portkey.md
      provider-snowflake.md
      tokens.md
      tools-def-auto.md
      tools-def.md
      turns.md
      utils-callbacks.md
      utils-cat.md
      utils-S7.md
      utils.md
    batch/
      state-capitals.json
      state-name.json
    helper-async.R
    helper-chat.R
    helper-content-tools.R
    helper-provider.R
    teardown-usage.R
    test-as-json.R
    test-batch-chat.R
    test-chat-parallel.R
    test-chat-structured.R
    test-chat.R
    test-content-image.R
    test-content-pdf.R
    test-content-tools.R
    test-content.R
    test-deprecated.R
    test-interpolate.R
    test-params.R
    test-provider-azure.R
    test-provider-bedrock.R
    test-provider-claude.R
    test-provider-cloudflare.R
    test-provider-cortex.R
    test-provider-databricks.R
    test-provider-deepseek.R
    test-provider-gemini-upload.R
    test-provider-gemini.R
    test-provider-github.R
    test-provider-groq.R
    test-provider-huggingface.R
    test-provider-mistral.R
    test-provider-ollama.R
    test-provider-openai.R
    test-provider-openrouter.R
    test-provider-portkey.R
    test-provider-snowflake.R
    test-provider-vllm.R
    test-tokens.R
    test-tools-def-auto.R
    test-tools-def.R
    test-turns.R
    test-utils-callbacks.R
    test-utils-cat.R
    test-utils-merge.R
    test-utils-S7.R
    test-utils.R
    tools-def.R
  testthat.R
vignettes/
  prompt-design_cache/
    html/
      __packages
  structured-data_cache/
    html/
      __packages
  .gitignore
  ellmer.Rmd
  programming.Rmd
  prompt-design.Rmd
  streaming-async.Rmd
  structured-data.Rmd
  tool-calling-right.svg
  tool-calling-wrong.svg
  tool-calling.Rmd
_pkgdown.yml
.gitignore
.Rbuildignore
codecov.yml
cran-comments.md
CRAN-SUBMISSION
DESCRIPTION
ellmer.Rproj
LICENSE
LICENSE.md
NAMESPACE
NEWS.md
README.md
README.Rmd
```

# Files

## File: .github/workflows/live-api.yaml
`````yaml
# Workflow derived from https://github.com/r-lib/actions/tree/v2/examples
# Need help debugging build failures? Start at https://github.com/r-lib/actions#where-to-find-help
#
# NOTE: This workflow is overkill for most R packages and
# check-standard.yaml is likely a better choice.
# usethis::use_github_action("check-standard") will install it.
on:
  push:
    branches: main
  pull_request:
    branches: main

name: live-api.yaml

jobs:
  live-api:
    runs-on: ubuntu-latest

    env:
      GITHUB_PAT: ${{ secrets.GITHUB_TOKEN }}
      OPENAI_API_KEY: ${{ secrets.OPENAI_API_KEY }}
      GOOGLE_API_KEY: ${{ secrets.GOOGLE_API_KEY }}
      ANTHROPIC_API_KEY: ${{ secrets.ANTHROPIC_API_KEY }}
      AZURE_OPENAI_API_KEY: ${{ secrets.AZURE_OPENAI_API_KEY }}
      R_KEEP_PKG_SOURCE: yes

    steps:
      - uses: actions/checkout@v3

      - uses: r-lib/actions/setup-pandoc@v2

      - uses: r-lib/actions/setup-r@v2
        with:
          r-version: release
          http-user-agent: ${{ matrix.config.http-user-agent }}
          use-public-rspm: true

      - uses: r-lib/actions/setup-r-dependencies@v2
        with:
          extra-packages: any::rcmdcheck
          needs: check

      - uses: r-lib/actions/check-r-package@v2
        with:
          upload-snapshots: true
`````

## File: .github/workflows/pkgdown.yaml
`````yaml
# Workflow derived from https://github.com/r-lib/actions/tree/v2/examples
# Need help debugging build failures? Start at https://github.com/r-lib/actions#where-to-find-help
on:
  push:
    branches: [main, master]
  pull_request:
    branches: [main, master]
  release:
    types: [published]
  workflow_dispatch:

name: pkgdown.yaml

permissions: read-all

jobs:
  pkgdown:
    runs-on: ubuntu-latest
    # Only restrict concurrency for non-PR jobs
    concurrency:
      group: pkgdown-${{ github.event_name != 'pull_request' || github.run_id }}
    env:
      GITHUB_PAT: ${{ secrets.GITHUB_TOKEN }}
      OPENAI_API_KEY: ${{ secrets.OPENAI_API_KEY }}
      ANTHROPIC_API_KEY: ${{ secrets.ANTHROPIC_API_KEY }}
    permissions:
      contents: write
    steps:
      - uses: actions/checkout@v4

      - uses: r-lib/actions/setup-pandoc@v2

      - uses: r-lib/actions/setup-r@v2
        with:
          use-public-rspm: true

      - uses: r-lib/actions/setup-r-dependencies@v2
        with:
          extra-packages: any::pkgdown, local::.
          needs: website

      - name: Build site
        run: pkgdown::build_site_github_pages(new_process = FALSE, install = FALSE)
        shell: Rscript {0}

      - name: Deploy to GitHub pages 🚀
        if: github.event_name != 'pull_request'
        uses: JamesIves/github-pages-deploy-action@v4.5.0
        with:
          clean: false
          branch: gh-pages
          folder: docs
`````

## File: .github/workflows/pr-commands.yaml
`````yaml
# Workflow derived from https://github.com/r-lib/actions/tree/v2/examples
# Need help debugging build failures? Start at https://github.com/r-lib/actions#where-to-find-help
on:
  issue_comment:
    types: [created]

name: pr-commands.yaml

permissions: read-all

jobs:
  document:
    if: ${{ github.event.issue.pull_request && (github.event.comment.author_association == 'MEMBER' || github.event.comment.author_association == 'OWNER') && startsWith(github.event.comment.body, '/document') }}
    name: document
    runs-on: ubuntu-latest
    env:
      GITHUB_PAT: ${{ secrets.GITHUB_TOKEN }}
    permissions:
      contents: write
    steps:
      - uses: actions/checkout@v4

      - uses: r-lib/actions/pr-fetch@v2
        with:
          repo-token: ${{ secrets.GITHUB_TOKEN }}

      - uses: r-lib/actions/setup-r@v2
        with:
          use-public-rspm: true

      - uses: r-lib/actions/setup-r-dependencies@v2
        with:
          extra-packages: any::roxygen2
          needs: pr-document

      - name: Document
        run: roxygen2::roxygenise()
        shell: Rscript {0}

      - name: commit
        run: |
          git config --local user.name "$GITHUB_ACTOR"
          git config --local user.email "$GITHUB_ACTOR@users.noreply.github.com"
          git add man/\* NAMESPACE
          git commit -m 'Document'

      - uses: r-lib/actions/pr-push@v2
        with:
          repo-token: ${{ secrets.GITHUB_TOKEN }}

  style:
    if: ${{ github.event.issue.pull_request && (github.event.comment.author_association == 'MEMBER' || github.event.comment.author_association == 'OWNER') && startsWith(github.event.comment.body, '/style') }}
    name: style
    runs-on: ubuntu-latest
    env:
      GITHUB_PAT: ${{ secrets.GITHUB_TOKEN }}
    permissions:
      contents: write
    steps:
      - uses: actions/checkout@v4

      - uses: r-lib/actions/pr-fetch@v2
        with:
          repo-token: ${{ secrets.GITHUB_TOKEN }}

      - uses: r-lib/actions/setup-r@v2

      - name: Install dependencies
        run: install.packages("styler")
        shell: Rscript {0}

      - name: Style
        run: styler::style_pkg()
        shell: Rscript {0}

      - name: commit
        run: |
          git config --local user.name "$GITHUB_ACTOR"
          git config --local user.email "$GITHUB_ACTOR@users.noreply.github.com"
          git add \*.R
          git commit -m 'Style'

      - uses: r-lib/actions/pr-push@v2
        with:
          repo-token: ${{ secrets.GITHUB_TOKEN }}
`````

## File: .github/workflows/R-CMD-check.yaml
`````yaml
# Workflow derived from https://github.com/r-lib/actions/tree/v2/examples
# Need help debugging build failures? Start at https://github.com/r-lib/actions#where-to-find-help
#
# NOTE: This workflow is overkill for most R packages and
# check-standard.yaml is likely a better choice.
# usethis::use_github_action("check-standard") will install it.
on:
  push:
    branches: [main, master]
  pull_request:
    branches: [main, master]

name: R-CMD-check.yaml

permissions: read-all

jobs:
  R-CMD-check:
    runs-on: ${{ matrix.config.os }}

    name: ${{ matrix.config.os }} (${{ matrix.config.r }})

    strategy:
      fail-fast: false
      matrix:
        config:
          - { os: macos-latest, r: "release" }

          - { os: windows-latest, r: "release" }

          - { os: ubuntu-latest, r: "devel", http-user-agent: "release" }
          - { os: ubuntu-latest, r: "release" }
          - { os: ubuntu-latest, r: "oldrel-1" }
          - { os: ubuntu-latest, r: "oldrel-2" }
          - { os: ubuntu-latest, r: "oldrel-3" }
          - { os: ubuntu-latest, r: 'oldrel-4' }

    env:
      GITHUB_PAT: ${{ secrets.GITHUB_TOKEN }}
      R_KEEP_PKG_SOURCE: yes

    steps:
      - uses: actions/checkout@v4

      - uses: r-lib/actions/setup-pandoc@v2

      - uses: r-lib/actions/setup-r@v2
        with:
          r-version: ${{ matrix.config.r }}
          http-user-agent: ${{ matrix.config.http-user-agent }}
          use-public-rspm: true

      - uses: r-lib/actions/setup-r-dependencies@v2
        with:
          extra-packages: any::rcmdcheck
          needs: check

      - uses: r-lib/actions/check-r-package@v2
        with:
          upload-snapshots: true
          build_args: 'c("--no-manual","--compact-vignettes=gs+qpdf")'
`````

## File: .github/.gitignore
`````
*.html
`````

## File: data-raw/openai.csv
`````
model,cached_input,input,output
gpt-4.5-preview,37.50,75.00,150.00
gpt-4.5-preview-2025-02-27,37.50,75.00,150.00
gpt-4.1,0.50,2.00,8.00
gpt-4.1-mini,0.10,0.40,1.60
gpt-4.1-nano,0.025,0.10,0.40
gpt-4.1-2025-04-14,0.50,2.00,8.00
gpt-4.1-mini-2025-04-14,0.10,0.40,1.60
gpt-4.1-nano-2025-04-14,0.025,0.10,0.40
gpt-4o,1.25,2.50,10.00
gpt-4o-2024-11-20,1.25,2.50,10.00
gpt-4o-2024-08-06,1.25,2.50,10.00
gpt-4o-2024-05-13,,5.00,15.00
gpt-4o-mini,0.075,0.15,0.60
gpt-4o-mini-2024-07-18,0.075,0.15,0.60
o1,7.50,15.00,60.00
o1-2024-12-17,7.50,15.00,60.00
o1-preview-2024-09-12,7.50,15.00,60.00
o1-pro,,150.00,600.00
o1-pro-2025-03-19,,150.00,600.00
o3-mini,0.55,1.10,4.40
o3-mini-2025-01-31,0.55,1.10,4.40
o1-mini,0.55,1.10,4.40
o1-mini-2024-09-12,0.55,1.10,4.40
gpt-4o-mini-search-preview,,0.15,0.60
gpt-4o-mini-search-preview-2025-03-11,,0.15,0.60
gpt-4o-search-preview,,2.50,10.00
gpt-4o-search-preview-2025-03-11,,2.50,10.00
computer-use-preview,,3.00,12.00
computer-use-preview-2025-03-11,,3.00,12.00
`````

## File: data-raw/prices.R
`````r
library(rvest)
library(httr2)
library(dplyr)

# OpenAI -----------------------------------------------------------------------

# Can't download with httr2/rvest: {curl} doesn't support brotli encoding
# Can't download with curl: as page requires javascript
# Can't download with safari: saved page doesn't contain any content
# So used ChatGPT with pasted HTML at
# https://chatgpt.com/share/67ed88c3-3b10-8009-a4e5-b62fc99f3d26

# https://platform.openai.com/docs/pricing
openai <- readr::read_csv("data-raw/openai.csv")

# Anthropic --------------------------------------------------------------------

# Same problem as OpenAI website so do it BY FUCKING HAND

# https://www.anthropic.com/pricing#anthropic-api

# fmt: skip
anthropic <- tribble(
  ~model, ~cached_input, ~input, ~output,
  "claude-3-7-sonnet",0.3,3,15,
  "claude-3-5-sonnet",0.3,3,15,
  "claude-3-5-haiku",0.08,0.80,4,
  "claude-3-opus",1.5,15,75,
  "claude-3-haiku",0.03,0.25,1.25
)

# Gemini -----------------------------------------------------------------------

# fmt: skip
gemini <- tribble(
  ~model, ~cached_input, ~input, ~output,
  "gemini-2.0-flash",0.025,0.10,0.40,
  "gemini-2.0-flash-lite",NA,0.075,0.30,
  "gemini-1.5-flash",NA,0.3,0.075
)

prices <- bind_rows(
  openai |> mutate(provider = "OpenAI", .before = 1),
  anthropic |> mutate(provider = "Anthropic"),
  gemini |> mutate(provider = "Google/Gemini")
)

usethis::use_data(prices, overwrite = TRUE, internal = TRUE)
`````

## File: inst/examples/third-party-testing.txt
`````
Policy
Third-party testing as a key ingredient of AI policy
Mar 25, 2024●18 min read

We believe that the AI sector needs effective third-party testing for frontier AI systems. Developing a testing regime and associated policy interventions based on the insights of industry, government, and academia is the best way to avoid societal harm—whether deliberate or accidental—from AI systems.

Our deployment of large-scale, generative AI systems like Claude has shown us that work is needed to set up the policy environment to respond to the capabilities of today’s most powerful AI models, as well as those likely to be built in the future. In this post, we discuss what third-party testing looks like, why it’s needed, and describe some of the research we’ve done to arrive at this policy position. We also discuss how ideas around testing relate to other topics on AI policy, such as openly accessible models and issues of regulatory capture.

Policy overview

Today’s frontier AI systems demand a third-party oversight and testing regime to validate their safety. In particular, we need this oversight for understanding and analyzing model behavior relating to issues like election integrity, harmful discrimination, and the potential for national security misuse. We also expect more powerful systems in the future will demand deeper oversight - as discussed in our ‘Core views on AI safety’ post, we think there’s a chance that today’s approaches to AI development could yield systems of immense capability, and we expect that increasingly powerful systems will need more expansive testing procedures. A robust, third-party testing regime seems like a good way to complement sector-specific regulation as well as develop the muscle for policy approaches that are more general as well.

Developing a third-party testing regime for the AI systems of today seems to give us one of the best tools to manage the challenges of AI today, while also providing infrastructure we can use for the systems of the future. We expect that ultimately some form of third-party testing will be a legal requirement for widely deploying AI models, but designing this regime and figuring out exactly what standards AI systems should be assessed against is something we’ll need to iterate on in the coming years - it’s not obvious what would be appropriate or effective today, and the way to learn that is to prototype such a regime and generate evidence about it.

An effective third-party testing regime will:

Give people and institutions more trust in AI systems
Be precisely scoped, such that passing its tests is not so great a burden that small companies are disadvantaged by them
Be applied only to a narrow set of the most computationally-intensive, large-scale systems; if implemented correctly, the vast majority of AI systems would not be within the scope of such a testing regime
Provide a means for countries and groups of countries to coordinate with one another via developing shared standards and experimenting with Mutual Recognition agreements

Such a regime will have the following key ingredients [1]:

Effective and broadly-trusted tests for measuring the behavior and potential misuses of a given AI system
Trusted and legitimate third-parties who can administer these tests and audit company testing procedures
Why we need an effective testing regime

This regime is necessary because frontier AI systems—specifically, large-scale generative models that consume substantial computational resources—don’t neatly fit into the use-case and sector-specific frameworks of today. These systems are designed to be 'everything machines' - Gemini, ChatGPT, and Claude can all be adapted to a vast number of downstream use-cases, and the behavior of the downstream systems always inherits some of the capabilities and weaknesses of the frontier system it relies on.

These systems are extremely capable and useful, but they also present risks for serious misuse or AI-caused accidents. We want to help come up with a system that greatly reduces the chance of major misuses or accidents caused by AI technology, while still allowing for the wide deployment of its beneficial aspects. In addition to obviously wanting to prevent major accidents or misuse for its own sake, major incidents are likely to lead to extreme, knee-jerk regulatory actions, leading to a 'worst of both worlds' where regulation is both stifling and ineffective. We believe it is better for multiple reasons to proactively design effective and carefully thought through regulation.

Systems also have the potential to display emergent, autonomous behaviors which could lead to serious accidents - for instance, systems might insert vulnerabilities into code that they are asked to produce or, when asked to carry out a complex task with many steps, carry some actions which contradict human intentions. Though these kinds of behaviors are inherently hard to measure, it’s worth developing tools to measure for them today as insurance against these manifesting in widely deployed systems.

At Anthropic, we’ve implemented self-governance systems that we believe should meaningfully reduce the risk of misuse or accidents from the technologies we’ve developed. Our main approach is our Responsible Scaling Policy (RSP), which commits us to testing our frontier systems, like Claude, for misuses and accident risks, and to deploy only models that pass our safety tests. Multiple other AI developers have subsequently adopted or are adopting frameworks that bear a significant resemblance to Anthropic's RSP.

However, although Anthropic is investing in our RSP (and other organizations are doing the same), we believe that this type of testing is insufficient as it relies on self-governance decisions made by single, private sector actors. Ultimately, testing will need to be done in a way which is broadly trusted, and it will need to be applied to everyone developing frontier systems. This type of industry-wide testing approach isn’t unusual - most important sectors of the economy are regulated via product safety standards and testing regimes, including food, medicine, automobiles, and aerospace.

What would a robust testing regime look like?

A robust third-party testing regime can help identify and prevent the potential risks of AI systems. It will require:

A shared understanding across industry, government, and academia of what an AI safety testing framework looks like - what it should and shouldn’t include
An initial period where companies complete practice runs of implementing such testing, sometimes with third-party oversight, to make sure the tests work, are feasible to run, and can be validated by a third party
A two-stage testing regime: there should be a very fast, automated testing stage that companies apply to their systems. This stage should cover a wide area and be biased towards avoiding false negatives. If this stage spots potential problems, there should be a more thorough secondary test, likely using expert human-led elicitation
Increased resources to the parts of government that will oversee and validate tests - building and analyzing tests is detailed, expensive, technical work, so governments will need to find a way to fund the entities that do this
A carefully scoped set of mandated tests - we’ll need specific, legally mandated tests where it becomes clear there are poor incentives for industry self-governance, and the benefits of public safety from government oversight outweigh the regulatory burdens. We should ensure this is a well scoped, small set of tests, or else we’ll create regulatory burdens and increase the possibility of regulatory capture
An effective balance of the assurance of safety with ease of administration of these tests

When it comes to tests, we can already identify one area today where testing by third-parties seems helpful and draws on the natural strengths of governments: national security risks. We should identify a set of AI capabilities that, if misused, could compromise national security, then test our systems for these capabilities. Such capabilities might include the ability to meaningfully speed up the creation of bioweapons or to carry out complex cyberattacks. (If systems are capable of this, then that would lead to us changing how we deployed the model - e.g, remove certain capabilities from broadly deployed models and/or gate certain model capabilities behind ‘know your customer’ regimes, and ensuring relevant government agencies were aware we had systems with these capabilities.) We expect there are several areas where society will ultimately demand there be legitimate, third-party testing approaches, and national security is just one of them.

When it comes to the third party doing the testing, there will be a multitude of them and the tests will be carried out for different reasons, which we outline here:

Private companies: Companies may subcontract other companies to build tests and evaluations for their systems, as we have done with firms like Gryphon Scientific. We can also imagine companies doing tests for other companies where the tests are mandated by law but not carried out by government agencies, similar to how accounting firms audit the books of private companies.
Universities: Today, many researchers at many academic institutions have free or subsidized access to models developed by AI labs; in the future, we could imagine some of these research institutions administering their own testing initiatives, some of which may be supervised or elevated via government bodies.
Governments: Some tests (we suspect, a relatively small number) may be mandated by law and carried out by government actors - for instance, for testing for national security misuses of AI systems. Here, government agencies may carry out the tests directly.

Ultimately, we expect that third-party testing will be accomplished by a diverse ecosystem of different organizations, similar to how product safety is achieved in other parts of the economy today. Because broadly commercialized, general purpose AI is a relatively new technology, we don’t think the structure of this ecosystem is clear today and it will become clearer through all the actors above running different testing experiments. We need to start working on this testing regime today, because it will take a long time to build.

We believe that we - and other participants in AI development - will need to run multiple testing experiments to get this right. The stakes are high: if we land on an approach that doesn’t accurately measure safety but is easy to administer, we risk not doing anything substantive or helpful. If we land on an approach that accurately measures safety but is hard to administer, we risk creating a testing ecosystem that favors companies with greater resources and thus reduces the ability for smaller actors to participate.

How Anthropic will support fair, effective testing regimes

In the future, Anthropic will carry out the following activities to support governments in the development of effective third-party testing regimes:

Prototyping a testing regime via implementing our RSP and sharing what we learn
Testing third-party assessment of our systems via contractors and government partners
Deepening our frontier red teaming work to give us and the broader sector a clearer sense of the risks of AI systems and their mitigations
Advocating for governments to fund the agencies and organizations that could help to develop an effective third-party testing regime (e.g, in the United States, NIST, the US AI Safety Institute, the National AI Research Resource, the usage of DoE supercomputers for AI testing, and so on)
Encouraging governments to build their own ‘National Research Clouds’ (like the National AI Research Resource in the US) so that they can a) develop independent capacity in academia and government to build, study, and test frontier AI systems, and b) work on the science of evaluating AI systems, including those developed by private companies like Anthropic

Developing a testing regime and associated policy interventions based on the insights of industry, government, and academia is the best way to avoid societal harm—whether deliberate or accidental—from AI systems.

How testing connects to our broader policy priorities

Our overarching policy goal is to have appropriate oversight of the AI sector. We believe this will mostly be achieved via there being an effective ecosystem for third-party testing and evaluation of AI systems. Here are some AI policy ideas you can expect to see us advocating for in support of that:

Greater funding for AI testing and evaluation in government

Effective testing and evaluation procedures are a necessary prerequisite of any effective form of AI policy. We think that governments should stand up and support institutions that develop AI evaluations, as well as bringing together industry, academia, and other stakeholders to agree on standards for the safety of AI systems. In the US, we specifically advocate for greater funding for NIST.

Support greater evaluation of AI systems through public sector infrastructure for doing AI research

We urgently need to increase the number and breadth of people working to test and evaluate AI systems, for both current and future risks. It’s therefore crucial that governments create experimental infrastructure to help academic researchers test out and evaluate frontier AI systems, and develop their own frontier systems for beneficial purposes. For more information, see our support for a US national research cloud via the CREATE AI Act, and our written Senate testimony.

Developing tests for specific, national security-relevant capabilities

We should know if AI systems can be used in ways that strengthen or (if fielded by another entity) weaken national security. Whereas the private sector and academia can develop the vast majority of tests, some testing and evaluation questions relate to national security capabilities which are classified, so only certain governments are able to effectively evaluate them. Therefore, we want to support US Government efforts to develop ways of testing AI systems for national security-relevant capabilities. We will also continue our own work to better understand the capabilities of our own systems.

Scenario planning and test development for increasingly advanced systems

Our Responsible Scaling Policy is designed to frontload work about evaluating and testing future, hypothetical capabilities of AI systems. This is to ensure we have the relevant tests to better assess and minimize accident and misuse risks from increasingly powerful AI systems. But we don’t claim that our RSP delineates all the tests that need to be run on increasingly powerful models. As AI advances driven by growing computational power increase, a broader set of actors should work to anticipate the future capabilities of AI systems, and develop tests for them.
Aspects of AI policy we believe are important to discuss

While developing our policy approach, we’ve also found ourselves returning again and again to a few specific issues such as openly accessible models and regulatory capture. We’ve outlined our current policy thinking below but recognize these are complicated issues where people often disagree.

Openly-disseminated and/or open-source models: Science moves forward largely due to a culture of openness and transparency around research. This is especially true in AI, where much of the currently-unfolding revolution is built on the open publication of research and models like the Transformer, BERT, Vision Transformers, and so on. There is also a long history of open source and openly accessible systems increasing the robustness of the security environment by helping a greater number of people experiment with technologies and identify their potential weaknesses.

We believe that the vast majority of AI systems today (perhaps even all of them) are safe to openly disseminate and will be safe to broadly disseminate in the future. However, we believe in the future it may be hard to reconcile a culture of full open dissemination of frontier AI systems with a culture of societal safety.

If — and ‘if’ is a key and unresolved point — increasingly capable AI models can lead to detrimental effects, or hold the possibility of catastrophic accidents, then we’ll need to adjust the norms of what is openly disseminated at the frontier.

Specifically, we’ll need to ensure that AI developers release their systems in a way that provides strong guarantees for safety - for example, if we were to discover a meaningful misuse of our model, we might put in place classifiers to detect and block attempts to elicit that misuse, or we might gate the ability to finetune a system behind a ‘know your customer’ rule along with contractual obligations to not finetune towards a specific misuse. By comparison, if someone wanted to openly release the weights of a model which was capable of the same misuse, they would need to both harden the model against that misuse (e.g, via RLHF or RLAIF training) and find a way to make this model resilient to attempts to fine-tune it onto a dataset that would enable this misuse. We will also need to experiment with disclosure processes, similar to how the security community has developed norms around pre-notification of disclosures of zero days.

Though what we’ve described is inherently very costly we also believe it is necessary - we must do everything we can to avoid AI systems enabling significant misuses or causing major accidents. But carrying out any restrictions on the open dissemination of AI systems depends on there being broad agreement on what unacceptable misuses of AI systems or system behaviors are.

Anthropic is not an impartial actor here - we are a company that primarily develops proprietary systems, and we don’t have the legitimacy to make claims here about what should or shouldn’t be acceptable in openly disseminated systems. Therefore, to resolve questions of open source models we need legitimate third parties to develop testing and evaluation approaches that are broadly accepted as legitimate, we need these third parties (or other trusted entities) to define a narrow and serious set of misuses of AI systems as well as adverse AI system behaviors, and we will need to apply these tests to models that are both controlled (e.g., via API) or openly disseminated (e.g., via the weights being released).

Third party testing of openly disseminated and closed proprietary models can generate the essential information we need to understand the safety properties of the AI landscape [2]. If we don’t do this, then you could end up in a situation where either a proprietary model or openly accessible model directly enables a serious misuse or causes a major AI accident - and if that happens, there could be significant harm to people and also likely adverse regulations applied to the AI sector.
Regulatory capture: Any form of policy can suffer regulatory capture by a sufficiently motivated and well-resourced actor: for example, a well-capitalized AI company. Some of the ideas we discuss above about openly accessible models are the kinds of things which themselves are prone to regulatory capture. It’s important that the AI ecosystem remains robust and competitive - AI is a complicated field and humanity’s best chance at getting it right likely comes from there being a diverse, broad set of actors engaged in its development and oversight.

We generally advocate for third-party testing and measurement initiatives because they seem like the kind of policy infrastructure that helps us to identify and prevent concrete harms as well as building capacity that exists independently of large companies. Therefore, we think that focusing on the development of third-party testing capacity can reduce the risk of regulatory capture and create a level playing field for developers. Conversely, industry-led consortia might have a tendency to favor approaches that involve high compliance costs on the parts of companies regardless of their scale - an approach that inherently advantages larger businesses which can spend more money on policy compliance.
Why we’re being careful in what we advocate for in AI policy

When developing our policy positions, we assume that regulations tend to create an administrative burden both for the party that enforces the regulation (e.g, the government), and for the party targeted by the regulation (e.g, AI developers). Therefore, we should advocate for policies that are both practical to enforce and feasible to comply with. We also note that regulations tend to be accretive - once passed, regulations are hard to remove. Therefore, we advocate for what we see as the ‘minimal viable policy’ for creating a good AI ecosystem, and we will be open to feedback.

Why AI policy is important

The AI systems of today and those of the future are immensely powerful and are capable of yielding great benefits to society. We also believe these systems have the potential for non-trivial misuses, or could cause accidents if implemented poorly. Though the vast majority of our work is technical in nature, we’ve come to believe that testing is fundamental to the safety of our systems - it’s not only how we better understand the capabilities and safety properties of our own models, but also how third-parties can validate claims we make about AI systems.

We believe that building out a third-party testing ecosystem is one of the best ways for bringing more of society into the development and oversight of AI systems. We hope that by publishing this post we’ve been able to better articulate the benefits of third-party testing as well as outline our own position for others to critique and build upon.

Footnotes

[1] Some countries may also experiment with ‘regulatory markets’ where AI developers can buy and sell AI testing services and compete with one another to try to build and deploy successively safer, more useful systems.

[2] For example, if you openly release an AI model, it’s relatively easy for a third-party to fine-tune that model on a dataset of their own choosing. Such a dataset could be designed to optimize for a misuse (e.g, phishing or offensive hacking). If you were able to develop technology that made it very hard to fine-tune an AI model away from its original capability distribution, then it’d be easier to confidently release models without potentially compromising on downstream safety.
`````

## File: inst/tool_prompt.md
`````markdown
You have a single purpose: take function documentation and use it to create an R expression that describes the function and its arguments.

* Drop `...`, it doesn't need to be documented.
* Valid `type` functions are `type_string()`, `type_number()`, `type_integer()`, `type_boolean()`, `type_array()`, and `type_object()`.
* A `tool()` call is similar to JSON Schema, except that `description` is required, and instead of `required` being on an object with an array of required property names, the `required` is on the required property itself as a boolean.
* If it's impossible to determine the type of an argument, or the type cannot be mapped to JSON Schema, use `type_unknown()` and put in a TODO code comment explaining the problem and asking the user to manually fix it.
* If an argument has a default value, be sure to mention it in the `description` field.

For example:

<User>
Function name: utils::read.csv

Function documentation:

read.table                package:utils                R Documentation

Data Input

Description:

     Reads a file in table format and creates a data frame from it,
     with cases corresponding to lines and variables to fields in the
     file.

Usage:

     read.table(file, header = FALSE, sep = "", quote = "\"'",
                dec = ".", numerals = c("allow.loss", "warn.loss", "no.loss"),
                row.names, col.names, as.is = !stringsAsFactors, tryLogical = TRUE,
                na.strings = "NA", colClasses = NA, nrows = -1,
                skip = 0, check.names = TRUE, fill = !blank.lines.skip,
                strip.white = FALSE, blank.lines.skip = TRUE,
                comment.char = "#",
                allowEscapes = FALSE, flush = FALSE,
                stringsAsFactors = FALSE,
                fileEncoding = "", encoding = "unknown", text, skipNul = FALSE)

     read.csv(file, header = TRUE, sep = ",", quote = "\"",
              dec = ".", fill = TRUE, comment.char = "", ...)

     read.csv2(file, header = TRUE, sep = ";", quote = "\"",
               dec = ",", fill = TRUE, comment.char = "", ...)

     read.delim(file, header = TRUE, sep = "\t", quote = "\"",
                dec = ".", fill = TRUE, comment.char = "", ...)

     read.delim2(file, header = TRUE, sep = "\t", quote = "\"",
                 dec = ",", fill = TRUE, comment.char = "", ...)

Arguments:

    file: the name of the file which the data are to be read from.
          Each row of the table appears as one line of the file.  If it
          does not contain an _absolute_ path, the file name is
          _relative_ to the current working directory, ‘getwd()’.
          Tilde-expansion is performed where supported.  This can be a
          compressed file (see ‘file’).

          Alternatively, ‘file’ can be a readable text-mode connection
          (which will be opened for reading if necessary, and if so
          ‘close’d (and hence destroyed) at the end of the function
          call).  (If ‘stdin()’ is used, the prompts for lines may be
          somewhat confusing.  Terminate input with a blank line or an
          EOF signal, ‘Ctrl-D’ on Unix and ‘Ctrl-Z’ on Windows.  Any
          pushback on ‘stdin()’ will be cleared before return.)

          ‘file’ can also be a complete URL.  (For the supported URL
          schemes, see the ‘URLs’ section of the help for ‘url’.)

  header: a logical value indicating whether the file contains the
          names of the variables as its first line.  If missing, the
          value is determined from the file format: ‘header’ is set to
          ‘TRUE’ if and only if the first row contains one fewer field
          than the number of columns.

     sep: the field separator character.  Values on each line of the
          file are separated by this character.  If ‘sep = ""’ (the
          default for ‘read.table’) the separator is ‘white space’,
          that is one or more spaces, tabs, newlines or carriage
          returns.

   quote: the set of quoting characters. To disable quoting altogether,
          use ‘quote = ""’.  See ‘scan’ for the behaviour on quotes
          embedded in quotes.  Quoting is only considered for columns
          read as character, which is all of them unless ‘colClasses’
          is specified.

     dec: the character used in the file for decimal points.

numerals: string indicating how to convert numbers whose conversion to
          double precision would lose accuracy, see ‘type.convert’.
          Can be abbreviated.  (Applies also to complex-number inputs.)

row.names: a vector of row names.  This can be a vector giving the
          actual row names, or a single number giving the column of the
          table which contains the row names, or character string
          giving the name of the table column containing the row names.

          If there is a header and the first row contains one fewer
          field than the number of columns, the first column in the
          input is used for the row names.  Otherwise if ‘row.names’ is
          missing, the rows are numbered.

          Using ‘row.names = NULL’ forces row numbering. Missing or
          ‘NULL’ ‘row.names’ generate row names that are considered to
          be ‘automatic’ (and not preserved by ‘as.matrix’).

col.names: a vector of optional names for the variables.  The default
          is to use ‘"V"’ followed by the column number.

   as.is: controls conversion of character variables (insofar as they
          are not converted to logical, numeric or complex) to factors,
          if not otherwise specified by ‘colClasses’.  Its value is
          either a vector of logicals (values are recycled if
          necessary), or a vector of numeric or character indices which
          specify which columns should not be converted to factors.

          Note: to suppress all conversions including those of numeric
          columns, set ‘colClasses = "character"’.

          Note that ‘as.is’ is specified per column (not per variable)
          and so includes the column of row names (if any) and any
          columns to be skipped.

tryLogical: a ‘logical’ determining if columns consisting entirely of
          ‘"F"’, ‘"T"’, ‘"FALSE"’, and ‘"TRUE"’ should be converted to
          ‘logical’; passed to ‘type.convert’, true by default.

na.strings: a character vector of strings which are to be interpreted
          as ‘NA’ values.  Blank fields are also considered to be
          missing values in logical, integer, numeric and complex
          fields.  Note that the test happens _after_ white space is
          stripped from the input, so ‘na.strings’ values may need
          their own white space stripped in advance.

colClasses: character.  A vector of classes to be assumed for the
          columns.  If unnamed, recycled as necessary.  If named, names
          are matched with unspecified values being taken to be ‘NA’.

          Possible values are ‘NA’ (the default, when ‘type.convert’ is
          used), ‘"NULL"’ (when the column is skipped), one of the
          atomic vector classes (logical, integer, numeric, complex,
          character, raw), or ‘"factor"’, ‘"Date"’ or ‘"POSIXct"’.
          Otherwise there needs to be an ‘as’ method (from package
          ‘methods’) for conversion from ‘"character"’ to the specified
          formal class.

          Note that ‘colClasses’ is specified per column (not per
          variable) and so includes the column of row names (if any).

   nrows: integer: the maximum number of rows to read in.  Negative and
          other invalid values are ignored.

    skip: integer: the number of lines of the data file to skip before
          beginning to read data.

check.names: logical.  If ‘TRUE’ then the names of the variables in the
          data frame are checked to ensure that they are syntactically
          valid variable names.  If necessary they are adjusted (by
          ‘make.names’) so that they are, and also to ensure that there
          are no duplicates.

    fill: logical. If ‘TRUE’ then in case the rows have unequal length,
          blank fields are implicitly added.  See ‘Details’.

strip.white: logical. Used only when ‘sep’ has been specified, and
          allows the stripping of leading and trailing white space from
          unquoted ‘character’ fields (‘numeric’ fields are always
          stripped).  See ‘scan’ for further details (including the
          exact meaning of ‘white space’), remembering that the columns
          may include the row names.

blank.lines.skip: logical: if ‘TRUE’ blank lines in the input are
          ignored.

comment.char: character: a character vector of length one containing a
          single character or an empty string.  Use ‘""’ to turn off
          the interpretation of comments altogether.

allowEscapes: logical.  Should C-style escapes such as ‘\n’ be
          processed or read verbatim (the default)?  Note that if not
          within quotes these could be interpreted as a delimiter (but
          not as a comment character).  For more details see ‘scan’.

   flush: logical: if ‘TRUE’, ‘scan’ will flush to the end of the line
          after reading the last of the fields requested.  This allows
          putting comments after the last field.

stringsAsFactors: logical: should character vectors be converted to
          factors?  Note that this is overridden by ‘as.is’ and
          ‘colClasses’, both of which allow finer control.

fileEncoding: character string: if non-empty declares the encoding used
          on a file (not a connection) so the character data can be
          re-encoded.  See the ‘Encoding’ section of the help for
          ‘file’, the ‘R Data Import/Export’ manual and ‘Note’.

encoding: encoding to be assumed for input strings.  It is used to mark
          character strings as known to be in Latin-1 or UTF-8 (see
          ‘Encoding’): it is not used to re-encode the input, but
          allows R to handle encoded strings in their native encoding
          (if one of those two).  See ‘Value’ and ‘Note’.

    text: character string: if ‘file’ is not supplied and this is, then
          data are read from the value of ‘text’ via a text connection.
          Notice that a literal string can be used to include (small)
          data sets within R code.

 skipNul: logical: should nuls be skipped?

     ...: Further arguments to be passed to ‘read.table’.

Details:

     This function is the principal means of reading tabular data into
     R.

     Unless ‘colClasses’ is specified, all columns are read as
     character columns and then converted using ‘type.convert’ to
     logical, integer, numeric, complex or (depending on ‘as.is’)
     factor as appropriate.  Quotes are (by default) interpreted in all
     fields, so a column of values like ‘"42"’ will result in an
     integer column.

     A field or line is ‘blank’ if it contains nothing (except
     whitespace if no separator is specified) before a comment
     character or the end of the field or line.

     If ‘row.names’ is not specified and the header line has one less
     entry than the number of columns, the first column is taken to be
     the row names.  This allows data frames to be read in from the
     format in which they are printed.  If ‘row.names’ is specified and
     does not refer to the first column, that column is discarded from
     such files.

     The number of data columns is determined by looking at the first
     five lines of input (or the whole input if it has less than five
     lines), or from the length of ‘col.names’ if it is specified and
     is longer.  This could conceivably be wrong if ‘fill’ or
     ‘blank.lines.skip’ are true, so specify ‘col.names’ if necessary
     (as in the ‘Examples’).

     ‘read.csv’ and ‘read.csv2’ are identical to ‘read.table’ except
     for the defaults.  They are intended for reading ‘comma separated
     value’ files (‘.csv’) or (‘read.csv2’) the variant used in
     countries that use a comma as decimal point and a semicolon as
     field separator.  Similarly, ‘read.delim’ and ‘read.delim2’ are
     for reading delimited files, defaulting to the TAB character for
     the delimiter.  Notice that ‘header = TRUE’ and ‘fill = TRUE’ in
     these variants, and that the comment character is disabled.

     The rest of the line after a comment character is skipped; quotes
     are not processed in comments.  Complete comment lines are allowed
     provided ‘blank.lines.skip = TRUE’; however, comment lines prior
     to the header must have the comment character in the first
     non-blank column.

     Quoted fields with embedded newlines are supported except after a
     comment character.  Embedded nuls are unsupported: skipping them
     (with ‘skipNul = TRUE’) may work.

Value:

     A data frame (‘data.frame’) containing a representation of the
     data in the file.

     Empty input is an error unless ‘col.names’ is specified, when a
     0-row data frame is returned: similarly giving just a header line
     if ‘header = TRUE’ results in a 0-row data frame.  Note that in
     either case the columns will be logical unless ‘colClasses’ was
     supplied.

     Character strings in the result (including factor levels) will
     have a declared encoding if ‘encoding’ is ‘"latin1"’ or ‘"UTF-8"’.

CSV files:

     See the help on ‘write.csv’ for the various conventions for ‘.csv’
     files.  The commonest form of CSV file with row names needs to be
     read with ‘read.csv(..., row.names = 1)’ to use the names in the
     first column of the file as row names.

Memory usage:

     These functions can use a surprising amount of memory when reading
     large files.  There is extensive discussion in the ‘R Data
     Import/Export’ manual, supplementing the notes here.

     Less memory will be used if ‘colClasses’ is specified as one of
     the six atomic vector classes.  This can be particularly so when
     reading a column that takes many distinct numeric values, as
     storing each distinct value as a character string can take up to
     14 times as much memory as storing it as an integer.

     Using ‘nrows’, even as a mild over-estimate, will help memory
     usage.

     Using ‘comment.char = ""’ will be appreciably faster than the
     ‘read.table’ default.

     ‘read.table’ is not the right tool for reading large matrices,
     especially those with many columns: it is designed to read _data
     frames_ which may have columns of very different classes.  Use
     ‘scan’ instead for matrices.

Note:

     The columns referred to in ‘as.is’ and ‘colClasses’ include the
     column of row names (if any).

     There are two approaches for reading input that is not in the
     local encoding.  If the input is known to be UTF-8 or Latin1, use
     the ‘encoding’ argument to declare that.  If the input is in some
     other encoding, then it may be translated on input.  The
     ‘fileEncoding’ argument achieves this by setting up a connection
     to do the re-encoding into the current locale.  Note that on
     Windows or other systems not running in a UTF-8 locale, this may
     not be possible.

References:

     Chambers, J. M. (1992) _Data for models._ Chapter 3 of
     _Statistical Models in S_ eds J. M. Chambers and T. J. Hastie,
     Wadsworth & Brooks/Cole.

See Also:

     The ‘R Data Import/Export’ manual.

     ‘scan’, ‘type.convert’, ‘read.fwf’ for reading _f_ixed _w_idth
     _f_ormatted input; ‘write.table’; ‘data.frame’.

     ‘count.fields’ can be useful to determine problems with reading
     files which result in reports of incorrect record lengths (see the
     ‘Examples’ below).

     <https://www.rfc-editor.org/rfc/rfc4180> for the IANA definition
     of CSV files (which requires comma as separator and CRLF line
     endings).

Examples:

     ## using count.fields to handle unknown maximum number of fields
     ## when fill = TRUE
     test1 <- c(1:5, "6,7", "8,9,10")
     tf <- tempfile()
     writeLines(test1, tf)

     read.csv(tf, fill = TRUE) # 1 column
     ncol <- max(count.fields(tf, sep = ","))
     read.csv(tf, fill = TRUE, header = FALSE,
              col.names = paste0("V", seq_len(ncol)))
     unlink(tf)

     ## "Inline" data set, using text=
     ## Notice that leading and trailing empty lines are auto-trimmed

     read.table(header = TRUE, text = "
     a b
     1 2
     3 4
     ")
</User>
<Assistant>
tool(
  utils::read.csv,
  "Reads a file in table format and creates a data frame from it, with cases corresponding to lines and variables to fields in the file. Intended for reading ‘comma separated value’ files (‘.csv’).",
  file = type_string(
       "The name of the file which the data are to be read from. Each row of the   table appears as one line of the file. If it does not contain an _absolute_ path, the   file name is _relative_ to the current working directory, `getwd()`. Tilde-expansion is   performed where supported. This can be a compressed file."
  ),
  header = type_boolean(
       "A boolean value indicating whether the file contains the names of the   variables as its first line. If missing, the value is determined from the file format:   ‘header’ is set to `true` if and only if the first row contains one fewer field than   the number of columns. Defaults to `true`.",
       required = FALSE
  ),
  sep = type_string(
       "The field separator character. Values on each line of the file are   separated by this character. If ‘sep = \"\"’ the separator is ‘white space’, that is   one or more spaces, tabs, newlines or carriage returns. Defaults to `\",\"`.",
       required = FALSE
  ),
  quote = type_string(
       "The set of quoting characters. To disable quoting altogether, use ‘quote   = \"\"’. Quoting is only considered for columns read as character, which is all of them   unless ‘colClasses’ is specified. Defaults to `\"\\\"\"`.",
       required = FALSE
  ),
  dec = type_string(
       "The character used in the file for decimal points. Defaults to `\".\"`.",
       required = FALSE
  ),
  fill = ToolArg(
       type = "boolean",
       "If `true` then in case the rows have unequal length, blank fields are   implicitly added. Defaults to `true`.",
       required = FALSE
  ),
  comment.char = ToolArg(
       type = "string",
       "A string containing a single character or an empty string. Use ‘\"\"’ to   turn off the interpretation of comments altogether. Defaults to `\"\"`.",
       required = FALSE
  )
)
</Assistant>
`````

## File: man/figures/lifecycle-deprecated.svg
`````
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="126" height="20" role="img" aria-label="lifecycle: deprecated">
    <title>lifecycle: deprecated</title>
    <linearGradient id="s" x2="0" y2="100%">
        <stop offset="0" stop-color="#bbb" stop-opacity=".1" />
        <stop offset="1" stop-opacity=".1" />
    </linearGradient>
    <clipPath id="r">
        <rect width="126" height="20" rx="3" fill="#fff" />
    </clipPath>
    <g clip-path="url(#r)">
        <rect width="55" height="20" fill="#555" />
        <rect x="55" width="71" height="20" fill="#fe7d37" />
        <rect width="126" height="20" fill="url(#s)" />
    </g>
    <g fill="#fff" text-anchor="middle" font-family="Verdana,Geneva,DejaVu Sans,sans-serif" text-rendering="geometricPrecision" font-size="110">
        <text aria-hidden="true" x="285" y="150" fill="#010101" fill-opacity=".3" transform="scale(.1)" textLength="450">lifecycle</text>
        <text x="285" y="140" transform="scale(.1)" fill="#fff" textLength="450">lifecycle</text>
        <text aria-hidden="true" x="895" y="150" fill="#010101" fill-opacity=".3" transform="scale(.1)" textLength="610">deprecated</text>
        <text x="895" y="140" transform="scale(.1)" fill="#fff" textLength="610">deprecated</text>
    </g>
</svg>
`````

## File: man/figures/lifecycle-experimental.svg
`````
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="138" height="20" role="img" aria-label="lifecycle: experimental">
    <title>lifecycle: experimental</title>
    <linearGradient id="s" x2="0" y2="100%">
        <stop offset="0" stop-color="#bbb" stop-opacity=".1" />
        <stop offset="1" stop-opacity=".1" />
    </linearGradient>
    <clipPath id="r">
        <rect width="138" height="20" rx="3" fill="#fff" />
    </clipPath>
    <g clip-path="url(#r)">
        <rect width="55" height="20" fill="#555" />
        <rect x="55" width="83" height="20" fill="#fe7d37" />
        <rect width="138" height="20" fill="url(#s)" />
    </g>
    <g fill="#fff" text-anchor="middle" font-family="Verdana,Geneva,DejaVu Sans,sans-serif" text-rendering="geometricPrecision" font-size="110">
        <text aria-hidden="true" x="285" y="150" fill="#010101" fill-opacity=".3" transform="scale(.1)" textLength="450">lifecycle</text>
        <text x="285" y="140" transform="scale(.1)" fill="#fff" textLength="450">lifecycle</text>
        <text aria-hidden="true" x="955" y="150" fill="#010101" fill-opacity=".3" transform="scale(.1)" textLength="730">experimental</text>
        <text x="955" y="140" transform="scale(.1)" fill="#fff" textLength="730">experimental</text>
    </g>
</svg>
`````

## File: man/figures/lifecycle-stable.svg
`````
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="98" height="20" role="img" aria-label="lifecycle: stable">
    <title>lifecycle: stable</title>
    <linearGradient id="s" x2="0" y2="100%">
        <stop offset="0" stop-color="#bbb" stop-opacity=".1" />
        <stop offset="1" stop-opacity=".1" />
    </linearGradient>
    <clipPath id="r">
        <rect width="98" height="20" rx="3" fill="#fff" />
    </clipPath>
    <g clip-path="url(#r)">
        <rect width="55" height="20" fill="#555" />
        <rect x="55" width="43" height="20" fill="#4c1" />
        <rect width="98" height="20" fill="url(#s)" />
    </g>
    <g fill="#fff" text-anchor="middle" font-family="Verdana,Geneva,DejaVu Sans,sans-serif" text-rendering="geometricPrecision" font-size="110">
        <text aria-hidden="true" x="285" y="150" fill="#010101" fill-opacity=".3" transform="scale(.1)" textLength="450">
      lifecycle
    </text>
        <text x="285" y="140" transform="scale(.1)" fill="#fff" textLength="450">
      lifecycle
    </text>
        <text aria-hidden="true" x="755" y="150" fill="#010101" fill-opacity=".3" transform="scale(.1)" textLength="330">
      stable
    </text>
        <text x="755" y="140" transform="scale(.1)" fill="#fff" textLength="330">
      stable
    </text>
    </g>
</svg>
`````

## File: man/figures/lifecycle-superseded.svg
`````
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="128" height="20" role="img" aria-label="lifecycle: superseded">
    <title>lifecycle: superseded</title>
    <linearGradient id="s" x2="0" y2="100%">
        <stop offset="0" stop-color="#bbb" stop-opacity=".1" />
        <stop offset="1" stop-opacity=".1" />
    </linearGradient>
    <clipPath id="r">
        <rect width="128" height="20" rx="3" fill="#fff" />
    </clipPath>
    <g clip-path="url(#r)">
        <rect width="55" height="20" fill="#555" />
        <rect x="55" width="73" height="20" fill="#007ec6" />
        <rect width="128" height="20" fill="url(#s)" />
    </g>
    <g fill="#fff" text-anchor="middle" font-family="Verdana,Geneva,DejaVu Sans,sans-serif" text-rendering="geometricPrecision" font-size="110">
        <text aria-hidden="true" x="285" y="150" fill="#010101" fill-opacity=".3" transform="scale(.1)" textLength="450">lifecycle</text>
        <text x="285" y="140" transform="scale(.1)" fill="#fff" textLength="450">lifecycle</text>
        <text aria-hidden="true" x="905" y="150" fill="#010101" fill-opacity=".3" transform="scale(.1)" textLength="630">superseded</text>
        <text x="905" y="140" transform="scale(.1)" fill="#fff" textLength="630">superseded</text>
    </g>
</svg>
`````

## File: man/batch_chat.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/batch-chat.R
\name{batch_chat}
\alias{batch_chat}
\alias{batch_chat_structured}
\alias{batch_chat_completed}
\title{Submit multiple chats in one batch}
\usage{
batch_chat(chat, prompts, path, wait = TRUE)

batch_chat_structured(
  chat,
  prompts,
  path,
  type,
  wait = TRUE,
  convert = TRUE,
  include_tokens = FALSE,
  include_cost = FALSE
)

batch_chat_completed(chat, prompts, path)
}
\arguments{
\item{chat}{A base chat object.}

\item{prompts}{A vector created by \code{\link[=interpolate]{interpolate()}} or a list
of character vectors.}

\item{path}{Path to file (with \code{.json} extension) to store state.

The file records a hash of the provider, the prompts, and the existing
chat turns. If you attempt to reuse the same file with any of these being
different, you'll get an error.}

\item{wait}{If \code{TRUE}, will wait for batch to complete. If \code{FALSE},
it will return \code{NULL} if the batch is not complete, and you can retrieve
the results later by re-running \code{batch_chat()} when
\code{batch_chat_completed()} is \code{TRUE}.}

\item{type}{A type specification for the extracted data. Should be
created with a \code{\link[=type_boolean]{type_()}} function.}

\item{convert}{If \code{TRUE}, automatically convert from JSON lists to R
data types using the schema. This typically works best when \code{type} is
\code{\link[=type_object]{type_object()}} as this will give you a data frame with one column for
each property. If \code{FALSE}, returns a list.}

\item{include_tokens}{If \code{TRUE}, and the result is a data frame, will
add \code{input_tokens} and \code{output_tokens} columns giving the total input
and output tokens for each prompt.}

\item{include_cost}{If \code{TRUE}, and the result is a data frame, will
add \code{cost} column giving the cost of each prompt.}
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#experimental}{\figure{lifecycle-experimental.svg}{options: alt='[Experimental]'}}}{\strong{[Experimental]}}

\code{batch_chat()} and \code{batch_chat_structured()} currently only work with
\code{\link[=chat_openai]{chat_openai()}} and \code{\link[=chat_anthropic]{chat_anthropic()}}. They use the
\href{https://platform.openai.com/docs/guides/batch}{OpenAI} and
\href{https://docs.anthropic.com/en/docs/build-with-claude/batch-processing}{Anthropic}
batch APIs which allow you to submit multiple requests simultaneously.
The results can take up to 24 hours to complete, but in return you pay 50\%
less than usual (but note that ellmer doesn't include this discount in
its pricing metadata). If you want to get results back more quickly, or
you're working with a different provider, you may want to use
\code{\link[=parallel_chat]{parallel_chat()}} instead.

Since batched requests can take a long time to complete, \code{batch_chat()}
requires a file path that is used to store information about the batch so
you never lose any work. You can either set \code{wait = FALSE} or simply
interrupt the waiting process, then later, either call \code{batch_chat()} to
resume where you left off or call \code{batch_chat_completed()} to see if the
results are ready to retrieve. \code{batch_chat()} will store the chat responses
in this file, so you can either keep it around to cache the results,
or delete it to free up disk space.

This API is marked as experimental since I don't yet know how to handle
errors in the most helpful way. Fortunately they don't seem to be common,
but if you have ideas, please let me know!
}
\examples{
\dontshow{if (has_credentials("openai")) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
chat <- chat_openai(model = "gpt-4.1-nano")

# Chat ----------------------------------------------------------------------

prompts <- interpolate("What do people from {{state.name}} bring to a potluck dinner?")
\dontrun{
chats <- batch_chat(chat, prompts, path = "potluck.json")
chats
}

# Structured data -----------------------------------------------------------
prompts <- list(
  "I go by Alex. 42 years on this planet and counting.",
  "Pleased to meet you! I'm Jamal, age 27.",
  "They call me Li Wei. Nineteen years young.",
  "Fatima here. Just celebrated my 35th birthday last week.",
  "The name's Robert - 51 years old and proud of it.",
  "Kwame here - just hit the big 5-0 this year."
)
type_person <- type_object(name = type_string(), age = type_number())
\dontrun{
data <- batch_chat_structured(
  chat = chat,
  prompts = prompts,
  path = "people-data.json",
  type = type_person
)
data
}
\dontshow{\}) # examplesIf}
}
`````

## File: man/chat_anthropic.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/provider-claude.R
\name{chat_anthropic}
\alias{chat_anthropic}
\alias{models_anthropic}
\title{Chat with an Anthropic Claude model}
\usage{
chat_anthropic(
  system_prompt = NULL,
  params = NULL,
  max_tokens = deprecated(),
  model = NULL,
  api_args = list(),
  base_url = "https://api.anthropic.com/v1",
  beta_headers = character(),
  api_key = anthropic_key(),
  echo = NULL
)

models_anthropic(
  base_url = "https://api.anthropic.com/v1",
  api_key = anthropic_key()
)
}
\arguments{
\item{system_prompt}{A system prompt to set the behavior of the assistant.}

\item{params}{Common model parameters, usually created by \code{\link[=params]{params()}}.}

\item{max_tokens}{Maximum number of tokens to generate before stopping.}

\item{model}{The model to use for the chat (defaults to "claude-3-7-sonnet-latest").
We regularly update the default, so we strongly recommend explicitly specifying a model for anything other than casual use.
Use \code{models_anthropic()} to see all options.}

\item{api_args}{Named list of arbitrary extra arguments appended to the body
of every chat API call. Combined with the body object generated by ellmer
with \code{\link[=modifyList]{modifyList()}}.}

\item{base_url}{The base URL to the endpoint; the default uses OpenAI.}

\item{beta_headers}{Optionally, a character vector of beta headers to opt-in
claude features that are still in beta.}

\item{api_key}{API key to use for authentication.

You generally should not supply this directly, but instead set the \code{ANTHROPIC_API_KEY} environment variable.
The best place to set this is in \code{.Renviron},
which you can easily edit by calling \code{usethis::edit_r_environ()}.}

\item{echo}{One of the following options:
\itemize{
\item \code{none}: don't emit any output (default when running in a function).
\item \code{text}: echo text output as it streams in (default when running at
the console).
\item \code{all}: echo all input and output.
}

Note this only affects the \code{chat()} method.}
}
\value{
A \link{Chat} object.
}
\description{
\href{https://www.anthropic.com}{Anthropic} provides a number of chat based
models under the \href{https://www.anthropic.com/claude}{Claude} moniker.
Note that a Claude Pro membership does not give you the ability to call
models via the API; instead, you will need to sign up (and pay for) a
\href{https://console.anthropic.com/}{developer account}.
}
\examples{
\dontshow{if (has_credentials("claude")) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
chat <- chat_anthropic()
chat$chat("Tell me three jokes about statisticians")
\dontshow{\}) # examplesIf}
}
\seealso{
Other chatbots: 
\code{\link{chat_aws_bedrock}()},
\code{\link{chat_azure_openai}()},
\code{\link{chat_cloudflare}()},
\code{\link{chat_cortex_analyst}()},
\code{\link{chat_databricks}()},
\code{\link{chat_deepseek}()},
\code{\link{chat_github}()},
\code{\link{chat_google_gemini}()},
\code{\link{chat_groq}()},
\code{\link{chat_huggingface}()},
\code{\link{chat_mistral}()},
\code{\link{chat_ollama}()},
\code{\link{chat_openai}()},
\code{\link{chat_openrouter}()},
\code{\link{chat_perplexity}()},
\code{\link{chat_portkey}()}
}
\concept{chatbots}
`````

## File: man/chat_aws_bedrock.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/provider-bedrock.R
\name{chat_aws_bedrock}
\alias{chat_aws_bedrock}
\alias{models_aws_bedrock}
\title{Chat with an AWS bedrock model}
\usage{
chat_aws_bedrock(
  system_prompt = NULL,
  model = NULL,
  profile = NULL,
  api_args = list(),
  echo = NULL
)

models_aws_bedrock(profile = NULL)
}
\arguments{
\item{system_prompt}{A system prompt to set the behavior of the assistant.}

\item{model}{The model to use for the chat (defaults to "anthropic.claude-3-5-sonnet-20240620-v1:0").
We regularly update the default, so we strongly recommend explicitly specifying a model for anything other than casual use.
Use \code{models_models_aws_bedrock()} to see all options.
.

While ellmer provides a default model, there's no guarantee that you'll
have access to it, so you'll need to specify a model that you can.
If you're using \href{https://aws.amazon.com/blogs/machine-learning/getting-started-with-cross-region-inference-in-amazon-bedrock/}{cross-region inference},
you'll need to use the inference profile ID, e.g.
\code{model="us.anthropic.claude-3-5-sonnet-20240620-v1:0"}.}

\item{profile}{AWS profile to use.}

\item{api_args}{Named list of arbitrary extra arguments appended to the body
of every chat API call. Some useful arguments include:

\if{html}{\out{<div class="sourceCode R">}}\preformatted{api_args = list(
  inferenceConfig = list(
    maxTokens = 100,
    temperature = 0.7,
    topP = 0.9,
    topK = 20
  )
)
}\if{html}{\out{</div>}}}

\item{echo}{One of the following options:
\itemize{
\item \code{none}: don't emit any output (default when running in a function).
\item \code{text}: echo text output as it streams in (default when running at
the console).
\item \code{all}: echo all input and output.
}

Note this only affects the \code{chat()} method.}
}
\value{
A \link{Chat} object.
}
\description{
\href{https://aws.amazon.com/bedrock/}{AWS Bedrock} provides a number of
language models, including those from Anthropic's
\href{https://aws.amazon.com/bedrock/claude/}{Claude}, using the Bedrock
\href{https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html}{Converse API}.
\subsection{Authentication}{

Authentication is handled through \{paws.common\}, so if authentication
does not work for you automatically, you'll need to follow the advice
at \url{https://www.paws-r-sdk.com/#credentials}. In particular, if your
org uses AWS SSO, you'll need to run \verb{aws sso login} at the terminal.
}
}
\examples{
\dontrun{
# Basic usage
chat <- chat_aws_bedrock()
chat$chat("Tell me three jokes about statisticians")
}
}
\seealso{
Other chatbots: 
\code{\link{chat_anthropic}()},
\code{\link{chat_azure_openai}()},
\code{\link{chat_cloudflare}()},
\code{\link{chat_cortex_analyst}()},
\code{\link{chat_databricks}()},
\code{\link{chat_deepseek}()},
\code{\link{chat_github}()},
\code{\link{chat_google_gemini}()},
\code{\link{chat_groq}()},
\code{\link{chat_huggingface}()},
\code{\link{chat_mistral}()},
\code{\link{chat_ollama}()},
\code{\link{chat_openai}()},
\code{\link{chat_openrouter}()},
\code{\link{chat_perplexity}()},
\code{\link{chat_portkey}()}
}
\concept{chatbots}
`````

## File: man/chat_azure_openai.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/provider-azure.R
\name{chat_azure_openai}
\alias{chat_azure_openai}
\title{Chat with a model hosted on Azure OpenAI}
\usage{
chat_azure_openai(
  endpoint = azure_endpoint(),
  deployment_id,
  params = NULL,
  api_version = NULL,
  system_prompt = NULL,
  api_key = NULL,
  token = deprecated(),
  credentials = NULL,
  api_args = list(),
  echo = c("none", "output", "all")
)
}
\arguments{
\item{endpoint}{Azure OpenAI endpoint url with protocol and hostname, i.e.
\verb{https://\{your-resource-name\}.openai.azure.com}. Defaults to using the
value of the \code{AZURE_OPENAI_ENDPOINT} envinronment variable.}

\item{deployment_id}{Deployment id for the model you want to use.}

\item{params}{Common model parameters, usually created by \code{\link[=params]{params()}}.}

\item{api_version}{The API version to use.}

\item{system_prompt}{A system prompt to set the behavior of the assistant.}

\item{api_key}{API key to use for authentication.

You generally should not supply this directly, but instead set the \code{AZURE_OPENAI_API_KEY} environment variable.
The best place to set this is in \code{.Renviron},
which you can easily edit by calling \code{usethis::edit_r_environ()}.}

\item{token}{\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#deprecated}{\figure{lifecycle-deprecated.svg}{options: alt='[Deprecated]'}}}{\strong{[Deprecated]}} A literal Azure token to use
for authentication. Deprecated in favour of ambient Azure credentials or
an explicit \code{credentials} argument.}

\item{credentials}{A list of authentication headers to pass into
\code{\link[httr2:req_headers]{httr2::req_headers()}}, a function that returns them, or \code{NULL} to use
\code{token} or \code{api_key} to generate these headers instead. This is an escape
hatch that allows users to incorporate Azure credentials generated by other
packages into \pkg{ellmer}, or to manage the lifetime of credentials that
need to be refreshed.}

\item{api_args}{Named list of arbitrary extra arguments appended to the body
of every chat API call. Combined with the body object generated by ellmer
with \code{\link[=modifyList]{modifyList()}}.}

\item{echo}{One of the following options:
\itemize{
\item \code{none}: don't emit any output (default when running in a function).
\item \code{text}: echo text output as it streams in (default when running at
the console).
\item \code{all}: echo all input and output.
}

Note this only affects the \code{chat()} method.}
}
\value{
A \link{Chat} object.
}
\description{
The \href{https://azure.microsoft.com/en-us/products/ai-services/openai-service}{Azure OpenAI server}
hosts a number of open source models as well as proprietary models
from OpenAI.
\subsection{Authentication}{

\code{chat_azure_openai()} supports API keys and the \code{credentials} parameter, but
it also makes use of:
\itemize{
\item Azure service principals (when the \code{AZURE_TENANT_ID}, \code{AZURE_CLIENT_ID},
and \code{AZURE_CLIENT_SECRET} environment variables are set).
\item Interactive Entra ID authentication, like the Azure CLI.
\item Viewer-based credentials on Posit Connect. Requires the \pkg{connectcreds}
package.
}
}
}
\examples{
\dontrun{
chat <- chat_azure_openai(deployment_id = "gpt-4o-mini")
chat$chat("Tell me three jokes about statisticians")
}
}
\seealso{
Other chatbots: 
\code{\link{chat_anthropic}()},
\code{\link{chat_aws_bedrock}()},
\code{\link{chat_cloudflare}()},
\code{\link{chat_cortex_analyst}()},
\code{\link{chat_databricks}()},
\code{\link{chat_deepseek}()},
\code{\link{chat_github}()},
\code{\link{chat_google_gemini}()},
\code{\link{chat_groq}()},
\code{\link{chat_huggingface}()},
\code{\link{chat_mistral}()},
\code{\link{chat_ollama}()},
\code{\link{chat_openai}()},
\code{\link{chat_openrouter}()},
\code{\link{chat_perplexity}()},
\code{\link{chat_portkey}()}
}
\concept{chatbots}
`````

## File: man/chat_cloudflare.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/provider-cloudflare.R
\name{chat_cloudflare}
\alias{chat_cloudflare}
\title{Chat with a model hosted on CloudFlare}
\usage{
chat_cloudflare(
  account = cloudflare_account(),
  system_prompt = NULL,
  params = NULL,
  api_key = cloudflare_key(),
  model = NULL,
  api_args = list(),
  echo = NULL
)
}
\arguments{
\item{account}{The Cloudflare account ID. Taken from the
\code{CLOUDFLARE_ACCOUNT_ID} env var, if defined.}

\item{system_prompt}{A system prompt to set the behavior of the assistant.}

\item{params}{Common model parameters, usually created by \code{\link[=params]{params()}}.}

\item{api_key}{The API key to use for authentication. You generally should
not supply this directly, but instead set the \code{HUGGINGFACE_API_KEY} environment
variable.}

\item{model}{The model to use for the chat (defaults to "meta-llama/Llama-3.3-70b-instruct-fp8-fast").
We regularly update the default, so we strongly recommend explicitly specifying a model for anything other than casual use.}

\item{api_args}{Named list of arbitrary extra arguments appended to the body
of every chat API call. Combined with the body object generated by ellmer
with \code{\link[=modifyList]{modifyList()}}.}

\item{echo}{One of the following options:
\itemize{
\item \code{none}: don't emit any output (default when running in a function).
\item \code{text}: echo text output as it streams in (default when running at
the console).
\item \code{all}: echo all input and output.
}

Note this only affects the \code{chat()} method.}
}
\value{
A \link{Chat} object.
}
\description{
\href{https://www.cloudflare.com/developer-platform/products/workers-ai/}{Cloudflare}
works AI hosts a variety of open-source AI models. To use the Cloudflare
API, you must have an Account ID and an Access Token, which you can obtain
\href{https://developers.cloudflare.com/workers-ai/get-started/rest-api/}{by following these instructions}.
\subsection{Known limitations}{
\itemize{
\item Tool calling does not appear to work.
\item Images don't appear to work.
}
}
}
\examples{
\dontrun{
chat <- chat_cloudflare()
chat$chat("Tell me three jokes about statisticians")
}
}
\seealso{
Other chatbots: 
\code{\link{chat_anthropic}()},
\code{\link{chat_aws_bedrock}()},
\code{\link{chat_azure_openai}()},
\code{\link{chat_cortex_analyst}()},
\code{\link{chat_databricks}()},
\code{\link{chat_deepseek}()},
\code{\link{chat_github}()},
\code{\link{chat_google_gemini}()},
\code{\link{chat_groq}()},
\code{\link{chat_huggingface}()},
\code{\link{chat_mistral}()},
\code{\link{chat_ollama}()},
\code{\link{chat_openai}()},
\code{\link{chat_openrouter}()},
\code{\link{chat_perplexity}()},
\code{\link{chat_portkey}()}
}
\concept{chatbots}
`````

## File: man/chat_cortex_analyst.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/provider-cortex.R
\name{chat_cortex_analyst}
\alias{chat_cortex_analyst}
\title{Create a chatbot that speaks to the Snowflake Cortex Analyst}
\usage{
chat_cortex_analyst(
  account = snowflake_account(),
  credentials = NULL,
  model_spec = NULL,
  model_file = NULL,
  api_args = list(),
  echo = c("none", "output", "all")
)
}
\arguments{
\item{account}{A Snowflake \href{https://docs.snowflake.com/en/user-guide/admin-account-identifier}{account identifier},
e.g. \code{"testorg-test_account"}. Defaults to the value of the
\code{SNOWFLAKE_ACCOUNT} environment variable.}

\item{credentials}{A list of authentication headers to pass into
\code{\link[httr2:req_headers]{httr2::req_headers()}}, a function that returns them when called, or
\code{NULL}, the default, to use ambient credentials.}

\item{model_spec}{A semantic model specification, or \code{NULL} when
using \code{model_file} instead.}

\item{model_file}{Path to a semantic model file stored in a Snowflake Stage,
or \code{NULL} when using \code{model_spec} instead.}

\item{api_args}{Named list of arbitrary extra arguments appended to the body
of every chat API call. Combined with the body object generated by ellmer
with \code{\link[=modifyList]{modifyList()}}.}

\item{echo}{One of the following options:
\itemize{
\item \code{none}: don't emit any output (default when running in a function).
\item \code{text}: echo text output as it streams in (default when running at
the console).
\item \code{all}: echo all input and output.
}

Note this only affects the \code{chat()} method.}
}
\value{
A \link{Chat} object.
}
\description{
Chat with the LLM-powered \href{https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-analyst}{Snowflake Cortex Analyst}.
\subsection{Authentication}{

\code{chat_cortex_analyst()} picks up the following ambient Snowflake credentials:
\itemize{
\item A static OAuth token defined via the \code{SNOWFLAKE_TOKEN} environment
variable.
\item Key-pair authentication credentials defined via the \code{SNOWFLAKE_USER} and
\code{SNOWFLAKE_PRIVATE_KEY} (which can be a PEM-encoded private key or a path
to one) environment variables.
\item Posit Workbench-managed Snowflake credentials for the corresponding
\code{account}.
\item Viewer-based credentials on Posit Connect. Requires the \pkg{connectcreds}
package.
}
}

\subsection{Known limitations}{

Unlike most comparable model APIs, Cortex does not take a system prompt.
Instead, the caller must provide a "semantic model" describing available
tables, their meaning, and verified queries that can be run against them as a
starting point. The semantic model can be passed as a YAML string or via
reference to an existing file in a Snowflake Stage.

Note that Cortex does not support multi-turn, so it will not remember
previous messages. Nor does it support registering tools, and attempting to
do so will result in an error.

See \code{\link[=chat_snowflake]{chat_snowflake()}} to chat with more general-purpose models hosted on
Snowflake.
}
}
\examples{
\dontshow{if (has_credentials("cortex")) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
chat <- chat_cortex_analyst(
  model_file = "@my_db.my_schema.my_stage/model.yaml"
)
chat$chat("What questions can I ask?")
\dontshow{\}) # examplesIf}
}
\seealso{
Other chatbots: 
\code{\link{chat_anthropic}()},
\code{\link{chat_aws_bedrock}()},
\code{\link{chat_azure_openai}()},
\code{\link{chat_cloudflare}()},
\code{\link{chat_databricks}()},
\code{\link{chat_deepseek}()},
\code{\link{chat_github}()},
\code{\link{chat_google_gemini}()},
\code{\link{chat_groq}()},
\code{\link{chat_huggingface}()},
\code{\link{chat_mistral}()},
\code{\link{chat_ollama}()},
\code{\link{chat_openai}()},
\code{\link{chat_openrouter}()},
\code{\link{chat_perplexity}()},
\code{\link{chat_portkey}()}
}
\concept{chatbots}
`````

## File: man/chat_databricks.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/provider-databricks.R
\name{chat_databricks}
\alias{chat_databricks}
\title{Chat with a model hosted on Databricks}
\usage{
chat_databricks(
  workspace = databricks_workspace(),
  system_prompt = NULL,
  model = NULL,
  token = NULL,
  api_args = list(),
  echo = c("none", "output", "all")
)
}
\arguments{
\item{workspace}{The URL of a Databricks workspace, e.g.
\code{"https://example.cloud.databricks.com"}. Will use the value of the
environment variable \code{DATABRICKS_HOST}, if set.}

\item{system_prompt}{A system prompt to set the behavior of the assistant.}

\item{model}{The model to use for the chat (defaults to "databricks-dbrx-instruct").
We regularly update the default, so we strongly recommend explicitly specifying a model for anything other than casual use.

Available foundational models include:
\itemize{
\item \code{databricks-dbrx-instruct} (the default)
\item \verb{databricks-mixtral-8x7b-instruct}
\item \verb{databricks-meta-llama-3-1-70b-instruct}
\item \verb{databricks-meta-llama-3-1-405b-instruct}
}}

\item{token}{An authentication token for the Databricks workspace, or
\code{NULL} to use ambient credentials.}

\item{api_args}{Named list of arbitrary extra arguments appended to the body
of every chat API call. Combined with the body object generated by ellmer
with \code{\link[=modifyList]{modifyList()}}.}

\item{echo}{One of the following options:
\itemize{
\item \code{none}: don't emit any output (default when running in a function).
\item \code{text}: echo text output as it streams in (default when running at
the console).
\item \code{all}: echo all input and output.
}

Note this only affects the \code{chat()} method.}
}
\value{
A \link{Chat} object.
}
\description{
Databricks provides out-of-the-box access to a number of \href{https://docs.databricks.com/en/machine-learning/model-serving/score-foundation-models.html}{foundation models}
and can also serve as a gateway for external models hosted by a third party.
\subsection{Authentication}{

\code{chat_databricks()} picks up on ambient Databricks credentials for a subset
of the \href{https://docs.databricks.com/en/dev-tools/auth/unified-auth.html}{Databricks client unified authentication}
model. Specifically, it supports:
\itemize{
\item Personal access tokens
\item Service principals via OAuth (OAuth M2M)
\item User account via OAuth (OAuth U2M)
\item Authentication via the Databricks CLI
\item Posit Workbench-managed credentials
\item Viewer-based credentials on Posit Connect. Requires the \pkg{connectcreds}
package.
}
}

\subsection{Known limitations}{

Databricks models do not support images, but they do support structured
outputs. Tool calling support is also very limited at present and is
currently not supported by ellmer.
}
}
\examples{
\dontrun{
chat <- chat_databricks()
chat$chat("Tell me three jokes about statisticians")
}
}
\seealso{
Other chatbots: 
\code{\link{chat_anthropic}()},
\code{\link{chat_aws_bedrock}()},
\code{\link{chat_azure_openai}()},
\code{\link{chat_cloudflare}()},
\code{\link{chat_cortex_analyst}()},
\code{\link{chat_deepseek}()},
\code{\link{chat_github}()},
\code{\link{chat_google_gemini}()},
\code{\link{chat_groq}()},
\code{\link{chat_huggingface}()},
\code{\link{chat_mistral}()},
\code{\link{chat_ollama}()},
\code{\link{chat_openai}()},
\code{\link{chat_openrouter}()},
\code{\link{chat_perplexity}()},
\code{\link{chat_portkey}()}
}
\concept{chatbots}
`````

## File: man/chat_deepseek.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/provider-deepseek.R
\name{chat_deepseek}
\alias{chat_deepseek}
\title{Chat with a model hosted on DeepSeek}
\usage{
chat_deepseek(
  system_prompt = NULL,
  base_url = "https://api.deepseek.com",
  api_key = deepseek_key(),
  model = NULL,
  seed = NULL,
  api_args = list(),
  echo = NULL
)
}
\arguments{
\item{system_prompt}{A system prompt to set the behavior of the assistant.}

\item{base_url}{The base URL to the endpoint; the default uses DeepSeek.}

\item{api_key}{API key to use for authentication.

You generally should not supply this directly, but instead set the \code{DEEPSEEK_API_KEY} environment variable.
The best place to set this is in \code{.Renviron},
which you can easily edit by calling \code{usethis::edit_r_environ()}.}

\item{model}{The model to use for the chat (defaults to "deepseek-chat").
We regularly update the default, so we strongly recommend explicitly specifying a model for anything other than casual use.}

\item{seed}{Optional integer seed that ChatGPT uses to try and make output
more reproducible.}

\item{api_args}{Named list of arbitrary extra arguments appended to the body
of every chat API call. Combined with the body object generated by ellmer
with \code{\link[=modifyList]{modifyList()}}.}

\item{echo}{One of the following options:
\itemize{
\item \code{none}: don't emit any output (default when running in a function).
\item \code{text}: echo text output as it streams in (default when running at
the console).
\item \code{all}: echo all input and output.
}

Note this only affects the \code{chat()} method.}
}
\value{
A \link{Chat} object.
}
\description{
Sign up at \url{https://platform.deepseek.com}.
\subsection{Known limitations}{
\itemize{
\item Structured data extraction is not supported.
\item Images are not supported.
}
}
}
\examples{
\dontrun{
chat <- chat_deepseek()
chat$chat("Tell me three jokes about statisticians")
}
}
\seealso{
Other chatbots: 
\code{\link{chat_anthropic}()},
\code{\link{chat_aws_bedrock}()},
\code{\link{chat_azure_openai}()},
\code{\link{chat_cloudflare}()},
\code{\link{chat_cortex_analyst}()},
\code{\link{chat_databricks}()},
\code{\link{chat_github}()},
\code{\link{chat_google_gemini}()},
\code{\link{chat_groq}()},
\code{\link{chat_huggingface}()},
\code{\link{chat_mistral}()},
\code{\link{chat_ollama}()},
\code{\link{chat_openai}()},
\code{\link{chat_openrouter}()},
\code{\link{chat_perplexity}()},
\code{\link{chat_portkey}()}
}
\concept{chatbots}
`````

## File: man/chat_github.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/provider-github.R
\name{chat_github}
\alias{chat_github}
\title{Chat with a model hosted on the GitHub model marketplace}
\usage{
chat_github(
  system_prompt = NULL,
  base_url = "https://models.inference.ai.azure.com/",
  api_key = github_key(),
  model = NULL,
  seed = NULL,
  api_args = list(),
  echo = NULL
)
}
\arguments{
\item{system_prompt}{A system prompt to set the behavior of the assistant.}

\item{base_url}{The base URL to the endpoint; the default uses OpenAI.}

\item{api_key}{The API key to use for authentication. You generally should
not supply this directly, but instead manage your GitHub credentials
as described in \url{https://usethis.r-lib.org/articles/git-credentials.html}.
For headless environments, this will also look in the \code{GITHUB_PAT}
env var.}

\item{model}{The model to use for the chat (defaults to "gpt-4o").
We regularly update the default, so we strongly recommend explicitly specifying a model for anything other than casual use.}

\item{seed}{Optional integer seed that ChatGPT uses to try and make output
more reproducible.}

\item{api_args}{Named list of arbitrary extra arguments appended to the body
of every chat API call. Combined with the body object generated by ellmer
with \code{\link[=modifyList]{modifyList()}}.}

\item{echo}{One of the following options:
\itemize{
\item \code{none}: don't emit any output (default when running in a function).
\item \code{text}: echo text output as it streams in (default when running at
the console).
\item \code{all}: echo all input and output.
}

Note this only affects the \code{chat()} method.}
}
\value{
A \link{Chat} object.
}
\description{
GitHub (via Azure) hosts a number of open source and OpenAI models.
To access the GitHub model marketplace, you will need to apply for and
be accepted into the beta access program. See
\url{https://github.com/marketplace/models} for details.

This function is a lightweight wrapper around \code{\link[=chat_openai]{chat_openai()}} with
the defaults tweaked for the GitHub model marketplace.
}
\examples{
\dontrun{
chat <- chat_github()
chat$chat("Tell me three jokes about statisticians")
}
}
\seealso{
Other chatbots: 
\code{\link{chat_anthropic}()},
\code{\link{chat_aws_bedrock}()},
\code{\link{chat_azure_openai}()},
\code{\link{chat_cloudflare}()},
\code{\link{chat_cortex_analyst}()},
\code{\link{chat_databricks}()},
\code{\link{chat_deepseek}()},
\code{\link{chat_google_gemini}()},
\code{\link{chat_groq}()},
\code{\link{chat_huggingface}()},
\code{\link{chat_mistral}()},
\code{\link{chat_ollama}()},
\code{\link{chat_openai}()},
\code{\link{chat_openrouter}()},
\code{\link{chat_perplexity}()},
\code{\link{chat_portkey}()}
}
\concept{chatbots}
`````

## File: man/chat_google_gemini.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/provider-gemini.R
\name{chat_google_gemini}
\alias{chat_google_gemini}
\alias{chat_google_vertex}
\alias{models_google_gemini}
\alias{models_google_vertex}
\title{Chat with a Google Gemini or Vertex AI model}
\usage{
chat_google_gemini(
  system_prompt = NULL,
  base_url = "https://generativelanguage.googleapis.com/v1beta/",
  api_key = NULL,
  model = NULL,
  params = NULL,
  api_args = list(),
  echo = NULL
)

chat_google_vertex(
  location,
  project_id,
  system_prompt = NULL,
  model = NULL,
  params = NULL,
  api_args = list(),
  echo = NULL
)

models_google_gemini(
  base_url = "https://generativelanguage.googleapis.com/v1beta/",
  api_key = NULL
)

models_google_vertex(location, project_id)
}
\arguments{
\item{system_prompt}{A system prompt to set the behavior of the assistant.}

\item{base_url}{The base URL to the endpoint; the default uses OpenAI.}

\item{api_key}{API key to use for authentication.

You generally should not supply this directly, but instead set the \code{GOOGLE_API_KEY} environment variable.
The best place to set this is in \code{.Renviron},
which you can easily edit by calling \code{usethis::edit_r_environ()}.
For Gemini, you can alternatively set \code{GEMINI_API_KEY}.}

\item{model}{The model to use for the chat (defaults to "gemini-2.0-flash").
We regularly update the default, so we strongly recommend explicitly specifying a model for anything other than casual use.
Use \code{models_google_gemini()} to see all options.}

\item{params}{Common model parameters, usually created by \code{\link[=params]{params()}}.}

\item{api_args}{Named list of arbitrary extra arguments appended to the body
of every chat API call. Combined with the body object generated by ellmer
with \code{\link[=modifyList]{modifyList()}}.}

\item{echo}{One of the following options:
\itemize{
\item \code{none}: don't emit any output (default when running in a function).
\item \code{text}: echo text output as it streams in (default when running at
the console).
\item \code{all}: echo all input and output.
}

Note this only affects the \code{chat()} method.}

\item{location}{Location, e.g. \code{us-east1}, \code{me-central1}, \code{africa-south1}.}

\item{project_id}{Project ID.}
}
\value{
A \link{Chat} object.
}
\description{
Google's AI offering is broken up into two parts: Gemini and Vertex AI.
Most enterprises are likely to use Vertex AI, and individuals are likely
to use Gemini.

Use \code{\link[=google_upload]{google_upload()}} to upload files (PDFs, images, video, audio, etc.)
\subsection{Authentication}{

By default, \code{chat_google_gemini()} will use Google's default application
credentials if there is no API key provided. This requires the \pkg{gargle}
package.

It can also pick up on viewer-based credentials on Posit Connect. This in
turn requires the \pkg{connectcreds} package.
}
}
\examples{
\dontrun{
chat <- chat_google_gemini()
chat$chat("Tell me three jokes about statisticians")
}
}
\seealso{
Other chatbots: 
\code{\link{chat_anthropic}()},
\code{\link{chat_aws_bedrock}()},
\code{\link{chat_azure_openai}()},
\code{\link{chat_cloudflare}()},
\code{\link{chat_cortex_analyst}()},
\code{\link{chat_databricks}()},
\code{\link{chat_deepseek}()},
\code{\link{chat_github}()},
\code{\link{chat_groq}()},
\code{\link{chat_huggingface}()},
\code{\link{chat_mistral}()},
\code{\link{chat_ollama}()},
\code{\link{chat_openai}()},
\code{\link{chat_openrouter}()},
\code{\link{chat_perplexity}()},
\code{\link{chat_portkey}()}
}
\concept{chatbots}
`````

## File: man/chat_groq.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/provider-groq.R
\name{chat_groq}
\alias{chat_groq}
\title{Chat with a model hosted on Groq}
\usage{
chat_groq(
  system_prompt = NULL,
  base_url = "https://api.groq.com/openai/v1",
  api_key = groq_key(),
  model = NULL,
  seed = NULL,
  api_args = list(),
  echo = NULL
)
}
\arguments{
\item{system_prompt}{A system prompt to set the behavior of the assistant.}

\item{base_url}{The base URL to the endpoint; the default uses OpenAI.}

\item{api_key}{API key to use for authentication.

You generally should not supply this directly, but instead set the \code{GROQ_API_KEY} environment variable.
The best place to set this is in \code{.Renviron},
which you can easily edit by calling \code{usethis::edit_r_environ()}.}

\item{model}{The model to use for the chat (defaults to "llama3-8b-8192").
We regularly update the default, so we strongly recommend explicitly specifying a model for anything other than casual use.}

\item{seed}{Optional integer seed that ChatGPT uses to try and make output
more reproducible.}

\item{api_args}{Named list of arbitrary extra arguments appended to the body
of every chat API call. Combined with the body object generated by ellmer
with \code{\link[=modifyList]{modifyList()}}.}

\item{echo}{One of the following options:
\itemize{
\item \code{none}: don't emit any output (default when running in a function).
\item \code{text}: echo text output as it streams in (default when running at
the console).
\item \code{all}: echo all input and output.
}

Note this only affects the \code{chat()} method.}
}
\value{
A \link{Chat} object.
}
\description{
Sign up at \url{https://groq.com}.

This function is a lightweight wrapper around \code{\link[=chat_openai]{chat_openai()}} with
the defaults tweaked for groq.
\subsection{Known limitations}{

groq does not currently support structured data extraction.
}
}
\examples{
\dontrun{
chat <- chat_groq()
chat$chat("Tell me three jokes about statisticians")
}
}
\seealso{
Other chatbots: 
\code{\link{chat_anthropic}()},
\code{\link{chat_aws_bedrock}()},
\code{\link{chat_azure_openai}()},
\code{\link{chat_cloudflare}()},
\code{\link{chat_cortex_analyst}()},
\code{\link{chat_databricks}()},
\code{\link{chat_deepseek}()},
\code{\link{chat_github}()},
\code{\link{chat_google_gemini}()},
\code{\link{chat_huggingface}()},
\code{\link{chat_mistral}()},
\code{\link{chat_ollama}()},
\code{\link{chat_openai}()},
\code{\link{chat_openrouter}()},
\code{\link{chat_perplexity}()},
\code{\link{chat_portkey}()}
}
\concept{chatbots}
`````

## File: man/chat_huggingface.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/provider-huggingface.r
\name{chat_huggingface}
\alias{chat_huggingface}
\title{Chat with a model hosted on Hugging Face Serverless Inference API}
\usage{
chat_huggingface(
  system_prompt = NULL,
  params = NULL,
  api_key = hf_key(),
  model = NULL,
  api_args = list(),
  echo = NULL
)
}
\arguments{
\item{system_prompt}{A system prompt to set the behavior of the assistant.}

\item{params}{Common model parameters, usually created by \code{\link[=params]{params()}}.}

\item{api_key}{The API key to use for authentication. You generally should
not supply this directly, but instead set the \code{HUGGINGFACE_API_KEY} environment
variable.}

\item{model}{The model to use for the chat (defaults to "meta-llama/Llama-3.1-8B-Instruct").
We regularly update the default, so we strongly recommend explicitly specifying a model for anything other than casual use.}

\item{api_args}{Named list of arbitrary extra arguments appended to the body
of every chat API call. Combined with the body object generated by ellmer
with \code{\link[=modifyList]{modifyList()}}.}

\item{echo}{One of the following options:
\itemize{
\item \code{none}: don't emit any output (default when running in a function).
\item \code{text}: echo text output as it streams in (default when running at
the console).
\item \code{all}: echo all input and output.
}

Note this only affects the \code{chat()} method.}
}
\value{
A \link{Chat} object.
}
\description{
\href{https://huggingface.co/}{Hugging Face} hosts a variety of open-source
and proprietary AI models available via their Inference API.
To use the Hugging Face API, you must have an Access Token, which you can obtain
from your \href{https://huggingface.co/settings/tokens}{Hugging Face account}
(ensure that at least "Make calls to Inference Providers" and
"Make calls to your Inference Endpoints" is checked).

This function is a lightweight wrapper around \code{\link[=chat_openai]{chat_openai()}}, with
the defaults adjusted for Hugging Face.
\subsection{Known limitations}{
\itemize{
\item Parameter support is hit or miss.
\item Tool calling is currently broken in the API.
\item While images are technically supported, I couldn't find any models that
returned useful respones.
\item Some models do not support the chat interface or parts of it, for example
\verb{google/gemma-2-2b-it} does not support a system prompt. You will need to
carefully choose the model.
}

So overall, not something we could recommend at the moment.
}
}
\examples{
\dontrun{
chat <- chat_huggingface()
chat$chat("Tell me three jokes about statisticians")
}
}
\seealso{
Other chatbots: 
\code{\link{chat_anthropic}()},
\code{\link{chat_aws_bedrock}()},
\code{\link{chat_azure_openai}()},
\code{\link{chat_cloudflare}()},
\code{\link{chat_cortex_analyst}()},
\code{\link{chat_databricks}()},
\code{\link{chat_deepseek}()},
\code{\link{chat_github}()},
\code{\link{chat_google_gemini}()},
\code{\link{chat_groq}()},
\code{\link{chat_mistral}()},
\code{\link{chat_ollama}()},
\code{\link{chat_openai}()},
\code{\link{chat_openrouter}()},
\code{\link{chat_perplexity}()},
\code{\link{chat_portkey}()}
}
\concept{chatbots}
`````

## File: man/chat_mistral.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/provider-mistral.R
\name{chat_mistral}
\alias{chat_mistral}
\title{Chat with a model hosted on Mistral's La Platforme}
\usage{
chat_mistral(
  system_prompt = NULL,
  params = NULL,
  api_key = mistral_key(),
  model = NULL,
  seed = NULL,
  api_args = list(),
  echo = NULL
)
}
\arguments{
\item{system_prompt}{A system prompt to set the behavior of the assistant.}

\item{params}{Common model parameters, usually created by \code{\link[=params]{params()}}.}

\item{api_key}{API key to use for authentication.

You generally should not supply this directly, but instead set the \code{MISTRAL_API_KEY} environment variable.
The best place to set this is in \code{.Renviron},
which you can easily edit by calling \code{usethis::edit_r_environ()}.}

\item{model}{The model to use for the chat (defaults to "mistral-large-latest").
We regularly update the default, so we strongly recommend explicitly specifying a model for anything other than casual use.}

\item{seed}{Optional integer seed that ChatGPT uses to try and make output
more reproducible.}

\item{api_args}{Named list of arbitrary extra arguments appended to the body
of every chat API call. Combined with the body object generated by ellmer
with \code{\link[=modifyList]{modifyList()}}.}

\item{echo}{One of the following options:
\itemize{
\item \code{none}: don't emit any output (default when running in a function).
\item \code{text}: echo text output as it streams in (default when running at
the console).
\item \code{all}: echo all input and output.
}

Note this only affects the \code{chat()} method.}
}
\value{
A \link{Chat} object.
}
\description{
Get your API key from \url{https://console.mistral.ai/api-keys}.
\subsection{Known limitations}{
\itemize{
\item Tool calling is unstable.
\item Images require a model that supports images.
}
}
}
\examples{
\dontrun{
chat <- chat_mistral()
chat$chat("Tell me three jokes about statisticians")
}
}
\seealso{
Other chatbots: 
\code{\link{chat_anthropic}()},
\code{\link{chat_aws_bedrock}()},
\code{\link{chat_azure_openai}()},
\code{\link{chat_cloudflare}()},
\code{\link{chat_cortex_analyst}()},
\code{\link{chat_databricks}()},
\code{\link{chat_deepseek}()},
\code{\link{chat_github}()},
\code{\link{chat_google_gemini}()},
\code{\link{chat_groq}()},
\code{\link{chat_huggingface}()},
\code{\link{chat_ollama}()},
\code{\link{chat_openai}()},
\code{\link{chat_openrouter}()},
\code{\link{chat_perplexity}()},
\code{\link{chat_portkey}()}
}
\concept{chatbots}
`````

## File: man/chat_ollama.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/provider-ollama.R
\name{chat_ollama}
\alias{chat_ollama}
\alias{models_ollama}
\title{Chat with a local Ollama model}
\usage{
chat_ollama(
  system_prompt = NULL,
  base_url = "http://localhost:11434",
  model,
  seed = NULL,
  api_args = list(),
  echo = NULL,
  api_key = NULL
)

models_ollama(base_url = "http://localhost:11434")
}
\arguments{
\item{system_prompt}{A system prompt to set the behavior of the assistant.}

\item{base_url}{The base URL to the endpoint; the default uses OpenAI.}

\item{model}{The model to use for the chat.
Use \code{models_ollama()} to see all options.}

\item{seed}{Optional integer seed that ChatGPT uses to try and make output
more reproducible.}

\item{api_args}{Named list of arbitrary extra arguments appended to the body
of every chat API call. Combined with the body object generated by ellmer
with \code{\link[=modifyList]{modifyList()}}.}

\item{echo}{One of the following options:
\itemize{
\item \code{none}: don't emit any output (default when running in a function).
\item \code{text}: echo text output as it streams in (default when running at
the console).
\item \code{all}: echo all input and output.
}

Note this only affects the \code{chat()} method.}

\item{api_key}{Ollama doesn't require an API key for local usage and in most
cases you do not need to provide an \code{api_key}.

However, if you're accessing an Ollama instance hosted behind a reverse
proxy or secured endpoint that enforces bearer‐token authentication, you
can set \code{api_key} (or the \code{OLLAMA_API_KEY} environment variable).}
}
\value{
A \link{Chat} object.
}
\description{
To use \code{chat_ollama()} first download and install
\href{https://ollama.com}{Ollama}. Then install some models either from the
command line (e.g. with \verb{ollama pull llama3.1}) or within R using
{\href{https://hauselin.github.io/ollama-r/}{ollamar}} (e.g.
\code{ollamar::pull("llama3.1")}).

This function is a lightweight wrapper around \code{\link[=chat_openai]{chat_openai()}} with
the defaults tweaked for ollama.
\subsection{Known limitations}{
\itemize{
\item Tool calling is not supported with streaming (i.e. when \code{echo} is
\code{"text"} or \code{"all"})
\item Models can only use 2048 input tokens, and there's no way
to get them to use more, except by creating a custom model with a
different default.
\item Tool calling generally seems quite weak, at least with the models I have
tried it with.
}
}
}
\examples{
\dontrun{
chat <- chat_ollama(model = "llama3.2")
chat$chat("Tell me three jokes about statisticians")
}
}
\seealso{
Other chatbots: 
\code{\link{chat_anthropic}()},
\code{\link{chat_aws_bedrock}()},
\code{\link{chat_azure_openai}()},
\code{\link{chat_cloudflare}()},
\code{\link{chat_cortex_analyst}()},
\code{\link{chat_databricks}()},
\code{\link{chat_deepseek}()},
\code{\link{chat_github}()},
\code{\link{chat_google_gemini}()},
\code{\link{chat_groq}()},
\code{\link{chat_huggingface}()},
\code{\link{chat_mistral}()},
\code{\link{chat_openai}()},
\code{\link{chat_openrouter}()},
\code{\link{chat_perplexity}()},
\code{\link{chat_portkey}()}
}
\concept{chatbots}
`````

## File: man/chat_openai.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/provider-openai.R
\name{chat_openai}
\alias{chat_openai}
\alias{models_openai}
\title{Chat with an OpenAI model}
\usage{
chat_openai(
  system_prompt = NULL,
  base_url = "https://api.openai.com/v1",
  api_key = openai_key(),
  model = NULL,
  params = NULL,
  seed = lifecycle::deprecated(),
  api_args = list(),
  echo = c("none", "output", "all")
)

models_openai(base_url = "https://api.openai.com/v1", api_key = openai_key())
}
\arguments{
\item{system_prompt}{A system prompt to set the behavior of the assistant.}

\item{base_url}{The base URL to the endpoint; the default uses OpenAI.}

\item{api_key}{API key to use for authentication.

You generally should not supply this directly, but instead set the \code{OPENAI_API_KEY} environment variable.
The best place to set this is in \code{.Renviron},
which you can easily edit by calling \code{usethis::edit_r_environ()}.}

\item{model}{The model to use for the chat (defaults to "gpt-4.1").
We regularly update the default, so we strongly recommend explicitly specifying a model for anything other than casual use.
Use \code{models_openai()} to see all options.}

\item{params}{Common model parameters, usually created by \code{\link[=params]{params()}}.}

\item{seed}{Optional integer seed that ChatGPT uses to try and make output
more reproducible.}

\item{api_args}{Named list of arbitrary extra arguments appended to the body
of every chat API call. Combined with the body object generated by ellmer
with \code{\link[=modifyList]{modifyList()}}.}

\item{echo}{One of the following options:
\itemize{
\item \code{none}: don't emit any output (default when running in a function).
\item \code{text}: echo text output as it streams in (default when running at
the console).
\item \code{all}: echo all input and output.
}

Note this only affects the \code{chat()} method.}
}
\value{
A \link{Chat} object.
}
\description{
\href{https://openai.com/}{OpenAI} provides a number of chat-based models,
mostly under the \href{https://chat.openai.com/}{ChatGPT} brand.
Note that a ChatGPT Plus membership does not grant access to the API.
You will need to sign up for a developer account (and pay for it) at the
\href{https://platform.openai.com}{developer platform}.
}
\examples{
\dontshow{if (has_credentials("openai")) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
chat <- chat_openai()
chat$chat("
  What is the difference between a tibble and a data frame?
  Answer with a bulleted list
")

chat$chat("Tell me three funny jokes about statisticians")
\dontshow{\}) # examplesIf}
}
\seealso{
Other chatbots: 
\code{\link{chat_anthropic}()},
\code{\link{chat_aws_bedrock}()},
\code{\link{chat_azure_openai}()},
\code{\link{chat_cloudflare}()},
\code{\link{chat_cortex_analyst}()},
\code{\link{chat_databricks}()},
\code{\link{chat_deepseek}()},
\code{\link{chat_github}()},
\code{\link{chat_google_gemini}()},
\code{\link{chat_groq}()},
\code{\link{chat_huggingface}()},
\code{\link{chat_mistral}()},
\code{\link{chat_ollama}()},
\code{\link{chat_openrouter}()},
\code{\link{chat_perplexity}()},
\code{\link{chat_portkey}()}
}
\concept{chatbots}
`````

## File: man/chat_openrouter.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/provider-openrouter.R
\name{chat_openrouter}
\alias{chat_openrouter}
\title{Chat with one of the many models hosted on OpenRouter}
\usage{
chat_openrouter(
  system_prompt = NULL,
  api_key = openrouter_key(),
  model = NULL,
  seed = NULL,
  api_args = list(),
  echo = c("none", "output", "all")
)
}
\arguments{
\item{system_prompt}{A system prompt to set the behavior of the assistant.}

\item{api_key}{API key to use for authentication.

You generally should not supply this directly, but instead set the \code{OPENROUTER_API_KEY} environment variable.
The best place to set this is in \code{.Renviron},
which you can easily edit by calling \code{usethis::edit_r_environ()}.}

\item{model}{The model to use for the chat (defaults to "gpt-4o").
We regularly update the default, so we strongly recommend explicitly specifying a model for anything other than casual use.}

\item{seed}{Optional integer seed that ChatGPT uses to try and make output
more reproducible.}

\item{api_args}{Named list of arbitrary extra arguments appended to the body
of every chat API call. Combined with the body object generated by ellmer
with \code{\link[=modifyList]{modifyList()}}.}

\item{echo}{One of the following options:
\itemize{
\item \code{none}: don't emit any output (default when running in a function).
\item \code{text}: echo text output as it streams in (default when running at
the console).
\item \code{all}: echo all input and output.
}

Note this only affects the \code{chat()} method.}
}
\value{
A \link{Chat} object.
}
\description{
Sign up at \url{https://openrouter.ai}.

Support for features depends on the underlying model that you use; see
\url{https://openrouter.ai/models} for details.
}
\examples{
\dontrun{
chat <- chat_openrouter()
chat$chat("Tell me three jokes about statisticians")
}
}
\seealso{
Other chatbots: 
\code{\link{chat_anthropic}()},
\code{\link{chat_aws_bedrock}()},
\code{\link{chat_azure_openai}()},
\code{\link{chat_cloudflare}()},
\code{\link{chat_cortex_analyst}()},
\code{\link{chat_databricks}()},
\code{\link{chat_deepseek}()},
\code{\link{chat_github}()},
\code{\link{chat_google_gemini}()},
\code{\link{chat_groq}()},
\code{\link{chat_huggingface}()},
\code{\link{chat_mistral}()},
\code{\link{chat_ollama}()},
\code{\link{chat_openai}()},
\code{\link{chat_perplexity}()},
\code{\link{chat_portkey}()}
}
\concept{chatbots}
`````

## File: man/chat_perplexity.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/provider-perplexity.R
\name{chat_perplexity}
\alias{chat_perplexity}
\title{Chat with a model hosted on perplexity.ai}
\usage{
chat_perplexity(
  system_prompt = NULL,
  base_url = "https://api.perplexity.ai/",
  api_key = perplexity_key(),
  model = NULL,
  seed = NULL,
  api_args = list(),
  echo = NULL
)
}
\arguments{
\item{system_prompt}{A system prompt to set the behavior of the assistant.}

\item{base_url}{The base URL to the endpoint; the default uses OpenAI.}

\item{api_key}{API key to use for authentication.

You generally should not supply this directly, but instead set the \code{PERPLEXITY_API_KEY} environment variable.
The best place to set this is in \code{.Renviron},
which you can easily edit by calling \code{usethis::edit_r_environ()}.}

\item{model}{The model to use for the chat (defaults to "llama-3.1-sonar-small-128k-online").
We regularly update the default, so we strongly recommend explicitly specifying a model for anything other than casual use.}

\item{seed}{Optional integer seed that ChatGPT uses to try and make output
more reproducible.}

\item{api_args}{Named list of arbitrary extra arguments appended to the body
of every chat API call. Combined with the body object generated by ellmer
with \code{\link[=modifyList]{modifyList()}}.}

\item{echo}{One of the following options:
\itemize{
\item \code{none}: don't emit any output (default when running in a function).
\item \code{text}: echo text output as it streams in (default when running at
the console).
\item \code{all}: echo all input and output.
}

Note this only affects the \code{chat()} method.}
}
\value{
A \link{Chat} object.
}
\description{
Sign up at \url{https://www.perplexity.ai}.

Perplexity AI is a platform for running LLMs that are capable of
searching the web in real-time to help them answer questions with
information that may not have been available when the model was
trained.

This function is a lightweight wrapper around \code{\link[=chat_openai]{chat_openai()}} with
the defaults tweaked for Perplexity AI.
}
\examples{
\dontrun{
chat <- chat_perplexity()
chat$chat("Tell me three jokes about statisticians")
}
}
\seealso{
Other chatbots: 
\code{\link{chat_anthropic}()},
\code{\link{chat_aws_bedrock}()},
\code{\link{chat_azure_openai}()},
\code{\link{chat_cloudflare}()},
\code{\link{chat_cortex_analyst}()},
\code{\link{chat_databricks}()},
\code{\link{chat_deepseek}()},
\code{\link{chat_github}()},
\code{\link{chat_google_gemini}()},
\code{\link{chat_groq}()},
\code{\link{chat_huggingface}()},
\code{\link{chat_mistral}()},
\code{\link{chat_ollama}()},
\code{\link{chat_openai}()},
\code{\link{chat_openrouter}()},
\code{\link{chat_portkey}()}
}
\concept{chatbots}
`````

## File: man/chat_portkey.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/provider-portkey.R
\name{chat_portkey}
\alias{chat_portkey}
\alias{models_portkey}
\title{Chat with a model hosted on PortkeyAI}
\usage{
chat_portkey(
  system_prompt = NULL,
  base_url = "https://api.portkey.ai/v1",
  api_key = portkeyai_key(),
  virtual_key = NULL,
  model = NULL,
  params = NULL,
  api_args = list(),
  echo = NULL
)

models_portkey(
  base_url = "https://api.portkey.ai/v1",
  api_key = portkeyai_key(),
  virtual_key = NULL
)
}
\arguments{
\item{system_prompt}{A system prompt to set the behavior of the assistant.}

\item{base_url}{The base URL to the endpoint; the default uses OpenAI.}

\item{api_key}{API key to use for authentication.

You generally should not supply this directly, but instead set the \code{PORTKEY_API_KEY} environment variable.
The best place to set this is in \code{.Renviron},
which you can easily edit by calling \code{usethis::edit_r_environ()}.}

\item{virtual_key}{A virtual identifier storing LLM provider's API key. See
\href{https://portkey.ai/docs/product/ai-gateway/virtual-keys}{documentation}.}

\item{model}{The model to use for the chat (defaults to "gpt-4o").
We regularly update the default, so we strongly recommend explicitly specifying a model for anything other than casual use.
Use \code{models_openai()} to see all options.}

\item{params}{Common model parameters, usually created by \code{\link[=params]{params()}}.}

\item{api_args}{Named list of arbitrary extra arguments appended to the body
of every chat API call. Combined with the body object generated by ellmer
with \code{\link[=modifyList]{modifyList()}}.}

\item{echo}{One of the following options:
\itemize{
\item \code{none}: don't emit any output (default when running in a function).
\item \code{text}: echo text output as it streams in (default when running at
the console).
\item \code{all}: echo all input and output.
}

Note this only affects the \code{chat()} method.}
}
\value{
A \link{Chat} object.
}
\description{
\href{https://portkey.ai/docs/product/ai-gateway/universal-api}{PortkeyAI}
provides an interface (AI Gateway) to connect through its Universal API to a
variety of LLMs providers with a single endpoint.
\subsection{Authentication}{

API keys together with configurations of LLM providers are
stored inside Portkey application.
}
}
\examples{
\dontrun{
chat <- chat_portkey(virtual_key = Sys.getenv("PORTKEY_VIRTUAL_KEY"))
chat$chat("Tell me three jokes about statisticians")
}
}
\seealso{
Other chatbots: 
\code{\link{chat_anthropic}()},
\code{\link{chat_aws_bedrock}()},
\code{\link{chat_azure_openai}()},
\code{\link{chat_cloudflare}()},
\code{\link{chat_cortex_analyst}()},
\code{\link{chat_databricks}()},
\code{\link{chat_deepseek}()},
\code{\link{chat_github}()},
\code{\link{chat_google_gemini}()},
\code{\link{chat_groq}()},
\code{\link{chat_huggingface}()},
\code{\link{chat_mistral}()},
\code{\link{chat_ollama}()},
\code{\link{chat_openai}()},
\code{\link{chat_openrouter}()},
\code{\link{chat_perplexity}()}
}
\concept{chatbots}
`````

## File: man/chat_snowflake.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/provider-snowflake.R
\name{chat_snowflake}
\alias{chat_snowflake}
\title{Chat with a model hosted on Snowflake}
\usage{
chat_snowflake(
  system_prompt = NULL,
  account = snowflake_account(),
  credentials = NULL,
  model = NULL,
  api_args = list(),
  echo = c("none", "output", "all")
)
}
\arguments{
\item{system_prompt}{A system prompt to set the behavior of the assistant.}

\item{account}{A Snowflake \href{https://docs.snowflake.com/en/user-guide/admin-account-identifier}{account identifier},
e.g. \code{"testorg-test_account"}. Defaults to the value of the
\code{SNOWFLAKE_ACCOUNT} environment variable.}

\item{credentials}{A list of authentication headers to pass into
\code{\link[httr2:req_headers]{httr2::req_headers()}}, a function that returns them when called, or
\code{NULL}, the default, to use ambient credentials.}

\item{model}{The model to use for the chat (defaults to "llama3.1-70b").
We regularly update the default, so we strongly recommend explicitly specifying a model for anything other than casual use.}

\item{api_args}{Named list of arbitrary extra arguments appended to the body
of every chat API call. Combined with the body object generated by ellmer
with \code{\link[=modifyList]{modifyList()}}.}

\item{echo}{One of the following options:
\itemize{
\item \code{none}: don't emit any output (default when running in a function).
\item \code{text}: echo text output as it streams in (default when running at
the console).
\item \code{all}: echo all input and output.
}

Note this only affects the \code{chat()} method.}
}
\value{
A \link{Chat} object.
}
\description{
The Snowflake provider allows you to interact with LLM models available
through the \href{https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-llm-rest-api}{Cortex LLM REST API}.
\subsection{Authentication}{

\code{chat_snowflake()} picks up the following ambient Snowflake credentials:
\itemize{
\item A static OAuth token defined via the \code{SNOWFLAKE_TOKEN} environment
variable.
\item Key-pair authentication credentials defined via the \code{SNOWFLAKE_USER} and
\code{SNOWFLAKE_PRIVATE_KEY} (which can be a PEM-encoded private key or a path
to one) environment variables.
\item Posit Workbench-managed Snowflake credentials for the corresponding
\code{account}.
\item Viewer-based credentials on Posit Connect. Requires the \pkg{connectcreds}
package.
}
}

\subsection{Known limitations}{

Note that Snowflake-hosted models do not support images, tool calling, or
structured outputs.

See \code{\link[=chat_cortex_analyst]{chat_cortex_analyst()}} to chat with the Snowflake Cortex Analyst rather
than a general-purpose model.
}
}
\examples{
\dontshow{if (has_credentials("cortex")) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
chat <- chat_snowflake()
chat$chat("Tell me a joke in the form of a SQL query.")
\dontshow{\}) # examplesIf}
}
`````

## File: man/chat_vllm.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/provider-vllm.R
\name{chat_vllm}
\alias{chat_vllm}
\alias{models_vllm}
\title{Chat with a model hosted by vLLM}
\usage{
chat_vllm(
  base_url,
  system_prompt = NULL,
  model,
  seed = NULL,
  api_args = list(),
  api_key = vllm_key(),
  echo = NULL
)

models_vllm(base_url, api_key = vllm_key())
}
\arguments{
\item{base_url}{The base URL to the endpoint; the default uses OpenAI.}

\item{system_prompt}{A system prompt to set the behavior of the assistant.}

\item{model}{The model to use for the chat.
Use \code{models_vllm()} to see all options.}

\item{seed}{Optional integer seed that ChatGPT uses to try and make output
more reproducible.}

\item{api_args}{Named list of arbitrary extra arguments appended to the body
of every chat API call. Combined with the body object generated by ellmer
with \code{\link[=modifyList]{modifyList()}}.}

\item{api_key}{API key to use for authentication.

You generally should not supply this directly, but instead set the \code{VLLM_API_KEY} environment variable.
The best place to set this is in \code{.Renviron},
which you can easily edit by calling \code{usethis::edit_r_environ()}.}

\item{echo}{One of the following options:
\itemize{
\item \code{none}: don't emit any output (default when running in a function).
\item \code{text}: echo text output as it streams in (default when running at
the console).
\item \code{all}: echo all input and output.
}

Note this only affects the \code{chat()} method.}
}
\value{
A \link{Chat} object.
}
\description{
\href{https://docs.vllm.ai/en/latest/}{vLLM} is an open source library that
provides an efficient and convenient LLMs model server. You can use
\code{chat_vllm()} to connect to endpoints powered by vLLM.
}
\examples{
\dontrun{
chat <- chat_vllm("http://my-vllm.com")
chat$chat("Tell me three jokes about statisticians")
}
}
`````

## File: man/Chat.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chat.R
\name{Chat}
\alias{Chat}
\title{A chat}
\value{
A Chat object
}
\description{
A \code{Chat} is a sequence of user and assistant \link{Turn}s sent
to a specific \link{Provider}. A \code{Chat} is a mutable R6 object that takes care of
managing the state associated with the chat; i.e. it records the messages
that you send to the server, and the messages that you receive back.
If you register a tool (i.e. an R function that the assistant can call on
your behalf), it also takes care of the tool loop.

You should generally not create this object yourself,
but instead call \code{\link[=chat_openai]{chat_openai()}} or friends instead.
}
\examples{
\dontshow{if (has_credentials("openai")) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
chat <- chat_openai(echo = TRUE)
chat$chat("Tell me a funny joke")
\dontshow{\}) # examplesIf}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-Chat-new}{\code{Chat$new()}}
\item \href{#method-Chat-get_turns}{\code{Chat$get_turns()}}
\item \href{#method-Chat-set_turns}{\code{Chat$set_turns()}}
\item \href{#method-Chat-add_turn}{\code{Chat$add_turn()}}
\item \href{#method-Chat-get_system_prompt}{\code{Chat$get_system_prompt()}}
\item \href{#method-Chat-get_model}{\code{Chat$get_model()}}
\item \href{#method-Chat-set_system_prompt}{\code{Chat$set_system_prompt()}}
\item \href{#method-Chat-get_tokens}{\code{Chat$get_tokens()}}
\item \href{#method-Chat-get_cost}{\code{Chat$get_cost()}}
\item \href{#method-Chat-last_turn}{\code{Chat$last_turn()}}
\item \href{#method-Chat-chat}{\code{Chat$chat()}}
\item \href{#method-Chat-chat_structured}{\code{Chat$chat_structured()}}
\item \href{#method-Chat-chat_structured_async}{\code{Chat$chat_structured_async()}}
\item \href{#method-Chat-chat_async}{\code{Chat$chat_async()}}
\item \href{#method-Chat-stream}{\code{Chat$stream()}}
\item \href{#method-Chat-stream_async}{\code{Chat$stream_async()}}
\item \href{#method-Chat-register_tool}{\code{Chat$register_tool()}}
\item \href{#method-Chat-get_provider}{\code{Chat$get_provider()}}
\item \href{#method-Chat-get_tools}{\code{Chat$get_tools()}}
\item \href{#method-Chat-set_tools}{\code{Chat$set_tools()}}
\item \href{#method-Chat-on_tool_request}{\code{Chat$on_tool_request()}}
\item \href{#method-Chat-on_tool_result}{\code{Chat$on_tool_result()}}
\item \href{#method-Chat-extract_data}{\code{Chat$extract_data()}}
\item \href{#method-Chat-extract_data_async}{\code{Chat$extract_data_async()}}
\item \href{#method-Chat-clone}{\code{Chat$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Chat-new"></a>}}
\if{latex}{\out{\hypertarget{method-Chat-new}{}}}
\subsection{Method \code{new()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Chat$new(provider, system_prompt = NULL, echo = "none")}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{provider}}{A provider object.}

\item{\code{system_prompt}}{System prompt to start the conversation with.}

\item{\code{echo}}{One of the following options:
\itemize{
\item \code{none}: don't emit any output (default when running in a function).
\item \code{text}: echo text output as it streams in (default when running at
the console).
\item \code{all}: echo all input and output.
}

Note this only affects the \code{chat()} method.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Chat-get_turns"></a>}}
\if{latex}{\out{\hypertarget{method-Chat-get_turns}{}}}
\subsection{Method \code{get_turns()}}{
Retrieve the turns that have been sent and received so far
(optionally starting with the system prompt, if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Chat$get_turns(include_system_prompt = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{include_system_prompt}}{Whether to include the system prompt in the
turns (if any exists).}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Chat-set_turns"></a>}}
\if{latex}{\out{\hypertarget{method-Chat-set_turns}{}}}
\subsection{Method \code{set_turns()}}{
Replace existing turns with a new list.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Chat$set_turns(value)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{value}}{A list of \link{Turn}s.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Chat-add_turn"></a>}}
\if{latex}{\out{\hypertarget{method-Chat-add_turn}{}}}
\subsection{Method \code{add_turn()}}{
Add a pair of turns to the chat.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Chat$add_turn(user, system)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{user}}{The user \link{Turn}.}

\item{\code{system}}{The system \link{Turn}.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Chat-get_system_prompt"></a>}}
\if{latex}{\out{\hypertarget{method-Chat-get_system_prompt}{}}}
\subsection{Method \code{get_system_prompt()}}{
If set, the system prompt, it not, \code{NULL}.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Chat$get_system_prompt()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Chat-get_model"></a>}}
\if{latex}{\out{\hypertarget{method-Chat-get_model}{}}}
\subsection{Method \code{get_model()}}{
Retrieve the model name
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Chat$get_model()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Chat-set_system_prompt"></a>}}
\if{latex}{\out{\hypertarget{method-Chat-set_system_prompt}{}}}
\subsection{Method \code{set_system_prompt()}}{
Update the system prompt
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Chat$set_system_prompt(value)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{value}}{A character vector giving the new system prompt}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Chat-get_tokens"></a>}}
\if{latex}{\out{\hypertarget{method-Chat-get_tokens}{}}}
\subsection{Method \code{get_tokens()}}{
A data frame with a \code{tokens} column that proides the
number of input tokens used by user turns and the number of
output tokens used by assistant turns.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Chat$get_tokens(include_system_prompt = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{include_system_prompt}}{Whether to include the system prompt in
the turns (if any exists).}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Chat-get_cost"></a>}}
\if{latex}{\out{\hypertarget{method-Chat-get_cost}{}}}
\subsection{Method \code{get_cost()}}{
The cost of this chat
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Chat$get_cost(include = c("all", "last"))}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{include}}{The default, \code{"all"}, gives the total cumulative cost
of this chat. Alternatively, use \code{"last"} to get the cost of just the
most recent turn.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Chat-last_turn"></a>}}
\if{latex}{\out{\hypertarget{method-Chat-last_turn}{}}}
\subsection{Method \code{last_turn()}}{
The last turn returned by the assistant.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Chat$last_turn(role = c("assistant", "user", "system"))}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{role}}{Optionally, specify a role to find the last turn with
for the role.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
Either a \code{Turn} or \code{NULL}, if no turns with the specified
role have occurred.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Chat-chat"></a>}}
\if{latex}{\out{\hypertarget{method-Chat-chat}{}}}
\subsection{Method \code{chat()}}{
Submit input to the chatbot, and return the response as a
simple string (probably Markdown).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Chat$chat(..., echo = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{The input to send to the chatbot. Can be strings or images
(see \code{\link[=content_image_file]{content_image_file()}} and \code{\link[=content_image_url]{content_image_url()}}.}

\item{\code{echo}}{Whether to emit the response to stdout as it is received. If
\code{NULL}, then the value of \code{echo} set when the chat object was created
will be used.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Chat-chat_structured"></a>}}
\if{latex}{\out{\hypertarget{method-Chat-chat_structured}{}}}
\subsection{Method \code{chat_structured()}}{
Extract structured data
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Chat$chat_structured(..., type, echo = "none", convert = TRUE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{The input to send to the chatbot. Will typically include
the phrase "extract structured data".}

\item{\code{type}}{A type specification for the extracted data. Should be
created with a \code{\link[=type_boolean]{type_()}} function.}

\item{\code{echo}}{Whether to emit the response to stdout as it is received.
Set to "text" to stream JSON data as it's generated (not supported by
all providers).}

\item{\code{convert}}{Automatically convert from JSON lists to R data types
using the schema. For example, this will turn arrays of objects into
data frames and arrays of strings into a character vector.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Chat-chat_structured_async"></a>}}
\if{latex}{\out{\hypertarget{method-Chat-chat_structured_async}{}}}
\subsection{Method \code{chat_structured_async()}}{
Extract structured data, asynchronously. Returns a promise
that resolves to an object matching the type specification.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Chat$chat_structured_async(..., type, echo = "none")}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{The input to send to the chatbot. Will typically include
the phrase "extract structured data".}

\item{\code{type}}{A type specification for the extracted data. Should be
created with a \code{\link[=type_boolean]{type_()}} function.}

\item{\code{echo}}{Whether to emit the response to stdout as it is received.
Set to "text" to stream JSON data as it's generated (not supported by
all providers).}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Chat-chat_async"></a>}}
\if{latex}{\out{\hypertarget{method-Chat-chat_async}{}}}
\subsection{Method \code{chat_async()}}{
Submit input to the chatbot, and receive a promise that
resolves with the response all at once. Returns a promise that resolves
to a string (probably Markdown).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Chat$chat_async(..., tool_mode = c("concurrent", "sequential"))}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{The input to send to the chatbot. Can be strings or images.}

\item{\code{tool_mode}}{Whether tools should be invoked one-at-a-time
(\code{"sequential"}) or concurrently (\code{"concurrent"}). Sequential mode is
best for interactive applications, especially when a tool may involve
an interactive user interface. Concurrent mode is the default and is
best suited for automated scripts or non-interactive applications.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Chat-stream"></a>}}
\if{latex}{\out{\hypertarget{method-Chat-stream}{}}}
\subsection{Method \code{stream()}}{
Submit input to the chatbot, returning streaming results.
Returns A \href{https://coro.r-lib.org/articles/generator.html#iterating}{coro generator}
that yields strings. While iterating, the generator will block while
waiting for more content from the chatbot.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Chat$stream(..., stream = c("text", "content"))}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{The input to send to the chatbot. Can be strings or images.}

\item{\code{stream}}{Whether the stream should yield only \code{"text"} or ellmer's
rich content types. When \code{stream = "content"}, \code{stream()} yields
\link{Content} objects.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Chat-stream_async"></a>}}
\if{latex}{\out{\hypertarget{method-Chat-stream_async}{}}}
\subsection{Method \code{stream_async()}}{
Submit input to the chatbot, returning asynchronously
streaming results. Returns a \href{https://coro.r-lib.org/reference/async_generator.html}{coro async generator} that
yields string promises.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Chat$stream_async(
  ...,
  tool_mode = c("concurrent", "sequential"),
  stream = c("text", "content")
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{The input to send to the chatbot. Can be strings or images.}

\item{\code{tool_mode}}{Whether tools should be invoked one-at-a-time
(\code{"sequential"}) or concurrently (\code{"concurrent"}). Sequential mode is
best for interactive applications, especially when a tool may involve
an interactive user interface. Concurrent mode is the default and is
best suited for automated scripts or non-interactive applications.}

\item{\code{stream}}{Whether the stream should yield only \code{"text"} or ellmer's
rich content types. When \code{stream = "content"}, \code{stream()} yields
\link{Content} objects.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Chat-register_tool"></a>}}
\if{latex}{\out{\hypertarget{method-Chat-register_tool}{}}}
\subsection{Method \code{register_tool()}}{
Register a tool (an R function) that the chatbot can use.
If the chatbot decides to use the function, ellmer will automatically
call it and submit the results back.

The return value of the function. Generally, this should either be a
string, or a JSON-serializable value. If you must have more direct
control of the structure of the JSON that's returned, you can return a
JSON-serializable value wrapped in \code{\link[base:AsIs]{base::I()}}, which ellmer will leave
alone until the entire request is JSON-serialized.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Chat$register_tool(tool_def)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{tool_def}}{Tool definition created by \code{\link[=tool]{tool()}}.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Chat-get_provider"></a>}}
\if{latex}{\out{\hypertarget{method-Chat-get_provider}{}}}
\subsection{Method \code{get_provider()}}{
Get the underlying provider object. For expert use only.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Chat$get_provider()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Chat-get_tools"></a>}}
\if{latex}{\out{\hypertarget{method-Chat-get_tools}{}}}
\subsection{Method \code{get_tools()}}{
Retrieve the list of registered tools.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Chat$get_tools()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Chat-set_tools"></a>}}
\if{latex}{\out{\hypertarget{method-Chat-set_tools}{}}}
\subsection{Method \code{set_tools()}}{
Sets the available tools. For expert use only; most users
should use \code{register_tool()}.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Chat$set_tools(tools)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{tools}}{A list of tool definitions created with \code{\link[=tool]{tool()}}.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Chat-on_tool_request"></a>}}
\if{latex}{\out{\hypertarget{method-Chat-on_tool_request}{}}}
\subsection{Method \code{on_tool_request()}}{
Register a callback for a tool request event.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Chat$on_tool_request(callback)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{callback}}{A function to be called when a tool request event occurs,
which must have \code{request} as its only argument.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A function that can be called to remove the callback.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Chat-on_tool_result"></a>}}
\if{latex}{\out{\hypertarget{method-Chat-on_tool_result}{}}}
\subsection{Method \code{on_tool_result()}}{
Register a callback for a tool result event.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Chat$on_tool_result(callback)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{callback}}{A function to be called when a tool result event occurs,
which must have \code{result} as its only argument.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A function that can be called to remove the callback.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Chat-extract_data"></a>}}
\if{latex}{\out{\hypertarget{method-Chat-extract_data}{}}}
\subsection{Method \code{extract_data()}}{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#deprecated}{\figure{lifecycle-deprecated.svg}{options: alt='[Deprecated]'}}}{\strong{[Deprecated]}}
Deprecated in favour of \verb{$chat_structured()}.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Chat$extract_data(...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{See \verb{$chat_structured()}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Chat-extract_data_async"></a>}}
\if{latex}{\out{\hypertarget{method-Chat-extract_data_async}{}}}
\subsection{Method \code{extract_data_async()}}{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#deprecated}{\figure{lifecycle-deprecated.svg}{options: alt='[Deprecated]'}}}{\strong{[Deprecated]}}
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Chat$extract_data_async(...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{See \verb{$chat_structured_async()}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Chat-clone"></a>}}
\if{latex}{\out{\hypertarget{method-Chat-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Chat$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
`````

## File: man/content_image_url.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/content-image.R
\name{content_image_url}
\alias{content_image_url}
\alias{content_image_file}
\alias{content_image_plot}
\title{Encode images for chat input}
\usage{
content_image_url(url, detail = c("auto", "low", "high"))

content_image_file(path, content_type = "auto", resize = "low")

content_image_plot(width = 768, height = 768)
}
\arguments{
\item{url}{The URL of the image to include in the chat input. Can be a
\verb{data:} URL or a regular URL. Valid image types are PNG, JPEG, WebP, and
non-animated GIF.}

\item{detail}{The \href{https://platform.openai.com/docs/guides/images/image-input-requirements}{detail setting}
for this image. Can be \code{"auto"}, \code{"low"}, or \code{"high"}.}

\item{path}{The path to the image file to include in the chat input. Valid
file extensions are \code{.png}, \code{.jpeg}, \code{.jpg}, \code{.webp}, and (non-animated)
\code{.gif}.}

\item{content_type}{The content type of the image (e.g. \code{image/png}). If
\code{"auto"}, the content type is inferred from the file extension.}

\item{resize}{If \code{"low"}, resize images to fit within 512x512. If \code{"high"},
resize to fit within 2000x768 or 768x2000. (See the \href{https://platform.openai.com/docs/guides/images/image-input-requirements}{OpenAI docs}
for more on why these specific sizes are used.) If \code{"none"}, do not resize.

You can also pass a custom string to resize the image to a specific size,
e.g. \code{"200x200"} to resize to 200x200 pixels while preserving aspect ratio.
Append \code{>} to resize only if the image is larger than the specified size,
and \code{!} to ignore aspect ratio (e.g. \code{"300x200>!"}).

All values other than \code{none} require the \code{magick} package.}

\item{width, height}{Width and height in pixels.}
}
\value{
An input object suitable for including in the \code{...} parameter of
the \code{chat()}, \code{stream()}, \code{chat_async()}, or \code{stream_async()} methods.
}
\description{
These functions are used to prepare image URLs and files for input to the
chatbot. The \code{content_image_url()} function is used to provide a URL to an
image, while \code{content_image_file()} is used to provide the image data itself.
}
\examples{
\dontshow{if (has_credentials("openai")) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
chat <- chat_openai(echo = TRUE)
chat$chat(
  "What do you see in these images?",
  content_image_url("https://www.r-project.org/Rlogo.png"),
  content_image_file(system.file("httr2.png", package = "ellmer"))
)

\dontshow{dev.control('enable')}
plot(waiting ~ eruptions, data = faithful)
chat <- chat_openai(echo = TRUE)
chat$chat(
  "Describe this plot in one paragraph, as suitable for inclusion in
   alt-text. You should briefly describe the plot type, the axes, and
   2-5 major visual patterns.",
   content_image_plot()
)
\dontshow{\}) # examplesIf}
}
`````

## File: man/content_pdf_file.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/content-pdf.R
\name{content_pdf_file}
\alias{content_pdf_file}
\alias{content_pdf_url}
\title{Encode PDFs content for chat input}
\usage{
content_pdf_file(path)

content_pdf_url(url)
}
\arguments{
\item{path, url}{Path or URL to a PDF file.}
}
\value{
A \code{ContentPDF} object
}
\description{
These functions are used to prepare PDFs as input to the chatbot. The
\code{content_pdf_url()} function is used to provide a URL to an PDF file,
while \code{content_pdf_file()} is used to for local PDF files.

Not all providers support PDF input, so check the documentation for the
provider you are using.
}
`````

## File: man/Content.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/content.R
\name{Content}
\alias{Content}
\alias{ContentText}
\alias{ContentImage}
\alias{ContentImageRemote}
\alias{ContentImageInline}
\alias{ContentToolRequest}
\alias{ContentToolResult}
\alias{ContentThinking}
\alias{ContentPDF}
\title{Content types received from and sent to a chatbot}
\usage{
Content()

ContentText(text = stop("Required"))

ContentImage()

ContentImageRemote(url = stop("Required"), detail = "")

ContentImageInline(type = stop("Required"), data = NULL)

ContentToolRequest(
  id = stop("Required"),
  name = stop("Required"),
  arguments = list(),
  tool = NULL
)

ContentToolResult(value = NULL, error = NULL, extra = list(), request = NULL)

ContentThinking(thinking = stop("Required"), extra = list())

ContentPDF(type = stop("Required"), data = stop("Required"))
}
\arguments{
\item{text}{A single string.}

\item{url}{URL to a remote image.}

\item{detail}{Not currently used.}

\item{type}{MIME type of the image.}

\item{data}{Base64 encoded image data.}

\item{id}{Tool call id (used to associate a request and a result).
Automatically managed by \pkg{ellmer}.}

\item{name}{Function name}

\item{arguments}{Named list of arguments to call the function with.}

\item{tool}{ellmer automatically matches a tool request to the tools defined
for the chatbot. If \code{NULL}, the request did not match a defined tool.}

\item{value}{The results of calling the tool function, if it succeeded.}

\item{error}{The error message, as a string, or the error condition thrown
as a result of a failure when calling the tool function. Must be \code{NULL}
when the tool call is successful.}

\item{extra}{Additional data.}

\item{request}{The \link{ContentToolRequest} associated with the tool result,
automatically added by \pkg{ellmer} when evaluating the tool call.}

\item{thinking}{The text of the thinking output.}
}
\value{
S7 objects that all inherit from \code{Content}
}
\description{
Use these functions if you're writing a package that extends ellmer and need
to customise methods for various types of content. For normal use, see
\code{\link[=content_image_url]{content_image_url()}} and friends.

ellmer abstracts away differences in the way that different \link{Provider}s
represent various types of content, allowing you to more easily write
code that works with any chatbot. This set of classes represents types of
content that can be either sent to and received from a provider:
\itemize{
\item \code{ContentText}: simple text (often in markdown format). This is the only
type of content that can be streamed live as it's received.
\item \code{ContentImageRemote} and \code{ContentImageInline}: images, either as a pointer
to a remote URL or included inline in the object. See
\code{\link[=content_image_file]{content_image_file()}} and friends for convenient ways to construct these
objects.
\item \code{ContentToolRequest}: a request to perform a tool call (sent by the
assistant).
\item \code{ContentToolResult}: the result of calling the tool (sent by the user).
This object is automatically created from the value returned by calling the
\code{\link[=tool]{tool()}} function. Alternatively, expert users can return a
\code{ContentToolResult} from a \code{\link[=tool]{tool()}} function to include additional data or
to customize the display of the result.
}
}
\examples{
Content()
ContentText("Tell me a joke")
ContentImageRemote("https://www.r-project.org/Rlogo.png")
ContentToolRequest(id = "abc", name = "mean", arguments = list(x = 1:5))
}
`````

## File: man/contents_text.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/content.R
\name{contents_text}
\alias{contents_text}
\alias{contents_html}
\alias{contents_markdown}
\title{Format contents into a textual representation}
\usage{
contents_text(content, ...)

contents_html(content, ...)

contents_markdown(content, ...)
}
\arguments{
\item{content}{The \link{Turn} or \link{Content} object to be converted into text.
\code{contents_markdown()} also accepts \link{Chat} instances to turn the entire
conversation history into markdown text.}

\item{...}{Additional arguments passed to methods.}
}
\value{
A string of text, markdown or HTML.
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#experimental}{\figure{lifecycle-experimental.svg}{options: alt='[Experimental]'}}}{\strong{[Experimental]}}

These generic functions can be use to convert \link{Turn} contents or \link{Content}
objects into textual representations.
\itemize{
\item \code{contents_text()} is the most minimal and only includes \link{ContentText}
objects in the output.
\item \code{contents_markdown()} returns the text content (which it assumes to be
markdown and does not convert it) plus markdown representations of images
and other content types.
\item \code{contents_html()} returns the text content, converted from markdown to
HTML with \code{\link[commonmark:commonmark]{commonmark::markdown_html()}}, plus HTML representations of
images and other content types.
}

These content types will continue to grow and change as ellmer evolves to
support more providers and as providers add more content types.
}
\examples{
turns <- list(
  Turn("user", contents = list(
    ContentText("What's this image?"),
    content_image_url("https://placehold.co/200x200")
  )),
  Turn("assistant", "It's a placeholder image.")
)

lapply(turns, contents_text)
lapply(turns, contents_markdown)
if (rlang::is_installed("commonmark")) {
  contents_html(turns[[1]])
}

}
`````

## File: man/create_tool_def.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tools-def-auto.R
\name{create_tool_def}
\alias{create_tool_def}
\title{Create metadata for a tool}
\usage{
create_tool_def(
  topic,
  chat = NULL,
  model = deprecated(),
  echo = interactive(),
  verbose = FALSE
)
}
\arguments{
\item{topic}{A symbol or string literal naming the function to create
metadata for. Can also be an expression of the form \code{pkg::fun}.}

\item{chat}{A \code{Chat} object used to generate the output. If \code{NULL}
(the default) uses \code{\link[=chat_openai]{chat_openai()}}.}

\item{model}{\code{lifecycle::badge("deprecated")} Formally used for definining
the model used by the chat. Now supply \code{chat} instead.}

\item{echo}{Emit the registration code to the console. Defaults to \code{TRUE} in
interactive sessions.}

\item{verbose}{If \code{TRUE}, print the input we send to the LLM, which may be
useful for debugging unexpectedly poor results.}
}
\value{
A \code{register_tool} call that you can copy and paste into your code.
Returned invisibly if \code{echo} is \code{TRUE}.
}
\description{
In order to use a function as a tool in a chat, you need to craft the right
call to \code{\link[=tool]{tool()}}. This function helps you do that for documented functions by
extracting the function's R documentation and creating a \code{tool()} call for
you, using an LLM. It's meant to be used interactively while writing your
code, not as part of your final code.

If the function has package documentation, that will be used. Otherwise, if
the source code of the function can be automatically detected, then the
comments immediately preceding the function are used (especially helpful if
those are Roxygen comments). If neither are available, then just the function
signature is used.

Note that this function is inherently imperfect. It can't handle all possible
R functions, because not all parameters are suitable for use in a tool call
(for example, because they're not serializable to simple JSON objects). The
documentation might not specify the expected shape of arguments to the level
of detail that would allow an exact JSON schema to be generated. Please be
sure to review the generated code before using it!
}
\examples{
\dontrun{
  # These are all equivalent
  create_tool_def(rnorm)
  create_tool_def(stats::rnorm)
  create_tool_def("rnorm")
  create_tool_def("rnorm", chat = chat_azure_openai())
}

}
`````

## File: man/deprecated.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deprecated.R
\name{deprecated}
\alias{deprecated}
\alias{chat_cortex}
\alias{chat_azure}
\alias{chat_bedrock}
\alias{chat_claude}
\alias{chat_gemini}
\title{Deprecated functions}
\usage{
chat_cortex(...)

chat_azure(...)

chat_bedrock(...)

chat_claude(...)

chat_gemini(...)
}
\arguments{
\item{...}{Additional arguments passed from the deprecated function to its
replacement.}
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#deprecated}{\figure{lifecycle-deprecated.svg}{options: alt='[Deprecated]'}}}{\strong{[Deprecated]}}
\subsection{Deprecated in v0.2.0}{
\itemize{
\item \code{\link[=chat_azure]{chat_azure()}} was renamed to \code{\link[=chat_azure_openai]{chat_azure_openai()}}.
\item \code{\link[=chat_bedrock]{chat_bedrock()}} was renamed to \code{\link[=chat_aws_bedrock]{chat_aws_bedrock()}}.
\item \code{\link[=chat_claude]{chat_claude()}} was renamed to \code{\link[=chat_anthropic]{chat_anthropic()}}.
\item \code{\link[=chat_gemini]{chat_gemini()}} was renamed to \code{\link[=chat_google_gemini]{chat_google_gemini()}}.
}
}

\subsection{Deprecated in v0.1.1}{
\itemize{
\item \code{\link[=chat_cortex]{chat_cortex()}} was renamed in v0.1.1 to \code{\link[=chat_cortex_analyst]{chat_cortex_analyst()}} to
distinguish it from the more general-purpose Snowflake Cortex chat
function, \code{\link[=chat_snowflake]{chat_snowflake()}}.
}
}
}
\keyword{internal}
`````

## File: man/ellmer-package.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ellmer-package.R
\docType{package}
\name{ellmer-package}
\alias{ellmer}
\alias{ellmer-package}
\title{ellmer: Chat with Large Language Models}
\description{
\if{html}{\figure{logo.png}{options: style='float: right' alt='logo' width='120'}}

Chat with large language models from a range of providers including 'Claude' \url{https://claude.ai}, 'OpenAI' \url{https://chatgpt.com}, and more. Supports streaming, asynchronous calls, tool calling, and structured data extraction.
}
\seealso{
Useful links:
\itemize{
  \item \url{https://ellmer.tidyverse.org}
  \item \url{https://github.com/tidyverse/ellmer}
  \item Report bugs at \url{https://github.com/tidyverse/ellmer/issues}
}

}
\author{
\strong{Maintainer}: Hadley Wickham \email{hadley@posit.co} (\href{https://orcid.org/0000-0003-4757-117X}{ORCID})

Authors:
\itemize{
  \item Joe Cheng
  \item Aaron Jacobs
}

Other contributors:
\itemize{
  \item Posit Software, PBC (03wc8by49) [copyright holder, funder]
}

}
\keyword{internal}
`````

## File: man/google_upload.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/provider-gemini-upload.R
\name{google_upload}
\alias{google_upload}
\title{Upload a file to gemini}
\usage{
google_upload(
  path,
  base_url = "https://generativelanguage.googleapis.com/v1beta/",
  api_key = NULL,
  mime_type = NULL
)
}
\arguments{
\item{path}{Path to a file to upload.}

\item{base_url}{The base URL to the endpoint; the default uses OpenAI.}

\item{api_key}{API key to use for authentication.

You generally should not supply this directly, but instead set the \code{GOOGLE_API_KEY} environment variable.
The best place to set this is in \code{.Renviron},
which you can easily edit by calling \code{usethis::edit_r_environ()}.
For Gemini, you can alternatively set \code{GEMINI_API_KEY}.}

\item{mime_type}{Optionally, specify the mime type of the file.
If not specified, will be guesses from the file extension.}
}
\value{
A \verb{<ContentUploaded>} object that can be passed to \verb{$chat()}.
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#experimental}{\figure{lifecycle-experimental.svg}{options: alt='[Experimental]'}}}{\strong{[Experimental]}}

This function uploads a file then waits for Gemini to finish processing it
so that you can immediately use it in a prompt. It's experimental because
it's currently Gemini specific, and we expect other providers to evolve
similar feature in the future.

Uploaded files are automatically deleted after 2 days. Each file must be
less than 2 GB and you can upload a total of 20 GB. ellmer doesn't currently
provide a way to delete files early; please
\href{https://github.com/tidyverse/ellmer/issues}{file an issue} if this would
be useful for you.
}
\examples{
\dontrun{
file <- google_upload("path/to/file.pdf")

chat <- chat_openai()
chat$chat(file, "Give me a three paragraph summary of this PDF")
}
}
`````

## File: man/has_credentials.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{has_credentials}
\alias{has_credentials}
\title{Are credentials avaiable?}
\usage{
has_credentials(provider)
}
\arguments{
\item{provider}{Provider name.}
}
\description{
Used for examples/testing.
}
\keyword{internal}
`````

## File: man/interpolate.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/interpolate.R
\name{interpolate}
\alias{interpolate}
\alias{interpolate_file}
\alias{interpolate_package}
\title{Helpers for interpolating data into prompts}
\usage{
interpolate(prompt, ..., .envir = parent.frame())

interpolate_file(path, ..., .envir = parent.frame())

interpolate_package(package, path, ..., .envir = parent.frame())
}
\arguments{
\item{prompt}{A prompt string. You should not generally expose this
to the end user, since glue interpolation makes it easy to run arbitrary
code.}

\item{...}{Define additional temporary variables for substitution.}

\item{.envir}{Environment to evaluate \code{...} expressions in. Used when
wrapping in another function. See \code{vignette("wrappers", package = "glue")}
for more details.}

\item{path}{A path to a prompt file (often a \code{.md}).}

\item{package}{Package name.}
}
\value{
A \{glue\} string.
}
\description{
These functions are lightweight wrappers around
\href{https://glue.tidyverse.org/}{glue} that make it easier to interpolate
dynamic data into a static prompt:
\itemize{
\item \code{interpolate()} works with a string.
\item \code{interpolate_file()} works with a file.
\item \code{interpolate_package()} works with a file in the \code{insts/prompt}
directory of a package.
}

Compared to glue, dynamic values should be wrapped in \code{{{ }}}, making it
easier to include R code and JSON in your prompt.
}
\examples{
joke <- "You're a cool dude who loves to make jokes. Tell me a joke about {{topic}}."

# You can supply valuese directly:
interpolate(joke, topic = "bananas")

# Or allow interpolate to find them in the current environment:
topic <- "applies"
interpolate(joke)


}
`````

## File: man/live_console.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shiny.R
\name{live_console}
\alias{live_console}
\alias{live_browser}
\title{Open a live chat application}
\usage{
live_console(chat, quiet = FALSE)

live_browser(chat, quiet = FALSE)
}
\arguments{
\item{chat}{A chat object created by \code{\link[=chat_openai]{chat_openai()}} or friends.}

\item{quiet}{If \code{TRUE}, suppresses the initial message that explains how
to use the console.}
}
\value{
(Invisibly) The input \code{chat}.
}
\description{
\itemize{
\item \code{live_console()} lets you chat interactively in the console.
\item \code{live_browser()} lets you chat interactively in a browser.
}

Note that these functions will mutate the input \code{chat} object as
you chat because your turns will be appended to the history.
}
\examples{
\dontrun{
chat <- chat_anthropic()
live_console(chat)
live_browser(chat)
}
}
`````

## File: man/parallel_chat.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chat-parallel.R
\name{parallel_chat}
\alias{parallel_chat}
\alias{parallel_chat_structured}
\title{Submit multiple chats in parallel}
\usage{
parallel_chat(chat, prompts, max_active = 10, rpm = 500)

parallel_chat_structured(
  chat,
  prompts,
  type,
  convert = TRUE,
  include_tokens = FALSE,
  include_cost = FALSE,
  max_active = 10,
  rpm = 500
)
}
\arguments{
\item{chat}{A base chat object.}

\item{prompts}{A vector created by \code{\link[=interpolate]{interpolate()}} or a list
of character vectors.}

\item{max_active}{The maximum number of simultaneous requests to send.

For \code{\link[=chat_anthropic]{chat_anthropic()}}, note that the number of active connections is
limited primarily by the output tokens per minute limit (OTPM) which is
estimated from the \code{max_tokens} parameter, which defaults to 4096. That
means if your usage tier limits you to 16,000 OTPM, you should either set
\code{max_active = 4} (16,000 / 4096) to decrease the number of active
connections or use \code{\link[=params]{params()}} in \code{chat_anthropic()} to decrease
\code{max_tokens}.}

\item{rpm}{Maximum number of requests per minute.}

\item{type}{A type specification for the extracted data. Should be
created with a \code{\link[=type_boolean]{type_()}} function.}

\item{convert}{If \code{TRUE}, automatically convert from JSON lists to R
data types using the schema. This typically works best when \code{type} is
\code{\link[=type_object]{type_object()}} as this will give you a data frame with one column for
each property. If \code{FALSE}, returns a list.}

\item{include_tokens}{If \code{TRUE}, and the result is a data frame, will
add \code{input_tokens} and \code{output_tokens} columns giving the total input
and output tokens for each prompt.}

\item{include_cost}{If \code{TRUE}, and the result is a data frame, will
add \code{cost} column giving the cost of each prompt.}
}
\value{
For \code{parallel_chat()}, a list of \link{Chat} objects, one for each prompt.
For \code{parallel_chat_structured()}, a single structured data object with one
element for each prompt. Typically, when \code{type} is an object, this will
will be a data frame with one row for each prompt, and one column for each
property.
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#experimental}{\figure{lifecycle-experimental.svg}{options: alt='[Experimental]'}}}{\strong{[Experimental]}}

If you have multiple prompts, you can submit them in parallel. This is
typically considerably faster than submitting them in sequence, especially
with Gemini and OpenAI.

If you're using \code{\link[=chat_openai]{chat_openai()}} or \code{\link[=chat_anthropic]{chat_anthropic()}} and you're willing
to wait longer, you might want to use \code{\link[=batch_chat]{batch_chat()}} instead, as it comes
with a 50\% discount in return for taking up to 24 hours.
}
\examples{
\dontshow{if (ellmer::has_credentials("openai")) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
chat <- chat_openai()

# Chat ----------------------------------------------------------------------
country <- c("Canada", "New Zealand", "Jamaica", "United States")
prompts <- interpolate("What's the capital of {{country}}?")
parallel_chat(chat, prompts)

# Structured data -----------------------------------------------------------
prompts <- list(
  "I go by Alex. 42 years on this planet and counting.",
  "Pleased to meet you! I'm Jamal, age 27.",
  "They call me Li Wei. Nineteen years young.",
  "Fatima here. Just celebrated my 35th birthday last week.",
  "The name's Robert - 51 years old and proud of it.",
  "Kwame here - just hit the big 5-0 this year."
)
type_person <- type_object(name = type_string(), age = type_number())
parallel_chat_structured(chat, prompts, type_person)
\dontshow{\}) # examplesIf}
}
`````

## File: man/params.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/params.R
\name{params}
\alias{params}
\title{Standard model parameters}
\usage{
params(
  temperature = NULL,
  top_p = NULL,
  top_k = NULL,
  frequency_penalty = NULL,
  presence_penalty = NULL,
  seed = NULL,
  max_tokens = NULL,
  log_probs = NULL,
  stop_sequences = NULL,
  ...
)
}
\arguments{
\item{temperature}{Temperature of the sampling distribution.}

\item{top_p}{The cumulative probability for token selection.}

\item{top_k}{The number of highest probability vocabulary tokens to keep.}

\item{frequency_penalty}{Frequency penalty for generated tokens.}

\item{presence_penalty}{Presence penalty for generated tokens.}

\item{seed}{Seed for random number generator.}

\item{max_tokens}{Maximum number of tokens to generate.}

\item{log_probs}{Include the log probabilities in the output?}

\item{stop_sequences}{A character vector of tokens to stop generation on.}

\item{...}{Additional named parameters to send to the provider.}
}
\description{
This helper function makes it easier to create a list of parameters used
across many models. The parameter names are automatically standardised and
included in the correctly place in the API call.

Note that parameters that are not supported by a given provider will generate
a warning, not an error. This allows you to use the same set of parameters
across multiple providers.
}
`````

## File: man/Provider.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/provider.R
\name{Provider}
\alias{Provider}
\title{A chatbot provider}
\usage{
Provider(
  name = stop("Required"),
  model = stop("Required"),
  base_url = stop("Required"),
  params = list(),
  extra_args = list()
)
}
\arguments{
\item{name}{Name of the provider.}

\item{model}{Name of the model.}

\item{base_url}{The base URL for the API.}

\item{params}{A list of standard parameters created by \code{\link[=params]{params()}}.}

\item{extra_args}{Arbitrary extra arguments to be included in the request body.}
}
\value{
An S7 Provider object.
}
\description{
A Provider captures the details of one chatbot service/API. This captures
how the API works, not the details of the underlying large language model.
Different providers might offer the same (open source) model behind a
different API.
}
\details{
To add support for a new backend, you will need to subclass \code{Provider}
(adding any additional fields that your provider needs) and then implement
the various generics that control the behavior of each provider.
}
\examples{
Provider(
  name = "CoolModels",
  model = "my_model",
  base_url = "https://cool-models.com"
)
}
`````

## File: man/token_usage.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tokens.R
\name{token_usage}
\alias{token_usage}
\title{Report on token usage in the current session}
\usage{
token_usage()
}
\value{
A data frame
}
\description{
Call this function to find out the cumulative number of tokens that you
have sent and recieved in the current session. The price will be shown
if known.
}
\examples{
token_usage()
}
`````

## File: man/tool_annotations.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tools-def.R
\name{tool_annotations}
\alias{tool_annotations}
\title{Tool annotations}
\usage{
tool_annotations(
  title = NULL,
  read_only_hint = NULL,
  open_world_hint = NULL,
  idempotent_hint = NULL,
  destructive_hint = NULL,
  ...
)
}
\arguments{
\item{title}{A human-readable title for the tool.}

\item{read_only_hint}{If \code{TRUE}, the tool does not modify its environment.}

\item{open_world_hint}{If \code{TRUE}, the tool may interact with an "open world"
of external entities. If \code{FALSE}, the tool's domain of interaction is
closed. For example, the world of a web search tool is open, but the world
of a memory tool is not.}

\item{idempotent_hint}{If \code{TRUE}, calling the tool repeatedly with the same
arguments will have no additional effect on its environment. (Only
meaningful when \code{read_only_hint} is \code{FALSE}.)}

\item{destructive_hint}{If \code{TRUE}, the tool may perform destructive updates
to its environment, otherwise it only performs additive updates. (Only
meaningful when \code{read_only_hint} is \code{FALSE}.)}

\item{...}{Additional named parameters to include in the tool annotations.}
}
\value{
A list of tool annotations.
}
\description{
Tool annotations are additional properties that, when passed to the
\code{.annotations} argument of \code{\link[=tool]{tool()}}, provide additional information about the
tool and its behavior. This information can be used for display to users, for
example in a Shiny app or another user interface.

The annotations in \code{tool_annotations()} are drawn from the \href{https://modelcontextprotocol.io/introduction}{Model Context Protocol} and are considered
\emph{hints}. Tool authors should use these annotations to communicate tool
properties, but users should note that these annotations are not guaranteed.
}
\examples{
# See ?tool() for a full example using this function.
# We're creating a tool around R's `rnorm()` function to allow the chatbot to
# generate random numbers from a normal distribution.
tool_rnorm <- tool(
  rnorm,
  # Describe the tool function to the LLM
  .description = "Drawn numbers from a random normal distribution",
  # Describe the parameters used by the tool function
  n = type_integer("The number of observations. Must be a positive integer."),
  mean = type_number("The mean value of the distribution."),
  sd = type_number("The standard deviation of the distribution. Must be a non-negative number."),
  # Tool annotations optionally provide additional context to the LLM
  .annotations = tool_annotations(
    title = "Draw Random Normal Numbers",
    read_only_hint = TRUE, # the tool does not modify any state
    open_world_hint = FALSE # the tool does not interact with the outside world
  )
)

}
\seealso{
Other tool calling helpers: 
\code{\link{tool}()},
\code{\link{tool_reject}()}
}
\concept{tool calling helpers}
`````

## File: man/tool_reject.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tools-def.R
\name{tool_reject}
\alias{tool_reject}
\title{Reject a tool call}
\usage{
tool_reject(reason = "The user has chosen to disallow the tool call.")
}
\arguments{
\item{reason}{A character string describing the reason for rejecting the
tool call.}
}
\value{
Throws an error of class \code{ellmer_tool_reject} with the provided
reason.
}
\description{
Throws an error to reject a tool call. \code{tool_reject()} can be used within the
tool function to indicate that the tool call should not be processed.
\code{tool_reject()} can also be called in an \code{Chat$on_tool_request()} callback.
When used in the callback, the tool call is rejected before the tool
function is invoked.

Here's an example where \code{utils::askYesNo()} is used to ask the user for
permission before accessing their current working directory. This happens
directly in the tool function and is appropriate when you write the tool
definition and know exactly how it will be called.

\if{html}{\out{<div class="sourceCode r">}}\preformatted{chat <- chat_openai(model = "gpt-4.1-nano")

list_files <- function() \{
  allow_read <- utils::askYesNo(
    "Would you like to allow access to your current directory?"
  )
  if (isTRUE(allow_read)) \{
    dir(pattern = "[.](r|R|csv)$")
  \} else \{
    tool_reject()
  \}
\}

chat$register_tool(tool(
  list_files,
  "List files in the user's current directory"
))

chat$chat("What files are available in my current directory?")
#> [tool call] list_files()
#> Would you like to allow access to your current directory? (Yes/no/cancel) no
#> #> Error: Tool call rejected. The user has chosen to disallow the tool #' call.
#> It seems I am unable to access the files in your current directory right now.
#> If you can tell me what specific files you're looking for or if you can #' provide
#> the list, I can assist you further.

chat$chat("Try again.")
#> [tool call] list_files()
#> Would you like to allow access to your current directory? (Yes/no/cancel) yes
#> #> app.R
#> #> data.csv
#> The files available in your current directory are "app.R" and "data.csv".
}\if{html}{\out{</div>}}

You can achieve a similar experience with tools written by others by using a
\code{tool_request} callback. In the next example, imagine the tool is provided by
a third-party package. This example implements a simple menu to ask the user
for consent before running \emph{any}  tool.

\if{html}{\out{<div class="sourceCode r">}}\preformatted{packaged_list_files_tool <- tool(
  function() dir(pattern = "[.](r|R|csv)$"),
  "List files in the user's current directory"
)

chat <- chat_openai(model = "gpt-4.1-nano")
chat$register_tool(packaged_list_files_tool)

always_allowed <- c()

# ContentToolRequest
chat$on_tool_request(function(request) \{
  if (request@name \%in\% always_allowed) return()

  answer <- utils::menu(
    title = sprintf("Allow tool `\%s()` to run?", request@name),
    choices = c("Always", "Once", "No"),
    graphics = FALSE
  )

  if (answer == 1) \{
    always_allowed <<- append(always_allowed, request@name)
  \} else if (answer \%in\% c(0, 3)) \{
    tool_reject()
  \}
\})

# Try choosing different answers to the menu each time
chat$chat("What files are available in my current directory?")
chat$chat("How about now?")
chat$chat("And again now?")
}\if{html}{\out{</div>}}
}
\seealso{
Other tool calling helpers: 
\code{\link{tool}()},
\code{\link{tool_annotations}()}
}
\concept{tool calling helpers}
`````

## File: man/tool.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tools-def.R
\name{tool}
\alias{tool}
\title{Define a tool}
\usage{
tool(
  .fun,
  .description,
  ...,
  .name = NULL,
  .convert = TRUE,
  .annotations = list()
)
}
\arguments{
\item{.fun}{The function to be invoked when the tool is called. The return
value of the function is sent back to the chatbot.

Expert users can customize the tool result by returning a
\link{ContentToolResult} object.}

\item{.description}{A detailed description of what the function does.
Generally, the more information that you can provide here, the better.}

\item{...}{Name-type pairs that define the arguments accepted by the
function. Each element should be created by a \code{\link[=type_boolean]{type_*()}}
function.}

\item{.name}{The name of the function.}

\item{.convert}{Should JSON inputs be automatically convert to their
R data type equivalents? Defaults to \code{TRUE}.}

\item{.annotations}{Additional properties that describe the tool and its
behavior. Usually created by \code{\link[=tool_annotations]{tool_annotations()}}, where you can find a
description of the annotation properties recommended by the \href{https://modelcontextprotocol.io/introduction}{Model Context Protocol}.}
}
\value{
An S7 \code{ToolDef} object.
}
\description{
Define an R function for use by a chatbot. The function will always be
run in the current R instance.

Learn more in \code{vignette("tool-calling")}.
}
\examples{
\dontshow{if (has_credentials("openai")) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}

# First define the metadata that the model uses to figure out when to
# call the tool
tool_rnorm <- tool(
  rnorm,
  "Drawn numbers from a random normal distribution",
  n = type_integer("The number of observations. Must be a positive integer."),
  mean = type_number("The mean value of the distribution."),
  sd = type_number("The standard deviation of the distribution. Must be a non-negative number."),
  .annotations = tool_annotations(
    title = "Draw Random Normal Numbers",
    read_only_hint = TRUE,
    open_world_hint = FALSE
  )
)
chat <- chat_openai()
# Then register it
chat$register_tool(tool_rnorm)

# Then ask a question that needs it.
chat$chat("
  Give me five numbers from a random normal distribution.
")

# Look at the chat history to see how tool calling works:
# Assistant sends a tool request which is evaluated locally and
# results are send back in a tool result.
\dontshow{\}) # examplesIf}
}
\seealso{
Other tool calling helpers: 
\code{\link{tool_annotations}()},
\code{\link{tool_reject}()}
}
\concept{tool calling helpers}
`````

## File: man/Turn.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/turns.R
\name{Turn}
\alias{Turn}
\title{A user or assistant turn}
\usage{
Turn(role, contents = list(), json = list(), tokens = c(0, 0))
}
\arguments{
\item{role}{Either "user", "assistant", or "system".}

\item{contents}{A list of \link{Content} objects.}

\item{json}{The serialized JSON corresponding to the underlying data of
the turns. Currently only provided for assistant.

This is useful if there's information returned by the provider that ellmer
doesn't otherwise expose.}

\item{tokens}{A numeric vector of length 2 representing the number of
input and output tokens (respectively) used in this turn. Currently
only recorded for assistant turns.}
}
\value{
An S7 \code{Turn} object
}
\description{
Every conversation with a chatbot consists of pairs of user and assistant
turns, corresponding to an HTTP request and response. These turns are
represented by the \code{Turn} object, which contains a list of \link{Content}s representing
the individual messages within the turn. These might be text, images, tool
requests (assistant only), or tool responses (user only).

Note that a call to \verb{$chat()} and related functions may result in multiple
user-assistant turn cycles. For example, if you have registered tools,
ellmer will automatically handle the tool calling loop, which may result in
any number of additional cycles. Learn more about tool calling in
\code{vignette("tool-calling")}.
}
\examples{
Turn(role = "user", contents = list(ContentText("Hello, world!")))
}
`````

## File: man/type_boolean.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/types.R
\name{type_boolean}
\alias{type_boolean}
\alias{type_integer}
\alias{type_number}
\alias{type_string}
\alias{type_enum}
\alias{type_array}
\alias{type_object}
\title{Type specifications}
\usage{
type_boolean(description = NULL, required = TRUE)

type_integer(description = NULL, required = TRUE)

type_number(description = NULL, required = TRUE)

type_string(description = NULL, required = TRUE)

type_enum(description = NULL, values, required = TRUE)

type_array(description = NULL, items, required = TRUE)

type_object(
  .description = NULL,
  ...,
  .required = TRUE,
  .additional_properties = FALSE
)
}
\arguments{
\item{description, .description}{The purpose of the component. This is
used by the LLM to determine what values to pass to the tool or what
values to extract in the structured data, so the more detail that you can
provide here, the better.}

\item{required, .required}{Is the component or argument required?

In type descriptions for structured data, if \code{required = FALSE} and the
component does not exist in the data, the LLM may hallucinate a value. Only
applies when the element is nested inside of a \code{type_object()}.

In tool definitions, \code{required = TRUE} signals that the LLM should always
provide a value. Arguments with \code{required = FALSE} should have a default
value in the tool function's definition. If the LLM does not provide a
value, the default value will be used.}

\item{values}{Character vector of permitted values.}

\item{items}{The type of the array items. Can be created by any of the
\code{type_} function.}

\item{...}{Name-type pairs defineing the components that the object must
possess.}

\item{.additional_properties}{Can the object have arbitrary additional
properties that are not explicitly listed? Only supported by Claude.}
}
\description{
These functions specify object types in a way that chatbots understand and
are used for tool calling and structured data extraction. Their names are
based on the \href{https://json-schema.org}{JSON schema}, which is what the APIs
expect behind the scenes. The translation from R concepts to these types is
fairly straightforward.
\itemize{
\item \code{type_boolean()}, \code{type_integer()}, \code{type_number()}, and \code{type_string()}
each represent scalars. These are equivalent to length-1 logical,
integer, double, and character vectors (respectively).
\item \code{type_enum()} is equivalent to a length-1 factor; it is a string that can
only take the specified values.
\item \code{type_array()} is equivalent to a vector in R. You can use it to represent
an atomic vector: e.g. \code{type_array(items = type_boolean())} is equivalent
to a logical vector and \code{type_array(items = type_string())} is equivalent
to a character vector). You can also use it to represent a list of more
complicated types where every element is the same type (R has no base
equivalent to this), e.g. \code{type_array(items = type_array(items = type_string()))}
represents a list of character vectors.
\item \code{type_object()} is equivalent to a named list in R, but where every element
must have the specified type. For example,
\code{type_object(a = type_string(), b = type_array(type_integer()))} is
equivalent to a list with an element called \code{a} that is a string and
an element called \code{b} that is an integer vector.
}
}
\examples{
# An integer vector
type_array(items = type_integer())

# The closest equivalent to a data frame is an array of objects
type_array(items = type_object(
   x = type_boolean(),
   y = type_string(),
   z = type_number()
))

# There's no specific type for dates, but you use a string with the
# requested format in the description (it's not gauranteed that you'll
# get this format back, but you should most of the time)
type_string("The creation date, in YYYY-MM-DD format.")
type_string("The update date, in dd/mm/yyyy format.")
}
`````

## File: man/Type.Rd
`````
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/types.R
\name{Type}
\alias{Type}
\alias{TypeBasic}
\alias{TypeEnum}
\alias{TypeArray}
\alias{TypeObject}
\title{Type definitions for function calling and structured data extraction.}
\usage{
TypeBasic(description = NULL, required = TRUE, type = stop("Required"))

TypeEnum(description = NULL, required = TRUE, values = character(0))

TypeArray(description = NULL, required = TRUE, items = Type())

TypeObject(
  description = NULL,
  required = TRUE,
  properties = list(),
  additional_properties = TRUE
)
}
\arguments{
\item{description}{The purpose of the component. This is
used by the LLM to determine what values to pass to the tool or what
values to extract in the structured data, so the more detail that you can
provide here, the better.}

\item{required}{Is the component or argument required?

In type descriptions for structured data, if \code{required = FALSE} and the
component does not exist in the data, the LLM may hallucinate a value. Only
applies when the element is nested inside of a \code{type_object()}.

In tool definitions, \code{required = TRUE} signals that the LLM should always
provide a value. Arguments with \code{required = FALSE} should have a default
value in the tool function's definition. If the LLM does not provide a
value, the default value will be used.}

\item{type}{Basic type name. Must be one of \code{boolean}, \code{integer},
\code{number}, or \code{string}.}

\item{values}{Character vector of permitted values.}

\item{items}{The type of the array items. Can be created by any of the
\code{type_} function.}

\item{properties}{Named list of properties stored inside the object.
Each element should be an S7 \code{Type} object.`}

\item{additional_properties}{Can the object have arbitrary additional
properties that are not explicitly listed? Only supported by Claude.}
}
\value{
S7 objects inheriting from \code{Type}
}
\description{
These S7 classes are provided for use by package devlopers who are
extending ellmer. In every day use, use \code{\link[=type_boolean]{type_boolean()}} and friends.
}
\examples{
TypeBasic(type = "boolean")
TypeArray(items = TypeBasic(type = "boolean"))
}
`````

## File: pkgdown/favicon/favicon.svg
`````
<svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev/svgjs" width="240" height="277" viewBox="0 0 240 277"><image width="240" height="277" href="data:image/png;base64,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"></image><style>@media (prefers-color-scheme: light) { :root { filter: none; } }
@media (prefers-color-scheme: dark) { :root { filter: none; } }
</style></svg>
`````

## File: pkgdown/favicon/site.webmanifest
`````
{
  "name": "",
  "short_name": "",
  "icons": [
    {
      "src": "/web-app-manifest-192x192.png",
      "sizes": "192x192",
      "type": "image/png",
      "purpose": "maskable"
    },
    {
      "src": "/web-app-manifest-512x512.png",
      "sizes": "512x512",
      "type": "image/png",
      "purpose": "maskable"
    }
  ],
  "theme_color": "#ffffff",
  "background_color": "#ffffff",
  "display": "standalone"
}
`````

## File: R/as-json.R
`````r
#' @include provider.R
#' @include types.R

method(as_json, list(Provider, TypeBasic)) <- function(provider, x) {
  list(type = x@type, description = x@description %||% "")
}

method(as_json, list(Provider, TypeEnum)) <- function(provider, x) {
  list(
    type = "string",
    description = x@description %||% "",
    enum = as.list(x@values)
  )
}

method(as_json, list(Provider, TypeObject)) <- function(provider, x) {
  names <- names2(x@properties)
  required <- map_lgl(x@properties, function(prop) prop@required)

  properties <- as_json(provider, x@properties)
  names(properties) <- names

  list(
    type = "object",
    description = x@description %||% "",
    properties = properties,
    required = as.list(names[required]),
    additionalProperties = x@additional_properties
  )
}

method(as_json, list(Provider, TypeArray)) <- function(provider, x) {
  list(
    type = "array",
    description = x@description %||% "",
    items = as_json(provider, x@items)
  )
}
`````

## File: R/batch-chat.R
`````r
#' Submit multiple chats in one batch
#'
#' @description
#' `r lifecycle::badge("experimental")`
#'
#' `batch_chat()` and `batch_chat_structured()` currently only work with
#' [chat_openai()] and [chat_anthropic()]. They use the
#' [OpenAI](https://platform.openai.com/docs/guides/batch) and
#' [Anthropic](https://docs.anthropic.com/en/docs/build-with-claude/batch-processing)
#' batch APIs which allow you to submit multiple requests simultaneously.
#' The results can take up to 24 hours to complete, but in return you pay 50%
#' less than usual (but note that ellmer doesn't include this discount in
#' its pricing metadata). If you want to get results back more quickly, or
#' you're working with a different provider, you may want to use
#' [parallel_chat()] instead.
#'
#' Since batched requests can take a long time to complete, `batch_chat()`
#' requires a file path that is used to store information about the batch so
#' you never lose any work. You can either set `wait = FALSE` or simply
#' interrupt the waiting process, then later, either call `batch_chat()` to
#' resume where you left off or call `batch_chat_completed()` to see if the
#' results are ready to retrieve. `batch_chat()` will store the chat responses
#' in this file, so you can either keep it around to cache the results,
#' or delete it to free up disk space.
#'
#' This API is marked as experimental since I don't yet know how to handle
#' errors in the most helpful way. Fortunately they don't seem to be common,
#' but if you have ideas, please let me know!
#'
#' @inheritParams parallel_chat
#' @param path Path to file (with `.json` extension) to store state.
#'
#'   The file records a hash of the provider, the prompts, and the existing
#'   chat turns. If you attempt to reuse the same file with any of these being
#'   different, you'll get an error.
#' @param wait If `TRUE`, will wait for batch to complete. If `FALSE`,
#'   it will return `NULL` if the batch is not complete, and you can retrieve
#'   the results later by re-running `batch_chat()` when
#'   `batch_chat_completed()` is `TRUE`.
#' @examplesIf has_credentials("openai")
#' chat <- chat_openai(model = "gpt-4.1-nano")
#'
#' # Chat ----------------------------------------------------------------------
#'
#' prompts <- interpolate("What do people from {{state.name}} bring to a potluck dinner?")
#' \dontrun{
#' chats <- batch_chat(chat, prompts, path = "potluck.json")
#' chats
#' }
#'
#' # Structured data -----------------------------------------------------------
#' prompts <- list(
#'   "I go by Alex. 42 years on this planet and counting.",
#'   "Pleased to meet you! I'm Jamal, age 27.",
#'   "They call me Li Wei. Nineteen years young.",
#'   "Fatima here. Just celebrated my 35th birthday last week.",
#'   "The name's Robert - 51 years old and proud of it.",
#'   "Kwame here - just hit the big 5-0 this year."
#' )
#' type_person <- type_object(name = type_string(), age = type_number())
#' \dontrun{
#' data <- batch_chat_structured(
#'   chat = chat,
#'   prompts = prompts,
#'   path = "people-data.json",
#'   type = type_person
#' )
#' data
#' }
#'
#' @export
batch_chat <- function(chat, prompts, path, wait = TRUE) {
  job <- BatchJob$new(
    chat = chat,
    prompts = prompts,
    path = path,
    wait = wait
  )
  job$step_until_done()

  assistant_turns <- job$result_turns()
  map2(job$user_turns, assistant_turns, function(user, assistant) {
    if (!is.null(assistant)) {
      chat$clone()$add_turn(user, assistant)
    } else {
      NULL
    }
  })
}

#' @export
#' @rdname batch_chat
#' @inheritParams parallel_chat_structured
batch_chat_structured <- function(
  chat,
  prompts,
  path,
  type,
  wait = TRUE,
  convert = TRUE,
  include_tokens = FALSE,
  include_cost = FALSE
) {
  check_chat(chat)
  provider <- chat$get_provider()
  needs_wrapper <- S7_inherits(provider, ProviderOpenAI)

  job <- BatchJob$new(
    chat = chat,
    prompts = prompts,
    type = wrap_type_if_needed(type, needs_wrapper),
    path = path,
    wait = wait,
    call = error_call
  )
  job$step_until_done()
  turns <- job$result_turns()

  multi_convert(
    provider,
    turns,
    type,
    convert = convert,
    include_tokens = include_tokens,
    include_cost = include_cost
  )
}

#' @export
#' @rdname batch_chat
batch_chat_completed <- function(chat, prompts, path) {
  job <- BatchJob$new(
    chat = chat,
    prompts = prompts,
    path = path
  )
  switch(
    job$stage,
    "submitting" = FALSE,
    "waiting" = !job$poll()$working,
    "retrieving" = TRUE,
    "done" = TRUE,
    cli::cli_abort("Unexpected stage: {job$stage}", .internal = TRUE)
  )
}

BatchJob <- R6::R6Class(
  "BatchJob",
  public = list(
    chat = NULL,
    user_turns = NULL,
    path = NULL,
    should_wait = TRUE,
    type = NULL,

    # Internal state
    provider = NULL,
    started_at = NULL,
    stage = NULL,
    batch = NULL,
    results = NULL,

    initialize = function(
      chat,
      prompts,
      path,
      type = NULL,
      wait = TRUE,
      call = caller_env(2)
    ) {
      check_chat(chat, call = call)
      self$provider <- chat$get_provider()
      check_has_batch_support(self$provider, call = call)

      user_turns <- as_user_turns(prompts, call = call)
      check_string(path, allow_empty = FALSE, call = call)
      check_bool(wait, call = call)

      self$chat <- chat
      self$user_turns <- user_turns
      self$type <- type
      self$path <- path
      self$should_wait <- wait

      if (file.exists(path)) {
        state <- jsonlite::read_json(path)
        self$stage <- state$stage
        self$batch <- state$batch
        self$results <- state$results
        self$started_at <- .POSIXct(state$started_at)

        self$check_hash(state$hash, call = call)
      } else {
        self$stage <- "submitting"
        self$batch <- NULL
        self$started_at <- Sys.time()
      }
    },

    save_state = function() {
      jsonlite::write_json(
        list(
          version = 1,
          stage = self$stage,
          batch = self$batch,
          results = self$results,
          started_at = as.integer(self$started_at),
          hash = self$compute_hash()
        ),
        self$path,
        auto_unbox = TRUE,
        pretty = TRUE
      )
    },

    step = function() {
      if (self$stage == "submitting") {
        self$submit()
      } else if (self$stage == "waiting") {
        self$wait()
      } else if (self$stage == "retrieving") {
        self$retrieve()
      } else {
        cli::cli_abort("Unknown stage: {self$stage}", .internal = TRUE)
      }
    },

    step_until_done = function() {
      while (self$stage != "done") {
        if (!self$step()) {
          return(invisible())
        }
      }
      invisible(self)
    },

    submit = function() {
      existing <- self$chat$get_turns(include_system_prompt = TRUE)
      conversations <- append_turns(list(existing), self$user_turns)

      self$batch <- batch_submit(self$provider, conversations, type = self$type)
      self$stage <- "waiting"
      self$save_state()
      TRUE
    },

    wait = function() {
      # always poll once, even when wait = FALSE
      status <- self$poll()

      if (self$should_wait) {
        cli::cli_progress_bar(
          format = paste(
            "{cli::pb_spin} Processing...",
            "[{self$elapsed()}]",
            "{status$n_processing} pending |",
            "{cli::col_green({status$n_succeeded})} done |",
            "{cli::col_red({status$n_failed})} failed"
          )
        )
        while (status$working) {
          Sys.sleep(0.5)
          cli::cli_progress_update()
          status <- self$poll()
        }
        cli::cli_progress_done()
      }

      if (!status$working) {
        self$stage <- "retrieving"
        self$save_state()
        TRUE
      } else {
        FALSE
      }
    },
    poll = function() {
      self$batch <- batch_poll(self$provider, self$batch)
      self$save_state()

      batch_status(self$provider, self$batch)
    },
    elapsed = function() {
      pretty_sec(as.integer(Sys.time()) - as.integer(self$started_at))
    },

    retrieve = function() {
      self$results <- batch_retrieve(self$provider, self$batch)
      self$stage <- "done"
      self$save_state()
      TRUE
    },

    result_turns = function() {
      map2(self$results, self$user_turns, function(result, user_turn) {
        batch_result_turn(self$provider, result, has_type = !is.null(self$type))
      })
    },

    compute_hash = function() {
      # TODO: replace with JSON serialization when available
      list(
        provider = hash(props(self$provider)),
        prompts = hash(lapply(self$user_turns, format)),
        user_turns = hash(lapply(self$chat$get_turns(TRUE), format))
      )
    },

    check_hash = function(old_hash, call = caller_env()) {
      new_hash <- self$compute_hash()
      same <- map2_lgl(old_hash, new_hash, `==`)

      if (all(same)) {
        return(invisible())
      }
      differences <- names(new_hash)[!same]

      cli::cli_abort(
        c(
          "{differences} don't match stored values.",
          i = "Do you need to pick a different {.arg path}?"
        ),
        call = call
      )
    }
  )
)


check_has_batch_support <- function(provider, call = caller_env()) {
  if (has_batch_support(provider)) {
    return(invisible())
  }

  cli::cli_abort(
    "Batch requests are not currently supported by this provider.",
    call = call
  )
}
`````

## File: R/chat-parallel.R
`````r
#' Submit multiple chats in parallel
#'
#' @description
#' `r lifecycle::badge("experimental")`
#'
#' If you have multiple prompts, you can submit them in parallel. This is
#' typically considerably faster than submitting them in sequence, especially
#' with Gemini and OpenAI.
#'
#' If you're using [chat_openai()] or [chat_anthropic()] and you're willing
#' to wait longer, you might want to use [batch_chat()] instead, as it comes
#' with a 50% discount in return for taking up to 24 hours.
#'
#' @param chat A base chat object.
#' @param prompts A vector created by [interpolate()] or a list
#'   of character vectors.
#' @param max_active The maximum number of simultaneous requests to send.
#'
#'   For [chat_anthropic()], note that the number of active connections is
#'   limited primarily by the output tokens per minute limit (OTPM) which is
#'   estimated from the `max_tokens` parameter, which defaults to 4096. That
#'   means if your usage tier limits you to 16,000 OTPM, you should either set
#'   `max_active = 4` (16,000 / 4096) to decrease the number of active
#'   connections or use [params()] in `chat_anthropic()` to decrease
#'   `max_tokens`.
#' @param rpm Maximum number of requests per minute.
#' @return
#' For `parallel_chat()`, a list of [Chat] objects, one for each prompt.
#' For `parallel_chat_structured()`, a single structured data object with one
#' element for each prompt. Typically, when `type` is an object, this will
#' will be a data frame with one row for each prompt, and one column for each
#' property.
#' @export
#' @examplesIf ellmer::has_credentials("openai")
#' chat <- chat_openai()
#'
#' # Chat ----------------------------------------------------------------------
#' country <- c("Canada", "New Zealand", "Jamaica", "United States")
#' prompts <- interpolate("What's the capital of {{country}}?")
#' parallel_chat(chat, prompts)
#'
#' # Structured data -----------------------------------------------------------
#' prompts <- list(
#'   "I go by Alex. 42 years on this planet and counting.",
#'   "Pleased to meet you! I'm Jamal, age 27.",
#'   "They call me Li Wei. Nineteen years young.",
#'   "Fatima here. Just celebrated my 35th birthday last week.",
#'   "The name's Robert - 51 years old and proud of it.",
#'   "Kwame here - just hit the big 5-0 this year."
#' )
#' type_person <- type_object(name = type_string(), age = type_number())
#' parallel_chat_structured(chat, prompts, type_person)
parallel_chat <- function(chat, prompts, max_active = 10, rpm = 500) {
  check_chat(chat)
  my_parallel_turns <- function(conversations) {
    parallel_turns(
      provider = chat$get_provider(),
      conversations = conversations,
      tools = chat$get_tools(),
      max_active = max_active,
      rpm = rpm
    )
  }

  # First build up list of cumulative conversations
  user_turns <- as_user_turns(prompts)
  existing <- chat$get_turns(include_system_prompt = TRUE)
  conversations <- append_turns(list(existing), user_turns)

  # Now get the assistant's response
  assistant_turns <- my_parallel_turns(conversations)
  conversations <- append_turns(conversations, assistant_turns)

  repeat {
    assistant_turns <- map(
      assistant_turns,
      \(turn) match_tools(turn, tools = chat$get_tools())
    )
    tool_results <- map(
      assistant_turns,
      \(turn) coro::collect(invoke_tools(turn))
    )
    user_turns <- map(tool_results, tool_results_as_turn)
    needs_iter <- !map_lgl(user_turns, is.null)
    if (!any(needs_iter)) {
      break
    }

    # don't need to index because user_turns null
    conversations <- append_turns(conversations, user_turns)

    assistant_turns <- vector("list", length(user_turns))
    assistant_turns[needs_iter] <- my_parallel_turns(conversations[needs_iter])
    conversations <- append_turns(conversations, assistant_turns)
  }

  map(conversations, \(turns) chat$clone()$set_turns(turns))
}

#' @param type A type specification for the extracted data. Should be
#'   created with a [`type_()`][type_boolean] function.
#' @param convert If `TRUE`, automatically convert from JSON lists to R
#'   data types using the schema. This typically works best when `type` is
#'   [type_object()] as this will give you a data frame with one column for
#'   each property. If `FALSE`, returns a list.
#' @param include_tokens If `TRUE`, and the result is a data frame, will
#'   add `input_tokens` and `output_tokens` columns giving the total input
#'   and output tokens for each prompt.
#' @param include_cost If `TRUE`, and the result is a data frame, will
#'   add `cost` column giving the cost of each prompt.
#' @export
#' @rdname parallel_chat
parallel_chat_structured <- function(
  chat,
  prompts,
  type,
  convert = TRUE,
  include_tokens = FALSE,
  include_cost = FALSE,
  max_active = 10,
  rpm = 500
) {
  turns <- as_user_turns(prompts)
  check_bool(convert)

  provider <- chat$get_provider()
  needs_wrapper <- S7_inherits(provider, ProviderOpenAI)

  # First build up list of cumulative conversations
  user_turns <- as_user_turns(prompts)
  existing <- chat$get_turns(include_system_prompt = TRUE)
  conversations <- append_turns(list(existing), user_turns)

  turns <- parallel_turns(
    provider = provider,
    conversations = conversations,
    tools = chat$get_tools(),
    type = wrap_type_if_needed(type, needs_wrapper),
    max_active = max_active,
    rpm = rpm
  )

  multi_convert(
    provider,
    turns,
    type,
    convert = convert,
    include_tokens = include_tokens,
    include_cost = include_cost
  )
}

multi_convert <- function(
  provider,
  turns,
  type,
  convert = TRUE,
  include_tokens = FALSE,
  include_cost = FALSE
) {
  needs_wrapper <- S7_inherits(provider, ProviderOpenAI)

  rows <- map(turns, \(turn) {
    extract_data(
      turn = turn,
      type = wrap_type_if_needed(type, needs_wrapper),
      convert = FALSE,
      needs_wrapper = needs_wrapper
    )
  })

  if (convert) {
    out <- convert_from_type(rows, type_array(items = type))
  } else {
    out <- rows
  }

  if (is.data.frame(out) && (include_tokens || include_cost)) {
    tokens <- t(vapply(turns, \(turn) turn@tokens, integer(2)))

    if (include_tokens) {
      out$input_tokens <- tokens[, 1]
      out$output_tokens <- tokens[, 2]
    }

    if (include_cost) {
      out$cost <- get_token_cost(
        provider@name,
        standardise_model(provider, provider@model),
        input = tokens[, 1],
        output = tokens[, 2]
      )
    }
  }
  out
}

append_turns <- function(old_turns, new_turns) {
  map2(old_turns, new_turns, function(old, new) {
    if (is.null(new)) {
      old
    } else {
      c(old, list(new))
    }
  })
}

parallel_turns <- function(
  provider,
  conversations,
  tools,
  type = NULL,
  max_active = 10,
  rpm = 60
) {
  reqs <- map(conversations, function(turns) {
    chat_request(
      provider = provider,
      turns = turns,
      type = type,
      tools = tools,
      stream = FALSE
    )
  })
  reqs <- map(reqs, function(req) {
    req_throttle(req, capacity = rpm, fill_time_s = 60)
  })

  resps <- req_perform_parallel(reqs, max_active = max_active)
  if (any(map_lgl(resps, is.null))) {
    cli::cli_abort("Terminated by user")
  }

  map(resps, function(resp) {
    json <- resp_body_json(resp)
    value_turn(provider, json, has_type = !is.null(type))
  })
}
`````

## File: R/chat-structured.R
`````r
extract_data <- function(turn, type, convert = TRUE, needs_wrapper = FALSE) {
  is_json <- map_lgl(turn@contents, S7_inherits, ContentJson)
  n <- sum(is_json)
  if (n != 1) {
    cli::cli_abort("Data extraction failed: {n} data results recieved.")
  }

  json <- turn@contents[[which(is_json)]]
  out <- json@value

  if (needs_wrapper) {
    out <- out$wrapper
    type <- type@properties[[1]]
  }
  if (convert) {
    out <- convert_from_type(out, type)
  }
  out
}

wrap_type_if_needed <- function(type, needs_wrapper = FALSE) {
  if (needs_wrapper) {
    type_object(wrapper = type)
  } else {
    type
  }
}

convert_from_type <- function(x, type) {
  if (is.null(x) && !type@required) {
    x
  } else if (S7_inherits(type, TypeArray)) {
    if (S7_inherits(type@items, TypeBasic)) {
      if (!type@items@required) {
        is_null <- map_lgl(x, is.null)
        if (type@items@type == "string") {
          x[is_null] <- list(NA_character_)
        } else {
          x[is_null] <- list(NA)
        }
      }

      switch(
        type@items@type,
        boolean = as.logical(x),
        integer = as.integer(x),
        number = as.numeric(x),
        string = as.character(x),
        cli::cli_abort("Unknown type {type@items@type}", .internal = TRUE)
      )
    } else if (S7_inherits(type@items, TypeArray)) {
      lapply(x, function(y) convert_from_type(y, type@items))
    } else if (S7_inherits(type@items, TypeEnum)) {
      factor(as.character(x), levels = type@items@values)
    } else if (S7_inherits(type@items, TypeObject)) {
      cols <- lapply(names(type@items@properties), function(name) {
        vals <- lapply(x, function(y) y[[name]])
        convert_from_type(
          vals,
          type_array(items = type@items@properties[[name]])
        )
      })
      names(cols) <- names(type@items@properties)
      list2DF(cols)
    } else {
      x
    }
  } else if (S7_inherits(type, TypeObject)) {
    out <- lapply(names(type@properties), function(name) {
      convert_from_type(x[[name]], type@properties[[name]])
    })
    set_names(out, names(type@properties))
  } else if (S7_inherits(type, TypeBasic)) {
    if (is.null(x)) {
      switch(
        type@type,
        boolean = NA,
        integer = NA_integer_,
        number = NA_real_,
        string = NA_character_,
        cli::cli_abort("Unknown type {type@type}", .internal = TRUE)
      )
    } else {
      x
    }
  } else {
    x
  }
}
`````

## File: R/chat.R
`````r
#' @include utils-coro.R
NULL

#' A chat
#'
#' @description
#' A `Chat` is a sequence of user and assistant [Turn]s sent
#' to a specific [Provider]. A `Chat` is a mutable R6 object that takes care of
#' managing the state associated with the chat; i.e. it records the messages
#' that you send to the server, and the messages that you receive back.
#' If you register a tool (i.e. an R function that the assistant can call on
#' your behalf), it also takes care of the tool loop.
#'
#' You should generally not create this object yourself,
#' but instead call [chat_openai()] or friends instead.
#'
#' @return A Chat object
#' @examplesIf has_credentials("openai")
#' chat <- chat_openai(echo = TRUE)
#' chat$chat("Tell me a funny joke")
Chat <- R6::R6Class(
  "Chat",
  public = list(
    #' @param provider A provider object.
    #' @param system_prompt System prompt to start the conversation with.
    #' @param echo One of the following options:
    #'   * `none`: don't emit any output (default when running in a function).
    #'   * `text`: echo text output as it streams in (default when running at
    #'     the console).
    #'   * `all`: echo all input and output.
    #'
    #'  Note this only affects the `chat()` method.
    initialize = function(provider, system_prompt = NULL, echo = "none") {
      private$provider <- provider
      private$echo <- echo
      private$callback_on_tool_request <- CallbackManager$new(args = "request")
      private$callback_on_tool_result <- CallbackManager$new(args = "result")
      self$set_system_prompt(system_prompt)
    },

    #' @description Retrieve the turns that have been sent and received so far
    #'   (optionally starting with the system prompt, if any).
    #' @param include_system_prompt Whether to include the system prompt in the
    #'   turns (if any exists).
    get_turns = function(include_system_prompt = FALSE) {
      if (length(private$.turns) == 0) {
        return(private$.turns)
      }

      if (!include_system_prompt && is_system_prompt(private$.turns[[1]])) {
        private$.turns[-1]
      } else {
        private$.turns
      }
    },

    #' @description Replace existing turns with a new list.
    #' @param value A list of [Turn]s.
    set_turns = function(value) {
      private$.turns <- normalize_turns(
        value,
        self$get_system_prompt(),
        overwrite = TRUE
      )
      invisible(self)
    },

    #' @description Add a pair of turns to the chat.
    #' @param user The user [Turn].
    #' @param system The system [Turn].
    add_turn = function(user, system) {
      check_turn(user)
      check_turn(system)

      private$.turns[[length(private$.turns) + 1]] <- user
      private$.turns[[length(private$.turns) + 1]] <- system
      invisible(self)
    },

    #' @description If set, the system prompt, it not, `NULL`.
    get_system_prompt = function() {
      if (private$has_system_prompt()) {
        private$.turns[[1]]@text
      } else {
        NULL
      }
    },

    #' @description Retrieve the model name
    get_model = function() {
      private$provider@model
    },

    #' @description Update the system prompt
    #' @param value A character vector giving the new system prompt
    set_system_prompt = function(value) {
      check_character(value, allow_null = TRUE)
      if (length(value) > 1) {
        value <- paste(value, collapse = "\n\n")
      }

      # Remove prompt, if present
      if (private$has_system_prompt()) {
        private$.turns <- private$.turns[-1]
      }
      # Add prompt, if new
      if (is.character(value)) {
        system_turn <- Turn("system", value)
        private$.turns <- c(list(system_turn), private$.turns)
      }
      invisible(self)
    },

    #' @description A data frame with a `tokens` column that proides the
    #'   number of input tokens used by user turns and the number of
    #'   output tokens used by assistant turns.
    #' @param include_system_prompt Whether to include the system prompt in
    #'   the turns (if any exists).
    get_tokens = function(include_system_prompt = FALSE) {
      turns <- self$get_turns(include_system_prompt = FALSE)
      assistant_turns <- keep(turns, function(x) x@role == "assistant")

      n <- length(assistant_turns)
      tokens_acc <- t(vapply(
        assistant_turns,
        function(turn) turn@tokens,
        double(2)
      ))

      tokens <- tokens_acc
      if (n > 1) {
        # Compute just the new tokens
        tokens[-1, 1] <- tokens[seq(2, n), 1] -
          (tokens[seq(1, n - 1), 1] + tokens[seq(1, n - 1), 2])
      }
      # collapse into a single vector
      tokens_v <- c(t(tokens))
      tokens_acc_v <- c(t(tokens_acc))

      tokens_df <- data.frame(
        role = rep(c("user", "assistant"), times = n),
        tokens = tokens_v,
        tokens_total = tokens_acc_v
      )

      if (include_system_prompt && private$has_system_prompt()) {
        # How do we compute this?
        tokens_df <- rbind(
          data.frame(role = "system", tokens = 0, tokens_total = 0),
          tokens_df
        )
      }

      tokens_df
    },

    #' @description The cost of this chat
    #' @param include The default, `"all"`, gives the total cumulative cost
    #'   of this chat. Alternatively, use `"last"` to get the cost of just the
    #'   most recent turn.
    get_cost = function(include = c("all", "last")) {
      include <- arg_match(include)

      turns <- self$get_turns(include_system_prompt = FALSE)
      assistant_turns <- keep(turns, function(x) x@role == "assistant")
      n <- length(assistant_turns)
      tokens <- t(vapply(
        assistant_turns,
        function(turn) turn@tokens,
        double(2)
      ))

      if (include == "last") {
        tokens <- tokens[nrow(tokens), , drop = FALSE]
      }

      private$compute_cost(input = sum(tokens[, 1]), output = sum(tokens[, 2]))
    },

    #' @description The last turn returned by the assistant.
    #' @param role Optionally, specify a role to find the last turn with
    #'   for the role.
    #' @return Either a `Turn` or `NULL`, if no turns with the specified
    #'   role have occurred.
    last_turn = function(role = c("assistant", "user", "system")) {
      role <- arg_match(role)

      n <- length(private$.turns)
      switch(
        role,
        system = if (private$has_system_prompt()) private$.turns[[1]],
        assistant = if (n > 1) private$.turns[[n]],
        user = if (n > 1) private$.turns[[n - 1]]
      )
    },

    #' @description Submit input to the chatbot, and return the response as a
    #'   simple string (probably Markdown).
    #' @param ... The input to send to the chatbot. Can be strings or images
    #'   (see [content_image_file()] and [content_image_url()].
    #' @param echo Whether to emit the response to stdout as it is received. If
    #'   `NULL`, then the value of `echo` set when the chat object was created
    #'   will be used.
    chat = function(..., echo = NULL) {
      turn <- user_turn(...)
      echo <- check_echo(echo %||% private$echo)

      # Returns a single turn (the final response from the assistant), even if
      # multiple rounds of back and forth happened.
      coro::collect(private$chat_impl(
        turn,
        stream = echo != "none",
        echo = echo
      ))

      text <- self$last_turn()@text
      if (echo == "none") text else invisible(text)
    },

    #' @description Extract structured data
    #' @param ... The input to send to the chatbot. Will typically include
    #'   the phrase "extract structured data".
    #' @param type A type specification for the extracted data. Should be
    #'   created with a [`type_()`][type_boolean] function.
    #' @param echo Whether to emit the response to stdout as it is received.
    #'   Set to "text" to stream JSON data as it's generated (not supported by
    #'  all providers).
    #' @param convert Automatically convert from JSON lists to R data types
    #'   using the schema. For example, this will turn arrays of objects into
    #'  data frames and arrays of strings into a character vector.
    chat_structured = function(..., type, echo = "none", convert = TRUE) {
      turn <- user_turn(...)
      echo <- check_echo(echo %||% private$echo)
      check_bool(convert)

      needs_wrapper <- S7_inherits(private$provider, ProviderOpenAI)
      type <- wrap_type_if_needed(type, needs_wrapper)

      coro::collect(private$submit_turns(
        turn,
        type = type,
        stream = echo != "none",
        echo = echo
      ))

      turn <- self$last_turn()
      extract_data(turn, type, convert = convert, needs_wrapper = needs_wrapper)
    },

    #' @description Extract structured data, asynchronously. Returns a promise
    #'   that resolves to an object matching the type specification.
    #' @param ... The input to send to the chatbot. Will typically include
    #'   the phrase "extract structured data".
    #' @param type A type specification for the extracted data. Should be
    #'   created with a [`type_()`][type_boolean] function.
    #' @param echo Whether to emit the response to stdout as it is received.
    #'   Set to "text" to stream JSON data as it's generated (not supported by
    #'  all providers).
    chat_structured_async = function(..., type, echo = "none") {
      turn <- user_turn(...)
      echo <- check_echo(echo %||% private$echo)

      done <- coro::async_collect(private$submit_turns_async(
        turn,
        type = type,
        stream = echo != "none",
        echo = echo
      ))
      promises::then(done, function(dummy) {
        turn <- self$last_turn()
        is_json <- map_lgl(turn@contents, S7_inherits, ContentJson)
        n <- sum(is_json)
        if (n != 1) {
          cli::cli_abort("Data extraction failed: {n} data results recieved.")
        }

        json <- turn@contents[[which(is_json)]]
        json@value
      })
    },

    #' @description Submit input to the chatbot, and receive a promise that
    #'   resolves with the response all at once. Returns a promise that resolves
    #'   to a string (probably Markdown).
    #' @param ... The input to send to the chatbot. Can be strings or images.
    #' @param tool_mode Whether tools should be invoked one-at-a-time
    #'   (`"sequential"`) or concurrently (`"concurrent"`). Sequential mode is
    #'   best for interactive applications, especially when a tool may involve
    #'   an interactive user interface. Concurrent mode is the default and is
    #'   best suited for automated scripts or non-interactive applications.
    chat_async = function(..., tool_mode = c("concurrent", "sequential")) {
      turn <- user_turn(...)
      tool_mode <- arg_match(tool_mode)

      # Returns a single turn (the final response from the assistant), even if
      # multiple rounds of back and forth happened.
      done <- coro::async_collect(
        private$chat_impl_async(
          turn,
          stream = FALSE,
          echo = "none",
          tool_mode = tool_mode
        )
      )
      promises::then(done, function(dummy) {
        self$last_turn()@text
      })
    },

    #' @description Submit input to the chatbot, returning streaming results.
    #'   Returns A [coro
    #'   generator](https://coro.r-lib.org/articles/generator.html#iterating)
    #'   that yields strings. While iterating, the generator will block while
    #'   waiting for more content from the chatbot.
    #' @param ... The input to send to the chatbot. Can be strings or images.
    #' @param stream Whether the stream should yield only `"text"` or ellmer's
    #'   rich content types. When `stream = "content"`, `stream()` yields
    #'   [Content] objects.
    stream = function(..., stream = c("text", "content")) {
      turn <- user_turn(...)
      stream <- arg_match(stream)
      private$chat_impl(
        turn,
        stream = TRUE,
        echo = "none",
        yield_as_content = stream == "content"
      )
    },

    #' @description Submit input to the chatbot, returning asynchronously
    #'   streaming results. Returns a [coro async
    #'   generator](https://coro.r-lib.org/reference/async_generator.html) that
    #'   yields string promises.
    #' @param ... The input to send to the chatbot. Can be strings or images.
    #' @param tool_mode Whether tools should be invoked one-at-a-time
    #'   (`"sequential"`) or concurrently (`"concurrent"`). Sequential mode is
    #'   best for interactive applications, especially when a tool may involve
    #'   an interactive user interface. Concurrent mode is the default and is
    #'   best suited for automated scripts or non-interactive applications.
    #' @param stream Whether the stream should yield only `"text"` or ellmer's
    #'   rich content types. When `stream = "content"`, `stream()` yields
    #'   [Content] objects.
    stream_async = function(
      ...,
      tool_mode = c("concurrent", "sequential"),
      stream = c("text", "content")
    ) {
      turn <- user_turn(...)
      tool_mode <- arg_match(tool_mode)
      stream <- arg_match(stream)
      private$chat_impl_async(
        turn,
        stream = TRUE,
        echo = "none",
        tool_mode = tool_mode,
        yield_as_content = stream == "content"
      )
    },

    #' @description Register a tool (an R function) that the chatbot can use.
    #'   If the chatbot decides to use the function, ellmer will automatically
    #'   call it and submit the results back.
    #'
    #'   The return value of the function. Generally, this should either be a
    #'   string, or a JSON-serializable value. If you must have more direct
    #'   control of the structure of the JSON that's returned, you can return a
    #'   JSON-serializable value wrapped in [base::I()], which ellmer will leave
    #'   alone until the entire request is JSON-serialized.
    #' @param tool_def Tool definition created by [tool()].
    register_tool = function(tool_def) {
      if (!S7_inherits(tool_def, ToolDef)) {
        cli::cli_abort("{.arg tool} must be a <ToolDef>.")
      }

      private$tools[[tool_def@name]] <- tool_def
      invisible(self)
    },

    #' @description Get the underlying provider object. For expert use only.
    get_provider = function() {
      private$provider
    },

    #' @description Retrieve the list of registered tools.
    get_tools = function() {
      private$tools
    },

    #' @description Sets the available tools. For expert use only; most users
    #'   should use `register_tool()`.
    #'
    #' @param tools A list of tool definitions created with [ellmer::tool()].
    set_tools = function(tools) {
      if (!is_list(tools) || !all(map_lgl(tools, S7_inherits, ToolDef))) {
        msg <- "{.arg tools} must be a list of tools created with {.fn ellmer::tool}."
        if (S7_inherits(tools, ToolDef)) {
          msg <- c(msg, "i" = "Did you mean to call {.code $register_tool()}?")
        }
        cli::cli_abort(msg)
      }

      private$tools <- list()

      for (tool_def in tools) {
        self$register_tool(tool_def)
      }

      invisible(self)
    },

    #' @description Register a callback for a tool request event.
    #'
    #' @param callback A function to be called when a tool request event occurs,
    #'   which must have `request` as its only argument.
    #'
    #' @return A function that can be called to remove the callback.
    on_tool_request = function(callback) {
      private$callback_on_tool_request$add(callback)
    },

    #' @description Register a callback for a tool result event.
    #'
    #' @param callback A function to be called when a tool result event occurs,
    #'   which must have `result` as its only argument.
    #'
    #' @return A function that can be called to remove the callback.
    on_tool_result = function(callback) {
      private$callback_on_tool_result$add(callback)
    },

    #' @description `r lifecycle::badge("deprecated")`
    #' Deprecated in favour of `$chat_structured()`.
    #' @param ... See `$chat_structured()`
    extract_data = function(...) {
      lifecycle::deprecate_warn(
        "0.2.0",
        "Chat$extract_data()",
        "Chat$chat_structured()"
      )
      self$chat_structured(...)
    },

    #' @description `r lifecycle::badge("deprecated")`
    # '  Deprecated in favour of `$chat_structured_async()`.
    #' @param ... See `$chat_structured_async()`
    extract_data_async = function(...) {
      lifecycle::deprecate_warn(
        "0.2.0",
        "Chat$extract_data_async()",
        "Chat$chat_structured_async()"
      )
      self$chat_structured_async(...)
    }
  ),
  private = list(
    provider = NULL,

    .turns = list(),
    echo = NULL,
    tools = list(),
    callback_on_tool_request = NULL,
    callback_on_tool_result = NULL,

    add_user_contents = function(contents) {
      stopifnot(is.list(contents))
      if (length(contents) == 0) {
        return(invisible(self))
      }

      i <- length(private$.turns)

      if (private$.turns[[i]]@role != "user") {
        private$.turns[[i + 1]] <- Turn("user", contents)
      } else {
        private$.turns[[i]]@contents <- c(
          private$.turns[[i]]@contents,
          contents
        )
      }
      invisible(self)
    },

    # If stream = TRUE, yields completion deltas. If stream = FALSE, yields
    # complete assistant turns.
    chat_impl = generator_method(function(
      self,
      private,
      user_turn,
      stream,
      echo,
      yield_as_content = FALSE
    ) {
      tool_errors <- list()
      withr::defer(warn_tool_errors(tool_errors))

      while (!is.null(user_turn)) {
        assistant_chunks <- private$submit_turns(
          user_turn,
          stream = stream,
          echo = echo,
          yield_as_content = yield_as_content
        )
        for (chunk in assistant_chunks) {
          yield(chunk)
        }

        assistant_turn <- self$last_turn()
        user_turn <- NULL

        if (turn_has_tool_request(assistant_turn)) {
          tool_calls <- invoke_tools(
            assistant_turn,
            echo = echo,
            on_tool_request = private$callback_on_tool_request$invoke,
            on_tool_result = private$callback_on_tool_result$invoke,
            yield_request = yield_as_content
          )

          tool_results <- list()

          for (tool_step in tool_calls) {
            if (yield_as_content) {
              yield(tool_step)
            }
            if (is_tool_result(tool_step)) {
              tool_results <- c(tool_results, list(tool_step))
            }
          }

          user_turn <- tool_results_as_turn(tool_results)
        }

        if (echo == "all") {
          cat(format(user_turn))
        } else if (echo == "none") {
          tool_errors <- c(tool_errors, turn_get_tool_errors(user_turn))
        }
      }
    }),

    # If stream = TRUE, yields completion deltas. If stream = FALSE, yields
    # complete assistant turns.
    chat_impl_async = async_generator_method(function(
      self,
      private,
      user_turn,
      stream,
      echo,
      tool_mode = "concurrent",
      yield_as_content = FALSE
    ) {
      tool_errors <- list()
      withr::defer(warn_tool_errors(tool_errors))

      while (!is.null(user_turn)) {
        assistant_chunks <- private$submit_turns_async(
          user_turn,
          stream = stream,
          echo = echo,
          yield_as_content = yield_as_content
        )
        for (chunk in await_each(assistant_chunks)) {
          yield(chunk)
        }

        assistant_turn <- self$last_turn()
        user_turn <- NULL

        if (turn_has_tool_request(assistant_turn)) {
          tool_calls <- invoke_tools_async(
            assistant_turn,
            echo = echo,
            on_tool_request = private$callback_on_tool_request$invoke_async,
            on_tool_result = private$callback_on_tool_result$invoke_async,
            yield_request = yield_as_content
          )
          if (tool_mode == "sequential") {
            tool_results <- list()
            for (tool_step in coro::await_each(tool_calls)) {
              if (yield_as_content) {
                yield(tool_step)
              }
              if (is_tool_result(tool_step)) {
                tool_results <- c(tool_results, list(tool_step))
              }
            }
          } else {
            tool_results <- coro::collect(tool_calls)
            if (yield_as_content) {
              # Filter out and yield tool requests before awaiting tool results
              is_request <- map_lgl(tool_results, is_tool_request)
              for (tool_step in tool_results[is_request]) {
                yield(tool_step)
              }
              tool_results <- tool_results[!is_request]
            }
            tool_results <- await(promises::promise_all(.list = tool_results))
            if (yield_as_content) {
              for (tool_result in tool_results) {
                yield(tool_result)
              }
            }
          }

          user_turn <- tool_results_as_turn(tool_results)
        }

        if (echo == "all") {
          cat(format(user_turn))
        } else if (echo == "none") {
          tool_errors <- c(tool_errors, turn_get_tool_errors(user_turn))
        }
      }
    }),

    # If stream = TRUE, yields completion deltas. If stream = FALSE, yields
    # complete assistant turns.
    submit_turns = generator_method(function(
      self,
      private,
      user_turn,
      stream,
      echo,
      type = NULL,
      yield_as_content = FALSE
    ) {
      if (echo == "all") {
        cat_line(format(user_turn), prefix = "> ")
      }

      response <- chat_perform(
        provider = private$provider,
        mode = if (stream) "stream" else "value",
        turns = c(private$.turns, list(user_turn)),
        tools = private$tools,
        type = type
      )
      emit <- emitter(echo)
      any_text <- FALSE

      if (stream) {
        result <- NULL
        for (chunk in response) {
          text <- stream_text(private$provider, chunk)
          if (!is.null(text)) {
            emit(text)
            if (yield_as_content) {
              yield(ContentText(text))
            } else {
              yield(text)
            }
            any_text <- TRUE
          }

          result <- stream_merge_chunks(private$provider, result, chunk)
        }
        turn <- value_turn(private$provider, result, has_type = !is.null(type))
        turn <- match_tools(turn, private$tools)
      } else {
        turn <- value_turn(
          private$provider,
          response,
          has_type = !is.null(type)
        )
        turn <- match_tools(turn, private$tools)

        text <- turn@text
        if (!is.null(text)) {
          emit(text)
          if (yield_as_content) {
            yield(ContentText(text))
          } else {
            yield(text)
          }
          any_text <- TRUE
        }
      }

      # Ensure turns always end in a newline
      if (any_text) {
        emit("\n")
        if (yield_as_content) {
          yield(ContentText("\n"))
        } else {
          yield("\n")
        }
      }

      if (echo == "all") {
        is_text <- map_lgl(turn@contents, S7_inherits, ContentText)
        formatted <- map_chr(turn@contents[!is_text], format)
        cat_line(formatted, prefix = "< ")
      }
      # When `echo="output"`, tool calls are emitted in `invoke_tools()`

      self$add_turn(user_turn, turn)

      coro::exhausted()
    }),

    # If stream = TRUE, yields completion deltas. If stream = FALSE, yields
    # complete assistant turns.
    submit_turns_async = async_generator_method(function(
      self,
      private,
      user_turn,
      stream,
      echo,
      type = NULL,
      yield_as_content = FALSE
    ) {
      response <- chat_perform(
        provider = private$provider,
        mode = if (stream) "async-stream" else "async-value",
        turns = c(private$.turns, list(user_turn)),
        tools = private$tools,
        type = type
      )
      emit <- emitter(echo)
      any_text <- FALSE

      if (stream) {
        result <- NULL
        for (chunk in await_each(response)) {
          text <- stream_text(private$provider, chunk)
          if (!is.null(text)) {
            emit(text)
            if (yield_as_content) {
              yield(ContentText(text))
            } else {
              yield(text)
            }
            any_text <- TRUE
          }

          result <- stream_merge_chunks(private$provider, result, chunk)
        }
        turn <- value_turn(private$provider, result, has_type = !is.null(type))
      } else {
        result <- await(response)

        turn <- value_turn(private$provider, result, has_type = !is.null(type))
        text <- turn@text
        if (!is.null(text)) {
          emit(text)
          if (yield_as_content) {
            yield(ContentText(text))
          } else {
            yield(text)
          }
          any_text <- TRUE
        }
      }
      turn <- match_tools(turn, private$tools)

      # Ensure turns always end in a newline
      if (any_text) {
        emit("\n")
        if (yield_as_content) {
          yield(ContentText("\n"))
        } else {
          yield("\n")
        }
      }

      if (echo == "all") {
        is_text <- map_lgl(turn@contents, S7_inherits, ContentText)
        formatted <- map_chr(turn@contents[!is_text], format)
        cat_line(formatted, prefix = "< ")
      }
      # When `echo="output"`, tool calls are echoed via `invoke_tools_async()`

      self$add_turn(user_turn, turn)
      coro::exhausted()
    }),

    has_system_prompt = function() {
      length(private$.turns) > 0 && private$.turns[[1]]@role == "system"
    },

    compute_cost = function(input, output) {
      get_token_cost(
        private$provider@name,
        standardise_model(private$provider, private$provider@model),
        input = input,
        output = output
      )
    }
  )
)

is_chat <- function(x) {
  inherits(x, "Chat")
}


check_chat <- function(chat, call = caller_env()) {
  if (is_chat(chat)) {
    return(invisible())
  }

  cli::cli_abort("{.arg chat} must be a <Chat> object.", call = call)
}

#' @export
print.Chat <- function(x, ...) {
  provider <- x$get_provider()
  turns <- x$get_turns(include_system_prompt = TRUE)

  tokens <- x$get_tokens(include_system_prompt = TRUE)

  tokens_user <- sum(tokens$tokens_total[tokens$role == "user"])
  tokens_assistant <- sum(tokens$tokens_total[tokens$role == "assistant"])
  cost <- x$get_cost()

  cat(paste_c(
    "<Chat",
    c(" ", provider@name, "/", provider@model),
    c(" turns=", length(turns)),
    c(
      " tokens=",
      tokens_user,
      "/",
      tokens_assistant
    ),
    if (!is.na(cost)) c(" ", format(cost)),
    ">\n"
  ))

  for (i in seq_along(turns)) {
    turn <- turns[[i]]

    cli::cat_rule(cli::format_inline(
      "{color_role(turn@role)} [{tokens$tokens[[i]]}]"
    ))
    cat(format(turns[[i]]))
  }

  invisible(x)
}

method(contents_markdown, new_S3_class("Chat")) <- function(
  content,
  heading_level = 2
) {
  turns <- content$get_turns()
  if (length(turns) == 0) {
    return("")
  }

  hh <- strrep("#", heading_level)

  res <- vector("character", length(turns))
  for (i in seq_along(res)) {
    role <- turns[[i]]@role
    substr(role, 0, 1) <- toupper(substr(role, 0, 1))
    res[i] <- glue::glue("{hh} {role}\n\n{contents_markdown(turns[[i]])}")
  }

  paste(res, collapse = "\n\n")
}
`````

## File: R/content-image.R
`````r
#' Encode images for chat input
#'
#' These functions are used to prepare image URLs and files for input to the
#' chatbot. The `content_image_url()` function is used to provide a URL to an
#' image, while `content_image_file()` is used to provide the image data itself.
#'
#' @param url The URL of the image to include in the chat input. Can be a
#'   `data:` URL or a regular URL. Valid image types are PNG, JPEG, WebP, and
#'   non-animated GIF.
#' @param detail The [detail
#'   setting](https://platform.openai.com/docs/guides/images/image-input-requirements)
#'   for this image. Can be `"auto"`, `"low"`, or `"high"`.
#' @returns An input object suitable for including in the `...` parameter of
#'   the `chat()`, `stream()`, `chat_async()`, or `stream_async()` methods.
#'
#' @export
#' @examplesIf has_credentials("openai")
#' chat <- chat_openai(echo = TRUE)
#' chat$chat(
#'   "What do you see in these images?",
#'   content_image_url("https://www.r-project.org/Rlogo.png"),
#'   content_image_file(system.file("httr2.png", package = "ellmer"))
#' )
#'
#' \dontshow{dev.control('enable')}
#' plot(waiting ~ eruptions, data = faithful)
#' chat <- chat_openai(echo = TRUE)
#' chat$chat(
#'   "Describe this plot in one paragraph, as suitable for inclusion in
#'    alt-text. You should briefly describe the plot type, the axes, and
#'    2-5 major visual patterns.",
#'    content_image_plot()
#' )
content_image_url <- function(url, detail = c("auto", "low", "high")) {
  detail <- arg_match(detail)

  if (grepl("^data:", url)) {
    parsed <- parse_data_url(url)
    ContentImageInline(parsed$content_type, parsed$base64)
  } else {
    ContentImageRemote(url = url, detail = detail)
  }
}

#' @rdname content_image_url
#' @param path The path to the image file to include in the chat input. Valid
#'   file extensions are `.png`, `.jpeg`, `.jpg`, `.webp`, and (non-animated)
#'   `.gif`.
#' @param content_type The content type of the image (e.g. `image/png`). If
#'   `"auto"`, the content type is inferred from the file extension.
#' @param resize If `"low"`, resize images to fit within 512x512. If `"high"`,
#'   resize to fit within 2000x768 or 768x2000. (See the [OpenAI
#'   docs](https://platform.openai.com/docs/guides/images/image-input-requirements)
#'   for more on why these specific sizes are used.) If `"none"`, do not resize.
#'
#'   You can also pass a custom string to resize the image to a specific size,
#'   e.g. `"200x200"` to resize to 200x200 pixels while preserving aspect ratio.
#'   Append `>` to resize only if the image is larger than the specified size,
#'   and `!` to ignore aspect ratio (e.g. `"300x200>!"`).
#'
#'   All values other than `none` require the `magick` package.
#' @export
content_image_file <- function(path, content_type = "auto", resize = "low") {
  check_installed("base64enc", "to encode images")

  # TODO: Allow vector input?
  check_string(path, allow_empty = FALSE)
  check_string(content_type, allow_empty = FALSE)
  check_string(resize, allow_empty = FALSE)

  if (!file.exists(path) || dir.exists(path)) {
    cli::cli_abort("{path} must be an existing file.")
  }

  if (content_type == "auto") {
    # OpenAI supports .png, .jpeg, .jpg, .webp, .gif
    # https://platform.openai.com/docs/guides/images/image-input-requirements
    ext <- tolower(tools::file_ext(path))
    content_type <- switch(
      ext,
      png = "image/png",
      jpeg = "image/jpeg",
      jpg = "image/jpeg",
      webp = "image/webp",
      gif = "image/gif",
      cli::cli_abort("Unsupported image file extension: {ext}.")
    )
  }

  # Implement resizing logic
  if (resize == "none") {
    base64 <- base64enc::base64encode(path)
  } else {
    check_installed("magick", "to resize images")

    img <- magick::image_read(path)

    if (resize == "low") {
      img <- magick::image_resize(img, "512x512>")
    } else if (resize == "high") {
      # Get current image dimensions
      dims <- magick::image_info(img)
      width <- dims$width
      height <- dims$height

      if (width > height) {
        img <- magick::image_resize(img, "2000x768>")
      } else {
        img <- magick::image_resize(img, "768x2000>")
      }
    } else {
      img <- magick::image_resize(img, resize)
    }
    buf <- magick::image_write(img, format = magick::image_info(img)$format)
    base64 <- base64enc::base64encode(buf)
  }

  ContentImageInline(content_type, base64)
}

#' @rdname content_image_url
#' @export
#' @param width,height Width and height in pixels.
content_image_plot <- function(width = 768, height = 768) {
  check_number_whole(width, min = 1)
  check_number_whole(height, min = 1)

  plot <- grDevices::recordPlot()

  if (is.null(plot[[1]])) {
    cli::cli_abort(c(
      "Can't record plot because display list is inhibited.",
      i = "Turn it on with {.code dev.control('enable')}."
    ))
  }

  old <- grDevices::dev.cur()

  path <- tempfile("ellmer-plot-", fileext = ".png")
  defer(unlink(path))

  grDevices::png(path, width = width, height = height)
  grDevices::replayPlot(plot)
  grDevices::dev.off()

  grDevices::dev.set(old)

  content_image_file(path, "image/png", resize = "none")
}


parse_data_url <- function(url, error_call = caller_env()) {
  # https://developer.mozilla.org/en-US/docs/Web/URI/Schemes/data
  parts <- strsplit(sub("^data:", "", url), ";")[[1]]
  if (length(parts) != 2 || !grepl("^base64,", parts[[2]])) {
    cli::cli_abort("{.arg url} is not a valid data url.", call = error_call)
  }

  list(
    content_type = parts[[1]],
    base64 = sub("^base64,", "", parts[[2]])
  )
}
`````

## File: R/content-pdf.R
`````r
#' Encode PDFs content for chat input
#'
#' @description
#' These functions are used to prepare PDFs as input to the chatbot. The
#' `content_pdf_url()` function is used to provide a URL to an PDF file,
#' while `content_pdf_file()` is used to for local PDF files.
#'
#' Not all providers support PDF input, so check the documentation for the
#' provider you are using.
#'
#' @param path,url Path or URL to a PDF file.
#' @return A `ContentPDF` object
#' @export
content_pdf_file <- function(path) {
  check_string(path, allow_empty = FALSE)
  if (!file.exists(path) || dir.exists(path)) {
    cli::cli_abort("{.arg path} must be an existing file.")
  }

  ContentPDF(
    type = "application/pdf",
    data = base64enc::base64encode(path)
  )
}

#' @rdname content_pdf_file
#' @export
content_pdf_url <- function(url) {
  if (grepl("^data:", url)) {
    parsed <- parse_data_url(url)
    ContentPDF(parsed$content_type, parsed$base64)
  } else {
    # TODO: need seperate ContentPDFRemote type so we can use file upload
    # apis where they exist. Might need some kind of mutable state so can
    # record point to uploaded file.
    path <- tempfile(fileext = ".pdf")
    on.exit(unlink(path))

    resp <- httr2::req_perform(httr2::request(url), path = path)
    content_pdf_file(path)
  }
}
`````

## File: R/content-tools.R
`````r
#' @include turns.R
NULL

is_tool_request <- function(x) S7_inherits(x, ContentToolRequest)
is_tool_result <- function(x) S7_inherits(x, ContentToolResult)

match_tools <- function(turn, tools) {
  if (is.null(turn)) {
    return(NULL)
  }

  turn@contents <- map(turn@contents, function(content) {
    if (!is_tool_request(content)) {
      return(content)
    }
    content@tool <- tools[[content@name]]
    content
  })

  turn
}

on_load({
  invoke_tools <- coro::generator(function(
    turn,
    echo = "none",
    on_tool_request = function(request) invisible(),
    on_tool_result = function(result) invisible(),
    yield_request = FALSE
  ) {
    tool_requests <- extract_tool_requests(turn)

    for (request in tool_requests) {
      maybe_echo_tool(request, echo = echo)
      if (yield_request) {
        yield(request)
      }

      rejected <- maybe_on_tool_request(request, on_tool_request)
      if (!is.null(rejected)) {
        maybe_echo_tool(rejected, echo = echo)
        on_tool_result(rejected)
        yield(rejected)
        next
      }

      result <- invoke_tool(request)

      if (promises::is.promise(result@value)) {
        cli::cli_abort(c(
          "Can't use async tools with `$chat()` or `$stream()`.",
          i = "Async tools are supported, but you must use `$chat_async()` or `$stream_async()`."
        ))
      }

      maybe_echo_tool(result, echo = echo)
      on_tool_result(result)
      yield(result)
    }
  })

  # invoke_tools_async is intentionally *not* an _async_ generator, instead it
  # is a generator that returns promises. This lets the caller decide if the
  # tasks should be run in parallel or sequentially.
  invoke_tools_async <- coro::generator(function(
    turn,
    tools,
    echo = "none",
    on_tool_request = function(request) invisible(),
    on_tool_result = function(result) invisible(),
    yield_request = FALSE
  ) {
    tool_requests <- extract_tool_requests(turn)

    invoke_tool_async_wrapper <- coro::async(function(request) {
      maybe_echo_tool(request, echo = echo)

      rejected <- coro::await(
        maybe_on_tool_request_async(request, on_tool_request)
      )
      if (!is.null(rejected)) {
        maybe_echo_tool(rejected, echo = echo)
        on_tool_result(rejected)
        return(rejected)
      }

      result <- coro::await(invoke_tool_async(request))

      maybe_echo_tool(result, echo = echo)
      on_tool_result(result)
      result
    })

    for (request in tool_requests) {
      if (yield_request) {
        yield(request)
      }
      yield(invoke_tool_async_wrapper(request))
    }
  })
})

gen_async_promise_all <- function(generator) {
  promises::promise_all(.list = coro::collect(generator))
}

extract_tool_requests <- function(turn) {
  if (is.null(turn)) {
    return(NULL)
  }

  turn@contents[map_lgl(turn@contents, is_tool_request)]
}

turn_has_tool_request <- function(turn) {
  if (is.null(turn)) {
    return(FALSE)
  }
  stopifnot(S7_inherits(turn, Turn))

  some(turn@contents, is_tool_request)
}

new_tool_result <- function(request, result = NULL, error = NULL) {
  check_exclusive(result, error)

  if (!is.null(error)) {
    ContentToolResult(error = error, request = request)
  } else if (is_tool_result(result)) {
    set_props(result, request = request)
  } else {
    ContentToolResult(value = result, request = request)
  }
}

# Also need to handle edge cases: https://platform.openai.com/docs/guides/function-calling/edge-cases
invoke_tool <- function(request) {
  if (is.null(request@tool)) {
    return(new_tool_result(request, error = "Unknown tool"))
  }

  args <- tool_request_args(request)
  if (is_tool_result(args)) {
    # Failed to convert the arguments
    return(args)
  }

  tryCatch(
    {
      result <- do.call(request@tool@fun, args)
      new_tool_result(request, result)
    },
    error = function(e) {
      new_tool_result(request, error = e)
    }
  )
}

on_load(
  invoke_tool_async <- coro::async(function(request) {
    if (is.null(request@tool)) {
      return(new_tool_result(request, error = "Unknown tool"))
    }

    args <- tool_request_args(request)
    if (is_tool_result(args)) {
      # Failed to convert the arguments
      return(args)
    }

    tryCatch(
      {
        result <- await(do.call(request@tool@fun, args))
        new_tool_result(request, result)
      },
      error = function(e) {
        new_tool_result(request, error = e)
      }
    )
  })
)

tool_request_args <- function(request) {
  tool <- request@tool
  args <- request@arguments

  if (!tool@convert) {
    return(args)
  }

  extra_args <- setdiff(names(args), names(tool@arguments@properties))
  if (length(extra_args) > 0) {
    e <- catch_cnd(cli::cli_abort("Unused argument{?s}: {extra_args}"))
    return(new_tool_result(request, error = e))
  }

  args <- convert_from_type(args, tool@arguments)
  args[!map_lgl(args, is.null)]
}

maybe_on_tool_request <- function(
  request,
  on_tool_request = function(request) invisible()
) {
  tryCatch(
    {
      on_tool_request(request)
      NULL
    },
    ellmer_tool_reject = function(e) {
      ContentToolResult(error = e$message, request = request)
    }
  )
}

on_load(
  maybe_on_tool_request_async <- coro::async(
    function(request, on_tool_request = function(request) invisible()) {
      tryCatch(
        {
          coro::await(on_tool_request(request))
          NULL
        },
        ellmer_tool_reject = function(e) {
          ContentToolResult(error = e$message, request = request)
        }
      )
    }
  )
)

tool_results_as_turn <- function(results) {
  if (length(results) == 0) {
    return(NULL)
  }
  is_tool_result <- map_lgl(results, is_tool_result)
  if (!any(is_tool_result)) {
    return(NULL)
  }
  Turn("user", contents = results[is_tool_result])
}

turn_get_tool_errors <- function(turn = NULL) {
  if (is.null(turn)) {
    return(NULL)
  }
  stopifnot(S7_inherits(turn, Turn))

  if (length(turn@contents) == 0) {
    return(NULL)
  }

  is_result <- map_lgl(turn@contents, S7_inherits, ContentToolResult)
  if (!any(is_result)) {
    return(NULL)
  }

  is_error <- map_lgl(turn@contents[is_result], tool_errored)

  res <- turn@contents[is_result][is_error]
  if (length(res)) res else NULL
}

warn_tool_errors <- function(tool_errors) {
  # tool_errors is a list of errors returned from turn_get_tool_errors()
  if (length(tool_errors) == 0) {
    return()
  }

  errs <- map_chr(
    tool_errors[seq_len(min(3, length(tool_errors)))],
    function(result) {
      name <- result@request@name %||% "unknown_tool"
      id <- result@request@id
      error <- tool_error_string(result)
      cli::format_inline("[{.field {name}} ({id})]: {cli_escape(error)}")
    }
  )

  cli::cli_warn(c(
    "Failed to evaluate {length(tool_errors)} tool call{?s}.",
    set_names(errs, "x"),
    "i" = if (length(errs) < length(tool_errors)) {
      cli::format_inline(
        "{cli::symbol$ellipsis} and {length(tool_errors) - length(errs)} more."
      )
    }
  ))
}

maybe_echo_tool <- function(x, echo = "output") {
  if (!identical(echo, "output")) {
    return(invisible(x))
  }

  if (is_tool_request(x)) {
    cli::cli_text(
      cli::col_blue(cli::symbol$circle),
      " [{cli::col_blue('tool call')}] ",
      cli_escape(format(x, show = "call"))
    )
    return(invisible(x))
  }

  if (!is_tool_result(x)) {
    # neither tool result or request
    return(invisible(x))
  }

  # ContentToolResult ----
  if (tool_errored(x)) {
    icon <- cli::col_red(cli::symbol$stop)
    header <- cli::col_red("Error: ")
    value <- tool_error_string(x)
  } else {
    icon <- cli::col_green(cli::symbol$record)
    header <- ""
    value <- tool_string(x)
  }

  value <- cli::style_italic(value)

  if (grepl("\n", value)) {
    lines <- strsplit(value, "\n")[[1]]
    lines <- c(
      lines[seq_len(min(5, length(lines)))],
      if (length(lines) > 5) cli::symbol$ellipsis
    )
    lines <- cli::style_italic(lines)
    cli::cli_text("{icon} #> {header}{lines[1]}")
    for (line in lines[-1]) {
      cli::cli_text("\u00a0\u00a0#> {line}")
    }
  } else {
    max_width <- cli::console_width() - 7
    if (nchar(value) > max_width) {
      value <- substring(value, 1, max_width)
      value <- paste0(value, cli::symbol$ellipsis)
    }
    value <- cli::style_italic(value)
    cli::cli_text("{icon} #> {header}{value}")
  }

  invisible(x)
}
`````

## File: R/content.R
`````r
#' @include tools-def.R
#' @include utils-S7.R
NULL

#' Format contents into a textual representation
#'
#' @description
#' `r lifecycle::badge("experimental")`
#'
#' These generic functions can be use to convert [Turn] contents or [Content]
#' objects into textual representations.
#'
#' * `contents_text()` is the most minimal and only includes [ContentText]
#'   objects in the output.
#' * `contents_markdown()` returns the text content (which it assumes to be
#'   markdown and does not convert it) plus markdown representations of images
#'   and other content types.
#' * `contents_html()` returns the text content, converted from markdown to
#'   HTML with [commonmark::markdown_html()], plus HTML representations of
#'   images and other content types.
#'
#' These content types will continue to grow and change as ellmer evolves to
#' support more providers and as providers add more content types.
#' @examples
#' turns <- list(
#'   Turn("user", contents = list(
#'     ContentText("What's this image?"),
#'     content_image_url("https://placehold.co/200x200")
#'   )),
#'   Turn("assistant", "It's a placeholder image.")
#' )
#'
#' lapply(turns, contents_text)
#' lapply(turns, contents_markdown)
#' if (rlang::is_installed("commonmark")) {
#'   contents_html(turns[[1]])
#' }
#'
#' @param content The [Turn] or [Content] object to be converted into text.
#'   `contents_markdown()` also accepts [Chat] instances to turn the entire
#'   conversation history into markdown text.
#' @param ... Additional arguments passed to methods.
#'
#' @return A string of text, markdown or HTML.
#' @export
contents_text <- new_generic("contents_text", "content")

#' @rdname contents_text
#' @export
contents_html <- new_generic("contents_html", "content")

#' @rdname contents_text
#' @export
contents_markdown <- new_generic("contents_markdown", "content")


#' Content types received from and sent to a chatbot
#'
#' @description
#' Use these functions if you're writing a package that extends ellmer and need
#' to customise methods for various types of content. For normal use, see
#' [content_image_url()] and friends.
#'
#' ellmer abstracts away differences in the way that different [Provider]s
#' represent various types of content, allowing you to more easily write
#' code that works with any chatbot. This set of classes represents types of
#' content that can be either sent to and received from a provider:
#'
#' * `ContentText`: simple text (often in markdown format). This is the only
#'   type of content that can be streamed live as it's received.
#' * `ContentImageRemote` and `ContentImageInline`: images, either as a pointer
#'   to a remote URL or included inline in the object. See
#'   [content_image_file()] and friends for convenient ways to construct these
#'   objects.
#' * `ContentToolRequest`: a request to perform a tool call (sent by the
#'    assistant).
#' * `ContentToolResult`: the result of calling the tool (sent by the user).
#'   This object is automatically created from the value returned by calling the
#'   [tool()] function. Alternatively, expert users can return a
#'   `ContentToolResult` from a [tool()] function to include additional data or
#'   to customize the display of the result.
#'
#' @export
#' @return S7 objects that all inherit from `Content`
#' @examples
#' Content()
#' ContentText("Tell me a joke")
#' ContentImageRemote("https://www.r-project.org/Rlogo.png")
#' ContentToolRequest(id = "abc", name = "mean", arguments = list(x = 1:5))
Content <- new_class("Content")

method(contents_text, Content) <- function(content) {
  NULL
}

method(contents_markdown, Content) <- function(content) {
  # Fall back to text representation in markdown
  contents_text(content)
}

method(contents_html, Content) <- function(content) {
  NULL
}

#' @rdname Content
#' @export
#' @param text A single string.
ContentText <- new_class(
  "ContentText",
  parent = Content,
  properties = list(text = prop_string()),
)
method(format, ContentText) <- function(x, ...) {
  x@text
}

method(contents_text, ContentText) <- function(content) {
  content@text
}

method(contents_html, ContentText) <- function(content) {
  check_installed("commonmark")
  commonmark::markdown_html(content@text)
}

method(contents_markdown, ContentText) <- function(content) {
  content@text
}

# Images -----------------------------------------------------------------

#' @rdname Content
#' @export
ContentImage <- new_class(
  "ContentImage",
  parent = Content
)

#' @rdname Content
#' @export
#' @param url URL to a remote image.
#' @param detail Not currently used.
ContentImageRemote <- new_class(
  "ContentImageRemote",
  parent = Content,
  properties = list(
    url = prop_string(),
    detail = prop_string(default = "")
  )
)
method(format, ContentImageRemote) <- function(x, ...) {
  cli::format_inline("[{.strong remote image}]: {.url {x@url}}")
}
method(contents_html, ContentImageRemote) <- function(content) {
  sprintf('<img src="%s">', content@url)
}
method(contents_markdown, ContentImageRemote) <- function(content) {
  sprintf('![](%s)', content@url)
}

#' @rdname Content
#' @export
#' @param type MIME type of the image.
#' @param data Base64 encoded image data.
ContentImageInline <- new_class(
  "ContentImageInline",
  parent = Content,
  properties = list(
    type = prop_string(),
    data = prop_string(allow_null = TRUE)
  )
)
method(format, ContentImageInline) <- function(x, ...) {
  cli::format_inline("[{.strong inline image}]")
}
method(contents_html, ContentImageInline) <- function(content) {
  sprintf('<img src="data:%s;base64,%s">', content@type, content@data)
}
method(contents_markdown, ContentImageInline) <- function(content) {
  sprintf('![](data:%s;base64,%s)', content@type, content@data)
}

# Tools ------------------------------------------------------------------

#' @rdname Content
#' @export
#' @param id Tool call id (used to associate a request and a result).
#'   Automatically managed by \pkg{ellmer}.
#' @param name Function name
#' @param arguments Named list of arguments to call the function with.
#' @param tool ellmer automatically matches a tool request to the tools defined
#'   for the chatbot. If `NULL`, the request did not match a defined tool.
ContentToolRequest <- new_class(
  "ContentToolRequest",
  parent = Content,
  properties = list(
    id = prop_string(),
    name = prop_string(),
    arguments = class_list,
    tool = NULL | ToolDef
  )
)
method(format, ContentToolRequest) <- function(
  x,
  ...,
  show = c("all", "call")
) {
  show <- arg_match(show)

  if (length(x@arguments) == 0) {
    call <- call2(x@name)
  } else {
    call <- call2(x@name, !!!x@arguments)
  }
  if (show == "call") {
    return(format(call))
  }

  cli::format_inline("[{.strong tool request} ({x@id})]: {format(call)}")
}

#' @rdname Content
#' @export
#' @param value The results of calling the tool function, if it succeeded.
#' @param error The error message, as a string, or the error condition thrown
#'   as a result of a failure when calling the tool function. Must be `NULL`
#'   when the tool call is successful.
#' @param extra Optional additional data associated with the tool result that
#'   isn't included in the `value` that's shown to the LLM. Useful for including
#'   additional data for displaying the tool result in a client, like a Shiny
#'   app, without including the data in the response to the LLM.
#' @param request The [ContentToolRequest] associated with the tool result,
#'   automatically added by \pkg{ellmer} when evaluating the tool call.
ContentToolResult <- new_class(
  "ContentToolResult",
  parent = Content,
  properties = list(
    value = class_any,
    error = new_property(
      class = NULL | class_character | new_S3_class("condition"),
      default = NULL,
      validator = function(value) {
        ok <- is.null(value) || is_string(value) || inherits(value, "condition")
        if (ok) {
          return()
        }

        paste0(
          "must be a single string or a condition object, not ",
          obj_type_friendly(value),
          "."
        )
      }
    ),
    extra = class_list,
    request = NULL | ContentToolRequest
  )
)
method(format, ContentToolResult) <- function(
  x,
  ...,
  show = c("all", "header")
) {
  show <- arg_match(show)

  header <- cli::format_inline("[{.strong tool result}  ({x@request@id})]:")

  if (show == "header") {
    return(header)
  }

  if (tool_errored(x)) {
    value <- paste0(cli::col_red("Error: "), tool_error_string(x))
  } else {
    value <- tool_string(x)
  }

  if (!is_string(value) || !grepl("\n", value)) {
    paste0(header, " ", value)
  } else {
    paste(c(header, value), collapse = "\n")
  }
}

tool_errored <- function(x) !is.null(x@error)
tool_error_string <- function(x) {
  if (inherits(x@error, "condition")) conditionMessage(x@error) else x@error
}
tool_string <- function(x) {
  if (tool_errored(x)) {
    paste0("Tool calling failed with error ", tool_error_string(x))
  } else if (inherits(x@value, "AsIs")) {
    x@value
  } else if (inherits(x@value, "json")) {
    x@value
  } else if (is.character(x@value)) {
    paste(x@value, collapse = "\n")
  } else {
    jsonlite::toJSON(x@value, auto_unbox = TRUE)
  }
}

ContentJson <- new_class(
  "ContentJson",
  parent = Content,
  properties = list(value = class_any)
)
method(format, ContentJson) <- function(x, ...) {
  paste0(
    cli::format_inline("[{.strong data}] "),
    pretty_json(x@value)
  )
}
method(contents_html, ContentJson) <- function(content) {
  sprintf('<pre><code>%s</code></pre>\n', pretty_json(content@value))
}
method(contents_markdown, ContentJson) <- function(content) {
  sprintf('```json\n%s\n```\n', pretty_json(content@value))
}

ContentUploaded <- new_class(
  "ContentUploaded",
  parent = Content,
  properties = list(
    uri = prop_string(),
    mime_type = prop_string(default = "")
  )
)
method(format, ContentUploaded) <- function(x, ...) {
  cli::format_inline("[{.strong uploaded file}]: [{x@mime_type}]")
}
method(contents_html, ContentUploaded) <- function(content) {
  sprintf("[uploaded %s file]", content@mime_type)
}
method(contents_markdown, ContentUploaded) <- function(content) {
  sprintf("`[uploaded %s file]`", content@mime_type)
}

# Thinking ---------------------------------------------------------------------

#' @rdname Content
#' @param thinking The text of the thinking output.
#' @param extra Additional data.
#' @export
ContentThinking <- new_class(
  "ContentThinking",
  parent = Content,
  properties = list(
    thinking = prop_string(),
    extra = class_list
  )
)

method(format, ContentThinking) <- function(x, ...) {
  paste0("<thinking>\n", x@thinking, "\n</thinking>\n")
}

method(contents_html, ContentThinking) <- function(content) {
  check_installed("commonmark")
  paste0(
    "<details><summary>Thinking</summary>\n",
    commonmark::markdown_html(content@thinking),
    "</details>\n"
  )
}

method(contents_markdown, ContentThinking) <- function(content) {
  format(content)
}

# Helpers ----------------------------------------------------------------------

as_content <- function(x, error_call = caller_env(), error_arg = "...") {
  if (is.null(x)) {
    list()
  } else if (is_prompt(x)) {
    if (length(x) == 1) {
      ContentText(x[[1]])
    } else {
      cli::cli_abort(
        "{.arg {error_arg}} can only accept a single prompt.",
        call = error_call
      )
    }
  } else if (is.character(x)) {
    ContentText(paste0(x, collapse = "\n\n"))
  } else if (S7_inherits(x, Content)) {
    x
  } else {
    stop_input_type(
      x,
      what = "made up strings or <content> objects",
      arg = error_arg,
      error_call = error_call
    )
  }
}

#' @rdname Content
#' @export
ContentPDF <- new_class(
  "ContentPDF",
  parent = Content,
  properties = list(
    type = prop_string(),
    data = prop_string()
  )
)

method(format, ContentPDF) <- function(x, ...) {
  "<PDF document>"
}
`````

## File: R/deprecated.R
`````r
#' Deprecated functions
#'
#' @description
#' `r lifecycle::badge("deprecated")`
#'
#' ## Deprecated in v0.2.0
#'
#' * [chat_azure()] was renamed to [chat_azure_openai()].
#' * [chat_bedrock()] was renamed to [chat_aws_bedrock()].
#' * [chat_claude()] was renamed to [chat_anthropic()].
#' * [chat_gemini()] was renamed to [chat_google_gemini()].
#'
#' ## Deprecated in v0.1.1
#'
#' * [chat_cortex()] was renamed in v0.1.1 to [chat_cortex_analyst()] to
#'   distinguish it from the more general-purpose Snowflake Cortex chat
#'   function, [chat_snowflake()].
#'
#' @param ... Additional arguments passed from the deprecated function to its
#'   replacement.
#'
#' @keywords internal
#' @name deprecated
NULL


# Deprecated in v0.1.1 -----------------------------------------------------

#' @rdname deprecated
#' @export
chat_cortex <- function(...) {
  lifecycle::deprecate_warn("0.1.1", "chat_cortex()", "chat_cortex_analyst()")
  chat_cortex_analyst(...)
}

# Deprecated in v0.2.0 -----------------------------------------------------

#' @rdname deprecated
#' @export
chat_azure <- function(...) {
  lifecycle::deprecate_warn("0.2.0", "chat_azure()", "chat_azure_openai()")
  chat_azure_openai(...)
}

#' @rdname deprecated
#' @export
chat_bedrock <- function(...) {
  lifecycle::deprecate_warn("0.2.0", "chat_bedrock()", "chat_aws_bedrock()")
  chat_aws_bedrock(...)
}

#' @rdname deprecated
#' @export
chat_claude <- function(...) {
  lifecycle::deprecate_warn("0.2.0", "chat_claude()", "chat_anthropic()")
  chat_anthropic(...)
}

#' @rdname deprecated
#' @export
chat_gemini <- function(...) {
  lifecycle::deprecate_warn("0.2.0", "chat_gemini()", "chat_google_gemini()")
  chat_google_gemini(...)
}
`````

## File: R/ellmer-package.R
`````r
#' @keywords internal
#' @importFrom R6 R6Class
"_PACKAGE"

the <- new_environment()
the$credentials_cache <- new_environment()

silence_r_cmd_check_note <- function() {
  later::later()
}

## usethis namespace: start
#' @import httr2
#' @import rlang
#' @import S7
#' @importFrom lifecycle deprecated
## usethis namespace: end
NULL
`````

## File: R/httr2.R
`````r
# Currently performing chat request is not generic as there appears to
# be sufficiently genericity elsewhere to handle the API variations.
# We will recconsider this in the future if necessary.
chat_perform <- function(
  provider,
  mode = c("value", "stream", "async-stream", "async-value"),
  turns,
  tools = list(),
  type = NULL
) {
  mode <- arg_match(mode)
  stream <- mode %in% c("stream", "async-stream")

  req <- chat_request(
    provider = provider,
    turns = turns,
    tools = tools,
    stream = stream,
    type = type
  )

  switch(
    mode,
    "value" = chat_perform_value(provider, req),
    "stream" = chat_perform_stream(provider, req),
    "async-value" = chat_perform_async_value(provider, req),
    "async-stream" = chat_perform_async_stream(provider, req)
  )
}

chat_perform_value <- function(provider, req) {
  resp_body_json(req_perform(req))
}

on_load(
  chat_perform_stream <- coro::generator(function(provider, req) {
    resp <- req_perform_connection(req)
    on.exit(close(resp))

    repeat {
      event <- chat_resp_stream(provider, resp)
      data <- stream_parse(provider, event)
      if (is.null(data)) {
        break
      } else {
        yield(data)
      }
    }
  })
)

chat_perform_async_value <- function(provider, req) {
  promises::then(req_perform_promise(req), resp_body_json)
}

on_load(
  chat_perform_async_stream <- coro::async_generator(function(provider, req) {
    resp <- req_perform_connection(req, blocking = FALSE)
    on.exit(close(resp))

    repeat {
      event <- chat_resp_stream(provider, resp)
      if (is.null(event) && isIncomplete(resp$body)) {
        fds <- curl::multi_fdset(resp$body)
        await(promises::promise(function(resolve, reject) {
          later::later_fd(
            resolve,
            fds$reads,
            fds$writes,
            fds$exceptions,
            fds$timeout
          )
        }))
        next
      }

      data <- stream_parse(provider, event)
      if (is.null(data)) {
        break
      } else {
        yield(data)
      }
    }
  })
)

# Request helpers --------------------------------------------------------------

ellmer_req_timeout <- function(req, stream) {
  req_options(req, timeout = getOption("ellmer_timeout_s", 5 * 60))
}

ellmer_req_credentials <- function(req, credentials_fun) {
  # TODO: simplify once req_headers_redacted() supports !!!
  credentials <- credentials_fun()
  req_headers(req, !!!credentials, .redact = names(credentials))
}

ellmer_req_user_agent <- function(req, override = "") {
  ua <- if (identical(override, "")) ellmer_user_agent() else override
  req_user_agent(req, ua)
}
ellmer_user_agent <- function() {
  paste0("r-ellmer/", utils::packageVersion("ellmer"))
}
transform_user_agent <- function(x) {
  gsub(ellmer_user_agent(), "<ellmer_user_agent>", x, fixed = TRUE)
}
`````

## File: R/import-standalone-obj-type.R
`````r
# Standalone file: do not edit by hand
# Source: https://github.com/r-lib/rlang/blob/HEAD/R/standalone-obj-type.R
# Generated by: usethis::use_standalone("r-lib/rlang", "obj-type")
# ----------------------------------------------------------------------
#
# ---
# repo: r-lib/rlang
# file: standalone-obj-type.R
# last-updated: 2024-02-14
# license: https://unlicense.org
# imports: rlang (>= 1.1.0)
# ---
#
# ## Changelog
#
# 2024-02-14:
# - `obj_type_friendly()` now works for S7 objects.
#
# 2023-05-01:
# - `obj_type_friendly()` now only displays the first class of S3 objects.
#
# 2023-03-30:
# - `stop_input_type()` now handles `I()` input literally in `arg`.
#
# 2022-10-04:
# - `obj_type_friendly(value = TRUE)` now shows numeric scalars
#   literally.
# - `stop_friendly_type()` now takes `show_value`, passed to
#   `obj_type_friendly()` as the `value` argument.
#
# 2022-10-03:
# - Added `allow_na` and `allow_null` arguments.
# - `NULL` is now backticked.
# - Better friendly type for infinities and `NaN`.
#
# 2022-09-16:
# - Unprefixed usage of rlang functions with `rlang::` to
#   avoid onLoad issues when called from rlang (#1482).
#
# 2022-08-11:
# - Prefixed usage of rlang functions with `rlang::`.
#
# 2022-06-22:
# - `friendly_type_of()` is now `obj_type_friendly()`.
# - Added `obj_type_oo()`.
#
# 2021-12-20:
# - Added support for scalar values and empty vectors.
# - Added `stop_input_type()`
#
# 2021-06-30:
# - Added support for missing arguments.
#
# 2021-04-19:
# - Added support for matrices and arrays (#141).
# - Added documentation.
# - Added changelog.
#
# nocov start

#' Return English-friendly type
#' @param x Any R object.
#' @param value Whether to describe the value of `x`. Special values
#'   like `NA` or `""` are always described.
#' @param length Whether to mention the length of vectors and lists.
#' @return A string describing the type. Starts with an indefinite
#'   article, e.g. "an integer vector".
#' @noRd
obj_type_friendly <- function(x, value = TRUE) {
  if (is_missing(x)) {
    return("absent")
  }

  if (is.object(x)) {
    if (inherits(x, "quosure")) {
      type <- "quosure"
    } else {
      type <- class(x)[[1L]]
    }
    return(sprintf("a <%s> object", type))
  }

  if (!is_vector(x)) {
    return(.rlang_as_friendly_type(typeof(x)))
  }

  n_dim <- length(dim(x))

  if (!n_dim) {
    if (!is_list(x) && length(x) == 1) {
      if (is_na(x)) {
        return(switch(
          typeof(x),
          logical = "`NA`",
          integer = "an integer `NA`",
          double =
            if (is.nan(x)) {
              "`NaN`"
            } else {
              "a numeric `NA`"
            },
          complex = "a complex `NA`",
          character = "a character `NA`",
          .rlang_stop_unexpected_typeof(x)
        ))
      }

      show_infinites <- function(x) {
        if (x > 0) {
          "`Inf`"
        } else {
          "`-Inf`"
        }
      }
      str_encode <- function(x, width = 30, ...) {
        if (nchar(x) > width) {
          x <- substr(x, 1, width - 3)
          x <- paste0(x, "...")
        }
        encodeString(x, ...)
      }

      if (value) {
        if (is.numeric(x) && is.infinite(x)) {
          return(show_infinites(x))
        }

        if (is.numeric(x) || is.complex(x)) {
          number <- as.character(round(x, 2))
          what <- if (is.complex(x)) "the complex number" else "the number"
          return(paste(what, number))
        }

        return(switch(
          typeof(x),
          logical = if (x) "`TRUE`" else "`FALSE`",
          character = {
            what <- if (nzchar(x)) "the string" else "the empty string"
            paste(what, str_encode(x, quote = "\""))
          },
          raw = paste("the raw value", as.character(x)),
          .rlang_stop_unexpected_typeof(x)
        ))
      }

      return(switch(
        typeof(x),
        logical = "a logical value",
        integer = "an integer",
        double = if (is.infinite(x)) show_infinites(x) else "a number",
        complex = "a complex number",
        character = if (nzchar(x)) "a string" else "\"\"",
        raw = "a raw value",
        .rlang_stop_unexpected_typeof(x)
      ))
    }

    if (length(x) == 0) {
      return(switch(
        typeof(x),
        logical = "an empty logical vector",
        integer = "an empty integer vector",
        double = "an empty numeric vector",
        complex = "an empty complex vector",
        character = "an empty character vector",
        raw = "an empty raw vector",
        list = "an empty list",
        .rlang_stop_unexpected_typeof(x)
      ))
    }
  }

  vec_type_friendly(x)
}

vec_type_friendly <- function(x, length = FALSE) {
  if (!is_vector(x)) {
    abort("`x` must be a vector.")
  }
  type <- typeof(x)
  n_dim <- length(dim(x))

  add_length <- function(type) {
    if (length && !n_dim) {
      paste0(type, sprintf(" of length %s", length(x)))
    } else {
      type
    }
  }

  if (type == "list") {
    if (n_dim < 2) {
      return(add_length("a list"))
    } else if (is.data.frame(x)) {
      return("a data frame")
    } else if (n_dim == 2) {
      return("a list matrix")
    } else {
      return("a list array")
    }
  }

  type <- switch(
    type,
    logical = "a logical %s",
    integer = "an integer %s",
    numeric = ,
    double = "a double %s",
    complex = "a complex %s",
    character = "a character %s",
    raw = "a raw %s",
    type = paste0("a ", type, " %s")
  )

  if (n_dim < 2) {
    kind <- "vector"
  } else if (n_dim == 2) {
    kind <- "matrix"
  } else {
    kind <- "array"
  }
  out <- sprintf(type, kind)

  if (n_dim >= 2) {
    out
  } else {
    add_length(out)
  }
}

.rlang_as_friendly_type <- function(type) {
  switch(
    type,

    list = "a list",

    NULL = "`NULL`",
    environment = "an environment",
    externalptr = "a pointer",
    weakref = "a weak reference",
    S4 = "an S4 object",

    name = ,
    symbol = "a symbol",
    language = "a call",
    pairlist = "a pairlist node",
    expression = "an expression vector",

    char = "an internal string",
    promise = "an internal promise",
    ... = "an internal dots object",
    any = "an internal `any` object",
    bytecode = "an internal bytecode object",

    primitive = ,
    builtin = ,
    special = "a primitive function",
    closure = "a function",

    type
  )
}

.rlang_stop_unexpected_typeof <- function(x, call = caller_env()) {
  abort(
    sprintf("Unexpected type <%s>.", typeof(x)),
    call = call
  )
}

#' Return OO type
#' @param x Any R object.
#' @return One of `"bare"` (for non-OO objects), `"S3"`, `"S4"`,
#'   `"R6"`, or `"S7"`.
#' @noRd
obj_type_oo <- function(x) {
  if (!is.object(x)) {
    return("bare")
  }

  class <- inherits(x, c("R6", "S7_object"), which = TRUE)

  if (class[[1]]) {
    "R6"
  } else if (class[[2]]) {
    "S7"
  } else if (isS4(x)) {
    "S4"
  } else {
    "S3"
  }
}

#' @param x The object type which does not conform to `what`. Its
#'   `obj_type_friendly()` is taken and mentioned in the error message.
#' @param what The friendly expected type as a string. Can be a
#'   character vector of expected types, in which case the error
#'   message mentions all of them in an "or" enumeration.
#' @param show_value Passed to `value` argument of `obj_type_friendly()`.
#' @param ... Arguments passed to [abort()].
#' @inheritParams args_error_context
#' @noRd
stop_input_type <- function(x,
                            what,
                            ...,
                            allow_na = FALSE,
                            allow_null = FALSE,
                            show_value = TRUE,
                            arg = caller_arg(x),
                            call = caller_env()) {
  # From standalone-cli.R
  cli <- env_get_list(
    nms = c("format_arg", "format_code"),
    last = topenv(),
    default = function(x) sprintf("`%s`", x),
    inherit = TRUE
  )

  if (allow_na) {
    what <- c(what, cli$format_code("NA"))
  }
  if (allow_null) {
    what <- c(what, cli$format_code("NULL"))
  }
  if (length(what)) {
    what <- oxford_comma(what)
  }
  if (inherits(arg, "AsIs")) {
    format_arg <- identity
  } else {
    format_arg <- cli$format_arg
  }

  message <- sprintf(
    "%s must be %s, not %s.",
    format_arg(arg),
    what,
    obj_type_friendly(x, value = show_value)
  )

  abort(message, ..., call = call, arg = arg)
}

oxford_comma <- function(chr, sep = ", ", final = "or") {
  n <- length(chr)

  if (n < 2) {
    return(chr)
  }

  head <- chr[seq_len(n - 1)]
  last <- chr[n]

  head <- paste(head, collapse = sep)

  # Write a or b. But a, b, or c.
  if (n > 2) {
    paste0(head, sep, final, " ", last)
  } else {
    paste0(head, " ", final, " ", last)
  }
}

# nocov end
`````

## File: R/import-standalone-purrr.R
`````r
# Standalone file: do not edit by hand
# Source: https://github.com/r-lib/rlang/blob/HEAD/R/standalone-purrr.R
# Generated by: usethis::use_standalone("r-lib/rlang", "purrr")
# ----------------------------------------------------------------------
#
# ---
# repo: r-lib/rlang
# file: standalone-purrr.R
# last-updated: 2023-02-23
# license: https://unlicense.org
# imports: rlang
# ---
#
# This file provides a minimal shim to provide a purrr-like API on top of
# base R functions. They are not drop-in replacements but allow a similar style
# of programming.
#
# ## Changelog
#
# 2023-02-23:
# * Added `list_c()`
#
# 2022-06-07:
# * `transpose()` is now more consistent with purrr when inner names
#   are not congruent (#1346).
#
# 2021-12-15:
# * `transpose()` now supports empty lists.
#
# 2021-05-21:
# * Fixed "object `x` not found" error in `imap()` (@mgirlich)
#
# 2020-04-14:
# * Removed `pluck*()` functions
# * Removed `*_cpl()` functions
# * Used `as_function()` to allow use of `~`
# * Used `.` prefix for helpers
#
# nocov start

map <- function(.x, .f, ...) {
  .f <- as_function(.f, env = global_env())
  lapply(.x, .f, ...)
}
walk <- function(.x, .f, ...) {
  map(.x, .f, ...)
  invisible(.x)
}

map_lgl <- function(.x, .f, ...) {
  .rlang_purrr_map_mold(.x, .f, logical(1), ...)
}
map_int <- function(.x, .f, ...) {
  .rlang_purrr_map_mold(.x, .f, integer(1), ...)
}
map_dbl <- function(.x, .f, ...) {
  .rlang_purrr_map_mold(.x, .f, double(1), ...)
}
map_chr <- function(.x, .f, ...) {
  .rlang_purrr_map_mold(.x, .f, character(1), ...)
}
.rlang_purrr_map_mold <- function(.x, .f, .mold, ...) {
  .f <- as_function(.f, env = global_env())
  out <- vapply(.x, .f, .mold, ..., USE.NAMES = FALSE)
  names(out) <- names(.x)
  out
}

map2 <- function(.x, .y, .f, ...) {
  .f <- as_function(.f, env = global_env())
  out <- mapply(.f, .x, .y, MoreArgs = list(...), SIMPLIFY = FALSE)
  if (length(out) == length(.x)) {
    set_names(out, names(.x))
  } else {
    set_names(out, NULL)
  }
}
map2_lgl <- function(.x, .y, .f, ...) {
  as.vector(map2(.x, .y, .f, ...), "logical")
}
map2_int <- function(.x, .y, .f, ...) {
  as.vector(map2(.x, .y, .f, ...), "integer")
}
map2_dbl <- function(.x, .y, .f, ...) {
  as.vector(map2(.x, .y, .f, ...), "double")
}
map2_chr <- function(.x, .y, .f, ...) {
  as.vector(map2(.x, .y, .f, ...), "character")
}
imap <- function(.x, .f, ...) {
  map2(.x, names(.x) %||% seq_along(.x), .f, ...)
}

pmap <- function(.l, .f, ...) {
  .f <- as.function(.f)
  args <- .rlang_purrr_args_recycle(.l)
  do.call("mapply", c(
    FUN = list(quote(.f)),
    args, MoreArgs = quote(list(...)),
    SIMPLIFY = FALSE, USE.NAMES = FALSE
  ))
}
.rlang_purrr_args_recycle <- function(args) {
  lengths <- map_int(args, length)
  n <- max(lengths)

  stopifnot(all(lengths == 1L | lengths == n))
  to_recycle <- lengths == 1L
  args[to_recycle] <- map(args[to_recycle], function(x) rep.int(x, n))

  args
}

keep <- function(.x, .f, ...) {
  .x[.rlang_purrr_probe(.x, .f, ...)]
}
discard <- function(.x, .p, ...) {
  sel <- .rlang_purrr_probe(.x, .p, ...)
  .x[is.na(sel) | !sel]
}
map_if <- function(.x, .p, .f, ...) {
  matches <- .rlang_purrr_probe(.x, .p)
  .x[matches] <- map(.x[matches], .f, ...)
  .x
}
.rlang_purrr_probe <- function(.x, .p, ...) {
  if (is_logical(.p)) {
    stopifnot(length(.p) == length(.x))
    .p
  } else {
    .p <- as_function(.p, env = global_env())
    map_lgl(.x, .p, ...)
  }
}

compact <- function(.x) {
  Filter(length, .x)
}

transpose <- function(.l) {
  if (!length(.l)) {
    return(.l)
  }

  inner_names <- names(.l[[1]])

  if (is.null(inner_names)) {
    fields <- seq_along(.l[[1]])
  } else {
    fields <- set_names(inner_names)
    .l <- map(.l, function(x) {
      if (is.null(names(x))) {
        set_names(x, inner_names)
      } else {
        x
      }
    })
  }

  # This way missing fields are subsetted as `NULL` instead of causing
  # an error
  .l <- map(.l, as.list)

  map(fields, function(i) {
    map(.l, .subset2, i)
  })
}

every <- function(.x, .p, ...) {
  .p <- as_function(.p, env = global_env())

  for (i in seq_along(.x)) {
    if (!rlang::is_true(.p(.x[[i]], ...))) return(FALSE)
  }
  TRUE
}
some <- function(.x, .p, ...) {
  .p <- as_function(.p, env = global_env())

  for (i in seq_along(.x)) {
    if (rlang::is_true(.p(.x[[i]], ...))) return(TRUE)
  }
  FALSE
}
negate <- function(.p) {
  .p <- as_function(.p, env = global_env())
  function(...) !.p(...)
}

reduce <- function(.x, .f, ..., .init) {
  f <- function(x, y) .f(x, y, ...)
  Reduce(f, .x, init = .init)
}
reduce_right <- function(.x, .f, ..., .init) {
  f <- function(x, y) .f(y, x, ...)
  Reduce(f, .x, init = .init, right = TRUE)
}
accumulate <- function(.x, .f, ..., .init) {
  f <- function(x, y) .f(x, y, ...)
  Reduce(f, .x, init = .init, accumulate = TRUE)
}
accumulate_right <- function(.x, .f, ..., .init) {
  f <- function(x, y) .f(y, x, ...)
  Reduce(f, .x, init = .init, right = TRUE, accumulate = TRUE)
}

detect <- function(.x, .f, ..., .right = FALSE, .p = is_true) {
  .p <- as_function(.p, env = global_env())
  .f <- as_function(.f, env = global_env())

  for (i in .rlang_purrr_index(.x, .right)) {
    if (.p(.f(.x[[i]], ...))) {
      return(.x[[i]])
    }
  }
  NULL
}
detect_index <- function(.x, .f, ..., .right = FALSE, .p = is_true) {
  .p <- as_function(.p, env = global_env())
  .f <- as_function(.f, env = global_env())

  for (i in .rlang_purrr_index(.x, .right)) {
    if (.p(.f(.x[[i]], ...))) {
      return(i)
    }
  }
  0L
}
.rlang_purrr_index <- function(x, right = FALSE) {
  idx <- seq_along(x)
  if (right) {
    idx <- rev(idx)
  }
  idx
}

list_c <- function(x) {
  inject(c(!!!x))
}

# nocov end
`````

## File: R/import-standalone-types-check.R
`````r
# Standalone file: do not edit by hand
# Source: https://github.com/r-lib/rlang/blob/HEAD/R/standalone-types-check.R
# Generated by: usethis::use_standalone("r-lib/rlang", "types-check")
# ----------------------------------------------------------------------
#
# ---
# repo: r-lib/rlang
# file: standalone-types-check.R
# last-updated: 2023-03-13
# license: https://unlicense.org
# dependencies: standalone-obj-type.R
# imports: rlang (>= 1.1.0)
# ---
#
# ## Changelog
#
# 2024-08-15:
# - `check_character()` gains an `allow_na` argument (@martaalcalde, #1724)
#
# 2023-03-13:
# - Improved error turns of number checkers (@teunbrand)
# - Added `allow_infinite` argument to `check_number_whole()` (@mgirlich).
# - Added `check_data_frame()` (@mgirlich).
#
# 2023-03-07:
# - Added dependency on rlang (>= 1.1.0).
#
# 2023-02-15:
# - Added `check_logical()`.
#
# - `check_bool()`, `check_number_whole()`, and
#   `check_number_decimal()` are now implemented in C.
#
# - For efficiency, `check_number_whole()` and
#   `check_number_decimal()` now take a `NULL` default for `min` and
#   `max`. This makes it possible to bypass unnecessary type-checking
#   and comparisons in the default case of no bounds checks.
#
# 2022-10-07:
# - `check_number_whole()` and `_decimal()` no longer treat
#   non-numeric types such as factors or dates as numbers.  Numeric
#   types are detected with `is.numeric()`.
#
# 2022-10-04:
# - Added `check_name()` that forbids the empty string.
#   `check_string()` allows the empty string by default.
#
# 2022-09-28:
# - Removed `what` arguments.
# - Added `allow_na` and `allow_null` arguments.
# - Added `allow_decimal` and `allow_infinite` arguments.
# - Improved errors with absent arguments.
#
#
# 2022-09-16:
# - Unprefixed usage of rlang functions with `rlang::` to
#   avoid onLoad issues when called from rlang (#1482).
#
# 2022-08-11:
# - Added changelog.
#
# nocov start

# Scalars -----------------------------------------------------------------

.standalone_types_check_dot_call <- .Call

check_bool <- function(x,
                       ...,
                       allow_na = FALSE,
                       allow_null = FALSE,
                       arg = caller_arg(x),
                       call = caller_env()) {
  if (!missing(x) && .standalone_types_check_dot_call(ffi_standalone_is_bool_1.0.7, x, allow_na, allow_null)) {
    return(invisible(NULL))
  }

  stop_input_type(
    x,
    c("`TRUE`", "`FALSE`"),
    ...,
    allow_na = allow_na,
    allow_null = allow_null,
    arg = arg,
    call = call
  )
}

check_string <- function(x,
                         ...,
                         allow_empty = TRUE,
                         allow_na = FALSE,
                         allow_null = FALSE,
                         arg = caller_arg(x),
                         call = caller_env()) {
  if (!missing(x)) {
    is_string <- .rlang_check_is_string(
      x,
      allow_empty = allow_empty,
      allow_na = allow_na,
      allow_null = allow_null
    )
    if (is_string) {
      return(invisible(NULL))
    }
  }

  stop_input_type(
    x,
    "a single string",
    ...,
    allow_na = allow_na,
    allow_null = allow_null,
    arg = arg,
    call = call
  )
}

.rlang_check_is_string <- function(x,
                                   allow_empty,
                                   allow_na,
                                   allow_null) {
  if (is_string(x)) {
    if (allow_empty || !is_string(x, "")) {
      return(TRUE)
    }
  }

  if (allow_null && is_null(x)) {
    return(TRUE)
  }

  if (allow_na && (identical(x, NA) || identical(x, na_chr))) {
    return(TRUE)
  }

  FALSE
}

check_name <- function(x,
                       ...,
                       allow_null = FALSE,
                       arg = caller_arg(x),
                       call = caller_env()) {
  if (!missing(x)) {
    is_string <- .rlang_check_is_string(
      x,
      allow_empty = FALSE,
      allow_na = FALSE,
      allow_null = allow_null
    )
    if (is_string) {
      return(invisible(NULL))
    }
  }

  stop_input_type(
    x,
    "a valid name",
    ...,
    allow_na = FALSE,
    allow_null = allow_null,
    arg = arg,
    call = call
  )
}

IS_NUMBER_true <- 0
IS_NUMBER_false <- 1
IS_NUMBER_oob <- 2

check_number_decimal <- function(x,
                                 ...,
                                 min = NULL,
                                 max = NULL,
                                 allow_infinite = TRUE,
                                 allow_na = FALSE,
                                 allow_null = FALSE,
                                 arg = caller_arg(x),
                                 call = caller_env()) {
  if (missing(x)) {
    exit_code <- IS_NUMBER_false
  } else if (0 == (exit_code <- .standalone_types_check_dot_call(
    ffi_standalone_check_number_1.0.7,
    x,
    allow_decimal = TRUE,
    min,
    max,
    allow_infinite,
    allow_na,
    allow_null
  ))) {
    return(invisible(NULL))
  }

  .stop_not_number(
    x,
    ...,
    exit_code = exit_code,
    allow_decimal = TRUE,
    min = min,
    max = max,
    allow_na = allow_na,
    allow_null = allow_null,
    arg = arg,
    call = call
  )
}

check_number_whole <- function(x,
                               ...,
                               min = NULL,
                               max = NULL,
                               allow_infinite = FALSE,
                               allow_na = FALSE,
                               allow_null = FALSE,
                               arg = caller_arg(x),
                               call = caller_env()) {
  if (missing(x)) {
    exit_code <- IS_NUMBER_false
  } else if (0 == (exit_code <- .standalone_types_check_dot_call(
    ffi_standalone_check_number_1.0.7,
    x,
    allow_decimal = FALSE,
    min,
    max,
    allow_infinite,
    allow_na,
    allow_null
  ))) {
    return(invisible(NULL))
  }

  .stop_not_number(
    x,
    ...,
    exit_code = exit_code,
    allow_decimal = FALSE,
    min = min,
    max = max,
    allow_na = allow_na,
    allow_null = allow_null,
    arg = arg,
    call = call
  )
}

.stop_not_number <- function(x,
                             ...,
                             exit_code,
                             allow_decimal,
                             min,
                             max,
                             allow_na,
                             allow_null,
                             arg,
                             call) {
  if (allow_decimal) {
    what <- "a number"
  } else {
    what <- "a whole number"
  }

  if (exit_code == IS_NUMBER_oob) {
    min <- min %||% -Inf
    max <- max %||% Inf

    if (min > -Inf && max < Inf) {
      what <- sprintf("%s between %s and %s", what, min, max)
    } else if (x < min) {
      what <- sprintf("%s larger than or equal to %s", what, min)
    } else if (x > max) {
      what <- sprintf("%s smaller than or equal to %s", what, max)
    } else {
      abort("Unexpected state in OOB check", .internal = TRUE)
    }
  }

  stop_input_type(
    x,
    what,
    ...,
    allow_na = allow_na,
    allow_null = allow_null,
    arg = arg,
    call = call
  )
}

check_symbol <- function(x,
                         ...,
                         allow_null = FALSE,
                         arg = caller_arg(x),
                         call = caller_env()) {
  if (!missing(x)) {
    if (is_symbol(x)) {
      return(invisible(NULL))
    }
    if (allow_null && is_null(x)) {
      return(invisible(NULL))
    }
  }

  stop_input_type(
    x,
    "a symbol",
    ...,
    allow_na = FALSE,
    allow_null = allow_null,
    arg = arg,
    call = call
  )
}

check_arg <- function(x,
                      ...,
                      allow_null = FALSE,
                      arg = caller_arg(x),
                      call = caller_env()) {
  if (!missing(x)) {
    if (is_symbol(x)) {
      return(invisible(NULL))
    }
    if (allow_null && is_null(x)) {
      return(invisible(NULL))
    }
  }

  stop_input_type(
    x,
    "an argument name",
    ...,
    allow_na = FALSE,
    allow_null = allow_null,
    arg = arg,
    call = call
  )
}

check_call <- function(x,
                       ...,
                       allow_null = FALSE,
                       arg = caller_arg(x),
                       call = caller_env()) {
  if (!missing(x)) {
    if (is_call(x)) {
      return(invisible(NULL))
    }
    if (allow_null && is_null(x)) {
      return(invisible(NULL))
    }
  }

  stop_input_type(
    x,
    "a defused call",
    ...,
    allow_na = FALSE,
    allow_null = allow_null,
    arg = arg,
    call = call
  )
}

check_environment <- function(x,
                              ...,
                              allow_null = FALSE,
                              arg = caller_arg(x),
                              call = caller_env()) {
  if (!missing(x)) {
    if (is_environment(x)) {
      return(invisible(NULL))
    }
    if (allow_null && is_null(x)) {
      return(invisible(NULL))
    }
  }

  stop_input_type(
    x,
    "an environment",
    ...,
    allow_na = FALSE,
    allow_null = allow_null,
    arg = arg,
    call = call
  )
}

check_function <- function(x,
                           ...,
                           allow_null = FALSE,
                           arg = caller_arg(x),
                           call = caller_env()) {
  if (!missing(x)) {
    if (is_function(x)) {
      return(invisible(NULL))
    }
    if (allow_null && is_null(x)) {
      return(invisible(NULL))
    }
  }

  stop_input_type(
    x,
    "a function",
    ...,
    allow_na = FALSE,
    allow_null = allow_null,
    arg = arg,
    call = call
  )
}

check_closure <- function(x,
                          ...,
                          allow_null = FALSE,
                          arg = caller_arg(x),
                          call = caller_env()) {
  if (!missing(x)) {
    if (is_closure(x)) {
      return(invisible(NULL))
    }
    if (allow_null && is_null(x)) {
      return(invisible(NULL))
    }
  }

  stop_input_type(
    x,
    "an R function",
    ...,
    allow_na = FALSE,
    allow_null = allow_null,
    arg = arg,
    call = call
  )
}

check_formula <- function(x,
                          ...,
                          allow_null = FALSE,
                          arg = caller_arg(x),
                          call = caller_env()) {
  if (!missing(x)) {
    if (is_formula(x)) {
      return(invisible(NULL))
    }
    if (allow_null && is_null(x)) {
      return(invisible(NULL))
    }
  }

  stop_input_type(
    x,
    "a formula",
    ...,
    allow_na = FALSE,
    allow_null = allow_null,
    arg = arg,
    call = call
  )
}


# Vectors -----------------------------------------------------------------

# TODO: Figure out what to do with logical `NA` and `allow_na = TRUE`

check_character <- function(x,
                            ...,
                            allow_na = TRUE,
                            allow_null = FALSE,
                            arg = caller_arg(x),
                            call = caller_env()) {

  if (!missing(x)) {
    if (is_character(x)) {
      if (!allow_na && any(is.na(x))) {
        abort(
          sprintf("`%s` can't contain NA values.", arg),
          arg = arg,
          call = call
        )
      }

      return(invisible(NULL))
    }

    if (allow_null && is_null(x)) {
      return(invisible(NULL))
    }
  }

  stop_input_type(
    x,
    "a character vector",
    ...,
    allow_null = allow_null,
    arg = arg,
    call = call
  )
}

check_logical <- function(x,
                          ...,
                          allow_null = FALSE,
                          arg = caller_arg(x),
                          call = caller_env()) {
  if (!missing(x)) {
    if (is_logical(x)) {
      return(invisible(NULL))
    }
    if (allow_null && is_null(x)) {
      return(invisible(NULL))
    }
  }

  stop_input_type(
    x,
    "a logical vector",
    ...,
    allow_na = FALSE,
    allow_null = allow_null,
    arg = arg,
    call = call
  )
}

check_data_frame <- function(x,
                             ...,
                             allow_null = FALSE,
                             arg = caller_arg(x),
                             call = caller_env()) {
  if (!missing(x)) {
    if (is.data.frame(x)) {
      return(invisible(NULL))
    }
    if (allow_null && is_null(x)) {
      return(invisible(NULL))
    }
  }

  stop_input_type(
    x,
    "a data frame",
    ...,
    allow_null = allow_null,
    arg = arg,
    call = call
  )
}

# nocov end
`````

## File: R/interpolate.R
`````r
#' Helpers for interpolating data into prompts
#'
#' @description
#' These functions are lightweight wrappers around
#' [glue](https://glue.tidyverse.org/) that make it easier to interpolate
#' dynamic data into a static prompt:
#'
#' * `interpolate()` works with a string.
#' * `interpolate_file()` works with a file.
#' * `interpolate_package()` works with a file in the `insts/prompt`
#'   directory of a package.
#'
#' Compared to glue, dynamic values should be wrapped in `{{ }}`, making it
#' easier to include R code and JSON in your prompt.
#'
#' @param prompt A prompt string. You should not generally expose this
#'   to the end user, since glue interpolation makes it easy to run arbitrary
#'   code.
#' @param ... Define additional temporary variables for substitution.
#' @param .envir Environment to evaluate `...` expressions in. Used when
#'   wrapping in another function. See `vignette("wrappers", package = "glue")`
#'   for more details.
#' @return A \{glue\} string.
#' @export
#' @examples
#' joke <- "You're a cool dude who loves to make jokes. Tell me a joke about {{topic}}."
#'
#' # You can supply valuese directly:
#' interpolate(joke, topic = "bananas")
#'
#' # Or allow interpolate to find them in the current environment:
#' topic <- "applies"
#' interpolate(joke)
#'
#'
interpolate <- function(prompt, ..., .envir = parent.frame()) {
  check_string(prompt)

  dots <- list2(...)
  if (length(dots) > 0 && !is_named(dots)) {
    cli::cli_abort("All elements of `...` must be named")
  }

  envir <- list2env(dots, parent = .envir)
  out <- glue::glue(prompt, .open = "{{", .close = "}}", .envir = envir)
  ellmer_prompt(out)
}

#' @param path A path to a prompt file (often a `.md`).
#' @rdname interpolate
#' @export
interpolate_file <- function(path, ..., .envir = parent.frame()) {
  string <- read_file(path)
  interpolate(string, ..., .envir = .envir)
}

#' @param package Package name.
#' @rdname interpolate
#' @export
interpolate_package <- function(
  package,
  path,
  ...,
  .envir = parent.frame()
) {
  path <- system.file("prompts", path, package = package)
  interpolate_file(path, ..., .envir = .envir)
}

read_file <- function(path) {
  file_contents <- readChar(path, file.size(path))
}

# Prompt class -----------------------------------------------------------------

ellmer_prompt <- function(x) {
  structure(x, class = c("ellmer_prompt", "character"))
}

is_prompt <- function(x) {
  inherits(x, "ellmer_prompt")
}

#' @export
print.ellmer_prompt <- function(
  x,
  ...,
  max_items = 20,
  max_lines = max_items * 10
) {
  n <- length(x)
  n_extra <- length(x) - max_items
  if (n_extra > 0) {
    x <- x[seq_len(max_items)]
  }

  if (length(x) == 0) {
    cli::cli_inform(c(x = "Zero-length prompt.\n"))
    return(invisible(x))
  }

  bar <- if (cli::is_utf8_output()) "\u2502" else "|"

  id <- format(paste0("[", seq_along(x), "] "), justify = "right")
  indent <- paste0(cli::col_grey(id, bar), " ")
  exdent <- paste0(strrep(" ", nchar(id[[1]])), cli::col_grey(bar), " ")

  x[is.na(x)] <- cli::col_red("NA")
  x <- paste0(indent, x)
  x <- gsub("\n", paste0("\n", exdent), x)

  lines <- strsplit(x, "\n")
  ids <- rep(seq_along(x), length(lines))
  lines <- unlist(lines)

  if (length(lines) > max_lines) {
    lines <- lines[seq_len(max_lines)]
    lines <- c(lines, paste0(exdent, "..."))
    n_extra <- n - ids[max_lines - 1]
  }

  cat(lines, sep = "\n")
  if (n_extra > 0) {
    cat("... and ", n_extra, " more.\n", sep = "")
  }

  invisible(x)
}

#' @export
`[.ellmer_prompt` <- function(x, i, ...) {
  ellmer_prompt(NextMethod())
}

# Helpers ----------------------------------------------------------------------

# for mocking
system.file <- NULL
`````

## File: R/params.R
`````r
#' Standard model parameters
#'
#' @description
#' This helper function makes it easier to create a list of parameters used
#' across many models. The parameter names are automatically standardised and
#' included in the correctly place in the API call.
#'
#' Note that parameters that are not supported by a given provider will generate
#' a warning, not an error. This allows you to use the same set of parameters
#' across multiple providers.
#'
#' @param temperature Temperature of the sampling distribution.
#' @param top_p The cumulative probability for token selection.
#' @param top_k The number of highest probability vocabulary tokens to keep.
#' @param frequency_penalty Frequency penalty for generated tokens.
#' @param presence_penalty Presence penalty for generated tokens.
#' @param seed Seed for random number generator.
#' @param max_tokens Maximum number of tokens to generate.
#' @param log_probs Include the log probabilities in the output?
#' @param stop_sequences A character vector of tokens to stop generation on.
#' @param ... Additional named parameters to send to the provider.
#' @export
params <- function(
  temperature = NULL,
  top_p = NULL,
  top_k = NULL,
  frequency_penalty = NULL,
  presence_penalty = NULL,
  seed = NULL,
  max_tokens = NULL,
  log_probs = NULL,
  stop_sequences = NULL,
  ...
) {
  check_number_decimal(temperature, allow_null = TRUE, min = 0)
  check_number_decimal(top_p, allow_null = TRUE, min = 0)
  check_number_whole(top_k, allow_null = TRUE, min = 0)
  check_number_decimal(frequency_penalty, allow_null = TRUE)
  check_number_decimal(presence_penalty, allow_null = TRUE)
  check_number_whole(seed, allow_null = TRUE)
  check_number_whole(max_tokens, allow_null = TRUE, min = 1)
  check_bool(log_probs, allow_null = TRUE)
  check_character(stop_sequences, allow_null = TRUE)

  compact(list2(
    temperature = temperature,
    top_p = top_p,
    top_k = top_k,
    frequency_penalty = frequency_penalty,
    presence_penalty = presence_penalty,
    seed = seed,
    max_tokens = max_tokens,
    log_probs = log_probs,
    stop_sequences = stop_sequences,
    extra_args = list2(...)
  ))
}

standardise_params <- function(params, provider_params) {
  standard <- params[names(params) != "extra_args"]

  unknown <- setdiff(names(standard), provider_params)
  if (length(unknown) > 0) {
    cli::cli_warn("Ignoring unsupported parameters: {.str {unknown}}")
    standard <- standard[names(standard) %in% provider_params]
  }

  names(standard) <- names(provider_params)[match(
    names(standard),
    provider_params
  )]

  c(standard, params$extra_args)
}
`````

## File: R/provider-azure.R
`````r
#' @include provider-openai.R
#' @include content.R
NULL

# https://learn.microsoft.com/en-us/azure/ai-services/openai/reference#chat-completions

#' Chat with a model hosted on Azure OpenAI
#'
#' @description
#' The [Azure OpenAI server](https://azure.microsoft.com/en-us/products/ai-services/openai-service)
#' hosts a number of open source models as well as proprietary models
#' from OpenAI.
#'
#' ## Authentication
#'
#' `chat_azure_openai()` supports API keys and the `credentials` parameter, but
#' it also makes use of:
#'
#' - Azure service principals (when the `AZURE_TENANT_ID`, `AZURE_CLIENT_ID`,
#'   and `AZURE_CLIENT_SECRET` environment variables are set).
#' - Interactive Entra ID authentication, like the Azure CLI.
#' - Viewer-based credentials on Posit Connect. Requires the \pkg{connectcreds}
#'   package.
#'
#' @param endpoint Azure OpenAI endpoint url with protocol and hostname, i.e.
#'  `https://{your-resource-name}.openai.azure.com`. Defaults to using the
#'   value of the `AZURE_OPENAI_ENDPOINT` envinronment variable.
#' @param deployment_id Deployment id for the model you want to use.
#' @param api_version The API version to use.
#' @param api_key `r api_key_param("AZURE_OPENAI_API_KEY")`
#' @param token `r lifecycle::badge("deprecated")` A literal Azure token to use
#'   for authentication. Deprecated in favour of ambient Azure credentials or
#'   an explicit `credentials` argument.
#' @param credentials A list of authentication headers to pass into
#'   [`httr2::req_headers()`], a function that returns them, or `NULL` to use
#'   `token` or `api_key` to generate these headers instead. This is an escape
#'   hatch that allows users to incorporate Azure credentials generated by other
#'   packages into \pkg{ellmer}, or to manage the lifetime of credentials that
#'   need to be refreshed.
#' @inheritParams chat_openai
#' @inherit chat_openai return
#' @family chatbots
#' @export
#' @examples
#' \dontrun{
#' chat <- chat_azure_openai(deployment_id = "gpt-4o-mini")
#' chat$chat("Tell me three jokes about statisticians")
#' }
chat_azure_openai <- function(
  endpoint = azure_endpoint(),
  deployment_id,
  params = NULL,
  api_version = NULL,
  system_prompt = NULL,
  api_key = NULL,
  token = deprecated(),
  credentials = NULL,
  api_args = list(),
  echo = c("none", "output", "all")
) {
  check_exclusive(token, credentials, .require = FALSE)
  if (lifecycle::is_present(token)) {
    lifecycle::deprecate_warn(
      when = "0.1.1",
      what = "chat_azure_openai(token)",
      details = "Support for the static `token` argument (which quickly \
                 expires) will be dropped in next release. Use ambient Azure \
                 credentials instead, or pass an explicit `credentials` \
                 argument."
    )
  } else {
    token <- NULL
  }
  check_string(endpoint)
  check_string(deployment_id)
  params <- params %||% params()
  api_version <- set_default(api_version, "2024-10-21")
  check_string(api_key, allow_null = TRUE)
  api_key <- api_key %||% Sys.getenv("AZURE_OPENAI_API_KEY")
  check_string(token, allow_null = TRUE)
  echo <- check_echo(echo)

  if (is_list(credentials)) {
    static_credentials <- force(credentials)
    credentials <- function() static_credentials
  }
  check_function(credentials, allow_null = TRUE)
  credentials <- credentials %||% default_azure_credentials(api_key, token)

  provider <- ProviderAzureOpenAI(
    name = "Azure/OpenAI",
    base_url = paste0(endpoint, "/openai/deployments/", deployment_id),
    model = deployment_id,
    params = params,
    api_version = api_version,
    api_key = api_key,
    credentials = credentials,
    extra_args = api_args
  )
  Chat$new(provider = provider, system_prompt = system_prompt, echo = echo)
}


chat_azure_openai_test <- function(system_prompt = NULL, params = NULL, ...) {
  api_key <- key_get("AZURE_OPENAI_API_KEY")
  default_params <- params(seed = 1014, temperature = 0)
  params <- modify_list(default_params, params %||% params())

  chat_azure_openai(
    ...,
    system_prompt = system_prompt,
    api_key = api_key,
    endpoint = "https://ai-hwickhamai260967855527.openai.azure.com",
    deployment_id = "gpt-4o-mini",
    params = params
  )
}

ProviderAzureOpenAI <- new_class(
  "ProviderAzureOpenAI",
  parent = ProviderOpenAI,
  properties = list(
    credentials = class_function,
    api_version = prop_string()
  )
)

# https://learn.microsoft.com/en-us/azure/ai-services/openai/how-to/switching-endpoints#api-key
azure_endpoint <- function() {
  key_get("AZURE_OPENAI_ENDPOINT")
}

# https://learn.microsoft.com/en-us/azure/ai-services/openai/reference#chat-completions
method(base_request, ProviderAzureOpenAI) <- function(provider) {
  req <- base_request(super(provider, ProviderOpenAI))
  req <- req_headers(req, Authorization = NULL)

  req <- req_url_query(req, `api-version` = provider@api_version)
  if (nchar(provider@api_key)) {
    req <- req_headers_redacted(req, `api-key` = provider@api_key)
  }
  req <- ellmer_req_credentials(req, provider@credentials)
  req
}

method(base_request_error, ProviderAzureOpenAI) <- function(provider, req) {
  req_error(req, body = function(resp) {
    error <- resp_body_json(resp)$error
    msg <- paste0(error$code, ": ", error$message)
    # Try to be helpful in the (common) case that the user or service
    # principal is missing the necessary role.
    # See: https://learn.microsoft.com/en-us/azure/ai-services/openai/how-to/role-based-access-control
    bad_rbac <- identical(
      error$message,
      "Principal does not have access to API/Operation."
    )
    if (bad_rbac) {
      msg <- c(
        "*" = msg,
        "i" = cli::format_inline(
          "Your user or service principal likely needs one of the following
        roles: {.emph Cognitive Services OpenAI User},
        {.emph Cognitive Services OpenAI Contributor}, or
        {.emph Cognitive Services Contributor}.",
          keep_whitespace = FALSE
        )
      )
    }
    msg
  })
}

default_azure_credentials <- function(api_key = NULL, token = NULL) {
  if (!is.null(token)) {
    return(function() list(Authorization = paste("Bearer", token)))
  }

  azure_openai_scope <- "https://cognitiveservices.azure.com/.default"

  # Detect viewer-based credentials from Posit Connect.
  if (has_connect_viewer_token(scope = azure_openai_scope)) {
    return(function() {
      token <- connectcreds::connect_viewer_token(scope = azure_openai_scope)
      list(Authorization = paste("Bearer", token$access_token))
    })
  }

  # Detect Azure service principals.
  tenant_id <- Sys.getenv("AZURE_TENANT_ID")
  client_id <- Sys.getenv("AZURE_CLIENT_ID")
  client_secret <- Sys.getenv("AZURE_CLIENT_SECRET")
  if (nchar(tenant_id) && nchar(client_id) && nchar(client_secret)) {
    # Service principals use an OAuth client credentials flow. We cache the token
    # so we don't need to perform this flow before each turn.
    client <- oauth_client(
      client_id,
      token_url = paste0(
        "https://login.microsoftonline.com/",
        tenant_id,
        "/oauth2/v2.0/token"
      ),
      secret = client_secret,
      auth = "body",
      name = "ellmer-azure-sp"
    )
    return(function() {
      token <- oauth_token_cached(
        client,
        oauth_flow_client_credentials,
        flow_params = list(scope = azure_openai_scope),
        # Don't use the cached token when testing.
        reauth = is_testing()
      )
      list(Authorization = paste("Bearer", token$access_token))
    })
  }

  # If we have an API key, rely on that for credentials.
  if (nchar(api_key)) {
    return(function() list())
  }

  # Masquerade as the Azure CLI.
  client_id <- "04b07795-8ddb-461a-bbee-02f9e1bf7b46"
  if (is_interactive() && !is_hosted_session()) {
    client <- oauth_client(
      client_id,
      token_url = "https://login.microsoftonline.com/common/oauth2/v2.0/token",
      secret = "",
      auth = "body",
      name = paste0("ellmer-", client_id)
    )
    return(function() {
      token <- oauth_token_cached(
        client,
        oauth_flow_auth_code,
        flow_params = list(
          auth_url = "https://login.microsoftonline.com/common/oauth2/v2.0/authorize",
          scope = paste(azure_openai_scope, "offline_access"),
          redirect_uri = "http://localhost:8400",
          auth_params = list(prompt = "select_account")
        )
      )
      list(Authorization = paste("Bearer", token$access_token))
    })
  }

  if (is_testing()) {
    testthat::skip("no Azure credentials available")
  }

  cli::cli_abort("No Azure credentials are available.")
}
`````

## File: R/provider-bedrock.R
`````r
#' @include provider.R
#' @include content.R
#' @include turns.R
#' @include tools-def.R
NULL

#' Chat with an AWS bedrock model
#'
#' @description
#' [AWS Bedrock](https://aws.amazon.com/bedrock/) provides a number of
#' language models, including those from Anthropic's
#' [Claude](https://aws.amazon.com/bedrock/claude/), using the Bedrock
#' [Converse API](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html).
#'
#' ## Authentication
#'
#' Authentication is handled through \{paws.common\}, so if authentication
#' does not work for you automatically, you'll need to follow the advice
#' at <https://www.paws-r-sdk.com/#credentials>. In particular, if your
#' org uses AWS SSO, you'll need to run `aws sso login` at the terminal.
#'
#' @param profile AWS profile to use.
#' @param model `r param_model("anthropic.claude-3-5-sonnet-20240620-v1:0", "models_aws_bedrock")`.
#'
#'   While ellmer provides a default model, there's no guarantee that you'll
#'   have access to it, so you'll need to specify a model that you can.
#'   If you're using [cross-region inference](https://aws.amazon.com/blogs/machine-learning/getting-started-with-cross-region-inference-in-amazon-bedrock/),
#'   you'll need to use the inference profile ID, e.g.
#'   `model="us.anthropic.claude-3-5-sonnet-20240620-v1:0"`.
#' @param api_args Named list of arbitrary extra arguments appended to the body
#'   of every chat API call. Some useful arguments include:
#'
#'   ```R
#'   api_args = list(
#'     inferenceConfig = list(
#'       maxTokens = 100,
#'       temperature = 0.7,
#'       topP = 0.9,
#'       topK = 20
#'     )
#'   )
#'   ```
#' @inheritParams chat_openai
#' @inherit chat_openai return
#' @family chatbots
#' @export
#' @examples
#' \dontrun{
#' # Basic usage
#' chat <- chat_aws_bedrock()
#' chat$chat("Tell me three jokes about statisticians")
#' }
chat_aws_bedrock <- function(
  system_prompt = NULL,
  model = NULL,
  profile = NULL,
  api_args = list(),
  echo = NULL
) {
  check_installed("paws.common", "AWS authentication")
  cache <- aws_creds_cache(profile)
  credentials <- paws_credentials(profile, cache = cache)

  model <- set_default(model, "anthropic.claude-3-5-sonnet-20240620-v1:0")
  echo <- check_echo(echo)

  provider <- ProviderAWSBedrock(
    name = "AWS/Bedrock",
    base_url = "",
    model = model,
    profile = profile,
    region = credentials$region,
    cache = cache,
    extra_args = api_args
  )

  Chat$new(provider = provider, system_prompt = system_prompt, echo = echo)
}

#' @export
#' @rdname chat_aws_bedrock
models_aws_bedrock <- function(profile = NULL) {
  creds <- paws_credentials(profile)
  url <- paste0("https://bedrock.", creds$region, ".amazonaws.com")

  req <- request(url)
  req <- req_url_path(req, "foundation-models")
  req <- req_auth_aws_v4(
    req,
    aws_access_key_id = creds$access_key_id,
    aws_secret_access_key = creds$secret_access_key,
    aws_session_token = creds$session_token
  )

  resp <- req_perform(req)
  json <- resp_body_json(resp)
  models <- json$modelSummaries

  data.frame(
    id = map_chr(models, "[[", "modelId"),
    name = map_chr(models, "[[", "modelName"),
    provider = map_chr(models, "[[", "providerName")
  )
}

ProviderAWSBedrock <- new_class(
  "ProviderAWSBedrock",
  parent = Provider,
  properties = list(
    profile = prop_string(allow_null = TRUE),
    region = prop_string(),
    cache = class_list
  )
)

method(chat_request, ProviderAWSBedrock) <- function(
  provider,
  stream = TRUE,
  turns = list(),
  tools = list(),
  type = NULL
) {
  req <- request(paste0(
    "https://bedrock-runtime.",
    provider@region,
    ".amazonaws.com"
  ))
  req <- req_url_path_append(
    req,
    "model",
    provider@model,
    if (stream) "converse-stream" else "converse"
  )
  creds <- paws_credentials(provider@profile, provider@cache)
  req <- req_auth_aws_v4(
    req,
    aws_access_key_id = creds$access_key_id,
    aws_secret_access_key = creds$secret_access_key,
    aws_session_token = creds$session_token
  )

  req <- req_error(req, body = function(resp) {
    body <- resp_body_json(resp)
    body$Message %||% body$message
  })

  if (length(turns) >= 1 && is_system_prompt(turns[[1]])) {
    system <- list(list(text = turns[[1]]@text))
  } else {
    system <- NULL
  }

  messages <- compact(as_json(provider, turns))

  if (!is.null(type)) {
    tool_def <- ToolDef(
      fun = function(...) {
      },
      name = "structured_tool_call__",
      description = "Extract structured data",
      arguments = type_object(data = type)
    )
    tools[[tool_def@name]] <- tool_def
    tool_choice <- list(tool = list(name = tool_def@name))
    stream <- FALSE
  } else {
    tool_choice <- NULL
  }

  if (length(tools) > 0) {
    tools <- as_json(provider, unname(tools))
    toolConfig <- compact(list(tools = tools, tool_choice = tool_choice))
  } else {
    toolConfig <- NULL
  }

  # https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html
  body <- list(
    messages = messages,
    system = system,
    toolConfig = toolConfig
  )
  body <- modify_list(body, provider@extra_args)
  req <- req_body_json(req, body)

  req
}

method(chat_resp_stream, ProviderAWSBedrock) <- function(provider, resp) {
  resp_stream_aws(resp)
}

# Bedrock -> ellmer -------------------------------------------------------------

method(stream_parse, ProviderAWSBedrock) <- function(provider, event) {
  if (is.null(event)) {
    return()
  }

  body <- event$body
  body$event_type <- event$headers$`:event-type`
  body$p <- NULL # padding? Looks like: "p": "abcdefghijklmnopqrstuvwxyzABCDEFGHIJ",

  body
}

method(stream_text, ProviderAWSBedrock) <- function(provider, event) {
  if (event$event_type == "contentBlockDelta") {
    event$delta$text
  }
}

method(stream_merge_chunks, ProviderAWSBedrock) <- function(
  provider,
  result,
  chunk
) {
  i <- chunk$contentBlockIndex + 1

  if (chunk$event_type == "messageStart") {
    result <- list(role = chunk$role, content = list())
  } else if (chunk$event_type == "contentBlockStart") {
    result$content[[i]] <- list(toolUse = chunk$start$toolUse)
  } else if (chunk$event_type == "contentBlockDelta") {
    if (has_name(chunk$delta, "text")) {
      if (i > length(result$content)) {
        result$content[[i]] <- list(text = chunk$delta$text)
      } else {
        paste(result$content[[i]]$text) <- chunk$delta$text
      }
    } else if (has_name(chunk$delta, "toolUse")) {
      paste(result$content[[i]]$toolUse$input) <- chunk$delta$toolUse$input
    } else {
      cli::cli_abort(
        "Unknown chunk type {names(chunk$delta)}",
        .internal = TRUE
      )
    }
  } else if (chunk$event_type == "contentBlockStop") {
    if (has_name(result$content[[i]], "toolUse")) {
      input <- result$content[[i]]$toolUse$input
      if (input == "") {
        result$content[[i]]$toolUse$input <- set_names(list())
      } else {
        result$content[[i]]$toolUse$input <- jsonlite::parse_json(input)
      }
    }
  } else if (chunk$event_type == "messageStop") {
    # match structure of non-streaming
    result <- list(
      output = list(
        message = result
      )
    )
  } else if (chunk$event_type == "metadata") {
    result$usage <- chunk$usage
    result$metrics <- chunk$metrics
  } else {
    cli::cli_inform(c("!" = "Unknown chunk type {.str {event_type}}."))
  }

  result
}

method(value_turn, ProviderAWSBedrock) <- function(
  provider,
  result,
  has_type = FALSE
) {
  contents <- lapply(result$output$message$content, function(content) {
    if (has_name(content, "text")) {
      ContentText(content$text)
    } else if (has_name(content, "toolUse")) {
      if (has_type) {
        ContentJson(content$toolUse$input$data)
      } else {
        ContentToolRequest(
          name = content$toolUse$name,
          arguments = content$toolUse$input,
          id = content$toolUse$toolUseId
        )
      }
    } else {
      cli::cli_abort(
        "Unknown content type {.str {names(content)}}.",
        .internal = TRUE
      )
    }
  })

  tokens <- tokens_log(
    provider,
    input = result$usage$inputTokens,
    output = result$usage$outputTokens
  )

  assistant_turn(contents, json = result, tokens = tokens)
}

# ellmer -> Bedrock -------------------------------------------------------------

# https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ContentBlock.html
method(as_json, list(ProviderAWSBedrock, Turn)) <- function(provider, x) {
  if (x@role == "system") {
    # bedrock passes system prompt as separate arg
    NULL
  } else if (x@role %in% c("user", "assistant")) {
    list(role = x@role, content = as_json(provider, x@contents))
  } else {
    cli::cli_abort("Unknown role {turn@role}", .internal = TRUE)
  }
}

method(as_json, list(ProviderAWSBedrock, ContentText)) <- function(
  provider,
  x
) {
  if (is_whitespace(x@text)) {
    list(text = "[empty string]")
  } else {
    list(text = x@text)
  }
}

method(as_json, list(ProviderAWSBedrock, ContentImageRemote)) <- function(
  provider,
  x
) {
  cli::cli_abort("Bedrock doesn't support remote images")
}

# https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ImageBlock.html
method(as_json, list(ProviderAWSBedrock, ContentImageInline)) <- function(
  provider,
  x
) {
  type <- switch(
    x@type,
    "image/png" = "png",
    "image/gif" = "gif",
    "image/jpeg" = "jpeg",
    "image/webp" = "webp",
    cli::cli_abort("Image type {content@type} is not supported by bedrock")
  )

  list(
    image = list(
      format = type,
      source = list(bytes = x@data)
    )
  )
}

# https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_DocumentBlock.html
method(as_json, list(ProviderAWSBedrock, ContentPDF)) <- function(provider, x) {
  list(
    document = list(
      #> This field is vulnerable to prompt injections, because the model
      #> might inadvertently interpret it as instructions. Therefore, we
      #> that you specify a neutral name.
      name = bedrock_document_name(),
      format = "pdf",
      source = list(bytes = x@data)
    )
  )
}

# https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ToolUseBlock.html
method(as_json, list(ProviderAWSBedrock, ContentToolRequest)) <- function(
  provider,
  x
) {
  list(
    toolUse = list(
      toolUseId = x@id,
      name = x@name,
      input = x@arguments
    )
  )
}

# https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ToolResultBlock.html
method(as_json, list(ProviderAWSBedrock, ContentToolResult)) <- function(
  provider,
  x
) {
  list(
    toolResult = list(
      toolUseId = x@request@id,
      content = list(list(text = tool_string(x))),
      status = if (tool_errored(x)) "error" else "success"
    )
  )
}

method(as_json, list(ProviderAWSBedrock, ToolDef)) <- function(provider, x) {
  list(
    toolSpec = list(
      name = x@name,
      description = x@description,
      inputSchema = list(json = compact(as_json(provider, x@arguments)))
    )
  )
}

# Helpers ----------------------------------------------------------------

paws_credentials <- function(
  profile,
  cache = aws_creds_cache(profile),
  reauth = FALSE
) {
  creds <- cache$get()
  if (reauth || is.null(creds) || creds$expiration < Sys.time()) {
    cache$clear()
    try_fetch(
      creds <- locate_aws_credentials(profile),
      error = function(cnd) {
        if (is_testing()) {
          testthat::skip("Failed to locate AWS credentials")
        }
        cli::cli_abort("No IAM credentials found.", parent = cnd)
      }
    )
    cache$set(creds)
  }
  creds
}

# Wrapper for paws.common::locate_credentials() so we can mock it in tests.
locate_aws_credentials <- function(profile) {
  paws.common::locate_credentials(profile)
}

aws_creds_cache <- function(profile) {
  credentials_cache(key = hash(c("aws", profile)))
}

bedrock_document_name <- local({
  i <- 1
  function() {
    i <<- i + 1
    paste0("document-", i)
  }
})
`````

## File: R/provider-claude.R
`````r
#' @include provider.R
#' @include content.R
#' @include turns.R
#' @include tools-def.R
NULL

#' Chat with an Anthropic Claude model
#'
#' @description
#' [Anthropic](https://www.anthropic.com) provides a number of chat based
#' models under the [Claude](https://www.anthropic.com/claude) moniker.
#' Note that a Claude Pro membership does not give you the ability to call
#' models via the API; instead, you will need to sign up (and pay for) a
#' [developer account](https://console.anthropic.com/).
#'
#' @inheritParams chat_openai
#' @inherit chat_openai return
#' @param model `r param_model("claude-3-7-sonnet-latest", "anthropic")`
#' @param api_key `r api_key_param("ANTHROPIC_API_KEY")`
#' @param max_tokens Maximum number of tokens to generate before stopping.
#' @param beta_headers Optionally, a character vector of beta headers to opt-in
#'   claude features that are still in beta.
#' @family chatbots
#' @export
#' @examplesIf has_credentials("claude")
#' chat <- chat_anthropic()
#' chat$chat("Tell me three jokes about statisticians")
chat_anthropic <- function(
  system_prompt = NULL,
  params = NULL,
  max_tokens = deprecated(),
  model = NULL,
  api_args = list(),
  base_url = "https://api.anthropic.com/v1",
  beta_headers = character(),
  api_key = anthropic_key(),
  echo = NULL
) {
  echo <- check_echo(echo)

  model <- set_default(model, "claude-3-7-sonnet-latest")

  params <- params %||% params()
  if (lifecycle::is_present(max_tokens)) {
    lifecycle::deprecate_warn(
      when = "0.2.0",
      what = "chat_anthropic(max_tokens)",
      with = "chat_anthropic(params)"
    )
    params$max_tokens <- max_tokens
  }

  provider <- ProviderAnthropic(
    name = "Anthropic",
    model = model,
    params = params %||% params(),
    extra_args = api_args,
    base_url = base_url,
    beta_headers = beta_headers,
    api_key = api_key
  )

  Chat$new(provider = provider, system_prompt = system_prompt, echo = echo)
}

chat_anthropic_test <- function(
  ...,
  model = "claude-3-5-sonnet-latest",
  params = NULL
) {
  params <- params %||% params()
  if (is_testing()) {
    params$temperature <- params$temperature %||% 0
  }

  chat_anthropic(model = model, params = params, ...)
}

ProviderAnthropic <- new_class(
  "ProviderAnthropic",
  parent = Provider,
  properties = list(
    api_key = prop_string(),
    beta_headers = class_character
  )
)

anthropic_key <- function() {
  key_get("ANTHROPIC_API_KEY")
}
anthropic_key_exists <- function() {
  key_exists("ANTHROPIC_API_KEY")
}

method(base_request, ProviderAnthropic) <- function(provider) {
  req <- request(provider@base_url)
  # <https://docs.anthropic.com/en/api/versioning>
  req <- req_headers(req, `anthropic-version` = "2023-06-01")
  # <https://docs.anthropic.com/en/api/getting-started#authentication>
  req <- req_headers_redacted(req, `x-api-key` = provider@api_key)
  # <https://docs.anthropic.com/en/api/rate-limits>
  req <- req_retry(
    req,
    # <https://docs.anthropic.com/en/api/errors#http-errors>
    is_transient = function(resp) resp_status(resp) %in% c(429, 503, 529),
    max_tries = 2
  )
  req <- ellmer_req_timeout(req, stream)

  if (length(provider@beta_headers) > 0) {
    req <- req_headers(req, `anthropic-beta` = provider@beta_headers)
  }

  # <https://docs.anthropic.com/en/api/errors>
  req <- req_error(req, body = function(resp) {
    if (resp_content_type(resp) == "application/json") {
      json <- resp_body_json(resp)
      paste0(json$error$message, " [", json$error$type, "]")
    }
  })

  req
}


# https://docs.anthropic.com/en/api/messages
method(chat_path, ProviderAnthropic) <- function(provider) {
  "messages"
}
method(chat_body, ProviderAnthropic) <- function(
  provider,
  stream = TRUE,
  turns = list(),
  tools = list(),
  type = NULL
) {
  if (length(turns) >= 1 && is_system_prompt(turns[[1]])) {
    system <- turns[[1]]@text
  } else {
    system <- NULL
  }

  messages <- compact(as_json(provider, turns))

  if (!is.null(type)) {
    tool_def <- ToolDef(
      fun = function(...) {
      },
      name = "_structured_tool_call",
      description = "Extract structured data",
      arguments = type_object(data = type)
    )
    tools[[tool_def@name]] <- tool_def
    tool_choice <- list(type = "tool", name = tool_def@name)
    stream <- FALSE
  } else {
    tool_choice <- NULL
  }
  tools <- as_json(provider, unname(tools))

  params <- chat_params(provider, provider@params)

  compact(list2(
    model = provider@model,
    system = system,
    messages = messages,
    stream = stream,
    tools = tools,
    tool_choice = tool_choice,
    !!!params
  ))
}

method(chat_params, ProviderAnthropic) <- function(provider, params) {
  params <- standardise_params(
    params,
    c(
      temperature = "temperature",
      top_p = "top_p",
      top_k = "top_k",
      max_tokens = "max_tokens",
      stop_sequences = "stop_sequences"
    )
  )

  # Unlike other providers, Claude requires that this be set
  params$max_tokens <- params$max_tokens %||% 4096

  params$stop_sequences <- as.list(params$stop_sequences)

  params
}

# Claude -> ellmer --------------------------------------------------------------

method(stream_parse, ProviderAnthropic) <- function(provider, event) {
  if (is.null(event)) {
    cli::cli_abort("Connection closed unexpectedly")
  }

  data <- jsonlite::parse_json(event$data)
  if (identical(data$type, "message_stop")) {
    return(NULL)
  }

  data
}
method(stream_text, ProviderAnthropic) <- function(provider, event) {
  if (event$type == "content_block_delta") {
    event$delta$text
  }
}
method(stream_merge_chunks, ProviderAnthropic) <- function(
  provider,
  result,
  chunk
) {
  if (chunk$type == "ping") {
    # nothing to do
  } else if (chunk$type == "message_start") {
    result <- chunk$message
  } else if (chunk$type == "content_block_start") {
    result$content[[chunk$index + 1L]] <- chunk$content_block
  } else if (chunk$type == "content_block_delta") {
    # https://docs.anthropic.com/en/api/messages-streaming#delta-types
    i <- chunk$index + 1L

    if (chunk$delta$type == "text_delta") {
      paste(result$content[[i]]$text) <- chunk$delta$text
    } else if (chunk$delta$type == "input_json_delta") {
      if (chunk$delta$partial_json != "") {
        # See issue #228 about partial_json sometimes being ""
        paste(result$content[[i]]$input) <- chunk$delta$partial_json
      }
    } else if (chunk$delta$type == "thinking_delta") {
      paste(result$content[[i]]$thinking) <- chunk$delta$thinking
    } else if (chunk$delta$type == "signature_delta") {
      paste(result$content[[i]]$signature) <- chunk$delta$signature
    } else {
      cli::cli_inform(c("!" = "Unknown delta type {.str {chunk$delta$type}}."))
    }
  } else if (chunk$type == "content_block_stop") {
    # nothing to do
  } else if (chunk$type == "message_delta") {
    result$stop_reason <- chunk$delta$stop_reason
    result$stop_sequence <- chunk$delta$stop_sequence
    result$usage$output_tokens <- chunk$usage$output_tokens
  } else if (chunk$type == "error") {
    if (chunk$error$type == "overloaded_error") {
      # https://docs.anthropic.com/en/api/messages-streaming#error-events
      # TODO: track number of retries
      wait <- backoff_default(1)
      Sys.sleep(wait)
    } else {
      cli::cli_abort("{chunk$error$message}")
    }
  } else {
    cli::cli_inform(c("!" = "Unknown chunk type {.str {chunk$type}}."))
  }
  result
}

method(value_turn, ProviderAnthropic) <- function(
  provider,
  result,
  has_type = FALSE
) {
  contents <- lapply(result$content, function(content) {
    if (content$type == "text") {
      ContentText(content$text)
    } else if (content$type == "tool_use") {
      if (has_type) {
        ContentJson(content$input$data)
      } else {
        if (is_string(content$input)) {
          content$input <- jsonlite::parse_json(content$input)
        }
        ContentToolRequest(content$id, content$name, content$input)
      }
    } else if (content$type == "thinking") {
      ContentThinking(
        content$thinking,
        extra = list(signature = content$signature)
      )
    } else {
      cli::cli_abort(
        "Unknown content type {.str {content$type}}.",
        .internal = TRUE
      )
    }
  })

  tokens <- tokens_log(
    provider,
    input = result$usage$input_tokens,
    output = result$usage$output_tokens
  )

  assistant_turn(contents, json = result, tokens = tokens)
}

# ellmer -> Claude --------------------------------------------------------------

method(as_json, list(ProviderAnthropic, Turn)) <- function(provider, x) {
  if (x@role == "system") {
    # claude passes system prompt as separate arg
    NULL
  } else if (x@role %in% c("user", "assistant")) {
    list(role = x@role, content = as_json(provider, x@contents))
  } else {
    cli::cli_abort("Unknown role {turn@role}", .internal = TRUE)
  }
}

method(as_json, list(ProviderAnthropic, ContentText)) <- function(provider, x) {
  if (is_whitespace(x@text)) {
    list(type = "text", text = "[empty string]")
  } else {
    list(type = "text", text = x@text)
  }
}

method(as_json, list(ProviderAnthropic, ContentPDF)) <- function(provider, x) {
  list(
    type = "document",
    source = list(
      type = "base64",
      media_type = x@type,
      data = x@data
    )
  )
}

method(as_json, list(ProviderAnthropic, ContentImageRemote)) <- function(
  provider,
  x
) {
  list(
    type = "image",
    source = list(
      type = "url",
      url = x@url
    )
  )
}

method(as_json, list(ProviderAnthropic, ContentImageInline)) <- function(
  provider,
  x
) {
  list(
    type = "image",
    source = list(
      type = "base64",
      media_type = x@type,
      data = x@data
    )
  )
}

# https://docs.anthropic.com/en/docs/build-with-claude/tool-use#handling-tool-use-and-tool-result-content-blocks
method(as_json, list(ProviderAnthropic, ContentToolRequest)) <- function(
  provider,
  x
) {
  list(
    type = "tool_use",
    id = x@id,
    name = x@name,
    input = x@arguments
  )
}

# https://docs.anthropic.com/en/docs/build-with-claude/tool-use#handling-tool-use-and-tool-result-content-blocks
method(as_json, list(ProviderAnthropic, ContentToolResult)) <- function(
  provider,
  x
) {
  list(
    type = "tool_result",
    tool_use_id = x@request@id,
    content = tool_string(x),
    is_error = tool_errored(x)
  )
}

method(as_json, list(ProviderAnthropic, ToolDef)) <- function(provider, x) {
  list(
    name = x@name,
    description = x@description,
    input_schema = compact(as_json(provider, x@arguments))
  )
}

method(as_json, list(ProviderAnthropic, ContentThinking)) <- function(
  provider,
  x
) {
  if (identical(x@thinking, "")) {
    return()
  }

  list(
    type = "thinking",
    thinking = x@thinking,
    signature = x@extra$signature
  )
}

# Batch chat -------------------------------------------------------------------

method(has_batch_support, ProviderAnthropic) <- function(provider) {
  TRUE
}

# https://docs.anthropic.com/en/api/creating-message-batches
method(batch_submit, ProviderAnthropic) <- function(
  provider,
  conversations,
  type = NULL
) {
  req <- base_request(provider)
  req <- req_url_path_append(req, "/messages/batches")

  requests <- map(seq_along(conversations), function(i) {
    params <- chat_body(
      provider,
      stream = FALSE,
      turns = conversations[[i]],
      type = type
    )
    list(
      custom_id = paste0("chat-", i),
      params = params
    )
  })
  req <- req_body_json(req, list(requests = requests))

  resp <- req_perform(req)
  resp_body_json(resp)
}

# https://docs.anthropic.com/en/api/retrieving-message-batches
method(batch_poll, ProviderAnthropic) <- function(provider, batch) {
  req <- base_request(provider)
  req <- req_url_path_append(req, "/messages/batches/", batch$id)
  resp <- req_perform(req)

  resp_body_json(resp)
}

method(batch_status, ProviderAnthropic) <- function(provider, batch) {
  counts <- batch$request_counts
  list(
    working = batch$processing_status != "ended",
    n_processing = batch$request_counts$processing,
    n_succeeded = batch$request_counts$succeeded,
    n_failed = counts$errored + counts$canceled + counts$expired
  )
}

# https://docs.anthropic.com/en/api/retrieving-message-batch-results
method(batch_retrieve, ProviderAnthropic) <- function(provider, batch) {
  req <- base_request(provider)
  req <- req_url(req, batch$results_url)
  req <- req_progress(req, "down")

  path <- withr::local_tempfile()
  req <- req_perform(req, path = path)

  lines <- readLines(path, warn = FALSE)
  json <- lapply(lines, jsonlite::fromJSON, simplifyVector = FALSE)

  ids <- as.numeric(gsub("chat-", "", map_chr(json, "[[", "custom_id")))
  results <- lapply(json, "[[", "result")
  results[order(ids)]
}

method(batch_result_turn, ProviderAnthropic) <- function(
  provider,
  result,
  has_type = FALSE
) {
  if (result$type == "succeeded") {
    value_turn(provider, result$message, has_type = has_type)
  } else {
    NULL
  }
}

# Pricing ----------------------------------------------------------------------

method(standardise_model, ProviderAnthropic) <- function(provider, model) {
  gsub("-(latest|\\d{8})$", "", model)
}

# Models -----------------------------------------------------------------------

#' @export
#' @rdname chat_anthropic
models_anthropic <- function(
  base_url = "https://api.anthropic.com/v1",
  api_key = anthropic_key()
) {
  provider <- ProviderAnthropic(
    name = "Anthropic",
    model = "",
    base_url = base_url,
    api_key = api_key
  )

  req <- base_request(provider)
  req <- req_url_path_append(req, "/models")
  resp <- req_perform(req)

  json <- resp_body_json(resp)

  id <- map_chr(json$data, "[[", "id")
  display_name <- map_chr(json$data, "[[", "display_name")
  created_at <- as.POSIXct(map_chr(json$data, "[[", "created_at"))

  df <- data.frame(
    id = id,
    name = display_name,
    created_at = created_at
  )
  model_name <- standardise_model(provider, df$id)
  df <- cbind(df, match_prices("Anthropic", model_name))
  df[order(-xtfrm(df$created_at)), ]
}

# Helpers ----------------------------------------------------------------

# From httr2
backoff_default <- function(i) {
  round(min(stats::runif(1, min = 1, max = 2^i), 60), 1)
}
`````

## File: R/provider-cloudflare.R
`````r
#' @include provider-gemini.R
NULL

#' Chat with a model hosted on CloudFlare
#'
#' @description
#' [Cloudflare](https://www.cloudflare.com/developer-platform/products/workers-ai/)
#' works AI hosts a variety of open-source AI models. To use the Cloudflare
#' API, you must have an Account ID and an Access Token, which you can obtain
#' [by following these instructions](https://developers.cloudflare.com/workers-ai/get-started/rest-api/).
#'
#' ## Known limitations
#' * Tool calling does not appear to work.
#' * Images don't appear to work.
#'
#' @family chatbots
#' @param model `r param_model("meta-llama/Llama-3.3-70b-instruct-fp8-fast")`
#' @param api_key `r api_key_param("CLOUDFLARE_API_KEY")`
#' @param account The Cloudflare account ID. Taken from the
#'   `CLOUDFLARE_ACCOUNT_ID` env var, if defined.
#' @param api_key The API key to use for authentication. You generally should
#'   not supply this directly, but instead set the `HUGGINGFACE_API_KEY` environment
#'   variable.
#' @export
#' @inheritParams chat_openai
#' @inherit chat_openai return
#' @examples
#' \dontrun{
#' chat <- chat_cloudflare()
#' chat$chat("Tell me three jokes about statisticians")
#' }
chat_cloudflare <- function(
  account = cloudflare_account(),
  system_prompt = NULL,
  params = NULL,
  api_key = cloudflare_key(),
  model = NULL,
  api_args = list(),
  echo = NULL
) {
  # List at https://developers.cloudflare.com/workers-ai/models/
  # `@cf` appears to be part of the model name
  model <- set_default(model, "@cf/meta/llama-3.3-70b-instruct-fp8-fast")
  echo <- check_echo(echo)
  params <- params %||% params()

  # https://developers.cloudflare.com/workers-ai/configuration/open-ai-compatibility/
  cloudflare_api <- "https://api.cloudflare.com/client/v4/accounts/"
  base_url <- paste0(cloudflare_api, cloudflare_account(), "/ai/v1/")

  provider <- ProviderCloudflare(
    name = "Cloudflare",
    base_url = base_url,
    model = model,
    params = params,
    api_key = api_key,
    extra_args = api_args
  )

  Chat$new(provider = provider, system_prompt = system_prompt, echo = echo)
}

ProviderCloudflare <- new_class("ProviderCloudflare", parent = ProviderOpenAI)

method(base_request_error, ProviderCloudflare) <- function(provider, req) {
  req_error(req, body = function(resp) {
    if (resp_content_type(resp) == "application/json") {
      resp_body_json(resp)$errors[[1]]$message
    } else if (resp_content_type(resp) == "text/plain") {
      resp_body_string(resp)
    }
  })
}


# Docs look like Gemini tool defs
# https://developers.cloudflare.com/workers-ai/features/function-calling/traditional/
method(as_json, list(ProviderCloudflare, ToolDef)) <-
  method(as_json, list(ProviderGoogleGemini, ToolDef))

method(as_json, list(ProviderCloudflare, TypeObject)) <-
  method(as_json, list(ProviderGoogleGemini, TypeObject))


chat_cloudflare_test <- function(..., model = NULL) {
  model <- model %||% "@cf/meta/llama-3.3-70b-instruct-fp8-fast"
  chat_cloudflare(model = model, ...)
}

cloudflare_key <- function() {
  key_get("CLOUDFLARE_API_KEY")
}

cloudflare_account <- function() {
  key_get("CLOUDFLARE_ACCOUNT_ID")
}
`````

## File: R/provider-cortex.R
`````r
#' @include provider.R
#' @include content.R
#' @include turns.R
#' @include tools-def.R
NULL

#' Create a chatbot that speaks to the Snowflake Cortex Analyst
#'
#' @description
#' Chat with the LLM-powered [Snowflake Cortex
#' Analyst](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-analyst).
#'
#' ## Authentication
#'
#' `chat_cortex_analyst()` picks up the following ambient Snowflake credentials:
#'
#' - A static OAuth token defined via the `SNOWFLAKE_TOKEN` environment
#'   variable.
#' - Key-pair authentication credentials defined via the `SNOWFLAKE_USER` and
#'   `SNOWFLAKE_PRIVATE_KEY` (which can be a PEM-encoded private key or a path
#'   to one) environment variables.
#' - Posit Workbench-managed Snowflake credentials for the corresponding
#'   `account`.
#' - Viewer-based credentials on Posit Connect. Requires the \pkg{connectcreds}
#'   package.
#'
#' ## Known limitations
#'
#' Unlike most comparable model APIs, Cortex does not take a system prompt.
#' Instead, the caller must provide a "semantic model" describing available
#' tables, their meaning, and verified queries that can be run against them as a
#' starting point. The semantic model can be passed as a YAML string or via
#' reference to an existing file in a Snowflake Stage.
#'
#' Note that Cortex does not support multi-turn, so it will not remember
#' previous messages. Nor does it support registering tools, and attempting to
#' do so will result in an error.
#'
#' See [chat_snowflake()] to chat with more general-purpose models hosted on
#' Snowflake.
#'
#' @param account A Snowflake [account identifier](https://docs.snowflake.com/en/user-guide/admin-account-identifier),
#'   e.g. `"testorg-test_account"`. Defaults to the value of the
#'   `SNOWFLAKE_ACCOUNT` environment variable.
#' @param credentials A list of authentication headers to pass into
#'   [`httr2::req_headers()`], a function that returns them when called, or
#'   `NULL`, the default, to use ambient credentials.
#' @param model_spec A semantic model specification, or `NULL` when
#'   using `model_file` instead.
#' @param model_file Path to a semantic model file stored in a Snowflake Stage,
#'   or `NULL` when using `model_spec` instead.
#' @inheritParams chat_openai
#' @inherit chat_openai return
#' @family chatbots
#' @examplesIf has_credentials("cortex")
#' chat <- chat_cortex_analyst(
#'   model_file = "@my_db.my_schema.my_stage/model.yaml"
#' )
#' chat$chat("What questions can I ask?")
#' @export
chat_cortex_analyst <- function(
  account = snowflake_account(),
  credentials = NULL,
  model_spec = NULL,
  model_file = NULL,
  api_args = list(),
  echo = c("none", "output", "all")
) {
  check_string(account, allow_empty = FALSE)
  check_string(model_spec, allow_empty = FALSE, allow_null = TRUE)
  check_string(model_file, allow_empty = FALSE, allow_null = TRUE)
  check_exclusive(model_spec, model_file)
  echo <- check_echo(echo)

  if (is_list(credentials)) {
    static_credentials <- force(credentials)
    credentials <- function(account) static_credentials
  }
  check_function(credentials, allow_null = TRUE)
  credentials <- credentials %||% default_snowflake_credentials(account)

  provider <- ProviderSnowflakeCortexAnalyst(
    name = "Snowflake/CortexAnalyst",
    account = account,
    credentials = credentials,
    model_spec = model_spec,
    model_file = model_file,
    extra_args = api_args
  )

  Chat$new(provider = provider, echo = echo)
}

ProviderSnowflakeCortexAnalyst <- new_class(
  "ProviderSnowflakeCortexAnalyst",
  parent = Provider,
  constructor = function(
    name,
    account,
    credentials,
    model_spec = NULL,
    model_file = NULL,
    extra_args = list()
  ) {
    base_url <- snowflake_url(account)
    extra_args <- compact(list2(
      semantic_model = model_spec,
      semantic_model_file = model_file,
      !!!extra_args
    ))
    new_object(
      Provider(
        name = name,
        base_url = base_url,
        extra_args = extra_args,
        model = ""
      ),
      account = account,
      credentials = credentials
    )
  },
  properties = list(
    account = prop_string(),
    credentials = class_function,
    extra_args = class_list
  )
)

provider_cortex_test <- function(..., credentials = function(account) list()) {
  ProviderSnowflakeCortexAnalyst(
    name = "Cortex",
    account = "testorg-test_account",
    credentials = credentials,
    ...
  )
}

# See: https://docs.snowflake.com/en/developer-guide/snowflake-rest-api/reference/cortex-analyst
#      https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-analyst/tutorials/tutorial-1#step-3-create-a-streamlit-app-to-talk-to-your-data-through-cortex-analyst
method(chat_request, ProviderSnowflakeCortexAnalyst) <- function(
  provider,
  stream = TRUE,
  turns = list(),
  tools = list(),
  type = NULL
) {
  if (length(tools) != 0) {
    cli::cli_abort("Tools are not supported by Cortex.")
  }
  if (!is.null(type) != 0) {
    cli::cli_abort("Structured data extraction is not supported by Cortex.")
  }

  req <- request(provider@base_url)
  req <- req_url_path_append(req, "/api/v2/cortex/analyst/message")
  req <- ellmer_req_credentials(req, provider@credentials)
  req <- req_retry(req, max_tries = 2)
  req <- ellmer_req_timeout(req, stream)
  req <- ellmer_req_user_agent(req, Sys.getenv("SF_PARTNER"))

  # Snowflake doesn't document the error response format for Cortex Analyst at
  # this time, but empirically errors look like the following:
  #
  # {
  #  "message" : "'@stage' is an invalid stage file URL (correct format: '@my_db.my_schema.my_stage/path/to/file.yaml')",
  #  "code" : null,
  #  "error_code" : "392706",
  #  "request_id" : "929dd0e5-a582-458c-a9d2-c1aed531bb66"
  # }
  req <- req_error(req, body = function(resp) resp_body_json(resp)$message)

  # Cortex does not yet support multi-turn chats.
  turns <- tail(turns, n = 1)
  messages <- as_json(provider, turns)

  body <- list(messages = messages, stream = stream)
  body <- modify_list(body, provider@extra_args)
  req <- req_body_json(req, body)

  req
}

# Cortex -> ellmer --------------------------------------------------------------

method(stream_parse, ProviderSnowflakeCortexAnalyst) <- function(
  provider,
  event
) {
  # While undocumented, Cortex seems to mostly follow OpenAI API conventions for
  # streaming, although Cortex uses a specific JSON payload rather than in-band
  # signalling that the stream has ended.
  if (identical(event$data, '{"status":"done","status_message":"Done"}')) {
    NULL
  } else {
    jsonlite::parse_json(event$data)
  }
}

method(stream_text, ProviderSnowflakeCortexAnalyst) <- function(
  provider,
  event
) {
  if (!is.null(event$status_message)) {
    # Skip status messages like "Interpreting question" or "Generating
    # suggestions".
    ""
  } else if (!is.null(event$text_delta)) {
    event$text_delta
  } else if (!is.null(event$statement_delta)) {
    # Emit a Markdown-formatted code block for SQL queries.
    paste0("\n\n```sql\n", event$statement_delta, "\n```")
  } else if (!is.null(event$suggestions_delta)) {
    # Emit a Markdown-formatted "Suggestions" section.
    if (event$suggestions_delta$index == 0) {
      paste0(
        "\n\n#### Suggestions\n\n- ",
        event$suggestions_delta$suggestion_delta
      )
    } else {
      paste0("\n- ", event$suggestions_delta$suggestion_delta)
    }
  } else {
    cli::cli_abort(
      "Unknown chunk type {.str {event$type}}.",
      .internal = TRUE
    )
  }
}

method(stream_merge_chunks, ProviderSnowflakeCortexAnalyst) <- function(
  provider,
  result,
  chunk
) {
  if (!is.null(chunk$status)) {
    # Skip status messages.
    result
  } else if (is.null(result)) {
    list(cortex_chunk_to_message(chunk))
  } else {
    elt <- cortex_chunk_to_message(chunk)
    idx <- chunk$index + 1
    # This is a new chunk, we don't need to merge.
    if (length(result) < idx) {
      result[[idx]] <- elt
      return(result)
    }
    # Only suggestion-type chunks are emitted piecemeal.
    if (identical(chunk$type, "suggestions")) {
      result[[idx]]$suggestions <- c(
        result[[idx]]$suggestions,
        elt$suggestions
      )
    } else {
      cli::cli_abort(
        "Unmergeable chunk type {.str {chunk$type}}.",
        .internal = TRUE
      )
    }
    result
  }
}

cortex_chunk_to_message <- function(x) {
  if (x$type == "text") {
    list(type = x$type, text = x$text_delta)
  } else if (x$type == "sql") {
    list(type = x$type, statement = x$statement_delta)
  } else if (x$type == "suggestions") {
    list(
      type = x$type,
      suggestions = list(x$suggestions_delta$suggestion_delta)
    )
  } else {
    cli::cli_abort(
      "Unknown chunk type {.str {x$type}}.",
      .internal = TRUE
    )
  }
}

method(value_turn, ProviderSnowflakeCortexAnalyst) <- function(
  provider,
  result,
  has_type = FALSE
) {
  is_streaming <- !is_named(result)
  content <- if (is_streaming) result else result$content

  assistant_turn(
    contents = lapply(content, function(x) {
      if (x$type == "text") {
        if (!has_name(x, "text")) {
          cli::cli_abort("'text'-type content must have a 'text' field.")
        }
        ContentText(x$text)
      } else if (identical(x$type, "suggestions")) {
        if (!has_name(x, "suggestions")) {
          cli::cli_abort(
            "'suggestions'-type content must have a 'suggestions' field."
          )
        }
        ContentSuggestions(unlist(x$suggestions))
      } else if (identical(x$type, "sql")) {
        if (!has_name(x, "statement")) {
          cli::cli_abort("'sql'-type content must have a 'statement' field.")
        }
        ContentSql(x$statement)
      } else {
        cli::cli_abort(
          "Unknown content type {.str {x$type}} in response.",
          .internal = TRUE
        )
      }
    })
  )
}


# ellmer -> Cortex --------------------------------------------------------------

# Cortex supports not only "text" content, but also bespoke "suggestions" and
# "sql" types.

method(as_json, list(ProviderSnowflakeCortexAnalyst, Turn)) <- function(
  provider,
  x
) {
  role <- x@role
  if (role == "assistant") {
    role <- "analyst"
  }
  list(
    role = role,
    content = as_json(provider, x@contents)
  )
}

method(as_json, list(ProviderSnowflakeCortexAnalyst, ContentText)) <- function(
  provider,
  x
) {
  list(type = "text", text = x@text)
}

ContentSuggestions <- new_class(
  "ContentSuggestions",
  parent = Content,
  properties = list(suggestions = class_character)
)

method(
  as_json,
  list(ProviderSnowflakeCortexAnalyst, ContentSuggestions)
) <- function(
  provider,
  x
) {
  list(type = "suggestions", suggestions = as.list(x@suggestions))
}

method(contents_text, ContentSuggestions) <- function(content) {
  # Emit a Markdown-formatted "Suggestions" section as the textual
  # representation.
  paste0(
    c("\n\n#### Suggestions\n", paste0("- ", content@suggestions)),
    collapse = "\n"
  )
}

method(format, ContentSuggestions) <- function(x, ...) {
  items <- x@suggestions
  names(items) <- rep("*", times = length(items))
  paste0(
    c(
      cli::format_inline("{.strong Suggestions:}"),
      cli::format_bullets_raw(items)
    ),
    collapse = "\n"
  )
}

ContentSql <- new_class(
  "ContentSql",
  parent = Content,
  properties = list(statement = prop_string())
)

method(as_json, list(ProviderSnowflakeCortexAnalyst, ContentSql)) <- function(
  provider,
  x
) {
  list(type = "sql", statement = x@statement)
}

method(contents_text, ContentSql) <- function(content) {
  # Emit a Markdown-formatted SQL code block as the textual representation.
  contents_markdown(content)
}

method(contents_markdown, ContentSql) <- function(content) {
  paste0("\n\n```sql\n", content@statement, "\n```")
}

method(contents_html, ContentSql) <- function(content) {
  sprintf('<pre><code>%s</code></pre>\n', content@statement)
}

method(format, ContentSql) <- function(x, ...) {
  cli::format_inline("{.strong SQL:} {.code {x@statement}}")
}

# Credential handling ----------------------------------------------------------

cortex_credentials_exist <- function(...) {
  tryCatch(
    is_list(default_snowflake_credentials(...)),
    error = function(e) FALSE
  )
}

# Reads Posit Workbench-managed Snowflake credentials from a
# $SNOWFLAKE_HOME/connections.toml file, as used by the Snowflake Connector for
# Python implementation. The file will look as follows:
#
# [workbench]
# account = "account-id"
# token = "token"
# authenticator = "oauth"
workbench_snowflake_token <- function(account, sf_home) {
  cfg <- readLines(file.path(sf_home, "connections.toml"))
  # We don't attempt a full parse of the TOML syntax, instead relying on the
  # fact that this file will always contain only one section.
  if (!any(grepl(account, cfg, fixed = TRUE))) {
    # The configuration doesn't actually apply to this account.
    return(NULL)
  }
  line <- grepl("token = ", cfg, fixed = TRUE)
  token <- gsub("token = ", "", cfg[line])
  if (nchar(token) == 0) {
    return(NULL)
  }
  # Drop enclosing quotes.
  gsub("\"", "", token)
}
`````

## File: R/provider-databricks.R
`````r
#' Chat with a model hosted on Databricks
#'
#' @description
#' Databricks provides out-of-the-box access to a number of [foundation
#' models](https://docs.databricks.com/en/machine-learning/model-serving/score-foundation-models.html)
#' and can also serve as a gateway for external models hosted by a third party.
#'
#' ## Authentication
#'
#' `chat_databricks()` picks up on ambient Databricks credentials for a subset
#' of the [Databricks client unified
#' authentication](https://docs.databricks.com/en/dev-tools/auth/unified-auth.html)
#' model. Specifically, it supports:
#'
#' - Personal access tokens
#' - Service principals via OAuth (OAuth M2M)
#' - User account via OAuth (OAuth U2M)
#' - Authentication via the Databricks CLI
#' - Posit Workbench-managed credentials
#' - Viewer-based credentials on Posit Connect. Requires the \pkg{connectcreds}
#'   package.
#'
#' ## Known limitations
#'
#' Databricks models do not support images, but they do support structured
#' outputs. Tool calling support is also very limited at present and is
#' currently not supported by ellmer.
#'
#' @family chatbots
#' @param workspace The URL of a Databricks workspace, e.g.
#'   `"https://example.cloud.databricks.com"`. Will use the value of the
#'   environment variable `DATABRICKS_HOST`, if set.
#' @param model `r param_model("databricks-dbrx-instruct")`
#'
#'   Available foundational models include:
#'
#'   - `databricks-dbrx-instruct` (the default)
#'   - `databricks-mixtral-8x7b-instruct`
#'   - `databricks-meta-llama-3-1-70b-instruct`
#'   - `databricks-meta-llama-3-1-405b-instruct`
#' @param token An authentication token for the Databricks workspace, or
#'   `NULL` to use ambient credentials.
#' @inheritParams chat_openai
#' @inherit chat_openai return
#' @export
#' @examples
#' \dontrun{
#' chat <- chat_databricks()
#' chat$chat("Tell me three jokes about statisticians")
#' }
chat_databricks <- function(
  workspace = databricks_workspace(),
  system_prompt = NULL,
  model = NULL,
  token = NULL,
  api_args = list(),
  echo = c("none", "output", "all")
) {
  check_string(workspace, allow_empty = FALSE)
  check_string(token, allow_empty = FALSE, allow_null = TRUE)
  model <- set_default(model, "databricks-dbrx-instruct")
  echo <- check_echo(echo)
  if (!is.null(token)) {
    credentials <- function() list(Authorization = paste("Bearer", token))
  } else {
    credentials <- default_databricks_credentials(workspace)
  }
  provider <- ProviderDatabricks(
    name = "Databricks",
    base_url = workspace,
    model = model,
    extra_args = api_args,
    credentials = credentials,
    # Databricks APIs use bearer tokens, not API keys, but we need to pass an
    # empty string here anyway to make S7::validate() happy.
    api_key = ""
  )
  Chat$new(provider = provider, system_prompt = system_prompt, echo = echo)
}

ProviderDatabricks <- new_class(
  "ProviderDatabricks",
  parent = ProviderOpenAI,
  properties = list(credentials = class_function)
)

method(base_request, ProviderDatabricks) <- function(provider) {
  req <- request(provider@base_url)
  req <- ellmer_req_credentials(req, provider@credentials)
  req <- req_retry(req, max_tries = 2)
  req <- ellmer_req_timeout(req, stream)
  req <- ellmer_req_user_agent(req, databricks_user_agent())
  req <- base_request_error(provider, req)
  req
}

method(chat_body, ProviderDatabricks) <- function(
  provider,
  stream = TRUE,
  turns = list(),
  tools = list(),
  type = NULL
) {
  body <- chat_body(
    super(provider, ProviderOpenAI),
    stream = stream,
    turns = turns,
    tools = tools,
    type = type
  )

  # Databricks doensn't support stream options
  body$stream_options <- NULL

  body
}

method(chat_path, ProviderDatabricks) <- function(provider) {
  # Note: this API endpoint is undocumented and seems to exist primarily for
  # compatibility with the OpenAI Python SDK. The documented endpoint is
  # `/serving-endpoints/<model>/invocations`.
  "/serving-endpoints/chat/completions"
}

method(base_request_error, ProviderDatabricks) <- function(provider, req) {
  req_error(req, body = function(resp) {
    if (resp_content_type(resp) == "application/json") {
      # Databrick's "OpenAI-compatible" API has a slightly incompatible error
      # response format, which we account for here.
      resp_body_json(resp)$message
    }
  })
}

method(as_json, list(ProviderDatabricks, Turn)) <- function(provider, x) {
  if (x@role == "system") {
    list(list(role = "system", content = x@contents[[1]]@text))
  } else if (x@role == "user") {
    # Each tool result needs to go in its own message with role "tool".
    is_tool <- map_lgl(x@contents, S7_inherits, ContentToolResult)
    if (any(is_tool)) {
      return(lapply(x@contents[is_tool], function(tool) {
        list(
          role = "tool",
          content = tool_string(tool),
          tool_call_id = tool@request@id
        )
      }))
    }
    if (length(x@contents) > 1) {
      cli::cli_abort("Databricks models only accept a single text input.")
    }
    content <- as_json(provider, x@contents[[1]])
    list(list(role = "user", content = content))
  } else if (x@role == "assistant") {
    is_tool <- map_lgl(x@contents, is_tool_request)
    if (any(is_tool)) {
      list(list(
        role = "assistant",
        tool_calls = as_json(provider, x@contents[is_tool])
      ))
    } else {
      # We should be able to assume that there is only one content item here.
      content <- as_json(provider, x@contents[[1]])
      list(list(role = "assistant", content = content))
    }
  } else {
    cli::cli_abort("Unknown role {turn@role}", .internal = TRUE)
  }
}

method(as_json, list(ProviderDatabricks, ContentText)) <- function(
  provider,
  x
) {
  # Databricks only seems to support textual content.
  x@text
}

databricks_workspace <- function() {
  host <- key_get("DATABRICKS_HOST")
  if (!is.null(host) && !grepl("^https?://", host)) {
    host <- paste0("https://", host)
  }
  host
}

databricks_user_agent <- function() {
  user_agent <- paste0("r-ellmer/", utils::packageVersion("ellmer"))
  if (nchar(Sys.getenv("SPARK_CONNECT_USER_AGENT")) != 0) {
    user_agent <- paste(Sys.getenv("SPARK_CONNECT_USER_AGENT"), user_agent)
  }
  user_agent
}

# Try various ways to get Databricks credentials. This implements a subset of
# the "Databricks client unified authentication" model.
default_databricks_credentials <- function(workspace = databricks_workspace()) {
  host <- gsub("https://|/$", "", workspace)

  # Detect viewer-based credentials from Posit Connect.
  if (has_connect_viewer_token(resource = workspace)) {
    return(function() {
      token <- connectcreds::connect_viewer_token(workspace)
      list(Authorization = paste("Bearer", token$access_token))
    })
  }

  # An explicit PAT takes precedence over everything else.
  token <- Sys.getenv("DATABRICKS_TOKEN")
  if (nchar(token)) {
    return(function() list(Authorization = paste("Bearer", token)))
  }

  # Next up are explicit OAuth2 M2M credentials.
  client_id <- Sys.getenv("DATABRICKS_CLIENT_ID")
  client_secret <- Sys.getenv("DATABRICKS_CLIENT_SECRET")
  if (nchar(client_id) && nchar(client_secret)) {
    # M2M credentials use an OAuth client credentials flow. We cache the token
    # so we don't need to perform this flow before each turn.
    client <- oauth_client(
      client_id,
      paste0("https://", host, "/oidc/v1/token"),
      secret = client_secret,
      auth = "header",
      name = "ellmer-databricks-m2m"
    )
    return(function() {
      token <- oauth_token_cached(
        client,
        oauth_flow_client_credentials,
        # The "all-apis" scope translates to "everything this service principal
        # has access to", not "all Databricks APIs".
        flow_params = list(scope = "all-apis"),
        # Don't use the cached token when testing.
        reauth = is_testing()
      )
      list(Authorization = paste("Bearer", token$access_token))
    })
  }

  # Check for Workbench-provided credentials.
  cfg_file <- Sys.getenv("DATABRICKS_CONFIG_FILE")
  if (grepl("posit-workbench", cfg_file, fixed = TRUE)) {
    wb_token <- workbench_databricks_token(host, cfg_file)
    if (!is.null(wb_token)) {
      return(function() {
        # Ensure we get an up-to-date token.
        token <- workbench_databricks_token(host, cfg_file)
        list(Authorization = paste("Bearer", token))
      })
    }
  }

  # When on desktop, try using the Databricks CLI for auth.
  cli_path <- Sys.getenv("DATABRICKS_CLI_PATH", "databricks")
  if (!is_hosted_session() && nchar(Sys.which(cli_path)) != 0) {
    token <- databricks_cli_token(cli_path, host)
    if (!is.null(token)) {
      return(function() {
        # Ensure we get an up-to-date token.
        token <- databricks_cli_token(cli_path, host)
        list(Authorization = paste("Bearer", token))
      })
    }
  }

  # Fall back to OAuth U2M, masquerading as the Databricks CLI. Again, this
  # only works on desktop.
  if (is_interactive() && !is_hosted_session()) {
    # U2M credentials use an OAuth authorization code flow. We cache the token
    # so we don't need to perform this flow before each turn.
    client <- oauth_client(
      "databricks-cli",
      paste0("https://", host, "/oidc/v1/token"),
      auth = "body",
      name = "ellmer-databricks-u2m"
    )
    return(function() {
      token <- oauth_token_cached(
        client,
        oauth_flow_auth_code,
        flow_params = list(
          auth_url = paste0("https://", host, "/oidc/v1/authorize"),
          # The "all-apis" scope translates to "everything this user has access
          # to", not "all Databricks APIs".
          scope = "all-apis offline_access",
          # This is the registered redirect URI for the Databricks CLI.
          redirect_uri = "http://localhost:8020"
        )
      )
      list(Authorization = paste("Bearer", token$access_token))
    })
  }

  if (is_testing()) {
    testthat::skip("no Databricks credentials available")
  }

  cli::cli_abort("No Databricks credentials are available.")
}

# Try to determine whether we can redirect the user's browser to a server on
# localhost, which isn't possible if we are running on a hosted platform.
#
# This is based on the strategy pioneered by the {gargle} package and {httr2}.
is_hosted_session <- function() {
  # If RStudio Server or Posit Workbench is running locally (which is possible,
  # though unusual), it's not acting as a hosted environment.
  Sys.getenv("RSTUDIO_PROGRAM_MODE") == "server" &&
    !grepl("localhost", Sys.getenv("RSTUDIO_HTTP_REFERER"), fixed = TRUE)
}

databricks_cli_token <- function(cli_path, host) {
  output <- suppressWarnings(
    system2(
      cli_path,
      c("auth", "token", "--host", host),
      stdout = TRUE,
      stderr = TRUE
    )
  )
  output <- paste(output, collapse = "\n")
  # If we don't get an error message, try to extract the token from the JSON-
  # formatted output.
  if (grepl("access_token", output, fixed = TRUE)) {
    token <- gsub(".*access_token\":\\s?\"([^\"]+).*", "\\1", output)
    return(token)
  }
  NULL
}

# Reads Posit Workbench-managed Databricks credentials from a
# $DATABRICKS_CONFIG_FILE. The generated file will look as follows:
#
# [workbench]
# host = some-host
# token = some-token
workbench_databricks_token <- function(host, cfg_file) {
  cfg <- readLines(cfg_file)
  # We don't attempt a full parse of the INI syntax supported by Databricks
  # config files, instead relying on the fact that this particular file will
  # always contain only one section.
  if (!any(grepl(host, cfg, fixed = TRUE))) {
    # The configuration doesn't actually apply to this host.
    return(NULL)
  }
  line <- grepl("token = ", cfg, fixed = TRUE)
  token <- gsub("token = ", "", cfg[line])
  if (nchar(token) == 0) {
    return(NULL)
  }
  token
}
`````

## File: R/provider-deepseek.R
`````r
#' @include provider-openai.R
NULL

#' Chat with a model hosted on DeepSeek
#'
#' @description
#' Sign up at <https://platform.deepseek.com>.
#'
#' ## Known limitations
#'
#' * Structured data extraction is not supported.
#' * Images are not supported.
#'
#' @export
#' @family chatbots
#' @inheritParams chat_openai
#' @param api_key `r api_key_param("DEEPSEEK_API_KEY")`
#' @param base_url The base URL to the endpoint; the default uses DeepSeek.
#' @param model `r param_model("deepseek-chat")`
#' @inherit chat_openai return
#' @examples
#' \dontrun{
#' chat <- chat_deepseek()
#' chat$chat("Tell me three jokes about statisticians")
#' }
chat_deepseek <- function(
  system_prompt = NULL,
  base_url = "https://api.deepseek.com",
  api_key = deepseek_key(),
  model = NULL,
  seed = NULL,
  api_args = list(),
  echo = NULL
) {
  model <- set_default(model, "deepseek-chat")
  echo <- check_echo(echo)

  if (is_testing() && is.null(seed)) {
    seed <- seed %||% 1014
  }

  provider <- ProviderDeepSeek(
    name = "DeepSeek",
    base_url = base_url,
    model = model,
    seed = seed,
    extra_args = api_args,
    api_key = api_key
  )
  Chat$new(provider = provider, system_prompt = system_prompt, echo = echo)
}

ProviderDeepSeek <- new_class("ProviderDeepSeek", parent = ProviderOpenAI)

method(as_json, list(ProviderDeepSeek, ContentText)) <- function(provider, x) {
  x@text
}

method(as_json, list(ProviderDeepSeek, Turn)) <- function(provider, x) {
  if (x@role == "user") {
    # Text and tool results go in separate messages
    texts <- keep(x@contents, S7_inherits, ContentText)
    texts_out <- lapply(texts, function(text) {
      list(role = "user", content = as_json(provider, text))
    })

    tools <- keep(x@contents, S7_inherits, ContentToolResult)
    tools_out <- lapply(tools, function(tool) {
      list(
        role = "tool",
        content = tool_string(tool),
        tool_call_id = tool@request@id
      )
    })

    c(texts_out, tools_out)
  } else if (x@role == "assistant") {
    # Tool requests come out of content and go into own argument
    text <- detect(x@contents, S7_inherits, ContentText)
    tools <- keep(x@contents, is_tool_request)

    list(compact(list(
      role = "assistant",
      content = as_json(provider, text),
      tool_calls = as_json(provider, tools)
    )))
  } else {
    as_json(super(provider, ProviderOpenAI), x)
  }
}

deepseek_key <- function() key_get("DEEPSEEK_API_KEY")
`````

## File: R/provider-gemini-upload.R
`````r
#' Upload a file to gemini
#'
#' @description
#' `r lifecycle::badge("experimental")`
#'
#' This function uploads a file then waits for Gemini to finish processing it
#' so that you can immediately use it in a prompt. It's experimental because
#' it's currently Gemini specific, and we expect other providers to evolve
#' similar feature in the future.
#'
#' Uploaded files are automatically deleted after 2 days. Each file must be
#' less than 2 GB and you can upload a total of 20 GB. ellmer doesn't currently
#' provide a way to delete files early; please
#' [file an issue](https://github.com/tidyverse/ellmer/issues) if this would
#' be useful for you.
#'
#' @inheritParams chat_google_gemini
#' @param path Path to a file to upload.
#' @param mime_type Optionally, specify the mime type of the file.
#'   If not specified, will be guesses from the file extension.
#' @returns A `<ContentUploaded>` object that can be passed to `$chat()`.
#' @export
#' @examples
#' \dontrun{
#' file <- google_upload("path/to/file.pdf")
#'
#' chat <- chat_openai()
#' chat$chat(file, "Give me a three paragraph summary of this PDF")
#' }
google_upload <- function(
  path,
  base_url = "https://generativelanguage.googleapis.com/v1beta/",
  api_key = NULL,
  mime_type = NULL
) {
  credentials <- default_google_credentials(api_key, gemini = TRUE)

  mime_type <- mime_type %||% guess_mime_type(path)

  upload_url <- google_upload_init(
    path = path,
    base_url = base_url,
    credentials = credentials,
    mime_type = mime_type
  )

  status <- google_upload_send(
    upload_url = upload_url,
    path = path,
    credentials = credentials
  )
  google_upload_wait(status, credentials)

  ContentUploaded(uri = status$uri, mime_type = status$mimeType)
}

# https://ai.google.dev/api/files#method:-media.upload
google_upload_init <- function(path, base_url, credentials, mime_type) {
  file_size <- file.size(path)
  display_name <- basename(path)

  req <- request(base_url)
  req <- ellmer_req_credentials(req, credentials)
  req <- req_url_path(req, "upload/v1beta/files")
  req <- req_headers(
    req,
    "X-Goog-Upload-Protocol" = "resumable",
    "X-Goog-Upload-Command" = "start",
    "X-Goog-Upload-Header-Content-Length" = toString(file_size),
    "X-Goog-Upload-Header-Content-Type" = mime_type,
  )
  req <- req_body_json(req, list(file = list(display_name = display_name)))

  resp <- req_perform(req)
  resp_header(resp, "x-goog-upload-url")
}

google_upload_send <- function(upload_url, path, credentials) {
  file_size <- file.size(path)

  req <- request(upload_url)
  req <- ellmer_req_credentials(req, credentials)
  req <- req_headers(
    req,
    "Content-Length" = toString(file_size),
    "X-Goog-Upload-Offset" = "0",
    "X-Goog-Upload-Command" = "upload, finalize"
  )
  req <- req_body_file(req, path)
  req <- req_progress(req, "up")

  resp <- req_perform(req)
  resp_body_json(resp)$file
}

google_upload_status <- function(uri, credentials) {
  req <- request(uri)
  req <- ellmer_req_credentials(req, credentials)

  resp <- req_perform(req)
  resp_body_json(resp)
}

google_upload_wait <- function(status, credentials) {
  cli::cli_progress_bar(
    format = "{cli::pb_spin} Processing [{cli::pb_elapsed}] "
  )

  while (status$state == "PROCESSING") {
    cli::cli_progress_update()
    status <- google_upload_status(status$uri, credentials)
    Sys.sleep(0.5)
  }
  if (status$state == "FAILED") {
    cli::cli_abort("Upload failed: {status$error$message}")
  }

  invisible()
}

# Helpers ----------------------------------------------------------------------

guess_mime_type <- function(file_path, call = caller_env()) {
  ext <- tolower(tools::file_ext(file_path))

  if (has_name(mime_types, ext)) {
    mime_types[[ext]]
  } else {
    cli::cli_abort(
      c(
        "x" = "Couldn't determine mime type for {.arg path} because it has an unknown file extension, {ext}.",
        "i" = "Please supply the {.arg mime_type} manually."
      )
    )
  }
}

mime_types <- list(
  # Images
  jpg = "image/jpeg",
  jpeg = "image/jpeg",
  png = "image/png",
  gif = "image/gif",
  bmp = "image/bmp",
  svg = "image/svg+xml",
  webp = "image/webp",
  tiff = "image/tiff",
  ico = "image/x-icon",

  # Documents
  pdf = "application/pdf",
  doc = "application/msword",
  docx = "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
  xls = "application/vnd.ms-excel",
  xlsx = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
  ppt = "application/vnd.ms-powerpoint",
  pptx = "application/vnd.openxmlformats-officedocument.presentationml.presentation",
  txt = "text/plain",
  rtf = "application/rtf",

  # Audio
  mp3 = "audio/mpeg",
  wav = "audio/wav",
  ogg = "audio/ogg",
  m4a = "audio/mp4",
  flac = "audio/flac",
  aac = "audio/aac",

  # Video
  mp4 = "video/mp4",
  avi = "video/x-msvideo",
  mkv = "video/x-matroska",
  mov = "video/quicktime",
  wmv = "video/x-ms-wmv",
  webm = "video/webm",

  # Web
  html = "text/html",
  htm = "text/html",
  css = "text/css",
  js = "application/javascript",
  json = "application/json",
  xml = "application/xml",

  # Data
  csv = "text/csv",
  tsv = "text/tab-separated-values",
  sql = "application/sql"
)
`````

## File: R/provider-gemini.R
`````r
#' @include provider.R
#' @include content.R
#' @include turns.R
#' @include tools-def.R
NULL

#' Chat with a Google Gemini or Vertex AI model
#'
#' @description
#' Google's AI offering is broken up into two parts: Gemini and Vertex AI.
#' Most enterprises are likely to use Vertex AI, and individuals are likely
#' to use Gemini.
#'
#' Use [google_upload()] to upload files (PDFs, images, video, audio, etc.)
#'
#' ## Authentication
#' By default, `chat_google_gemini()` will use Google's default application
#' credentials if there is no API key provided. This requires the \pkg{gargle}
#' package.
#'
#' It can also pick up on viewer-based credentials on Posit Connect. This in
#' turn requires the \pkg{connectcreds} package.
#'
#' @param api_key `r api_key_param("GOOGLE_API_KEY")`
#'   For Gemini, you can alternatively set `GEMINI_API_KEY`.
#'
#' @param model `r param_model("gemini-2.0-flash", "google_gemini")`
#' @inheritParams chat_openai
#' @inherit chat_openai return
#' @family chatbots
#' @export
#' @examples
#' \dontrun{
#' chat <- chat_google_gemini()
#' chat$chat("Tell me three jokes about statisticians")
#' }
chat_google_gemini <- function(
  system_prompt = NULL,
  base_url = "https://generativelanguage.googleapis.com/v1beta/",
  api_key = NULL,
  model = NULL,
  params = NULL,
  api_args = list(),
  echo = NULL
) {
  model <- set_default(model, "gemini-2.0-flash")
  echo <- check_echo(echo)
  credentials <- default_google_credentials(api_key, gemini = TRUE)

  provider <- ProviderGoogleGemini(
    name = "Google/Gemini",
    base_url = base_url,
    model = model,
    params = params %||% params(),
    extra_args = api_args,
    api_key = api_key,
    credentials = credentials
  )
  Chat$new(provider = provider, system_prompt = system_prompt, echo = echo)
}

#' @export
#' @rdname chat_google_gemini
#' @param location Location, e.g. `us-east1`, `me-central1`, `africa-south1`.
#' @param project_id Project ID.
chat_google_vertex <- function(
  location,
  project_id,
  system_prompt = NULL,
  model = NULL,
  params = NULL,
  api_args = list(),
  echo = NULL
) {
  model <- set_default(model, "gemini-2.0-flash")
  echo <- check_echo(echo)
  credentials <- default_google_credentials()

  provider <- ProviderGoogleGemini(
    name = "Google/Vertex",
    base_url = vertex_url(location, project_id),
    model = model,
    params = params %||% params(),
    extra_args = api_args,
    credentials = credentials
  )
  Chat$new(provider = provider, system_prompt = system_prompt, echo = echo)
}

# https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.endpoints/generateContent
vertex_url <- function(location, project_id) {
  paste_c(
    c("https://", location, "-aiplatform.googleapis.com/v1"),
    c("/projects/", project_id),
    c("/locations/", location),
    "/publishers/google/"
  )
}

ProviderGoogleGemini <- new_class(
  "ProviderGoogleGemini",
  parent = Provider,
  properties = list(
    api_key = prop_string(allow_null = TRUE),
    credentials = class_function | NULL,
    model = prop_string()
  )
)

# Base request -----------------------------------------------------------------

method(base_request, ProviderGoogleGemini) <- function(provider) {
  req <- request(provider@base_url)
  req <- ellmer_req_credentials(req, provider@credentials)
  req <- req_retry(req, max_tries = 2)
  req <- ellmer_req_timeout(req, stream)
  req <- ellmer_req_user_agent(req)
  req <- req_error(req, body = function(resp) {
    json <- resp_body_json(resp, check_type = FALSE)
    json$error$message
  })
  req
}

# Chat -------------------------------------------------------------------------

method(chat_request, ProviderGoogleGemini) <- function(
  provider,
  stream = TRUE,
  turns = list(),
  tools = list(),
  type = NULL
) {
  req <- base_request(provider)

  # Can't use chat_path() because it varies based on stream
  req <- req_url_path_append(req, "models")
  if (stream) {
    # https://ai.google.dev/api/generate-content#method:-models.streamgeneratecontent
    req <- req_url_path_append(
      req,
      paste0(provider@model, ":", "streamGenerateContent")
    )
    req <- req_url_query(req, alt = "sse")
  } else {
    # https://ai.google.dev/api/generate-content#method:-models.generatecontent
    req <- req_url_path_append(
      req,
      paste0(provider@model, ":", "generateContent")
    )
  }

  body <- chat_body(
    provider = provider,
    stream = stream,
    turns = turns,
    tools = tools,
    type = type
  )
  body <- modify_list(body, provider@extra_args)

  req <- req_body_json(req, body)
  req
}

method(chat_body, ProviderGoogleGemini) <- function(
  provider,
  stream = TRUE,
  turns = list(),
  tools = list(),
  type = NULL
) {
  if (length(turns) >= 1 && is_system_prompt(turns[[1]])) {
    system <- list(parts = list(text = turns[[1]]@text))
  } else {
    system <- list(parts = list(text = ""))
  }

  generation_config <- chat_params(provider, provider@params)
  if (!is.null(type)) {
    generation_config$response_mime_type <- "application/json"
    generation_config$response_schema <- as_json(provider, type)
  }

  contents <- as_json(provider, turns)

  # https://ai.google.dev/api/caching#Tool
  if (length(tools) > 0) {
    funs <- as_json(provider, unname(tools))
    tools <- list(functionDeclarations = funs)
  } else {
    tools <- NULL
  }

  compact(list(
    contents = contents,
    tools = tools,
    systemInstruction = system,
    generationConfig = generation_config
  ))
}

method(chat_params, ProviderGoogleGemini) <- function(provider, params) {
  standardise_params(
    params,
    c(
      temperature = "temperature",
      topP = "top_p",
      topK = "top_k",
      frequencyPenalty = "frequency_penalty",
      presencePenalty = "presence_penalty",
      seed = "seed",
      maxOutputTokens = "max_tokens",
      responseLogprobs = "log_probs",
      stopSequences = "stop_sequences"
    )
  )
}

# Gemini -> ellmer --------------------------------------------------------------

method(stream_parse, ProviderGoogleGemini) <- function(provider, event) {
  if (is.null(event)) {
    NULL
  } else {
    jsonlite::parse_json(event$data)
  }
}
method(stream_text, ProviderGoogleGemini) <- function(provider, event) {
  event$candidates[[1]]$content$parts[[1]]$text
}
method(stream_merge_chunks, ProviderGoogleGemini) <- function(
  provider,
  result,
  chunk
) {
  if (is.null(result)) {
    chunk
  } else {
    merge_gemini_chunks(result, chunk)
  }
}
method(value_turn, ProviderGoogleGemini) <- function(
  provider,
  result,
  has_type = FALSE
) {
  message <- result$candidates[[1]]$content

  contents <- lapply(message$parts, function(content) {
    if (has_name(content, "text")) {
      if (has_type) {
        data <- jsonlite::parse_json(content$text)
        ContentJson(data)
      } else {
        ContentText(content$text)
      }
    } else if (has_name(content, "functionCall")) {
      ContentToolRequest(
        content$functionCall$name,
        content$functionCall$name,
        content$functionCall$args
      )
    } else {
      cli::cli_abort(
        "Unknown content type with names {.str {names(content)}}.",
        .internal = TRUE
      )
    }
  })
  contents <- compact(contents)
  usage <- result$usageMetadata
  tokens <- tokens_log(
    provider,
    input = usage$promptTokenCount,
    output = usage$candidatesTokenCount
  )

  assistant_turn(contents, json = result, tokens = tokens)
}

# ellmer -> Gemini --------------------------------------------------------------

# https://ai.google.dev/api/caching#Content
method(as_json, list(ProviderGoogleGemini, Turn)) <- function(provider, x) {
  if (x@role == "system") {
    # System messages go in the top-level API parameter
  } else if (x@role == "user") {
    list(role = x@role, parts = as_json(provider, x@contents))
  } else if (x@role == "assistant") {
    list(role = "model", parts = as_json(provider, x@contents))
  } else {
    cli::cli_abort("Unknown role {turn@role}", .internal = TRUE)
  }
}


method(as_json, list(ProviderGoogleGemini, ToolDef)) <- function(provider, x) {
  compact(list(
    name = x@name,
    description = x@description,
    parameters = as_json(provider, x@arguments)
  ))
}

method(as_json, list(ProviderGoogleGemini, ContentText)) <- function(
  provider,
  x
) {
  if (identical(x@text, "")) {
    # Gemini tool call requests can include a Content with empty text,
    # but it doesn't like it if you send this back
    NULL
  } else {
    list(text = x@text)
  }
}

method(as_json, list(ProviderGoogleGemini, ContentPDF)) <- function(
  provider,
  x
) {
  list(
    inlineData = list(
      mimeType = x@type,
      data = x@data
    )
  )
}

# https://ai.google.dev/api/caching#FileData
method(as_json, list(ProviderGoogleGemini, ContentUploaded)) <- function(
  provider,
  x
) {
  list(
    fileData = list(
      mimeType = x@mime_type,
      fileUri = x@uri
    )
  )
}

# https://ai.google.dev/api/caching#FileData
method(as_json, list(ProviderGoogleGemini, ContentImageRemote)) <- function(
  provider,
  x
) {
  cli::cli_abort("Gemini doesn't support remote images")
}

# https://ai.google.dev/api/caching#Blob
method(as_json, list(ProviderGoogleGemini, ContentImageInline)) <- function(
  provider,
  x
) {
  list(
    inlineData = list(
      mimeType = x@type,
      data = x@data
    )
  )
}

# https://ai.google.dev/api/caching#FunctionCall
method(as_json, list(ProviderGoogleGemini, ContentToolRequest)) <- function(
  provider,
  x
) {
  list(
    functionCall = list(
      name = x@id,
      args = x@arguments
    )
  )
}

# https://ai.google.dev/api/caching#FunctionResponse
method(as_json, list(ProviderGoogleGemini, ContentToolResult)) <- function(
  provider,
  x
) {
  list(
    functionResponse = list(
      name = x@request@id,
      response = list(value = tool_string(x))
    )
  )
}

method(as_json, list(ProviderGoogleGemini, TypeObject)) <- function(
  provider,
  x
) {
  if (x@additional_properties) {
    cli::cli_abort("{.arg .additional_properties} not supported for Gemini.")
  }

  if (length(x@properties) == 0) {
    return(list())
  }

  required <- map_lgl(x@properties, function(prop) prop@required)

  compact(list(
    type = "object",
    description = x@description,
    properties = as_json(provider, x@properties),
    required = as.list(names2(x@properties)[required])
  ))
}

# Gemini-specific merge logic --------------------------------------------------

merge_last <- function() {
  function(left, right, path = NULL) {
    right
  }
}

merge_identical <- function() {
  function(left, right, path = NULL) {
    if (!identical(left, right)) {
      stop(
        "Expected identical values, but got ",
        deparse(left),
        " and ",
        deparse(right)
      )
    }
    left
  }
}

merge_any_or_empty <- function() {
  function(left, right, path = NULL) {
    if (!is.null(left) && nzchar(left)) {
      left
    } else if (!is.null(right) && nzchar(right)) {
      right
    } else {
      ""
    }
  }
}

merge_optional <- function(merge_func) {
  function(left, right, path = NULL) {
    if (is.null(left) && is.null(right)) {
      NULL
    } else {
      merge_func(left, right, path)
    }
  }
}

merge_objects <- function(...) {
  spec <- list(...)
  function(left, right, path = NULL) {
    if (is.null(left)) {
      return(right)
    } else if (is.null(right)) {
      return(left)
    }

    # cat(paste(collapse = "", path), "\n")
    stopifnot(is.list(left), is.list(right), all(nzchar(names(spec))))
    mapply(
      names(spec),
      spec,
      FUN = function(key, value) {
        value(left[[key]], right[[key]], c(path, ".", key))
      },
      USE.NAMES = TRUE,
      SIMPLIFY = FALSE
    )
  }
}

merge_candidate_lists <- function(...) {
  merge_unindexed <- merge_objects(...)
  merge_indexed <- merge_objects(index = merge_identical(), ...)

  function(left, right, path = NULL) {
    if (length(left) == 1 && length(right) == 1) {
      list(merge_unindexed(left[[1]], right[[1]], c(path, "[]")))
    } else {
      # left and right are lists of objects with [["index"]]
      # We need to find the elements that have matching indices and merge them
      left_indices <- vapply(left, `[[`, integer(1), "index")
      right_indices <- vapply(right, `[[`, integer(1), "index")
      # I know this seems weird, but according to Google's Go SDK, we should
      # only retain indices on the right that *already* appear on the left.
      # Citations:
      # https://github.com/google/generative-ai-go/blob/3d14f4039eaef321b15bcbf70839389d7f000233/genai/client_test.go#L655
      # https://github.com/google/generative-ai-go/blob/3d14f4039eaef321b15bcbf70839389d7f000233/genai/client.go#L396
      lapply(left_indices, function(index) {
        left_item <- left[[which(left_indices == index)]]
        right_item <- right[[which(right_indices == index)]]
        if (is.null(right_item)) {
          left_item
        } else {
          merge_indexed(left_item, right_item, c(path, "[", index, "]"))
        }
      })
    }
  }
}

merge_append <- function() {
  function(left, right, path = NULL) {
    c(left, right)
  }
}

merge_parts <- function() {
  function(left, right, path = NULL) {
    joined <- c(left, right)

    # Identify text parts
    is_text <- map_lgl(joined, ~ is.list(.x) && identical(names(.x), "text"))

    # Create groups for contiguous sections
    groups <- cumsum(c(TRUE, diff(is_text) != 0))

    # Split into groups and process each
    split_parts <- split(joined, groups)
    merged_split_parts <- map2(
      split_parts,
      split(is_text, groups),
      function(parts, is_text_group) {
        if (!is_text_group[[1]]) {
          # Non-text group: return parts unchanged
          return(parts)
        } else {
          # Text group: merge text values
          text_values <- map_chr(parts, ~ .x[["text"]])
          list(list(text = paste0(text_values, collapse = "")))
        }
      }
    )
    unlist(merged_split_parts, recursive = FALSE, use.names = FALSE)
  }
}

# Put it all together...
# https://ai.google.dev/api/generate-content#v1beta.GenerateContentResponse
merge_gemini_chunks <- merge_objects(
  candidates = merge_candidate_lists(
    content = merge_objects(
      role = merge_any_or_empty(),
      parts = merge_parts()
    ),
    finishReason = merge_last(),
    safetyRatings = merge_last(),
    citationMetadata = merge_optional(
      merge_objects(citationSources = merge_append())
    ),
    tokenCount = merge_last()
  ),
  promptFeedback = merge_last(),
  usageMetadata = merge_last()
)

default_google_credentials <- function(
  api_key = NULL,
  error_call = caller_env(),
  gemini = FALSE
) {
  gemini_scope <- "https://www.googleapis.com/auth/generative-language.retriever"

  check_string(api_key, allow_null = TRUE, call = error_call)
  api_key <- api_key %||% Sys.getenv("GOOGLE_API_KEY")
  if (gemini && api_key == "") {
    api_key <- Sys.getenv("GEMINI_API_KEY")
  }

  if (nzchar(api_key)) {
    return(function() {
      list("x-goog-api-key" = api_key)
    })
  }

  # Detect viewer-based credentials from Posit Connect.
  if (has_connect_viewer_token(scope = gemini_scope)) {
    return(function() {
      token <- connectcreds::connect_viewer_token(scope = gemini_scope)
      list(Authorization = paste("Bearer", token$access_token))
    })
  }

  if (is_testing()) {
    testthat::skip_if_not_installed("gargle")
  }

  check_installed("gargle", "for Google authentication")
  gargle::with_cred_funs(
    funs = list(
      # We don't want to use *all* of gargle's default credential functions --
      # in particular, we don't want to try and authenticate using the bundled
      # OAuth client -- so winnow down the list.
      credentials_app_default = gargle::credentials_app_default
    ),
    {
      token <- gargle::token_fetch(scopes = gemini_scope)
    },
    action = "replace"
  )

  if (is.null(token) && is_testing()) {
    testthat::skip("no Google credentials available")
  }

  if (is.null(token)) {
    cli::cli_abort(
      c(
        "No Google credentials are available.",
        "i" = "Try suppling an API key or configuring Google's application default credentials."
      ),
      call = error_call
    )
  }

  # gargle emits an httr-style token, which we awkwardly shim into something
  # httr2 can work with.

  if (!token$can_refresh()) {
    # TODO: Not really sure what to do in this case when the token expires.
    return(function() {
      list(Authorization = paste("Bearer", token$credentials$access_token))
    })
  }

  # gargle tokens don't track the expiry time, so we do it ourselves (with a
  # grace period).
  expiry <- Sys.time() + token$credentials$expires_in - 5
  return(function() {
    if (expiry < Sys.time()) {
      token$refresh()
    }
    list(Authorization = paste("Bearer", token$credentials$access_token))
  })
}

# Pricing ----------------------------------------------------------------------

method(standardise_model, ProviderGoogleGemini) <- function(provider, model) {
  # https://ai.google.dev/gemini-api/docs/models#model-versions
  # <model>-<generation>-<variation>-...
  gsub("^([^-]+-[^-]+-[^-]+).*$", "\\1", model)
}

# Models -----------------------------------------------------------------------

#' @export
#' @rdname chat_google_gemini
models_google_gemini <- function(
  base_url = "https://generativelanguage.googleapis.com/v1beta/",
  api_key = NULL
) {
  provider <- ProviderGoogleGemini(
    name = "gemini",
    model = "",
    base_url = base_url,
    credentials = if (isFALSE(api_key)) {
      default_google_credentials() # vertex
    } else {
      default_google_credentials(api_key, gemini = TRUE)
    }
  )

  req <- base_request(provider)
  req <- req_url_path_append(req, "/models")
  resp <- req_perform(req)

  json <- resp_body_json(resp)

  name <- map_chr(json$models, "[[", "name")
  name <- gsub("^models/", "", name)
  display_name <- map_chr(json$models, "[[", "displayName")

  methods <- map(json$models, \(x) unlist(x$supportedGenerationMethods))
  can_generate <- map_lgl(methods, \(x) "generateContent" %in% x)

  df <- data.frame(id = name)
  model_name <- standardise_model(provider, df$id)
  df <- cbind(df, match_prices("Google/Gemini", model_name))
  unrowname(df[order(df$id), ][can_generate, ])
}

#' @rdname chat_google_gemini
#' @export
models_google_vertex <- function(location, project_id) {
  models_google_gemini(vertex_url(location, project_id), api_key = FALSE)
}
`````

## File: R/provider-github.R
`````r
#' Chat with a model hosted on the GitHub model marketplace
#'
#' @description
#' GitHub (via Azure) hosts a number of open source and OpenAI models.
#' To access the GitHub model marketplace, you will need to apply for and
#' be accepted into the beta access program. See
#' <https://github.com/marketplace/models> for details.
#'
#' This function is a lightweight wrapper around [chat_openai()] with
#' the defaults tweaked for the GitHub model marketplace.
#'
#' @family chatbots
#' @param api_key The API key to use for authentication. You generally should
#'   not supply this directly, but instead manage your GitHub credentials
#'   as described in <https://usethis.r-lib.org/articles/git-credentials.html>.
#'   For headless environments, this will also look in the `GITHUB_PAT`
#'   env var.
#' @param model `r param_model("gpt-4o")`
#' @export
#' @inheritParams chat_openai
#' @inherit chat_openai return
#' @examples
#' \dontrun{
#' chat <- chat_github()
#' chat$chat("Tell me three jokes about statisticians")
#' }
chat_github <- function(
  system_prompt = NULL,
  base_url = "https://models.inference.ai.azure.com/",
  api_key = github_key(),
  model = NULL,
  seed = NULL,
  api_args = list(),
  echo = NULL
) {
  check_installed("gitcreds")

  model <- set_default(model, "gpt-4o")
  echo <- check_echo(echo)

  chat_openai(
    system_prompt = system_prompt,
    base_url = base_url,
    api_key = api_key,
    model = model,
    seed = seed,
    api_args = api_args,
    echo = echo
  )
}

github_key <- function() {
  withCallingHandlers(
    gitcreds::gitcreds_get()$password,
    error = function(cnd) {
      cli::cli_abort(
        "Failed to find git credentials or GITHUB_PAT env var",
        parent = cnd
      )
    }
  )
}
`````

## File: R/provider-groq.R
`````r
#' @include provider-openai.R
NULL

#' Chat with a model hosted on Groq
#'
#' @description
#' Sign up at <https://groq.com>.
#'
#' This function is a lightweight wrapper around [chat_openai()] with
#' the defaults tweaked for groq.
#'
#' ## Known limitations
#'
#' groq does not currently support structured data extraction.
#'
#' @export
#' @family chatbots
#' @param api_key `r api_key_param("GROQ_API_KEY")`
#' @param model `r param_model("llama3-8b-8192")`
#' @inheritParams chat_openai
#' @inherit chat_openai return
#' @examples
#' \dontrun{
#' chat <- chat_groq()
#' chat$chat("Tell me three jokes about statisticians")
#' }
chat_groq <- function(
  system_prompt = NULL,
  base_url = "https://api.groq.com/openai/v1",
  api_key = groq_key(),
  model = NULL,
  seed = NULL,
  api_args = list(),
  echo = NULL
) {
  model <- set_default(model, "llama3-8b-8192")
  echo <- check_echo(echo)

  if (is_testing() && is.null(seed)) {
    seed <- seed %||% 1014
  }

  provider <- ProviderGroq(
    name = "Groq",
    base_url = base_url,
    model = model,
    seed = seed,
    extra_args = api_args,
    api_key = api_key
  )
  Chat$new(provider = provider, system_prompt = system_prompt, echo = echo)
}

ProviderGroq <- new_class("ProviderGroq", parent = ProviderOpenAI)

method(as_json, list(ProviderGroq, Turn)) <- function(provider, x) {
  if (x@role == "assistant") {
    # Tool requests come out of content and go into own argument
    is_tool <- map_lgl(x@contents, is_tool_request)
    tool_calls <- as_json(provider, x@contents[is_tool])

    # Grok contents is just a string. Hopefully it never sends back more
    # than a single text response.
    if (any(!is_tool)) {
      content <- x@contents[!is_tool][[1]]@text
    } else {
      content <- NULL
    }

    list(
      compact(list(
        role = "assistant",
        content = content,
        tool_calls = tool_calls
      ))
    )
  } else {
    as_json(super(provider, ProviderOpenAI), x)
  }
}

method(as_json, list(ProviderGroq, TypeObject)) <- function(provider, x) {
  if (x@additional_properties) {
    cli::cli_abort("{.arg .additional_properties} not supported for Groq.")
  }
  required <- map_lgl(x@properties, function(prop) prop@required)

  compact(list(
    type = "object",
    description = x@description,
    properties = as_json(provider, x@properties),
    required = as.list(names2(x@properties)[required])
  ))
}

method(as_json, list(ProviderGroq, ToolDef)) <- function(provider, x) {
  list(
    type = "function",
    "function" = compact(list(
      name = x@name,
      description = x@description,
      parameters = as_json(provider, x@arguments)
    ))
  )
}

groq_key <- function() {
  key_get("GROQ_API_KEY")
}
`````

## File: R/provider-huggingface.r
`````r
#' Chat with a model hosted on Hugging Face Serverless Inference API
#'
#' @description
#' [Hugging Face](https://huggingface.co/) hosts a variety of open-source
#' and proprietary AI models available via their Inference API.
#' To use the Hugging Face API, you must have an Access Token, which you can obtain
#' from your [Hugging Face account](https://huggingface.co/settings/tokens)
#' (ensure that at least "Make calls to Inference Providers" and
#' "Make calls to your Inference Endpoints" is checked).
#'
#' This function is a lightweight wrapper around [chat_openai()], with
#' the defaults adjusted for Hugging Face.
#'
#' ## Known limitations
#'
#' * Parameter support is hit or miss.
#' * Tool calling is currently broken in the API.
#' * While images are technically supported, I couldn't find any models that
#'   returned useful respones.
#' * Some models do not support the chat interface or parts of it, for example
#'   `google/gemma-2-2b-it` does not support a system prompt. You will need to
#'   carefully choose the model.
#'
#' So overall, not something we could recommend at the moment.
#'
#' @family chatbots
#' @param model `r param_model("meta-llama/Llama-3.1-8B-Instruct")`
#' @param api_key The API key to use for authentication. You generally should
#'   not supply this directly, but instead set the `HUGGINGFACE_API_KEY` environment
#'   variable.
#' @export
#' @inheritParams chat_openai
#' @inherit chat_openai return
#' @examples
#' \dontrun{
#' chat <- chat_huggingface()
#' chat$chat("Tell me three jokes about statisticians")
#' }
chat_huggingface <- function(
  system_prompt = NULL,
  params = NULL,
  api_key = hf_key(),
  model = NULL,
  api_args = list(),
  echo = NULL
) {
  model <- set_default(model, "meta-llama/Llama-3.1-8B-Instruct")
  echo <- check_echo(echo)
  params <- params %||% params()

  base_url <- paste0(
    "https://api-inference.huggingface.co/models/",
    model,
    "/v1"
  )

  provider <- ProviderHuggingFace(
    name = "HuggingFace",
    base_url = base_url,
    model = model,
    params = params,
    extra_args = api_args,
    api_key = api_key
  )
  Chat$new(provider = provider, system_prompt = system_prompt, echo = echo)
}

ProviderHuggingFace <- new_class("ProviderHuggingFace", parent = ProviderOpenAI)

chat_huggingface_test <- function(..., model = NULL) {
  model <- model %||% "meta-llama/Llama-3.1-8B-Instruct"
  chat_huggingface(model = model, ...)
}

# https://platform.openai.com/docs/api-reference/chat/create
method(chat_body, ProviderHuggingFace) <- function(
  provider,
  stream = TRUE,
  turns = list(),
  tools = list(),
  type = NULL
) {
  if (length(tools) > 0) {
    # https://github.com/huggingface/text-generation-inference/issues/2986
    cli::cli_abort("HuggingFace does not currently support tools.")
  }

  body <- chat_body(
    super(provider, ProviderOpenAI),
    stream = stream,
    turns = turns,
    tools = tools,
    type = type
  )

  messages <- compact(unlist(as_json(provider, turns), recursive = FALSE))
  tools <- as_json(provider, unname(tools))

  if (!is.null(type)) {
    body$response_format <- list(
      type = "json",
      value = as_json(provider, type)
    )
  }

  body
}

method(as_json, list(ProviderHuggingFace, ContentToolResult)) <- function(
  provider,
  x
) {
  list(
    role = "tool",
    content = tool_string(x),
    name = x@request@name,
    tool_call_id = x@request@id
  )
}

hf_key <- function() {
  key_get("HUGGINGFACE_API_KEY")
}
`````

## File: R/provider-mistral.R
`````r
#' Chat with a model hosted on Mistral's La Platforme
#'
#' @description
#' Get your API key from <https://console.mistral.ai/api-keys>.
#'
#' ## Known limitations
#'
#' * Tool calling is unstable.
#' * Images require a model that supports images.
#'
#' @export
#' @family chatbots
#' @param model `r param_model("mistral-large-latest")`
#' @param api_key `r api_key_param("MISTRAL_API_KEY")`
#' @inheritParams chat_openai
#' @inherit chat_openai return
#' @examples
#' \dontrun{
#' chat <- chat_mistral()
#' chat$chat("Tell me three jokes about statisticians")
#' }
chat_mistral <- function(
  system_prompt = NULL,
  params = NULL,
  api_key = mistral_key(),
  model = NULL,
  seed = NULL,
  api_args = list(),
  echo = NULL
) {
  params <- params %||% params()
  model <- set_default(model, "mistral-large-latest")
  echo <- check_echo(echo)

  provider <- ProviderMistral(
    name = "Mistral",
    base_url = "https://api.mistral.ai/v1/",
    model = model,
    params = params,
    seed = seed,
    extra_args = api_args,
    api_key = api_key
  )
  Chat$new(provider = provider, system_prompt = system_prompt, echo = echo)
}

ProviderMistral <- new_class("ProviderMistral", parent = ProviderOpenAI)

chat_mistral_test <- function(
  system_prompt = NULL,
  model = "mistral-large-latest",
  params = NULL,
  ...
) {
  params <- params %||% params()
  params <- modify_list(list(seed = 1014, temperature = 0), params)

  chat_mistral(
    system_prompt = system_prompt,
    model = model,
    params = params,
    ...
  )
}

method(base_request, ProviderMistral) <- function(provider) {
  req <- base_request(super(provider, ProviderOpenAI))
  req <- req_retry(req, max_tries = 2, after = function(resp) {
    as.numeric(resp_header(resp, "ratelimitbysize-reset", NA))
  })
  req <- req_error(req, body = function(resp) {
    if (resp_content_type(resp) == "application/json") {
      resp_body_json(resp)$message
    }
  })
  req <- req_throttle(req, capacity = 1, fill_time_s = 1)
  req
}

method(chat_body, ProviderMistral) <- function(
  provider,
  stream = TRUE,
  turns = list(),
  tools = list(),
  type = NULL
) {
  body <- chat_body(
    super(provider, ProviderOpenAI),
    stream = stream,
    turns = turns,
    tools = tools,
    type = type
  )

  # Mistral doensn't support stream options
  body$stream_options <- NULL

  body
}

method(chat_params, ProviderMistral) <- function(provider, params) {
  standardise_params(
    params,
    c(
      temperature = "temperature",
      top_p = "top_p",
      frequency_penalty = "frequency_penalty",
      presence_penalty = "presence_penalty",
      random_seed = "seed",
      max_tokens = "max_tokens",
      logprobs = "log_probs",
      stop = "stop_sequences"
    )
  )
}


mistral_key <- function() {
  key_get("MISTRAL_API_KEY")
}
`````

## File: R/provider-ollama.R
`````r
#' Chat with a local Ollama model
#'
#' @description
#' To use `chat_ollama()` first download and install
#' [Ollama](https://ollama.com). Then install some models either from the
#' command line (e.g. with `ollama pull llama3.1`) or within R using
#' {[ollamar](https://hauselin.github.io/ollama-r/)} (e.g.
#' `ollamar::pull("llama3.1")`).
#'
#' This function is a lightweight wrapper around [chat_openai()] with
#' the defaults tweaked for ollama.
#'
#' ## Known limitations
#'
#' * Tool calling is not supported with streaming (i.e. when `echo` is
#'   `"text"` or `"all"`)
#' * Models can only use 2048 input tokens, and there's no way
#'   to get them to use more, except by creating a custom model with a
#'   different default.
#' * Tool calling generally seems quite weak, at least with the models I have
#'   tried it with.
#'
#' @inheritParams chat_openai
#' @param model `r param_model(NULL, "ollama")`
#' @param api_key Ollama doesn't require an API key for local usage and in most
#'   cases you do not need to provide an `api_key`.
#'
#'   However, if you're accessing an Ollama instance hosted behind a reverse
#'   proxy or secured endpoint that enforces bearer‐token authentication, you
#'   can set `api_key` (or the `OLLAMA_API_KEY` environment variable).
#' @inherit chat_openai return
#' @family chatbots
#' @export
#' @examples
#' \dontrun{
#' chat <- chat_ollama(model = "llama3.2")
#' chat$chat("Tell me three jokes about statisticians")
#' }
chat_ollama <- function(
  system_prompt = NULL,
  base_url = "http://localhost:11434",
  model,
  seed = NULL,
  api_args = list(),
  echo = NULL,
  api_key = NULL
) {
  if (!has_ollama(base_url)) {
    cli::cli_abort("Can't find locally running ollama.")
  }

  models <- models_ollama(base_url)$id

  if (missing(model)) {
    cli::cli_abort(c(
      "Must specify {.arg model}.",
      i = "Locally installed models: {.str {models}}."
    ))
  } else if (!model %in% models) {
    cli::cli_abort(
      c(
        "Model {.val {model}} is not installed locally.",
        i = "Run {.code ollama pull {model}} in your terminal or {.run ollamar::pull(\"{model}\")} in R to install the model.",
        i = "See locally installed models with {.run ellmer::models_ollama()}."
      )
    )
  }

  echo <- check_echo(echo)

  provider <- ProviderOllama(
    name = "Ollama",
    base_url = file.path(base_url, "v1"), ## the v1 portion of the path is added for openAI compatible API
    model = model,
    seed = seed,
    extra_args = api_args,
    # ollama doesn't require an API key for local usage, but one might be needed
    # if ollama is served behind a proxy (see #501)
    api_key = api_key %||% Sys.getenv("OLLAMA_API_KEY", "ollama")
  )

  Chat$new(provider = provider, system_prompt = system_prompt, echo = echo)
}

ProviderOllama <- new_class(
  "ProviderOllama",
  parent = ProviderOpenAI,
  properties = list(
    api_key = prop_string(),
    model = prop_string(),
    seed = prop_number_whole(allow_null = TRUE)
  )
)

chat_ollama_test <- function(..., model = "llama3.2:1b") {
  # model: Note that tests require a model with tool capabilities

  skip_if_no_ollama()
  testthat::skip_if_not(
    model %in% models_ollama()$id,
    sprintf("Ollama: model '%s' is not installed", model)
  )

  chat_ollama(..., model = model)
}

skip_if_no_ollama <- function() {
  if (!has_ollama()) {
    testthat::skip("ollama not found")
  }
}

#' @export
#' @rdname chat_ollama
models_ollama <- function(base_url = "http://localhost:11434") {
  req <- request(base_url)
  req <- req_url_path(req, "api/tags")
  resp <- req_perform(req)
  json <- resp_body_json(resp)

  names <- map_chr(json$models, "[[", "name")
  names <- gsub(":latest$", "", names)

  modified_at <- as.POSIXct(map_chr(json$models, "[[", "modified_at"))
  size <- map_dbl(json$models, "[[", "size")

  df <- data.frame(
    id = names,
    created_at = modified_at,
    size = size
  )
  df[order(-xtfrm(df$created_at)), ]
}

has_ollama <- function(base_url = "http://localhost:11434") {
  tryCatch(
    {
      req <- request(base_url)
      req <- req_url_path(req, "api/tags")
      req_perform(req)
      TRUE
    },
    httr2_error = function(cnd) FALSE
  )
}

method(as_json, list(ProviderOllama, TypeObject)) <- function(provider, x) {
  if (x@additional_properties) {
    cli::cli_abort("{.arg .additional_properties} not supported for Ollama.")
  }

  # Unlike OpenAI, Ollama uses the `required` field to list required tool args
  required <- map_lgl(x@properties, function(prop) prop@required)

  compact(list(
    type = "object",
    description = x@description %||% "",
    properties = as_json(provider, x@properties),
    required = as.list(names2(x@properties)[required]),
    additionalProperties = FALSE
  ))
}
`````

## File: R/provider-openai.R
`````r
#' @include provider.R
#' @include content.R
#' @include turns.R
#' @include tools-def.R
NULL

#' Chat with an OpenAI model
#'
#' @description
#' [OpenAI](https://openai.com/) provides a number of chat-based models,
#' mostly under the [ChatGPT](https://chat.openai.com/) brand.
#' Note that a ChatGPT Plus membership does not grant access to the API.
#' You will need to sign up for a developer account (and pay for it) at the
#' [developer platform](https://platform.openai.com).
#'
#' @param system_prompt A system prompt to set the behavior of the assistant.
#' @param base_url The base URL to the endpoint; the default uses OpenAI.
#' @param api_key `r api_key_param("OPENAI_API_KEY")`
#' @param model `r param_model("gpt-4.1", "openai")`
#' @param params Common model parameters, usually created by [params()].
#' @param seed Optional integer seed that ChatGPT uses to try and make output
#'   more reproducible.
#' @param api_args Named list of arbitrary extra arguments appended to the body
#'   of every chat API call. Combined with the body object generated by ellmer
#'   with [modifyList()].
#' @param echo One of the following options:
#'   * `none`: don't emit any output (default when running in a function).
#'   * `text`: echo text output as it streams in (default when running at
#'     the console).
#'   * `all`: echo all input and output.
#'
#'   Note this only affects the `chat()` method.
#' @family chatbots
#' @export
#' @returns A [Chat] object.
#' @examplesIf has_credentials("openai")
#' chat <- chat_openai()
#' chat$chat("
#'   What is the difference between a tibble and a data frame?
#'   Answer with a bulleted list
#' ")
#'
#' chat$chat("Tell me three funny jokes about statisticians")
chat_openai <- function(
  system_prompt = NULL,
  base_url = "https://api.openai.com/v1",
  api_key = openai_key(),
  model = NULL,
  params = NULL,
  seed = lifecycle::deprecated(),
  api_args = list(),
  echo = c("none", "output", "all")
) {
  model <- set_default(model, "gpt-4.1")
  echo <- check_echo(echo)

  params <- params %||% params()
  if (lifecycle::is_present(seed)) {
    lifecycle::deprecate_warn(
      when = "0.2.0",
      what = "chat_openai(seed)",
      with = "chat_openai(params)"
    )
    params$seed <- seed
  }

  provider <- ProviderOpenAI(
    name = "OpenAI",
    base_url = base_url,
    model = model,
    params = params,
    extra_args = api_args,
    api_key = api_key
  )
  Chat$new(provider = provider, system_prompt = system_prompt, echo = echo)
}

chat_openai_test <- function(
  system_prompt = "Be terse.",
  ...,
  model = "gpt-4.1-nano",
  params = NULL
) {
  params <- params %||% params()
  params$seed <- params$seed %||% 1014
  params$temperature <- params$temperature %||% 0

  chat_openai(
    system_prompt = system_prompt,
    model = model,
    params = params,
    ...
  )
}

ProviderOpenAI <- new_class(
  "ProviderOpenAI",
  parent = Provider,
  properties = list(
    api_key = prop_string(),
    # no longer used by OpenAI itself; but subclasses still need it
    seed = prop_number_whole(allow_null = TRUE)
  )
)

openai_key_exists <- function() {
  key_exists("OPENAI_API_KEY")
}

openai_key <- function() {
  key_get("OPENAI_API_KEY")
}

# Base request -----------------------------------------------------------------

method(base_request, ProviderOpenAI) <- function(provider) {
  req <- request(provider@base_url)
  req <- req_auth_bearer_token(req, provider@api_key)
  req <- req_retry(req, max_tries = 2)
  req <- ellmer_req_timeout(req, stream)
  req <- ellmer_req_user_agent(req)
  req <- base_request_error(provider, req)
  req
}

method(base_request_error, ProviderOpenAI) <- function(provider, req) {
  req_error(req, body = function(resp) {
    if (resp_content_type(resp) == "application/json") {
      error <- resp_body_json(resp)$error
      if (is_string(error)) {
        error
      } else if (is.list(error)) {
        error$message
      } else {
        prettify(resp_body_string(resp))
      }
    } else if (resp_content_type(resp) == "text/plain") {
      resp_body_string(resp)
    }
  })
}

# Chat endpoint ----------------------------------------------------------------

method(chat_path, ProviderOpenAI) <- function(provider) {
  "/chat/completions"
}

# https://platform.openai.com/docs/api-reference/chat/create
method(chat_body, ProviderOpenAI) <- function(
  provider,
  stream = TRUE,
  turns = list(),
  tools = list(),
  type = NULL
) {
  messages <- compact(unlist(as_json(provider, turns), recursive = FALSE))
  tools <- as_json(provider, unname(tools))

  if (!is.null(type)) {
    response_format <- list(
      type = "json_schema",
      json_schema = list(
        name = "structured_data",
        schema = as_json(provider, type),
        strict = TRUE
      )
    )
  } else {
    response_format <- NULL
  }

  params <- chat_params(provider, provider@params)
  params$seed <- params$seed %||% provider@seed

  compact(list2(
    messages = messages,
    model = provider@model,
    !!!params,
    stream = stream,
    stream_options = if (stream) list(include_usage = TRUE),
    tools = tools,
    response_format = response_format
  ))
}


method(chat_params, ProviderOpenAI) <- function(provider, params) {
  standardise_params(
    params,
    c(
      temperature = "temperature",
      top_p = "top_p",
      frequency_penalty = "frequency_penalty",
      presence_penalty = "presence_penalty",
      seed = "seed",
      max_tokens = "max_completion_tokens",
      logprobs = "log_probs",
      stop = "stop_sequences"
    )
  )
}

# OpenAI -> ellmer --------------------------------------------------------------

method(stream_parse, ProviderOpenAI) <- function(provider, event) {
  if (is.null(event) || identical(event$data, "[DONE]")) {
    return(NULL)
  }

  jsonlite::parse_json(event$data)
}
method(stream_text, ProviderOpenAI) <- function(provider, event) {
  if (length(event$choices) == 0) {
    NULL
  } else {
    event$choices[[1]]$delta$content
  }
}
method(stream_merge_chunks, ProviderOpenAI) <- function(
  provider,
  result,
  chunk
) {
  if (is.null(result)) {
    chunk
  } else {
    merge_dicts(result, chunk)
  }
}
method(value_turn, ProviderOpenAI) <- function(
  provider,
  result,
  has_type = FALSE
) {
  if (has_name(result$choices[[1]], "delta")) {
    # streaming
    message <- result$choices[[1]]$delta
  } else {
    message <- result$choices[[1]]$message
  }

  if (has_type) {
    if (is_string(message$content)) {
      json <- jsonlite::parse_json(message$content[[1]])
    } else {
      json <- message$content
    }
    content <- list(ContentJson(json))
  } else {
    content <- lapply(message$content, as_content)
  }
  if (has_name(message, "tool_calls")) {
    calls <- lapply(message$tool_calls, function(call) {
      name <- call$`function`$name
      # TODO: record parsing error
      args <- jsonlite::parse_json(call$`function`$arguments)
      ContentToolRequest(name = name, arguments = args, id = call$id)
    })
    content <- c(content, calls)
  }
  tokens <- tokens_log(
    provider,
    input = result$usage$prompt_tokens,
    output = result$usage$completion_tokens
  )
  assistant_turn(
    content,
    json = result,
    tokens = tokens
  )
}

# ellmer -> OpenAI --------------------------------------------------------------

method(as_json, list(ProviderOpenAI, Turn)) <- function(provider, x) {
  if (x@role == "system") {
    list(
      list(role = "system", content = x@contents[[1]]@text)
    )
  } else if (x@role == "user") {
    # Each tool result needs to go in its own message with role "tool"
    is_tool <- map_lgl(x@contents, S7_inherits, ContentToolResult)
    content <- as_json(provider, x@contents[!is_tool])
    if (length(content) > 0) {
      user <- list(list(role = "user", content = content))
    } else {
      user <- list()
    }

    tools <- lapply(x@contents[is_tool], function(tool) {
      list(
        role = "tool",
        content = tool_string(tool),
        tool_call_id = tool@request@id
      )
    })

    c(user, tools)
  } else if (x@role == "assistant") {
    # Tool requests come out of content and go into own argument
    is_tool <- map_lgl(x@contents, is_tool_request)
    content <- as_json(provider, x@contents[!is_tool])
    tool_calls <- as_json(provider, x@contents[is_tool])

    list(
      compact(list(
        role = "assistant",
        content = content,
        tool_calls = tool_calls
      ))
    )
  } else {
    cli::cli_abort("Unknown role {x@role}", .internal = TRUE)
  }
}

method(as_json, list(ProviderOpenAI, ContentText)) <- function(provider, x) {
  list(type = "text", text = x@text)
}

method(as_json, list(ProviderOpenAI, ContentImageRemote)) <- function(
  provider,
  x
) {
  list(type = "image_url", image_url = list(url = x@url))
}

method(as_json, list(ProviderOpenAI, ContentImageInline)) <- function(
  provider,
  x
) {
  list(
    type = "image_url",
    image_url = list(
      url = paste0("data:", x@type, ";base64,", x@data)
    )
  )
}

method(as_json, list(ProviderOpenAI, ContentToolRequest)) <- function(
  provider,
  x
) {
  json_args <- jsonlite::toJSON(x@arguments)
  list(
    id = x@id,
    `function` = list(name = x@name, arguments = json_args),
    type = "function"
  )
}

method(as_json, list(ProviderOpenAI, ToolDef)) <- function(provider, x) {
  list(
    type = "function",
    "function" = compact(list(
      name = x@name,
      description = x@description,
      strict = TRUE,
      parameters = as_json(provider, x@arguments)
    ))
  )
}


method(as_json, list(ProviderOpenAI, TypeObject)) <- function(provider, x) {
  if (x@additional_properties) {
    cli::cli_abort("{.arg .additional_properties} not supported for OpenAI.")
  }

  names <- names2(x@properties)
  properties <- lapply(x@properties, function(x) {
    out <- as_json(provider, x)
    if (!x@required) {
      out$type <- c(out$type, "null")
    }
    out
  })

  names(properties) <- names

  list(
    type = "object",
    description = x@description %||% "",
    properties = properties,
    required = as.list(names),
    additionalProperties = FALSE
  )
}


# Batched requests -------------------------------------------------------------

method(has_batch_support, ProviderOpenAI) <- function(provider) {
  # Only enable for OpenAI, not subclasses
  provider@name == "OpenAI"
}

# https://platform.openai.com/docs/api-reference/batch
method(batch_submit, ProviderOpenAI) <- function(
  provider,
  conversations,
  type = NULL
) {
  path <- withr::local_tempfile()

  # First put the requests in a file
  # https://platform.openai.com/docs/api-reference/batch/request-input
  requests <- map(seq_along(conversations), function(i) {
    body <- chat_body(
      provider,
      stream = FALSE,
      turns = conversations[[i]],
      type = type
    )

    list(
      custom_id = paste0("chat-", i),
      method = "POST",
      url = "/v1/chat/completions",
      body = body
    )
  })
  json <- map_chr(requests, jsonlite::toJSON, auto_unbox = TRUE)
  writeLines(json, path)
  # Then upload it
  uploaded <- openai_upload(provider, path)

  # Now we can submit the
  req <- base_request(provider)
  req <- req_url_path_append(req, "/batches")
  req <- req_body_json(
    req,
    list(
      input_file_id = uploaded$id,
      endpoint = "/v1/chat/completions",
      completion_window = "24h"
    )
  )

  resp <- req_perform(req)
  resp_body_json(resp)
}

# https://platform.openai.com/docs/api-reference/batch/retrieve
openai_upload <- function(provider, path, purpose = "batch") {
  req <- base_request(provider)
  req <- req_url_path_append(req, "/files")
  req <- req_body_multipart(
    req,
    purpose = purpose,
    file = curl::form_file(path)
  )
  req <- req_progress(req, "up")

  resp <- req_perform(req)
  resp_body_json(resp)
}

# https://docs.anthropic.com/en/api/retrieving-message-batches
method(batch_poll, ProviderOpenAI) <- function(provider, batch) {
  req <- base_request(provider)
  req <- req_url_path_append(req, "/batches/", batch$id)

  resp <- req_perform(req)
  resp_body_json(resp)
}
method(batch_status, ProviderOpenAI) <- function(provider, batch) {
  list(
    working = batch$status != "completed",
    n_processing = batch$request_counts$total - batch$request_counts$completed,
    n_succeeded = batch$request_counts$completed,
    n_failed = batch$request_counts$failed
  )
}


# https://docs.anthropic.com/en/api/retrieving-message-batch-results
method(batch_retrieve, ProviderOpenAI) <- function(provider, batch) {
  path <- withr::local_tempfile()

  req <- base_request(provider)
  req <- req_url_path_append(req, "/files/", batch$output_file_id, "/content")
  req <- req_progress(req, "down")
  resp <- req_perform(req, path = path)

  lines <- readLines(path, warn = FALSE)
  json <- lapply(lines, jsonlite::fromJSON, simplifyVector = FALSE)

  ids <- as.numeric(gsub("chat-", "", map_chr(json, "[[", "custom_id")))
  results <- lapply(json, "[[", "response")
  results[order(ids)]
}

method(batch_result_turn, ProviderOpenAI) <- function(
  provider,
  result,
  has_type = FALSE
) {
  if (result$status_code == 200) {
    value_turn(provider, result$body, has_type = has_type)
  } else {
    NULL
  }
}

# Models -----------------------------------------------------------------------

#' @rdname chat_openai
#' @export
models_openai <- function(
  base_url = "https://api.openai.com/v1",
  api_key = openai_key()
) {
  provider <- ProviderOpenAI(
    name = "openai",
    model = "",
    base_url = base_url,
    api_key = api_key
  )

  req <- base_request(provider)
  req <- req_url_path_append(req, "/models")
  resp <- req_perform(req)

  json <- resp_body_json(resp)

  id <- map_chr(json$data, "[[", "id")
  created <- as.Date(.POSIXct(map_int(json$data, "[[", "created")))
  owned_by <- map_chr(json$data, "[[", "owned_by")

  df <- data.frame(
    id = id,
    created_at = created,
    owned_by = owned_by
  )
  df <- cbind(df, match_prices("OpenAI", df$id))
  df[order(-xtfrm(df$created_at)), ]
}
`````

## File: R/provider-openrouter.R
`````r
#' @include provider-openai.R
NULL

#' Chat with one of the many models hosted on OpenRouter
#'
#' @description
#' Sign up at <https://openrouter.ai>.
#'
#' Support for features depends on the underlying model that you use; see
#' <https://openrouter.ai/models> for details.
#'
#' @export
#' @family chatbots
#' @param api_key `r api_key_param("OPENROUTER_API_KEY")`
#' @param model `r param_model("gpt-4o")`
#' @inheritParams chat_openai
#' @inherit chat_openai return
#' @examples
#' \dontrun{
#' chat <- chat_openrouter()
#' chat$chat("Tell me three jokes about statisticians")
#' }
chat_openrouter <- function(
  system_prompt = NULL,
  api_key = openrouter_key(),
  model = NULL,
  seed = NULL,
  api_args = list(),
  echo = c("none", "output", "all")
) {
  model <- set_default(model, "gpt-4o")
  echo <- check_echo(echo)

  if (is_testing() && is.null(seed)) {
    seed <- seed %||% 1014
  }

  provider <- ProviderOpenRouter(
    name = "OpenRouter",
    base_url = "https://openrouter.ai/api/v1",
    model = model,
    seed = seed,
    extra_args = api_args,
    api_key = api_key
  )
  Chat$new(provider = provider, system_prompt = system_prompt, echo = echo)
}

chat_openrouter_test <- function(...) {
  chat_openrouter(..., model = "openai/gpt-4o-mini-2024-07-18")
}

ProviderOpenRouter <- new_class(
  "ProviderOpenRouter",
  parent = ProviderOpenAI,
)

openrouter_key <- function() {
  key_get("OPENROUTER_API_KEY")
}

method(base_request, ProviderOpenRouter) <- function(provider) {
  req <- base_request(super(provider, ProviderOpenAI))
  # https://openrouter.ai/docs/api-keys
  req <- req_headers(
    req,
    `HTTP-Referer` = "https://ellmer.tidyverse.org",
    `X-Title` = "ellmer"
  )

  req
}

method(value_turn, ProviderOpenRouter) <- function(
  provider,
  result,
  has_type = FALSE
) {
  # https://openrouter.ai/docs/errors
  check_openrouter_error(result$error)

  value_turn(
    super(provider, ProviderOpenAI),
    result = result,
    has_type = has_type
  )
}

method(stream_parse, ProviderOpenRouter) <- function(provider, event) {
  if (is.null(event) || identical(event$data, "[DONE]")) {
    return(NULL)
  }

  result <- jsonlite::parse_json(event$data)
  check_openrouter_error(result$error)
  result
}

check_openrouter_error <- function(error, call = caller_env()) {
  if (is.null(error)) {
    return()
  }
  message <- error$message
  if (is.null(error$metadata$raw$data)) {
    details <- NULL
  } else {
    details <- prettify(error$metadata$raw$data)
    # don't line wrap
    details <- gsub(" ", "\u00a0", details, fixed = TRUE)
  }

  abort(
    c("message", i = if (!is.null(details)) details),
    call = call
  )
}

method(chat_resp_stream, ProviderOpenRouter) <- function(provider, resp) {
  repeat {
    event <- resp_stream_sse(resp)
    if (is.null(event)) {
      break
    }

    # https://openrouter.ai/docs/responses#sse-streaming-comments
    if (!identical(event$data, character())) {
      break
    }
    Sys.sleep(0.1)
  }

  event
}

method(as_json, list(ProviderOpenRouter, ContentText)) <- function(
  provider,
  x
) {
  if (identical(x@text, "")) {
    # Tool call requests can include a Content with empty text,
    # but it doesn't like it if you send this back
    NULL
  } else {
    list(type = "text", text = x@text)
  }
}
`````

## File: R/provider-perplexity.R
`````r
#' Chat with a model hosted on perplexity.ai
#'
#' @description
#' Sign up at <https://www.perplexity.ai>.
#'
#' Perplexity AI is a platform for running LLMs that are capable of
#' searching the web in real-time to help them answer questions with
#' information that may not have been available when the model was
#' trained.
#'
#' This function is a lightweight wrapper around [chat_openai()] with
#' the defaults tweaked for Perplexity AI.
#'
#' @export
#' @family chatbots
#' @param api_key `r api_key_param("PERPLEXITY_API_KEY")`
#' @param model `r param_model("llama-3.1-sonar-small-128k-online")`
#' @inheritParams chat_openai
#' @inherit chat_openai return
#' @examples
#' \dontrun{
#' chat <- chat_perplexity()
#' chat$chat("Tell me three jokes about statisticians")
#' }
chat_perplexity <- function(
  system_prompt = NULL,
  base_url = "https://api.perplexity.ai/",
  api_key = perplexity_key(),
  model = NULL,
  seed = NULL,
  api_args = list(),
  echo = NULL
) {
  model <- set_default(model, "llama-3.1-sonar-small-128k-online")

  chat_openai(
    system_prompt = system_prompt,
    base_url = base_url,
    api_key = api_key,
    model = model,
    seed = seed,
    api_args = api_args,
    echo = echo
  )
}

perplexity_key <- function() {
  key_get("PERPLEXITY_API_KEY")
}
`````

## File: R/provider-portkey.R
`````r
#' Chat with a model hosted on PortkeyAI
#'
#' @description
#' [PortkeyAI](https://portkey.ai/docs/product/ai-gateway/universal-api)
#' provides an interface (AI Gateway) to connect through its Universal API to a
#' variety of LLMs providers with a single endpoint.
#'
#' ## Authentication
#' API keys together with configurations of LLM providers are
#' stored inside Portkey application.
#'
#' @family chatbots
#' @param api_key `r api_key_param("PORTKEY_API_KEY")`
#' @param model `r param_model("gpt-4o", "openai")`
#' @param virtual_key A virtual identifier storing LLM provider's API key. See
#'   [documentation](https://portkey.ai/docs/product/ai-gateway/virtual-keys).
#' @export
#' @inheritParams chat_openai
#' @inherit chat_openai return
#' @examples
#' \dontrun{
#' chat <- chat_portkey(virtual_key = Sys.getenv("PORTKEY_VIRTUAL_KEY"))
#' chat$chat("Tell me three jokes about statisticians")
#' }
chat_portkey <- function(
  system_prompt = NULL,
  base_url = "https://api.portkey.ai/v1",
  api_key = portkeyai_key(),
  virtual_key = NULL,
  model = NULL,
  params = NULL,
  api_args = list(),
  echo = NULL
) {
  model <- set_default(model, "gpt-4o")
  echo <- check_echo(echo)

  params <- params %||% params()
  provider <- ProviderPortkeyAI(
    name = "PortkeyAI",
    base_url = base_url,
    model = model,
    params = params,
    extra_args = api_args,
    api_key = api_key,
    virtual_key = virtual_key
  )
  Chat$new(provider = provider, system_prompt = system_prompt, echo = echo)
}

chat_portkey_test <- function(..., model = "gpt-4o-mini", params = NULL) {
  params <- params %||% params()
  if (is_testing()) {
    params$temperature <- params$temperature %||% 0
  }

  chat_portkey(model = model, params = params, ...)
}

ProviderPortkeyAI <- new_class(
  "ProviderPortkeyAI",
  parent = ProviderOpenAI,
  properties = list(
    api_key = prop_string(allow_null = TRUE),
    virtual_key = prop_string(allow_null = TRUE),
    credentials = class_function | NULL,
    model = prop_string()
  )
)

portkeyai_key_exists <- function() {
  key_exists("PORTKEY_API_KEY")
}

portkeyai_key <- function() {
  key_get("PORTKEY_API_KEY")
}

method(base_request, ProviderPortkeyAI) <- function(provider) {
  req <- request(provider@base_url)
  req <- httr2::req_headers(
    req,
    `x-portkey-api-key` = provider@api_key,
    `x-portkey-virtual-key` = provider@virtual_key
  )
  req <- req_retry(req, max_tries = 2)
  req <- ellmer_req_timeout(req, stream)
  req <- ellmer_req_user_agent(req)
  req <- base_request_error(provider, req)
  req
}


#' @export
#' @rdname chat_portkey
models_portkey <- function(
  base_url = "https://api.portkey.ai/v1",
  api_key = portkeyai_key(),
  virtual_key = NULL
) {
  provider <- ProviderPortkeyAI(
    name = "PortkeyAI",
    model = "",
    base_url = base_url,
    api_key = api_key,
    virtual_key = virtual_key
  )

  req <- base_request(provider)
  req <- req_url_path_append(req, "/models")
  resp <- req_perform(req)

  json <- resp_body_json(resp)

  id <- map_chr(json$data, "[[", "id")
  created_at <- as.POSIXct(map_dbl(json$data, "[[", "created_at"))

  df <- data.frame(
    id = id,
    created_at = created_at
  )
  df[order(-xtfrm(df$created_at)), ]
}
`````

## File: R/provider-snowflake.R
`````r
#' @include provider-openai.R
#' @include content.R
NULL

#' Chat with a model hosted on Snowflake
#'
#' @description
#' The Snowflake provider allows you to interact with LLM models available
#' through the [Cortex LLM REST API](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-llm-rest-api).
#'
#' ## Authentication
#'
#' `chat_snowflake()` picks up the following ambient Snowflake credentials:
#'
#' - A static OAuth token defined via the `SNOWFLAKE_TOKEN` environment
#'   variable.
#' - Key-pair authentication credentials defined via the `SNOWFLAKE_USER` and
#'   `SNOWFLAKE_PRIVATE_KEY` (which can be a PEM-encoded private key or a path
#'   to one) environment variables.
#' - Posit Workbench-managed Snowflake credentials for the corresponding
#'   `account`.
#' - Viewer-based credentials on Posit Connect. Requires the \pkg{connectcreds}
#'   package.
#'
#' ## Known limitations
#' Note that Snowflake-hosted models do not support images, tool calling, or
#' structured outputs.
#'
#' See [chat_cortex_analyst()] to chat with the Snowflake Cortex Analyst rather
#' than a general-purpose model.
#'
#' @inheritParams chat_openai
#' @inheritParams chat_cortex_analyst
#' @param model `r param_model("llama3.1-70b")`
#' @inherit chat_openai return
#' @examplesIf has_credentials("cortex")
#' chat <- chat_snowflake()
#' chat$chat("Tell me a joke in the form of a SQL query.")
#' @export
chat_snowflake <- function(
  system_prompt = NULL,
  account = snowflake_account(),
  credentials = NULL,
  model = NULL,
  api_args = list(),
  echo = c("none", "output", "all")
) {
  check_string(account, allow_empty = FALSE)
  model <- set_default(model, "llama3.1-70b")
  echo <- check_echo(echo)

  if (is_list(credentials)) {
    static_credentials <- force(credentials)
    credentials <- function(account) static_credentials
  }
  check_function(credentials, allow_null = TRUE)
  credentials <- credentials %||% default_snowflake_credentials(account)

  provider <- ProviderSnowflakeCortex(
    name = "Snowflake/Cortex",
    base_url = snowflake_url(account),
    account = account,
    credentials = credentials,
    model = model,
    extra_args = api_args,
    # We need an empty api_key for S7 validation.
    api_key = ""
  )

  Chat$new(provider = provider, system_prompt = system_prompt, echo = echo)
}

ProviderSnowflakeCortex <- new_class(
  "ProviderSnowflakeCortex",
  parent = ProviderOpenAI,
  properties = list(
    account = prop_string(),
    credentials = class_function
  )
)

method(base_request, ProviderSnowflakeCortex) <- function(provider) {
  req <- request(provider@base_url)
  req <- ellmer_req_credentials(req, provider@credentials)
  req <- req_retry(req, max_tries = 2)
  req <- ellmer_req_timeout(req, stream)
  # Snowflake uses the User Agent header to identify "parter applications", so
  # identify requests as coming from "r_ellmer" (unless an explicit partner
  # application is set via the ambient SF_PARTNER environment variable).
  req <- ellmer_req_user_agent(req, Sys.getenv("SF_PARTNER"))

  # Snowflake-specific error response handling:
  req <- req_error(req, body = function(resp) resp_body_json(resp)$message)

  req
}

method(chat_path, ProviderSnowflakeCortex) <- function(provider) {
  "/api/v2/cortex/inference:complete"
}

# See: https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-llm-rest-api#api-reference
method(chat_body, ProviderSnowflakeCortex) <- function(
  provider,
  stream = TRUE,
  turns = list(),
  tools = list(),
  type = NULL
) {
  call <- quote(chat_snowflake())
  if (length(tools) != 0) {
    cli::cli_abort("Tool calling is not supported.", call = call)
  }
  if (!is.null(type) != 0) {
    cli::cli_abort("Structured data extraction is not supported.", call = call)
  }
  if (!stream) {
    cli::cli_abort("Non-streaming responses are not supported.", call = call)
  }

  messages <- as_json(provider, turns)
  list(
    messages = messages,
    model = provider@model,
    stream = stream
  )
}

# Snowflake -> ellmer --------------------------------------------------------

# ellmer -> Snowflake --------------------------------------------------------

# Snowflake only supports simple textual messages.

method(as_json, list(ProviderSnowflakeCortex, Turn)) <- function(provider, x) {
  list(
    role = x@role,
    content = as_json(provider, x@contents[[1]])
  )
}

method(as_json, list(ProviderSnowflakeCortex, ContentText)) <- function(
  provider,
  x
) {
  x@text
}

# Utilities ------------------------------------------------------------------

snowflake_account <- function() {
  key_get("SNOWFLAKE_ACCOUNT")
}

snowflake_url <- function(account) {
  paste0("https://", account, ".snowflakecomputing.com")
}

default_snowflake_credentials <- function(account = snowflake_account()) {
  # Detect viewer-based credentials from Posit Connect.
  url <- snowflake_url(account)
  if (is_installed("connectcreds") && connectcreds::has_viewer_token(url)) {
    return(function() {
      token <- connectcreds::connect_viewer_token(url)
      list(
        Authorization = paste("Bearer", token$access_token),
        `X-Snowflake-Authorization-Token-Type` = "OAUTH"
      )
    })
  }

  token <- Sys.getenv("SNOWFLAKE_TOKEN")
  if (nchar(token) != 0) {
    return(function() {
      list(
        Authorization = paste("Bearer", token),
        # See: https://docs.snowflake.com/en/developer-guide/snowflake-rest-api/authentication#using-oauth
        `X-Snowflake-Authorization-Token-Type` = "OAUTH"
      )
    })
  }

  # Support for Snowflake key-pair authentication.
  # See: https://docs.snowflake.com/en/developer-guide/snowflake-rest-api/authentication#generate-a-jwt-token
  user <- Sys.getenv("SNOWFLAKE_USER")
  private_key <- Sys.getenv("SNOWFLAKE_PRIVATE_KEY")
  if (nchar(user) != 0 && nchar(private_key) != 0) {
    check_installed("jose", "for key-pair authentication")
    key <- openssl::read_key(private_key)
    return(function() {
      token <- snowflake_keypair_token(account, user, key)
      list(
        Authorization = paste("Bearer", token),
        `X-Snowflake-Authorization-Token-Type` = "KEYPAIR_JWT"
      )
    })
  }

  # Check for Workbench-managed credentials.
  sf_home <- Sys.getenv("SNOWFLAKE_HOME")
  if (grepl("posit-workbench", sf_home, fixed = TRUE)) {
    token <- workbench_snowflake_token(account, sf_home)
    if (!is.null(token)) {
      return(function() {
        # Ensure we get an up-to-date token.
        token <- workbench_snowflake_token(account, sf_home)
        list(
          Authorization = paste("Bearer", token),
          `X-Snowflake-Authorization-Token-Type` = "OAUTH"
        )
      })
    }
  }

  if (is_testing()) {
    testthat::skip("no Snowflake credentials available")
  }

  cli::cli_abort("No Snowflake credentials are available.")
}

snowflake_keypair_token <- function(
  account,
  user,
  key,
  cache = snowflake_keypair_cache(account, key),
  lifetime = 600L,
  reauth = FALSE
) {
  # Producing a signed JWT is a fairly expensive operation (in the order of
  # ~10ms), but adding a cache speeds this up approximately 500x.
  creds <- cache$get()
  if (reauth || is.null(creds) || creds$expiry < Sys.time()) {
    cache$clear()
    expiry <- Sys.time() + lifetime
    # We can't use openssl::fingerprint() here because it uses a different
    # algorithm.
    fp <- openssl::base64_encode(
      openssl::sha256(openssl::write_der(key$pubkey))
    )
    sub <- toupper(paste0(account, ".", user))
    iss <- paste0(sub, ".SHA256:", fp)
    # Note: Snowflake employs a malformed issuer claim, so we have to inject it
    # manually after jose's validation phase.
    claim <- jwt_claim("dummy", sub, exp = as.integer(expiry))
    claim$iss <- iss
    creds <- list(expiry = expiry, token = jwt_encode_sig(claim, key))
    cache$set(creds)
  }
  creds$token
}

snowflake_keypair_cache <- function(account, key) {
  credentials_cache(key = hash(c("sf", account, openssl::fingerprint(key))))
}
`````

## File: R/provider-vllm.R
`````r
#' @include provider-openai.R
#' @include content.R
NULL

#' Chat with a model hosted by vLLM
#'
#' @description
#' [vLLM](https://docs.vllm.ai/en/latest/) is an open source library that
#' provides an efficient and convenient LLMs model server. You can use
#' `chat_vllm()` to connect to endpoints powered by vLLM.
#'
#' @inheritParams chat_openai
#' @param api_key `r api_key_param("VLLM_API_KEY")`
#' @param model `r param_model(NULL, "vllm")`
#' @inherit chat_openai return
#' @export
#' @examples
#' \dontrun{
#' chat <- chat_vllm("http://my-vllm.com")
#' chat$chat("Tell me three jokes about statisticians")
#' }
chat_vllm <- function(
  base_url,
  system_prompt = NULL,
  model,
  seed = NULL,
  api_args = list(),
  api_key = vllm_key(),
  echo = NULL
) {
  check_string(base_url)
  check_string(api_key)
  if (missing(model)) {
    models <- models_vllm(base_url, api_key)$id
    cli::cli_abort(c(
      "Must specify {.arg model}.",
      i = "Available models: {.str {models}}."
    ))
  }
  echo <- check_echo(echo)

  provider <- ProviderVllm(
    name = "VLLM",
    base_url = base_url,
    model = model,
    seed = seed,
    extra_args = api_args,
    api_key = api_key
  )
  Chat$new(provider = provider, system_prompt = system_prompt, echo = echo)
}

chat_vllm_test <- function(...) {
  chat_vllm(
    base_url = "https://llm.nrp-nautilus.io/",
    ...,
    model = "llama3"
  )
}

ProviderVllm <- new_class(
  "ProviderVllm",
  parent = ProviderOpenAI,
  package = "ellmer",
)

# Just like OpenAI but no strict
method(as_json, list(ProviderVllm, ToolDef)) <- function(provider, x) {
  list(
    type = "function",
    "function" = compact(list(
      name = x@name,
      description = x@description,
      parameters = as_json(provider, x@arguments)
    ))
  )
}

vllm_key <- function() {
  key_get("VLLM_API_KEY")
}

#' @export
#' @rdname chat_vllm
models_vllm <- function(base_url, api_key = vllm_key()) {
  req <- request(base_url)
  req <- req_auth_bearer_token(req, api_key)
  req <- req_url_path(req, "/v1/models")
  resp <- req_perform(req)
  json <- resp_body_json(resp)

  data.frame(
    id = map_chr(json$data, "[[", "id")
    # Not accurate?
    # created = .POSIXct(map_dbl(json$data, "[[", "created")),
    # owned_by = map_chr(json$data, "[[", "owned_by")
  )
}
`````

## File: R/provider.R
`````r
#' @include content.R
NULL

#' A chatbot provider
#'
#' A Provider captures the details of one chatbot service/API. This captures
#' how the API works, not the details of the underlying large language model.
#' Different providers might offer the same (open source) model behind a
#' different API.
#'
#' To add support for a new backend, you will need to subclass `Provider`
#' (adding any additional fields that your provider needs) and then implement
#' the various generics that control the behavior of each provider.
#'
#' @export
#' @param name Name of the provider.
#' @param model Name of the model.
#' @param base_url The base URL for the API.
#' @param params A list of standard parameters created by [params()].
#' @param extra_args Arbitrary extra arguments to be included in the request body.
#' @return An S7 Provider object.
#' @examples
#' Provider(
#'   name = "CoolModels",
#'   model = "my_model",
#'   base_url = "https://cool-models.com"
#' )
Provider <- new_class(
  "Provider",
  properties = list(
    name = prop_string(),
    model = prop_string(),
    base_url = prop_string(),
    params = class_list,
    extra_args = class_list
  )
)

test_provider <- function(name = "", model = "", base_url = "", ...) {
  Provider(name = name, model = model, base_url = base_url, ...)
}

# Create a request------------------------------------

base_request <- new_generic("base_request", "provider", function(provider) {
  S7_dispatch()
})

base_request_error <- new_generic(
  "base_request_error",
  "provider",
  function(provider, req) {
    S7_dispatch()
  }
)

chat_request <- new_generic(
  "chat_request",
  "provider",
  function(
    provider,
    stream = TRUE,
    turns = list(),
    tools = list(),
    type = NULL
  ) {
    S7_dispatch()
  }
)

method(chat_request, Provider) <- function(
  provider,
  stream = TRUE,
  turns = list(),
  tools = list(),
  type = NULL
) {
  req <- base_request(provider)
  req <- req_url_path_append(req, chat_path(provider))

  body <- chat_body(
    provider = provider,
    stream = stream,
    turns = turns,
    tools = tools,
    type = type
  )
  body <- modify_list(body, provider@extra_args)
  req <- req_body_json(req, body)

  req
}

chat_body <- new_generic(
  "chat_body",
  "provider",
  function(
    provider,
    stream = TRUE,
    turns = list(),
    tools = list(),
    type = NULL
  ) {
    S7_dispatch()
  }
)

chat_path <- new_generic("chat_path", "provider", function(provider) {
  S7_dispatch()
})

chat_resp_stream <- new_generic(
  "chat_resp_stream",
  "provider",
  function(provider, resp) {
    S7_dispatch()
  }
)
method(chat_resp_stream, Provider) <- function(provider, resp) {
  resp_stream_sse(resp)
}

chat_params <- new_generic(
  "chat_params",
  "provider",
  function(provider, params) {
    S7_dispatch()
  }
)

# Extract data from streaming results ------------------------------------

stream_parse <- new_generic(
  "stream_parse",
  "provider",
  function(provider, event) {
    S7_dispatch()
  }
)
stream_text <- new_generic(
  "stream_text",
  "provider",
  function(provider, event) {
    S7_dispatch()
  }
)
stream_merge_chunks <- new_generic(
  "stream_merge_chunks",
  "provider",
  function(provider, result, chunk) {
    S7_dispatch()
  }
)

# Extract data from non-streaming results --------------------------------------

value_turn <- new_generic("value_turn", "provider")

# Convert to JSON
as_json <- new_generic("as_json", c("provider", "x"))

method(as_json, list(Provider, class_list)) <- function(provider, x) {
  compact(lapply(x, as_json, provider = provider))
}

method(as_json, list(Provider, ContentJson)) <- function(provider, x) {
  as_json(provider, ContentText("<structured data/>"))
}

# Batch AI ---------------------------------------------------------------

# Does the provider support batch uploads?
has_batch_support <- new_generic(
  "has_batch_support",
  "provider",
  function(provider) {
    S7_dispatch()
  }
)
method(has_batch_support, Provider) <- function(provider) {
  FALSE
}

# Submit a batch, return an object "batch" object that will be passed to
# batch_poll() and batch_retrieve()
batch_submit <- new_generic(
  "batch_submit",
  "provider",
  function(provider, conversations, type = NULL) {
    S7_dispatch()
  }
)

# Get batch status. Returns an opaque list.
batch_poll <- new_generic(
  "batch_poll",
  "provider",
  function(provider, batch) {
    S7_dispatch()
  }
)

# Given batch status, return a standardised list:
# * working - TRUE/FALSE
# * n_processing = number of requests still processing
# * n_succeeded = number of requests that succeeded
# * n_failed = number of requests that failed
batch_status <- new_generic(
  "batch_status",
  "provider",
  function(provider, batch) {
    S7_dispatch()
  }
)

# Download batched results
batch_retrieve <- new_generic(
  "batch_retrieve",
  "provider",
  function(provider, batch) {
    S7_dispatch()
  }
)

# Process a single result. Returns either a turn or NULL, if the turn
# did not succeed
batch_result_turn <- new_generic(
  "batch_result_turn",
  "provider",
  function(provider, result, has_type = FALSE) {
    S7_dispatch()
  }
)

# Pricing ---------------------------------------------------------------------

standardise_model <- new_generic(
  "standardise_model",
  "provider",
  function(provider, model) {
    S7_dispatch()
  }
)

method(standardise_model, Provider) <- function(provider, model) {
  model
}
`````

## File: R/shiny.R
`````r
#' Open a live chat application
#'
#' @description
#'
#' * `live_console()` lets you chat interactively in the console.
#' * `live_browser()` lets you chat interactively in a browser.
#'
#' Note that these functions will mutate the input `chat` object as
#' you chat because your turns will be appended to the history.
#'
#' @param chat A chat object created by [chat_openai()] or friends.
#' @param quiet If `TRUE`, suppresses the initial message that explains how
#'   to use the console.
#' @export
#' @returns (Invisibly) The input `chat`.
#' @examples
#' \dontrun{
#' chat <- chat_anthropic()
#' live_console(chat)
#' live_browser(chat)
#' }
live_console <- function(chat, quiet = FALSE) {
  if (!is_interactive()) {
    cli::cli_abort("The chat console is only available in interactive mode.")
  }

  if (!isTRUE(quiet)) {
    cli::cat_boxx(
      c(
        "Entering chat console.",
        "Use \"\"\" for multi-line input.",
        "Type 'Q' to quit."
      ),
      padding = c(0, 1, 0, 1),
      border_style = "double"
    )
  }

  repeat {
    user_input <- readline(prompt = ">>> ")

    if (user_input == "Q") {
      break
    }

    if (!grepl("\\S", user_input)) {
      next
    }

    if (grepl('^\\s*"""', user_input)) {
      repeat {
        next_input <- readline(prompt = '... ')
        user_input <- paste0(user_input, "\n", next_input)
        if (grepl('"""\\s*$', next_input)) {
          break
        }
      }
      # Strip leading and trailing """, using regex
      user_input <- gsub('^\\s*"""\\s*', '', user_input)
      user_input <- gsub('\\s*"""\\s*$', '', user_input)
    }

    # Process the input using the provided LLM function
    chat$chat(user_input, echo = TRUE)
    cat("\n")
  }

  invisible(chat)
}

#' @export
#' @rdname live_console
live_browser <- function(chat, quiet = FALSE) {
  check_installed("shiny")
  check_installed("shinychat", version = "0.1.1.9001")

  if (!isTRUE(quiet)) {
    cli::cat_boxx(
      c("Entering interactive chat", "Press Ctrl+C to quit."),
      padding = c(0, 1, 0, 1),
      border_style = "double"
    )
  }

  tryCatch(
    shiny::runGadget(shinychat::chat_app(chat, options = list(quiet = TRUE))),
    interrupt = function(cnd) NULL
  )
  invisible(chat)
}
`````

## File: R/tokens.R
`````r
on_load(
  the$tokens <- tokens_row(character(), character(), numeric(), numeric())
)

tokens_log <- function(provider, input = NULL, output = NULL) {
  input <- input %||% 0
  output <- output %||% 0

  model <- standardise_model(provider, provider@model)

  name <- function(provider, model) paste0(provider, "/", model)
  i <- tokens_match(provider@name, model, the$tokens$provider, the$tokens$model)

  if (is.na(i)) {
    new_row <- tokens_row(provider@name, model, input, output)
    the$tokens <- rbind(the$tokens, new_row)
  } else {
    the$tokens$input[i] <- the$tokens$input[i] + input
    the$tokens$output[i] <- the$tokens$output[i] + output
  }

  # Returns value to be passed to Turn
  c(input, output)
}

tokens_row <- function(provider, model, input, output) {
  data.frame(provider = provider, model = model, input = input, output = output)
}

tokens_match <- function(
  provider_needle,
  model_needle,
  provider_haystack,
  model_haystack
) {
  match(
    paste0(provider_needle, "/", model_needle),
    paste0(provider_haystack, "/", model_haystack)
  )
}


local_tokens <- function(frame = parent.frame()) {
  old <- the$tokens
  the$tokens <- tokens_row(character(), character(), numeric(), numeric())

  defer(the$tokens <- old, env = frame)
}

#' Report on token usage in the current session
#'
#' Call this function to find out the cumulative number of tokens that you
#' have sent and recieved in the current session. The price will be shown
#' if known.
#'
#' @export
#' @return A data frame
#' @examples
#' token_usage()
token_usage <- function() {
  if (nrow(the$tokens) == 0) {
    cli::cli_inform(c(x = "No recorded usage in this session"))
    return(invisible(the$tokens))
  }

  out <- the$tokens
  out$price <- get_token_cost(out$provider, out$model, out$input, out$output)
  out
}

# Cost ----------------------------------------------------------------------

get_token_cost <- function(provider, model, input, output) {
  idx <- tokens_match(provider, model, prices$provider, prices$model)

  input_price <- input * prices$input[idx] / 1e6
  output_price <- output * prices$output[idx] / 1e6
  dollars(input_price + output_price)
}

dollars <- function(x) {
  structure(x, class = c("ellmer_dollars", "numeric"))
}
#' @export
format.ellmer_dollars <- function(x, ...) {
  paste0(ifelse(is.na(x), "", "$"), format(unclass(round(x, 2)), nsmall = 2))
}
#' @export
print.ellmer_dollars <- function(x, ...) {
  print(format(x), quote = FALSE)
  invisible(x)
}
`````

## File: R/tools-def-auto.R
`````r
#' Create metadata for a tool
#'
#' @description
#' In order to use a function as a tool in a chat, you need to craft the right
#' call to [tool()]. This function helps you do that for documented functions by
#' extracting the function's R documentation and creating a `tool()` call for
#' you, using an LLM. It's meant to be used interactively while writing your
#' code, not as part of your final code.
#'
#' If the function has package documentation, that will be used. Otherwise, if
#' the source code of the function can be automatically detected, then the
#' comments immediately preceding the function are used (especially helpful if
#' those are Roxygen comments). If neither are available, then just the function
#' signature is used.
#'
#' Note that this function is inherently imperfect. It can't handle all possible
#' R functions, because not all parameters are suitable for use in a tool call
#' (for example, because they're not serializable to simple JSON objects). The
#' documentation might not specify the expected shape of arguments to the level
#' of detail that would allow an exact JSON schema to be generated. Please be
#' sure to review the generated code before using it!
#'
#' @param topic A symbol or string literal naming the function to create
#'   metadata for. Can also be an expression of the form `pkg::fun`.
#' @param chat A `Chat` object used to generate the output. If `NULL`
#'   (the default) uses [chat_openai()].
#' @param model `lifecycle::badge("deprecated")` Formally used for definining
#'   the model used by the chat. Now supply `chat` instead.
#' @param echo Emit the registration code to the console. Defaults to `TRUE` in
#'   interactive sessions.
#' @param verbose If `TRUE`, print the input we send to the LLM, which may be
#'   useful for debugging unexpectedly poor results.
#'
#' @return A `register_tool` call that you can copy and paste into your code.
#'   Returned invisibly if `echo` is `TRUE`.
#'
#' @examples
#' \dontrun{
#'   # These are all equivalent
#'   create_tool_def(rnorm)
#'   create_tool_def(stats::rnorm)
#'   create_tool_def("rnorm")
#'   create_tool_def("rnorm", chat = chat_azure_openai())
#' }
#'
#' @export
create_tool_def <- function(
  topic,
  chat = NULL,
  model = deprecated(),
  echo = interactive(),
  verbose = FALSE
) {
  expr <- enexpr(topic)

  check_exclusive(model, chat, .require = FALSE)
  if (lifecycle::is_present(model)) {
    lifecycle::deprecate_warn(
      when = "1.0.0",
      what = "create_tool_def(model)",
      with = "create_tool_def(chat)"
    )
    chat <- chat_openai(model = model)
  }
  if (is.null(chat)) {
    chat <- chat_openai()
  } else if (is_chat(chat)) {
    chat <- chat$clone()
  } else {
    stop_input_type(chat, "a <Chat> object", allow_null = TRUE)
  }
  check_echo(echo)
  check_bool(verbose)

  tool_prompt <- read_file(system.file("tool_prompt.md", package = "ellmer"))
  chat$set_system_prompt(tool_prompt)

  pkg <- NULL
  fun <- format(expr)

  # Ensure `expr` is a string literal, a symbol, or an expression of the form
  # `pkg::fun` or `pkg:::fun`.
  if (is_call(expr)) {
    if (
      !identical(expr[[1]], quote(`::`)) ||
        !is_symbol(expr[[2]]) ||
        !is_symbol(expr[[3]])
    ) {
      cli::cli_abort(
        "Expected a symbol or a string literal, or an expression of the form `pkg::fun` or `pkg:::fun`."
      )
    }
    pkg <- as.character(expr[[2]])
    fun <- as.character(expr[[3]])
  } else if (is_symbol(expr)) {
    fun <- as.character(expr)
  } else if (!is_string(expr)) {
    cli::cli_abort(
      "Expected a symbol or a string literal, or an expression of the form `pkg::fun` or `pkg:::fun`."
    )
  }

  help_text <- get_help_text(fun, pkg)
  if (is.null(help_text)) {
    # Package help documentation wasn't found; try comments instead
    help_text <- paste(extract_comments_and_signature(topic), collapse = "\n")
  }

  topic_str <- format(expr)

  payload <- paste0(
    "Function name: ",
    topic_str,
    "\n\nFunction documentation:\n\n",
    help_text
  )

  if (isTRUE(verbose)) {
    cli::cli_rule(cli::style_bold("Prompt"))
    message(payload, "\n\n")
    cli::cli_rule(cli::style_bold("Response"))
  }

  chat$chat(payload, echo = echo)
}

help_to_text <- function(help_files) {
  file_contents <- NULL
  fake_pager <- function(files, header, title, delete.file) {
    if (delete.file) {
      on.exit(unlink(files))
    }

    for (file in files) {
      file_contents <<- c(
        file_contents,
        readLines(files, warn = FALSE),
        "\n"
      )
    }
  }

  op <- options(pager = fake_pager)
  on.exit(options(op), add = TRUE)
  rd_opts <- tools::Rd2txt_options(underline_titles = FALSE)
  on.exit(tools::Rd2txt_options(rd_opts), add = TRUE)

  print(help_files)

  paste(file_contents, collapse = "\n")
}

get_help_text <- function(topic, package = NULL) {
  # The extra parens around topic and package are to ensure that they're
  # evaluated; see the last example on ?utils::help.
  help_files <- utils::help((topic), package = (package), help_type = "text")
  if (length(help_files) == 0) {
    return(NULL)
  } else {
    help_to_text(help_files)
  }
}

# If the function source cannot be found, at least provide the function
# signature
get_signature <- function(func) {
  args <- utils::capture.output(args(func))
  paste0(paste0(args[-length(args)], collapse = "\n"), " ...")
}

is_file_accessible <- function(filename) {
  !is.null(filename) && file.access(filename, 4) == 0
}

find_comments_start <- function(lines, start_line) {
  while (start_line > 1 && grepl("^\\s*#", lines[start_line - 1])) {
    start_line <- start_line - 1
  }
  start_line
}

extract_comments <- function(filename, start_line) {
  lines <- readLines(filename)
  comments_start <- find_comments_start(lines, start_line)
  if (comments_start == start_line) {
    return(NULL)
  }
  comments_lines <- lines[comments_start:(start_line - 1)]
  paste(comments_lines, collapse = "\n")
}

# Given a function, extract the comments (if any) and function signature. Relies
# on srcref information, so functions entered at the repl will be missing
# documentation.
extract_comments_and_signature <- function(func) {
  src <- attr(func, "srcref")
  sig <- get_signature(func)

  if (is.null(src)) {
    return(sig)
  }

  filename <- attr(src, "srcfile")$filename
  if (!is_file_accessible(filename)) {
    return(sig)
  }

  start_line <- src[1]
  end_line <- src[3]
  comments <- extract_comments(filename, start_line)
  if (is.null(comments)) {
    return(sig)
  }

  paste0(comments, "\n", sig)
}
`````

## File: R/tools-def.R
`````r
#' @include utils-S7.R
#' @include types.R
NULL

#' Define a tool
#'
#' @description
#' Define an R function for use by a chatbot. The function will always be
#' run in the current R instance.
#'
#' Learn more in `vignette("tool-calling")`.
#'
#' @param .fun The function to be invoked when the tool is called. The return
#'   value of the function is sent back to the chatbot.
#'
#'   Expert users can customize the tool result by returning a
#'   [ContentToolResult] object.
#' @param .name The name of the function.
#' @param .description A detailed description of what the function does.
#'   Generally, the more information that you can provide here, the better.
#' @param .annotations Additional properties that describe the tool and its
#'   behavior. Usually created by [tool_annotations()], where you can find a
#'   description of the annotation properties recommended by the [Model Context
#'   Protocol](https://modelcontextprotocol.io/introduction).
#' @param .convert Should JSON inputs be automatically convert to their
#'   R data type equivalents? Defaults to `TRUE`.
#' @param ... Name-type pairs that define the arguments accepted by the
#'   function. Each element should be created by a [`type_*()`][type_boolean]
#'   function.
#' @return An S7 `ToolDef` object.
#' @examplesIf has_credentials("openai")
#'
#' # First define the metadata that the model uses to figure out when to
#' # call the tool
#' tool_rnorm <- tool(
#'   rnorm,
#'   "Drawn numbers from a random normal distribution",
#'   n = type_integer("The number of observations. Must be a positive integer."),
#'   mean = type_number("The mean value of the distribution."),
#'   sd = type_number("The standard deviation of the distribution. Must be a non-negative number."),
#'   .annotations = tool_annotations(
#'     title = "Draw Random Normal Numbers",
#'     read_only_hint = TRUE,
#'     open_world_hint = FALSE
#'   )
#' )
#' chat <- chat_openai()
#' # Then register it
#' chat$register_tool(tool_rnorm)
#'
#' # Then ask a question that needs it.
#' chat$chat("
#'   Give me five numbers from a random normal distribution.
#' ")
#'
#' # Look at the chat history to see how tool calling works:
#' # Assistant sends a tool request which is evaluated locally and
#' # results are send back in a tool result.
#'
#' @family tool calling helpers
#' @export
tool <- function(
  .fun,
  .description,
  ...,
  .name = NULL,
  .convert = TRUE,
  .annotations = list()
) {
  if (is.null(.name)) {
    fun_expr <- enexpr(.fun)
    if (is.name(fun_expr)) {
      .name <- as.character(fun_expr)
    } else {
      .name <- unique_tool_name()
    }
  }
  ToolDef(
    fun = .fun,
    name = .name,
    description = .description,
    arguments = type_object(...),
    convert = .convert,
    annotations = .annotations
  )
}

#' Tool annotations
#'
#' @description
#' Tool annotations are additional properties that, when passed to the
#' `.annotations` argument of [tool()], provide additional information about the
#' tool and its behavior. This information can be used for display to users, for
#' example in a Shiny app or another user interface.
#'
#' The annotations in `tool_annotations()` are drawn from the [Model Context
#' Protocol](https://modelcontextprotocol.io/introduction) and are considered
#' *hints*. Tool authors should use these annotations to communicate tool
#' properties, but users should note that these annotations are not guaranteed.
#'
#' @examples
#' # See ?tool() for a full example using this function.
#' # We're creating a tool around R's `rnorm()` function to allow the chatbot to
#' # generate random numbers from a normal distribution.
#' tool_rnorm <- tool(
#'   rnorm,
#'   # Describe the tool function to the LLM
#'   .description = "Drawn numbers from a random normal distribution",
#'   # Describe the parameters used by the tool function
#'   n = type_integer("The number of observations. Must be a positive integer."),
#'   mean = type_number("The mean value of the distribution."),
#'   sd = type_number("The standard deviation of the distribution. Must be a non-negative number."),
#'   # Tool annotations optionally provide additional context to the LLM
#'   .annotations = tool_annotations(
#'     title = "Draw Random Normal Numbers",
#'     read_only_hint = TRUE, # the tool does not modify any state
#'     open_world_hint = FALSE # the tool does not interact with the outside world
#'   )
#' )
#'
#' @param title A human-readable title for the tool.
#' @param read_only_hint If `TRUE`, the tool does not modify its environment.
#' @param open_world_hint If `TRUE`, the tool may interact with an "open world"
#'   of external entities. If `FALSE`, the tool's domain of interaction is
#'   closed. For example, the world of a web search tool is open, but the world
#'   of a memory tool is not.
#' @param idempotent_hint If `TRUE`, calling the tool repeatedly with the same
#'   arguments will have no additional effect on its environment. (Only
#'   meaningful when `read_only_hint` is `FALSE`.)
#' @param destructive_hint If `TRUE`, the tool may perform destructive updates
#'   to its environment, otherwise it only performs additive updates. (Only
#'   meaningful when `read_only_hint` is `FALSE`.)
#' @param ... Additional named parameters to include in the tool annotations.
#'
#' @return A list of tool annotations.
#'
#' @family tool calling helpers
#' @export
tool_annotations <- function(
  title = NULL,
  read_only_hint = NULL,
  open_world_hint = NULL,
  idempotent_hint = NULL,
  destructive_hint = NULL,
  ...
) {
  # Snake-cased names and descriptions from the MCP 2025-03-26 Schema
  # https://github.com/modelcontextprotocol/specification/blob/72516795/schema/2025-03-26/schema.json#L2050-L2074
  check_character(title, allow_null = TRUE)
  check_bool(read_only_hint, allow_null = TRUE)
  check_bool(open_world_hint, allow_null = TRUE)
  check_bool(idempotent_hint, allow_null = TRUE)
  check_bool(destructive_hint, allow_null = TRUE)

  compact(list2(
    title = title,
    read_only_hint = read_only_hint,
    open_world_hint = open_world_hint,
    idempotent_hint = idempotent_hint,
    destructive_hint = destructive_hint,
    ...
  ))
}

#' Reject a tool call
#'
#' @description
#' Throws an error to reject a tool call. `tool_reject()` can be used within the
#' tool function to indicate that the tool call should not be processed.
#' `tool_reject()` can also be called in an `Chat$on_tool_request()` callback.
#'  When used in the callback, the tool call is rejected before the tool
#' function is invoked.
#'
#' Here's an example where `utils::askYesNo()` is used to ask the user for
#' permission before accessing their current working directory. This happens
#' directly in the tool function and is appropriate when you write the tool
#' definition and know exactly how it will be called.
#'
#' ```r
#' chat <- chat_openai(model = "gpt-4.1-nano")
#'
#' list_files <- function() {
#'   allow_read <- utils::askYesNo(
#'     "Would you like to allow access to your current directory?"
#'   )
#'   if (isTRUE(allow_read)) {
#'     dir(pattern = "[.](r|R|csv)$")
#'   } else {
#'     tool_reject()
#'   }
#' }
#'
#' chat$register_tool(tool(
#'   list_files,
#'   "List files in the user's current directory"
#' ))
#'
#' chat$chat("What files are available in my current directory?")
#' #> [tool call] list_files()
#' #> Would you like to allow access to your current directory? (Yes/no/cancel) no
#' #> #> Error: Tool call rejected. The user has chosen to disallow the tool #' call.
#' #> It seems I am unable to access the files in your current directory right now.
#' #> If you can tell me what specific files you're looking for or if you can #' provide
#' #> the list, I can assist you further.
#'
#' chat$chat("Try again.")
#' #> [tool call] list_files()
#' #> Would you like to allow access to your current directory? (Yes/no/cancel) yes
#' #> #> app.R
#' #> #> data.csv
#' #> The files available in your current directory are "app.R" and "data.csv".
#' ```
#'
#' You can achieve a similar experience with tools written by others by using a
#' `tool_request` callback. In the next example, imagine the tool is provided by
#' a third-party package. This example implements a simple menu to ask the user
#' for consent before running *any*  tool.
#'
#' ```r
#' packaged_list_files_tool <- tool(
#'   function() dir(pattern = "[.](r|R|csv)$"),
#'   "List files in the user's current directory"
#' )
#'
#' chat <- chat_openai(model = "gpt-4.1-nano")
#' chat$register_tool(packaged_list_files_tool)
#'
#' always_allowed <- c()
#'
#' # ContentToolRequest
#' chat$on_tool_request(function(request) {
#'   if (request@name %in% always_allowed) return()
#'
#'   answer <- utils::menu(
#'     title = sprintf("Allow tool `%s()` to run?", request@name),
#'     choices = c("Always", "Once", "No"),
#'     graphics = FALSE
#'   )
#'
#'   if (answer == 1) {
#'     always_allowed <<- append(always_allowed, request@name)
#'   } else if (answer %in% c(0, 3)) {
#'     tool_reject()
#'   }
#' })
#'
#' # Try choosing different answers to the menu each time
#' chat$chat("What files are available in my current directory?")
#' chat$chat("How about now?")
#' chat$chat("And again now?")
#' ```
#'
#' @param reason A character string describing the reason for rejecting the
#'   tool call.
#' @return Throws an error of class `ellmer_tool_reject` with the provided
#'   reason.
#'
#' @family tool calling helpers
#' @export
tool_reject <- function(
  reason = "The user has chosen to disallow the tool call."
) {
  check_string(reason)

  rlang::abort(
    paste("Tool call rejected.", reason),
    class = "ellmer_tool_reject"
  )
}

ToolDef <- new_class(
  "ToolDef",
  properties = list(
    name = prop_string(),
    fun = class_function,
    description = prop_string(),
    arguments = TypeObject,
    convert = prop_bool(TRUE),
    annotations = class_list
  )
)
unique_tool_name <- function() {
  the$cur_tool_id <- (the$cur_tool_id %||% 0) + 1
  sprintf("tool_%03d", the$cur_tool_id)
}
`````

## File: R/turns.R
`````r
#' @include utils-S7.R
NULL

#' A user or assistant turn
#'
#' @description
#' Every conversation with a chatbot consists of pairs of user and assistant
#' turns, corresponding to an HTTP request and response. These turns are
#' represented by the `Turn` object, which contains a list of [Content]s representing
#' the individual messages within the turn. These might be text, images, tool
#' requests (assistant only), or tool responses (user only).
#'
#' Note that a call to `$chat()` and related functions may result in multiple
#' user-assistant turn cycles. For example, if you have registered tools,
#' ellmer will automatically handle the tool calling loop, which may result in
#' any number of additional cycles. Learn more about tool calling in
#' `vignette("tool-calling")`.
#'
#' @param role Either "user", "assistant", or "system".
#' @param contents A list of [Content] objects.
#' @param json The serialized JSON corresponding to the underlying data of
#'   the turns. Currently only provided for assistant.
#'
#'   This is useful if there's information returned by the provider that ellmer
#'   doesn't otherwise expose.
#' @param tokens A numeric vector of length 2 representing the number of
#'   input and output tokens (respectively) used in this turn. Currently
#'   only recorded for assistant turns.
#' @export
#' @return An S7 `Turn` object
#' @examples
#' Turn(role = "user", contents = list(ContentText("Hello, world!")))
Turn <- new_class(
  "Turn",
  properties = list(
    role = prop_string(),
    contents = prop_list_of(Content),
    json = class_list,
    tokens = new_property(
      class_numeric,
      default = c(NA_real_, NA_real_),
      validator = function(value) {
        if (length(value) != 2) {
          "must be length two"
        }
      }
    ),
    text = new_property(
      class = class_character,
      getter = function(self) contents_text(self)
    )
  ),
  constructor = function(
    role,
    contents = list(),
    json = list(),
    tokens = c(0, 0)
  ) {
    if (is.character(contents)) {
      contents <- list(ContentText(paste0(contents, collapse = "\n")))
    }
    new_object(
      S7_object(),
      role = role,
      contents = contents,
      json = json,
      tokens = tokens
    )
  }
)
method(format, Turn) <- function(x, ...) {
  contents <- map_chr(x@contents, format, ...)
  paste0(contents, "\n", collapse = "")
}
method(contents_text, Turn) <- function(content) {
  paste0(unlist(lapply(content@contents, contents_text)), collapse = "")
}
method(contents_html, Turn) <- function(content) {
  paste0(unlist(lapply(content@contents, contents_html)), collapse = "\n")
}
method(contents_markdown, Turn) <- function(content) {
  paste0(unlist(lapply(content@contents, contents_markdown)), collapse = "\n\n")
}

method(print, Turn) <- function(x, ...) {
  cat(paste_c("<Turn: ", color_role(x@role), ">\n"))
  cat(format(x))
  invisible(x)
}

assistant_turn <- function(...) {
  Turn(role = "assistant", ...)
}

user_turn <- function(..., .call = caller_env()) {
  as_user_turn(list2(...), call = .call, arg = "...")
}

as_user_turn <- function(contents, call = caller_env(), arg = "...") {
  if (length(contents) == 0) {
    cli::cli_abort("{.arg {arg}} must contain at least one input.", call = call)
  }
  if (is_named(contents)) {
    cli::cli_abort("{.arg {arg}} must be unnamed.", call = call)
  }

  contents <- lapply(contents, as_content, error_call = call, error_arg = arg)
  Turn("user", contents)
}

as_user_turns <- function(
  prompts,
  call = caller_env(),
  arg = caller_arg(prompts)
) {
  if (!is.list(prompts) && !is_prompt(prompts)) {
    stop_input_type(prompts, "a list or prompt", call = call, arg = arg)
  }
  turns <- map(seq_along(prompts), function(i) {
    this_arg <- paste0(arg, "[[", i, "]]")
    as_user_turn(prompts[[i]], call = call, arg = this_arg)
  })

  turns
}

is_system_prompt <- function(x) {
  x@role == "system"
}

check_turn <- function(x, call = caller_env(), arg = caller_arg(x)) {
  if (!S7_inherits(x, Turn)) {
    stop_input_type(x, "a <Turn>", call = call, arg = arg)
  }
}

normalize_turns <- function(
  turns = NULL,
  system_prompt = NULL,
  overwrite = FALSE,
  error_call = caller_env()
) {
  check_string(system_prompt, allow_null = TRUE)

  if (!is.null(turns)) {
    if (!is.list(turns) || is_named(turns)) {
      stop_input_type(
        turns,
        "an unnamed list",
        allow_null = TRUE,
        call = error_call
      )
    }
    correct_class <- map_lgl(turns, S7_inherits, Turn)
    if (!all(correct_class)) {
      cli::cli_abort("Every element of {.arg turns} must be a `turn`.")
    }
  } else {
    turns <- list()
  }

  if (!is.null(system_prompt)) {
    system_turn <- Turn("system", system_prompt)

    # No turns; start with just the system prompt
    if (length(turns) == 0) {
      turns <- list(system_turn)
    } else if (turns[[1]]@role != "system") {
      turns <- c(list(system_turn), turns)
    } else if (overwrite || identical(turns[[1]], system_turn)) {
      # Duplicate system prompt; don't need to do anything
    } else {
      cli::cli_abort(
        "`system_prompt` and `turns[[1]]` can't contain conflicting system prompts.",
        call = error_call
      )
    }
  }

  turns
}
`````

## File: R/types.R
`````r
#' @include utils-S7.R
NULL

#' Type definitions for function calling and structured data extraction.
#'
#' These S7 classes are provided for use by package devlopers who are
#' extending ellmer. In every day use, use [type_boolean()] and friends.
#'
#' @name Type
#' @inheritParams type_boolean
#' @return S7 objects inheriting from `Type`
#' @examples
#' TypeBasic(type = "boolean")
#' TypeArray(items = TypeBasic(type = "boolean"))
NULL

Type <- new_class(
  "Type",
  properties = list(
    description = prop_string(allow_null = TRUE),
    required = prop_bool(TRUE)
  )
)

#' @export
#' @rdname Type
#' @param type Basic type name. Must be one of `boolean`, `integer`,
#'   `number`, or `string`.
TypeBasic <- new_class(
  "TypeBasic",
  Type,
  properties = list(
    type = prop_string()
  )
)

#' @export
#' @rdname Type
TypeEnum <- new_class(
  "TypeEnum",
  Type,
  properties = list(
    values = class_character
  )
)

#' @export
#' @rdname Type
TypeArray <- new_class(
  "TypeArray",
  Type,
  properties = list(
    items = Type
  )
)

#' @export
#' @rdname Type
#' @param properties Named list of properties stored inside the object.
#'   Each element should be an S7 `Type` object.`
TypeObject <- new_class(
  "TypeObject",
  Type,
  properties = list(
    properties = prop_list_of(Type, names = "all"),
    additional_properties = prop_bool(TRUE)
  )
)

#' Type specifications
#'
#' @description
#' These functions specify object types in a way that chatbots understand and
#' are used for tool calling and structured data extraction. Their names are
#' based on the [JSON schema](https://json-schema.org), which is what the APIs
#' expect behind the scenes. The translation from R concepts to these types is
#' fairly straightforward.
#'
#' * `type_boolean()`, `type_integer()`, `type_number()`, and `type_string()`
#'   each represent scalars. These are equivalent to length-1 logical,
#'   integer, double, and character vectors (respectively).
#'
#' * `type_enum()` is equivalent to a length-1 factor; it is a string that can
#'   only take the specified values.
#'
#' * `type_array()` is equivalent to a vector in R. You can use it to represent
#'   an atomic vector: e.g. `type_array(items = type_boolean())` is equivalent
#'   to a logical vector and `type_array(items = type_string())` is equivalent
#'   to a character vector). You can also use it to represent a list of more
#'   complicated types where every element is the same type (R has no base
#'   equivalent to this), e.g. `type_array(items = type_array(items = type_string()))`
#'   represents a list of character vectors.
#'
#' * `type_object()` is equivalent to a named list in R, but where every element
#'   must have the specified type. For example,
#'   `type_object(a = type_string(), b = type_array(type_integer()))` is
#'   equivalent to a list with an element called `a` that is a string and
#'   an element called `b` that is an integer vector.
#'
#' @param description,.description The purpose of the component. This is
#'   used by the LLM to determine what values to pass to the tool or what
#'   values to extract in the structured data, so the more detail that you can
#'   provide here, the better.
#' @param required,.required Is the component or argument required?
#'
#'   In type descriptions for structured data, if `required = FALSE` and the
#'   component does not exist in the data, the LLM may hallucinate a value. Only
#'   applies when the element is nested inside of a `type_object()`.
#'
#'   In tool definitions, `required = TRUE` signals that the LLM should always
#'   provide a value. Arguments with `required = FALSE` should have a default
#'   value in the tool function's definition. If the LLM does not provide a
#'   value, the default value will be used.
#' @export
#' @examples
#' # An integer vector
#' type_array(items = type_integer())
#'
#' # The closest equivalent to a data frame is an array of objects
#' type_array(items = type_object(
#'    x = type_boolean(),
#'    y = type_string(),
#'    z = type_number()
#' ))
#'
#' # There's no specific type for dates, but you use a string with the
#' # requested format in the description (it's not gauranteed that you'll
#' # get this format back, but you should most of the time)
#' type_string("The creation date, in YYYY-MM-DD format.")
#' type_string("The update date, in dd/mm/yyyy format.")
type_boolean <- function(description = NULL, required = TRUE) {
  TypeBasic(type = "boolean", description = description, required = required)
}
#' @export
#' @rdname type_boolean
type_integer <- function(description = NULL, required = TRUE) {
  TypeBasic(type = "integer", description = description, required = required)
}
#' @export
#' @rdname type_boolean
type_number <- function(description = NULL, required = TRUE) {
  TypeBasic(type = "number", description = description, required = required)
}
#' @export
#' @rdname type_boolean
type_string <- function(description = NULL, required = TRUE) {
  TypeBasic(type = "string", description = description, required = required)
}

#' @param values Character vector of permitted values.
#' @export
#' @rdname type_boolean
type_enum <- function(description = NULL, values, required = TRUE) {
  TypeEnum(values = values, description = description, required = required)
}

#' @param items The type of the array items. Can be created by any of the
#'   `type_` function.
#' @export
#' @rdname type_boolean
type_array <- function(description = NULL, items, required = TRUE) {
  TypeArray(items = items, description = description, required = required)
}

#' @param ... Name-type pairs defineing the components that the object must
#'   possess.
#' @param .additional_properties Can the object have arbitrary additional
#'   properties that are not explicitly listed? Only supported by Claude.
#' @export
#' @rdname type_boolean
type_object <- function(
  .description = NULL,
  ...,
  .required = TRUE,
  .additional_properties = FALSE
) {
  TypeObject(
    properties = list2(...),
    description = .description,
    required = .required,
    additional_properties = .additional_properties
  )
}
`````

## File: R/utils-callbacks.R
`````r
#' Callback Manager
#'
#' A simple class to manage a collection of callback functions that can be
#' invoked sequentially with a single call to `$invoke()` with an object or data
#' to pass to the callback functions. Callbacks must take at least one argument
#' are invoked in reverse order of their registration.
#'
#' @noRd
CallbackManager <- R6Class(
  "CallbackManager",

  public = list(
    initialize = function(args = NULL) {
      private$args <- args
    },

    #' @description Add a callback function.
    #' @param callback A function to be called.
    #' @return A function that can be called to remove the callback.
    add = function(callback, call = caller_env()) {
      check_function2(callback, args = private$args, call = call)

      id <- private$next_id()
      private$callbacks[[id]] <- callback

      fn_remove <- function() {
        private$callbacks[[id]] <- NULL
        invisible()
      }
      invisible(fn_remove)
    },

    #' @description
    #' Invoke all registered callbacks with the provided arguments. Callbacks
    #' are invoked in reverse order of registration (last-in first-evaluated).
    #'
    #' @param ... Arguments to pass to the callbacks.
    #' @returns Nothing, callbacks are invoked for side effects).
    invoke = function(...) {
      if (length(private$callbacks) == 0) {
        return(invisible(NULL))
      }

      # Invoke callbacks in reverse insertion order
      for (id in rev(as.integer(names(private$callbacks)))) {
        res <- private$callbacks[[as.character(id)]](...)
        if (promises::is.promise(res)) {
          cli::cli_abort(c(
            "Can't use async callbacks with `$chat()` or `$stream()`.",
            i = "Async callbacks are supported, but you must use `$chat_async()` or `$stream_async()`."
          ))
        }
      }

      invisible(NULL)
    },

    #' @description
    #' Invoke all registered callbacks asynchronously with the provided
    #' arguments. As with `$invoke()`, callbacks are invoked in reverse order of
    #' registration (last-in first-evaluated).
    #'
    #' @param ... Arguments to pass to the callbacks.
    #' @returns Nothing, callbacks are invoked for side effects).
    invoke_async = async_method(function(self, private, ...) {
      if (length(private$callbacks) == 0) {
        return(invisible(NULL))
      }

      # Invoke callbacks in reverse insertion order
      for (id in rev(as.integer(names(private$callbacks)))) {
        coro::await(exec(private$callbacks[[as.character(id)]], ...))
      }

      invisible(NULL)
    }),

    #' @description Get the number of registered callbacks.
    #' @return Integer count of callbacks.
    count = function() {
      length(private$callbacks)
    },

    #' @description Clear all registered callbacks.
    clear = function() {
      private$callbacks <- list()
      invisible(NULL)
    },

    #' @describeIn Get callback list
    get_callbacks = function() {
      private$callbacks
    }
  ),

  private = list(
    callbacks = list(),
    args = NULL,

    id = 1L,
    next_id = function() {
      id <- private$id
      private$id <- private$id + 1L
      as.character(id)
    }
  )
)

# From https://github.com/r-lib/httr2/blob/da2724ae/R/utils.R#L179-L235
check_function2 <- function(
  x,
  ...,
  args = NULL,
  allow_null = FALSE,
  arg = caller_arg(x),
  call = caller_env()
) {
  check_function(
    x = x,
    allow_null = allow_null,
    arg = arg,
    call = call
  )

  if (!is.null(x)) {
    .check_function_args(
      f = x,
      expected_args = args,
      arg = arg,
      call = call
    )
  }
}

.check_function_args <- function(f, expected_args, arg, call) {
  if (is_null(expected_args)) {
    return(invisible(NULL))
  }

  actual_args <- fn_fmls_names(f) %||% character()
  missing_args <- setdiff(expected_args, actual_args)
  if (is_empty(missing_args)) {
    return(invisible(NULL))
  }

  n_expected_args <- length(expected_args)
  n_actual_args <- length(actual_args)

  if (n_actual_args == 0) {
    arg_info <- "instead it has no arguments"
  } else {
    arg_info <- paste0("it currently has {.arg {actual_args}}")
  }

  cli::cli_abort(
    paste0(
      "{.arg {arg}} must have the {cli::qty(n_expected_args)}argument{?s} {.arg {expected_args}}; ",
      arg_info,
      "."
    ),
    call = call,
    arg = arg
  )
}
`````

## File: R/utils-cat.R
`````r
cat_line <- function(..., prefix = "") {
  lines <- paste0(..., collapse = "\n")
  sink <- cat_word_wrap(prefix = prefix)
  sink(lines)
  if (!endsWith(lines, "\n")) {
    sink("\n")
  }
  sink(coro::exhausted())
}

# Utility functions for performing word wrapping on streaming text. Our strategy
# for dealing with streaming is to buffer the most recent word, assuming that
# it's incomplete, and render it only when the next word break (space or
# newline) is encountered.

# Split a string into contiguous runs of non-spaces, " ", and newline.
#
# split_spaces("one  two    three") => c("one", "  ", "two", "    ", "three")
split_spaces <- function(text) {
  if (length(text) != 1 || !is.character(text)) {
    stop("Input must be a character vector of length 1")
  }

  pattern <- "([^ \\n]+| +|\\n)"
  result <- regmatches(text, gregexpr(pattern, text, perl = TRUE))[[1]]
  result
}

# A sink is a function that takes a string and returns `invisible()`. The
# `prepare_sink` function takes a raw function that can take a string as its
# first argument, and returns whatever, and returns a wrapper sink function. It
# also primes generators.
prepare_sink <- function(raw_sink_func, ...) {
  if (inherits(raw_sink_func, "coro_generator_instance")) {
    # Generators need to be primed before they can be used
    raw_sink_func(...)
  }

  function(str) {
    raw_sink_func(str, ...)
    invisible()
  }
}


# Sink decorators ---------------------------------------------------------
#
# A sink decorator is a sink that wraps another sink, modifying or coalescing or
# redacting or otherwise messing with the input before passing it to the target
# sink.
#
# We currently have two sink decorators:
# - sink_wordwrap: wraps a sink to perform word wrapping
# - sink_prefix: wraps a sink to prefix each line with a given string
#
# Creating a sink decorator is a two-step process:
# 1. Define a generator that takes a sink and some other arguments, and calls
#    `yield()` to get input and `sink()` to pass output to the target sink.
# 2. Define a wrapper function that takes the target sink and any other
#    arguments, and returns a sink that wraps the target sink with the generator
#    from step 1. It's important that the wrapper function calls `force()` on
#    all of its arguments, as the generator is not likely to trigger evaluation
#    until relatively late. It also needs to call `prepare_sink` to ensure that
#    the generator is primed before it's used.

sink_wordwrap <- function(sink, width) {
  force(sink)
  force(width)
  prepare_sink(sink_wordwrap_gen(sink, width))
}

sink_wordwrap_gen <- NULL
on_load(
  sink_wordwrap_gen <- coro::generator(function(sink, width) {
    buffer <- ""
    pos_cursor <- 1

    exhausted <- FALSE
    while (!exhausted) {
      input <- coro::yield()
      if (coro::is_exhausted(input)) {
        exhausted <- TRUE
        input <- ""
      }

      input <- paste0(buffer, input)
      buffer <- ""

      # Normalize whitespace, make our lives easier
      input <- gsub("\r\n", "\n", input)
      input <- gsub("\r", "\n", input)
      input <- gsub("\t", "    ", input)

      tokens <- split_spaces(input)
      for (i in seq_along(tokens)) {
        token <- tokens[[i]]
        is_last_token <- i == length(tokens)

        token_width <- nchar(token)
        is_space <- startsWith(token, " ")
        # Uncomment to render whitespace
        # token <- gsub(" ", "\u00B7", token)

        if (token == "\n") {
          # Always flush newlines immediately
          sink("\n")
          pos_cursor <- 1
        } else if (is_last_token && !exhausted) {
          # A trailing non-newline might not be complete; buffer it until we have
          # more text to process
          buffer <- token
        } else {
          # A regular token. See if it fits on the current line.
          soft_wrap <- pos_cursor + token_width > width

          if (soft_wrap && (pos_cursor != 1 || is_space)) {
            # It doesn't fit; wrap to the next line
            sink("\n")
            pos_cursor <- 1

            if (is_space) {
              # soft-wrapping due to spaces; skip rendering the spaces
              next
            }
          }

          # Render the token and update the cursor
          sink(token)
          pos_cursor <- pos_cursor + token_width
        }
      }
    }
  })
)

# Wrap a sink to prefix each line with a given string.
sink_prefix <- function(sink, prefix = "") {
  force(sink)
  force(prefix)
  prepare_sink(sink_prefix_gen(sink, prefix))
}

sink_prefix_gen <- NULL
on_load(
  sink_prefix_gen <- coro::generator(function(sink, prefix = "") {
    # When at line start, the next input will be prefixed with `prefix`. (But if
    # the next input never comes, we won't print the prefix.)
    at_line_start <- TRUE

    # In case the prefix itself contains characters that have special meaning when
    # used as a gsub replacement
    prefix_escaped <- gsub(perl = TRUE, "(\\\\|\\$)", "\\\\\\1", prefix)

    repeat {
      input <- coro::yield(invisible())
      if (coro::is_exhausted(input)) {
        break
      }
      if (nchar(input) == 0) {
        next
      }

      # We have non-empty input. If we're at the start of the line, it's time to
      # print a prefix.
      if (at_line_start) {
        sink(prefix)
        at_line_start <- FALSE
      }

      # Add the prefix after each newline in the input except the last one.
      transformed <- gsub(
        perl = TRUE,
        "\n(?!$)", # Matches \n that are NOT immediately followed by EOF
        paste0("\n", prefix_escaped),
        input
      )
      sink(transformed)

      # If the input ends with a newline, let the _next_ input be prefixed.
      if (endsWith(input, "\n")) {
        at_line_start <- TRUE
      }
    }
  })
)

# cat_word_wrap() is a function that returns a function that can be used to
# print text to the console with word wrapping. It uses the COLUMNS environment
# variable to work well from the terminal, and getWidth("options") to work well
# in RStudio.
#
# Each call to cat_word_wrap() (i.e. the creation of a catter) assumes that the
# current line of the given connection is empty. Each catter will assume it has
# sole possession of the connection (i.e. it ignores other code writing directly
# to its underlying connection).
#
# The catter buffers the last word of a line, assuming that it's incomplete. To
# ensure that the buffer gets flushed, cat a "\n" character.
cat_word_wrap <- function(
  con = stdout(),
  prefix = "",
  width = cli::console_width()
) {
  sink <- prepare_sink(cat, file = con, sep = "")

  if (nchar(prefix) > 0) {
    sink <- sink_prefix(sink, prefix)
  }

  sink <- sink_wordwrap(sink, width - nchar(prefix))

  sink
}

emitter <- function(echo, prefix) {
  if (echo == "output") {
    cat_word_wrap()
  } else if (echo == "all") {
    cat_word_wrap(prefix = "< ")
  } else {
    function(...) invisible()
  }
}
`````

## File: R/utils-coro.R
`````r
# Utility functions for using coro together with R6. This is ordinarily not
# possible because R6 replaces a method's containing environment with its own,
# and coro generators need their containing environments.
#
# We solve this by storing pristine coro generator functions in a special
# environment, and create sacrificial wrapper functions to serve as methods;
# these wrappers do nothing but fetch the real generators and invoke them.
#
# TODO: Check with @hadley if it's safe to do this in a package, given that the
# R6 classes that depend on this will be instantiated at package build time; so
# the coro generator functions will be burned into the package .Rds file.

# So `R CMD check` doesn't get confused about these variables being used from
# methods
utils::globalVariables(c("self", "private", "generator_env", "exits"))

generators <- new_environment()
generators$cur_id <- 1L
new_id <- function() {
  generators$cur_id <- generators$cur_id + 1L
  as.character(generators$cur_id)
}

# Decorator for anonymous functions; the return value is intended to be used as
# an R6 method. Unlike regular R6 methods, the decorated function must have
# `self` as the first argument (which will be automatically passed in by the
# decorator). If necessary we can also provide access to `private` in the same
# way.
generator_method <- function(fn) {
  lambda_expr <- enexpr(fn)
  check_args(fn)
  deferred_method_transform(lambda_expr, coro::generator, parent.frame())
}

# Same as generator_method, but for async logic
async_generator_method <- function(fn) {
  lambda_expr <- enexpr(fn)
  check_args(fn)
  deferred_method_transform(lambda_expr, coro::async_generator, parent.frame())
}

async_method <- function(fn) {
  lambda_expr <- enexpr(fn)
  check_args(fn)
  deferred_method_transform(lambda_expr, coro::async, parent.frame())
}
# Takes a quoted function expression and a transformer function, and returns a
# function that will _lazily_ transform the lambda function using `transformer`
# upon first call. This is necessary because the transformation needs to be done
# not at package build time, but after package load time.
#
# Elsewhere in ellmer, we use rlang::on_load to defer the transformation of
# generators until after package load time. We can't do that for R6 methods
# because nesting R6 class definitions inside of rlang::on_load causes roxygen2
# to get confused.
deferred_method_transform <- function(lambda_expr, transformer, eval_env) {
  transformer <- enexpr(transformer)
  force(eval_env)

  unique_id <- new_id()
  env_bind_lazy(
    generators,
    !!unique_id := inject((!!transformer)(!!lambda_expr)),
    eval.env = eval_env
  )

  inject(
    function(...) {
      # Can't simply use `generators` because the lexical environment of this
      # function is about to get wrecked by R6
      (!!generators)[[!!unique_id]](self, private, ...)
    }
  )
}

check_args <- function(fn) {
  arg_names <- names(formals(fn))
  if (length(arg_names) < 2) {
    cli::cli_abort(
      "Function must have at least two arguments.",
      .internal = TRUE
    )
  } else if (arg_names[[1]] != "self") {
    cli::cli_abort("First argument must be {.arg self}.", .internal = TRUE)
  } else if (arg_names[[2]] != "private") {
    cli::cli_abort("Second argument must be {.arg private}.", .internal = TRUE)
  }
}
`````

## File: R/utils-merge.R
`````r
# Translated from
# https://github.com/langchain-ai/langchain/blob/master/libs/core/langchain_core/utils/_merge.py
merge_dicts <- function(left, right) {
  for (right_k in names(right)) {
    right_v <- right[[right_k]]
    left_v <- left[[right_k]]

    if (is.null(right_v)) {
      if (!has_name(left, right_k)) {
        left[right_k] <- list(NULL)
      }
    } else if (is.null(left_v)) {
      left[[right_k]] <- right_v
    } else if (identical(left_v, right_v)) {
      next
    } else if (is.character(left_v)) {
      left[[right_k]] <- paste0(left_v, right_v)
    } else if (is.integer(left_v)) {
      left[[right_k]] <- right_v
    } else if (is.list(left_v)) {
      if (!is.null(names(right_v))) {
        left[[right_k]] <- merge_dicts(left_v, right_v)
      } else {
        left[[right_k]] <- merge_lists(left_v, right_v)
      }
    } else if (!identical(class(left_v), class(right_v))) {
      stop(paste0(
        "additional_kwargs['",
        right_k,
        "'] already exists in this message, but with a different type."
      ))
    } else {
      stop(paste0(
        "Additional kwargs key ",
        right_k,
        " already exists in left dict and value has unsupported type ",
        class(left[[right_k]]),
        "."
      ))
    }
  }

  left
}

merge_lists <- function(left, right) {
  if (is.null(right)) {
    return(left)
  } else if (is.null(left)) {
    return(right)
  }

  for (e in right) {
    idx <- find_index(left, e)
    if (is.na(idx)) {
      left <- c(left, list(e))
    } else {
      # If a top-level "type" has been set for a chunk, it should no
      # longer be overridden by the "type" field in future chunks.
      if (!is.null(left[[idx]]$type) && !is.null(e$type)) {
        e$type <- NULL
      }
      left[[idx]] <- merge_dicts(left[[idx]], e)
    }
  }
  left
}

find_index <- function(left, e_right) {
  if (
    !is.list(e_right) ||
      !has_name(e_right, "index") ||
      !is.numeric(e_right$index)
  ) {
    return(NA)
  }

  matches_idx <- map_lgl(left, function(e_left) e_left$index == e_right$index)
  if (sum(matches_idx) != 1) {
    return(NA)
  }
  which(matches_idx)[[1]]
}
`````

## File: R/utils-prettytime.R
`````r
parse_ms <- function(ms) {
  stopifnot(is.numeric(ms))

  data.frame(
    days = floor(ms / 86400000),
    hours = floor((ms / 3600000) %% 24),
    minutes = floor((ms / 60000) %% 60),
    seconds = round((ms / 1000) %% 60, 1)
  )
}

first_positive <- function(x) which(x > 0)[1]

trim <- function(x) gsub("^\\s+|\\s+$", "", x)

pretty_ms <- function(ms, compact = FALSE) {
  stopifnot(is.numeric(ms))

  parsed <- t(parse_ms(ms))

  if (compact) {
    units <- c("d", "h", "m", "s")
    parsed2 <- parsed
    parsed2[] <- paste0(parsed, units)
    idx <- cbind(
      apply(parsed, 2, first_positive),
      seq_len(length(ms))
    )
    tmp <- paste0("~", parsed2[idx])

    # handle NAs
    tmp[is.na(parsed2[idx])] <- NA_character_
    tmp
  } else {
    ## Exact for small ones
    exact <- paste0(ceiling(ms), "ms")
    exact[is.na(ms)] <- NA_character_

    ## Approximate for others, in seconds
    merge_pieces <- function(pieces) {
      ## handle NAs
      if (all(is.na(pieces))) {
        return(NA_character_)
      }

      ## handle non-NAs
      paste0(
        if (pieces[1]) paste0(pieces[1], "d "),
        if (pieces[2]) paste0(pieces[2], "h "),
        if (pieces[3]) paste0(pieces[3], "m "),
        if (pieces[4]) paste0(pieces[4], "s ")
      )
    }
    approx <- trim(apply(parsed, 2, merge_pieces))

    ifelse(ms < 1000, exact, approx)
  }
}

pretty_sec <- function(sec, compact = FALSE) {
  pretty_ms(sec * 1000, compact = compact)
}
`````

## File: R/utils-S7.R
`````r
prop_string <- function(default = NULL, allow_null = FALSE, allow_na = FALSE) {
  force(allow_null)
  force(allow_na)

  new_property(
    class = if (allow_null) NULL | class_character else class_character,
    default = if (is.null(default) && !allow_null) {
      quote(stop("Required"))
    } else {
      default
    },
    validator = function(value) {
      if (allow_null && is.null(value)) {
        return()
      }

      if (length(value) != 1) {
        paste0("must be a single string, not ", obj_type_friendly(value), ".")
      } else if (!allow_na && is.na(value)) {
        "must not be missing."
      }
    }
  )
}

prop_bool <- function(default, allow_null = FALSE, allow_na = FALSE) {
  force(allow_null)
  force(allow_na)

  new_property(
    class = if (allow_null) NULL | class_logical else class_logical,
    default = default,
    validator = function(value) {
      if (allow_null && is.null(value)) {
        return()
      }

      if (length(value) != 1) {
        if (allow_na) {
          paste0(
            "must be a single TRUE or FALSE, not ",
            obj_type_friendly(value),
            "."
          )
        } else {
          paste0(
            "must be a single TRUE, FALSE or NA, not ",
            obj_type_friendly(value),
            "."
          )
        }
      } else if (!allow_na && is.na(value)) {
        paste0("must be a TRUE or FALSE, not NA.")
      }
    }
  )
}

prop_list_of <- function(class, names = c("any", "all", "none")) {
  force(class)
  names <- arg_match(names)

  new_property(
    class = class_list,
    validator = function(value) {
      for (i in seq_along(value)) {
        val <- value[[i]]
        if (!S7_inherits(val, class)) {
          return(paste0(
            "must be a list of <",
            class@name,
            ">s. ",
            "Element ",
            i,
            " is ",
            obj_type_friendly(val),
            "."
          ))
        }
      }
      if (names == "all" && any(names2(value) == "")) {
        "must be a named list."
      } else if (names == "none" && any(names2(value) != "")) {
        "must be an unnamed list."
      }
    }
  )
}

prop_number_whole <- function(
  default = NULL,
  min = NULL,
  max = NULL,
  allow_null = FALSE,
  allow_na = FALSE
) {
  force(allow_null)
  force(allow_na)

  new_property(
    class = if (allow_null) NULL | class_double else class_double,
    default = default,
    validator = function(value) {
      if (allow_null && is.null(value)) {
        return()
      }

      if (length(value) != 1) {
        paste0("must be a whole number, not ", obj_type_friendly(value), ".")
      } else if (value != trunc(value)) {
        paste0("must be a whole number, not ", obj_type_friendly(value), ".")
      } else if (!is.null(min) && value < min) {
        paste0("must be at least ", min, ", not ", value, ".")
      } else if (!is.null(max) && value > max) {
        paste0("must be at most ", max, ", not ", value, ".")
      } else if (!allow_na && is.na(value)) {
        "must not be missing."
      }
    }
  )
}
`````

## File: R/utils.R
`````r
is_testing <- function() {
  identical(Sys.getenv("TESTTHAT"), "true")
}

is_snapshot <- function() {
  identical(Sys.getenv("TESTTHAT_IS_SNAPSHOT"), "true")
}

key_get <- function(name, error_call = caller_env()) {
  val <- Sys.getenv(name)
  if (!identical(val, "")) {
    val
  } else {
    if (is_testing()) {
      testthat::skip(sprintf("%s env var is not configured", name))
    } else {
      cli::cli_abort("Can't find env var {.code {name}}.", call = error_call)
    }
  }
}

key_exists <- function(name) {
  !identical(Sys.getenv(name), "")
}

defer <- function(expr, env = caller_env(), after = FALSE) {
  thunk <- as.call(list(function() expr))
  do.call(on.exit, list(thunk, TRUE, after), envir = env)
}

set_default <- function(value, default, arg = caller_arg(value)) {
  if (is.null(value)) {
    if (!is_testing() || is_snapshot()) {
      cli::cli_inform("Using {.field {arg}} = {.val {default}}.")
    }
    default
  } else {
    value
  }
}

last_request_json <- function() {
  print_json(last_request()$body$data)
}
last_response_json <- function() {
  print_json(resp_body_json(last_response()))
}
print_json <- function(x) {
  cat(pretty_json(x))
  cat("\n")
}
pretty_json <- function(x) {
  jsonlite::toJSON(x, pretty = TRUE, auto_unbox = TRUE)
}

prettify <- function(x) {
  tryCatch(
    jsonlite::prettify(x),
    error = function(cnd) x
  )
}

check_echo <- function(echo = NULL) {
  if (identical(echo, "text")) {
    lifecycle::deprecate_soft(
      when = "0.2.0",
      what = I('`echo = "text"`'),
      with = I('`echo = "output"`')
    )
    echo <- "output"
  }

  if (is.null(echo) || identical(echo, c("none", "output", "all"))) {
    if (env_is_user_facing(parent.frame(2)) && !is_testing()) {
      "output"
    } else {
      "none"
    }
  } else if (isTRUE(echo)) {
    "output"
  } else if (isFALSE(echo)) {
    "none"
  } else {
    arg_match(echo, c("none", "output", "all"))
  }
}

dots_named <- function(...) {
  is_named2(list2(...))
}

`paste<-` <- function(x, value) {
  paste0(x, value)
}

`append<-` <- function(x, value) {
  x[[length(x) + 1]] <- value
  x
}

#' Are credentials avaiable?
#'
#' Used for examples/testing.
#'
#' @keywords internal
#' @param provider Provider name.
#' @export
has_credentials <- function(provider) {
  switch(
    provider,
    cortex = cortex_credentials_exist(),
    openai = openai_key_exists(),
    claude = anthropic_key_exists(),
    cli::cli_abort("Unknown model {model}.")
  )
}

# In-memory cache for credentials. Analogous to httr2:::cache_mem().
credentials_cache <- function(key) {
  list(
    get = function() env_get(the$credentials_cache, key, default = NULL),
    set = function(creds) env_poke(the$credentials_cache, key, creds),
    clear = function() env_unbind(the$credentials_cache, key)
  )
}

has_connect_viewer_token <- function(...) {
  if (!is_installed("connectcreds")) {
    return(FALSE)
  }
  connectcreds::has_viewer_token(...)
}

modify_list <- function(x, y) {
  if (is.null(x)) {
    return(y)
  }
  if (is.null(y)) {
    return(x)
  }

  utils::modifyList(x, y)
}

is_whitespace <- function(x) {
  grepl("^(\\s|\n)*$", x)
}

paste_c <- function(...) {
  paste(c(...), collapse = "")
}

cli_escape <- function(x) {
  x <- gsub("{", "{{", x, fixed = TRUE)
  gsub("}", "}}", x, fixed = TRUE)
}

api_key_param <- function(key) {
  paste_c(
    "API key to use for authentication.\n",
    "\n",
    c(
      "You generally should not supply this directly, but instead set the ",
      c("`", key, "`"),
      " environment variable.\n"
    ),
    c(
      "The best place to set this is in `.Renviron`,
      which you can easily edit by calling `usethis::edit_r_environ()`."
    )
  )
}

param_model <- function(default, provider = NULL) {
  paste_c(
    c(
      "The model to use for the chat",
      if (!is.null(default)) c(" (defaults to \"", default, "\")"),
      ".\n"
    ),
    if (!is.null(default)) {
      c(
        "We regularly update the default, so we strongly recommend explicitly ",
        "specifying a model for anything other than casual use.\n"
      )
    },
    if (!is.null(provider)) {
      c("Use `models_", provider, "()` to see all options.\n")
    }
  )
}

unrowname <- function(df) {
  rownames(df) <- NULL
  df
}

color_role <- function(role) {
  switch(
    role,
    user = cli::col_blue(role),
    assistant = cli::col_green(role),
    system = cli::col_br_white(role),
    role
  )
}

counter <- function() {
  count <- 0
  function() {
    count <<- count + 1
    count
  }
}

match_prices <- function(provider, id) {
  prices <- prices[prices$provider == provider, ]
  idx <- match(id, prices$model)
  prices[idx, c("cached_input", "input", "output")]
}
`````

## File: R/zzz.R
`````r
.onLoad <- function(libname, pkgname) {
  run_on_load()
  S7::methods_register()
}

# Work around S7 bug
rm(format)
rm(print)

# enable usage of <S7_object>@name in package code
#' @rawNamespace if (getRversion() < "4.3.0") importFrom("S7", "@")
NULL
`````

## File: revdep/.gitignore
`````
checks
library
checks.noindex
library.noindex
cloud.noindex
data.sqlite
*.html
`````

## File: revdep/cran.md
`````markdown
## revdepcheck results

We checked 9 reverse dependencies, comparing R CMD check results across CRAN and dev versions of this package.

 * We saw 1 new problems
 * We failed to check 0 packages

Issues with CRAN packages are summarised below.

### New problems
(This reports the first line of each new failure)

* GitAI
  checking tests ... ERROR
`````

## File: revdep/failures.md
`````markdown
*Wow, no problems at all. :)*
`````

## File: revdep/problems.md
`````markdown
# GitAI

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/GitAI
* Date/Publication: 2025-02-20 18:40:16 UTC
* Number of recursive dependencies: 74

Run `revdepcheck::cloud_details(, "GitAI")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # This file is part of the standard setup for testthat.
      > # It is recommended that you do not modify it.
      > #
      > # Where should you do additional test configuration?
      > # Learn more about the roles of various files in:
      > # * https://r-pkgs.org/testing-design.html#sec-tests-files-overview
      > # * https://testthat.r-lib.org/articles/special-files.html
    ...
       4.   └─GitAI (local) `<fn>`(model = "gpt-4o-mini", seed = NULL, echo = "none")
       5.     └─GitAI:::mock_chat_method(...) at tests/testthat/setup.R:46:3
       6.       ├─rlang::exec(provider_class, !!!provider_args) at tests/testthat/setup.R:24:3
       7.       └─ellmer (local) `<S7_class>`(...)
       8.         ├─S7::new_object(...)
       9.         └─ellmer::Provider(...)
      
      [ FAIL 4 | WARN 5 | SKIP 7 | PASS 35 ]
      Error: Test failures
      Execution halted
    ```
`````

## File: revdep/README.md
`````markdown
# Revdeps

## New problems (1)

|package |version |error  |warning |note |
|:-------|:-------|:------|:-------|:----|
|[GitAI](problems.md#gitai)|0.1.0   |__+1__ |        |     |
`````

## File: tests/testthat/_snaps/batch-chat.md
`````markdown
# errors if chat/provider/prompts don't match previous run

    Code
      batch_chat(chat, prompts, path)
    Condition
      Error in `batch_chat()`:
      ! provider, prompts, and user_turns don't match stored values.
      i Do you need to pick a different `path`?

# informative error for bad inputs

    Code
      batch_chat("x")
    Condition
      Error in `batch_chat()`:
      ! `chat` must be a <Chat> object.
    Code
      batch_chat(chat_ollama)
    Condition
      Error in `batch_chat()`:
      ! Batch requests are not currently supported by this provider.
    Code
      batch_chat(chat_openai, "a")
    Condition
      Error in `batch_chat()`:
      ! `prompts` must be a list or prompt, not the string "a".
    Code
      batch_chat(chat_openai, list("a"), path = 1)
    Condition
      Error in `batch_chat()`:
      ! `path` must be a single string, not the number 1.
    Code
      batch_chat(chat_openai, list("a"), path = "x", wait = 1)
    Condition
      Error in `batch_chat()`:
      ! `wait` must be `TRUE` or `FALSE`, not the number 1.
`````

## File: tests/testthat/_snaps/chat-structured.md
`````markdown
# useful error if no ContentJson

    Code
      extract_data(turn)
    Condition
      Error in `extract_data()`:
      ! Data extraction failed: 0 data results recieved.
`````

## File: tests/testthat/_snaps/chat.md
`````markdown
# system prompt must be a character vector

    Code
      chat_openai_test(1)
    Condition
      Error in `self$set_system_prompt()`:
      ! `value` must be a character vector or `NULL`, not the number 1.

# can't chat with multiple prompts

    Code
      chat$chat(prompt)
    Condition
      Error in `chat$chat()`:
      ! `...` can only accept a single prompt.

# has a basic print method

    Code
      chat
    Output
      <Chat OpenAI/gpt-4.1-nano turns=3 tokens=15/5 $0.00>
      -- system [0] ------------------------------------------------------------------
      Be terse.
      -- user [15] -------------------------------------------------------------------
      What's 1 + 1?
      What's 1 + 2?
      -- assistant [5] ---------------------------------------------------------------
      2
      
      3

# print method shows cumulative tokens & cost

    Code
      chat
    Output
      <Chat OpenAI/gpt-4o turns=4 tokens=45000/1500 $0.13>
      -- user [15000] ----------------------------------------------------------------
      Input 1
      -- assistant [500] -------------------------------------------------------------
      Output 1
      -- user [14500] ----------------------------------------------------------------
      Input 2
      -- assistant [1000] ------------------------------------------------------------
      Output 1

# chat can get and register a list of tools

    Code
      chat$set_tools(tools[[1]])
    Condition
      Error in `chat$set_tools()`:
      ! `tools` must be a list of tools created with `ellmer::tool()`.
      i Did you mean to call `$register_tool()`?

---

    Code
      chat$set_tools(c(tools, list("foo")))
    Condition
      Error in `chat$set_tools()`:
      ! `tools` must be a list of tools created with `ellmer::tool()`.

# chat warns on tool failures

    Code
      . <- chat$chat("What are Joe, Hadley, Simon, and Tom's favorite colors?")
    Condition
      Warning:
      Failed to evaluate 4 tool calls.
      x [user_favorite_color (ID)]: User denied tool request
      x [user_favorite_color (ID)]: User denied tool request
      x [user_favorite_color (ID)]: User denied tool request
      i ... and 1 more.

# chat callbacks for tool requests/results

    Code
      . <- chat$chat("What are Joe and Hadley's favorite colors?")
    Message
      [1] Tool request: Joe
      [1] Tool result: blue
      [2] Tool request: Hadley
      [2] Tool result: red

---

    Code
      chat$on_tool_request(function(data) NULL)
    Condition
      Error:
      ! `callback` must have the argument `request`; it currently has `data`.
    Code
      chat$on_tool_result(function(data) NULL)
    Condition
      Error:
      ! `callback` must have the argument `result`; it currently has `data`.

# tool calls can be rejected via `tool_request` callbacks

    Code
      . <- chat$chat("What are Joe and Hadley's favorite colors?",
        "Write 'Joe ____ Hadley ____'. Use 'unknown' if you don't know.", echo = "output")
    Message
      ( ) [tool call] user_favorite_color(user = "Joe")
      # #> Error: Tool call rejected. Joe denied the request.
      ( ) [tool call] user_favorite_color(user = "Hadley")
      o #> red
    Output
      Joe unknown Hadley red

# tool calls can be rejected via the tool function

    Code
      . <- chat$chat("What are Joe and Hadley's favorite colors?",
        "Write 'Joe ____ Hadley ____'. Use 'unknown' if you don't know.", echo = "output")
    Message
      ( ) [tool call] user_favorite_color(user = "Joe")
      # #> Error: Tool call rejected. The user has chosen to disallow the tool call.
      ( ) [tool call] user_favorite_color(user = "Hadley")
      o #> red
    Output
      Joe unknown Hadley red

# old extract methods are deprecated

    Code
      chat_null$extract_data()
    Condition
      Warning:
      `Chat$extract_data()` was deprecated in ellmer 0.2.0.
      i Please use `Chat$chat_structured()` instead.
    Code
      chat_null$extract_data_async()
    Condition
      Warning:
      `Chat$extract_data_async()` was deprecated in ellmer 0.2.0.
      i Please use `Chat$chat_structured_async()` instead.
`````

## File: tests/testthat/_snaps/content-image.md
`````markdown
# errors with invalid data urls

    Code
      content_image_url("data:base64,abcd")
    Condition
      Error in `content_image_url()`:
      ! `url` is not a valid data url.

# image resizing

    Code
      content_image_file("DOESNTEXIST")
    Condition
      Error in `content_image_file()`:
      ! DOESNTEXIST must be an existing file.
    Code
      content_image_file(test_path("test-content.R"))
    Condition
      Error in `content_image_file()`:
      ! Unsupported image file extension: r.
    Code
      content_image_file(img_file, resize = TRUE)
    Condition
      Error in `content_image_file()`:
      ! `resize` must be a single string, not `TRUE`.
    Code
      content_image_file(img_file, resize = "blah")
    Condition
      Error:
      ! Invalid geometry string: blah

# useful errors if no display

    Code
      content_image_plot()
    Condition
      Error in `content_image_plot()`:
      ! Can't record plot because display list is inhibited.
      i Turn it on with `dev.control('enable')`.
`````

## File: tests/testthat/_snaps/content-tools.md
`````markdown
# invoke_tools() echoes tool requests and results

    Code
      . <- coro::collect(invoke_tools(turn, echo = "output"))
    Message
      ( ) [tool call] my_tool()
      o #> 1
      ( ) [tool call] my_tool(x = 1)
      # #> Error: Unused argument: x
      ( ) [tool call] tool_list()
      o #> {"a":1,"b":2}
      ( ) [tool call] tool_chr()
      o #> a
        #> b
        #> c
      ( ) [tool call] tool_abort()
      # #> Error: Unexpected input
        #> i Please revise and try again.

# invoke_tools_async() echoes tool requests and results

    Code
      . <- sync(gen_async_promise_all(invoke_tools_async(turn, echo = "output")))
    Message
      ( ) [tool call] my_tool()
      ( ) [tool call] my_tool(x = 1)
      ( ) [tool call] tool_list()
      ( ) [tool call] tool_chr()
      ( ) [tool call] tool_abort()
      # #> Error: Unused argument: x
      # #> Error: Unexpected input
        #> i Please revise and try again.
      o #> 1
      o #> {"a":1,"b":2}
      o #> a
        #> b
        #> c
    Code
      . <- sync(coro::async_collect(invoke_tools_async(turn, echo = "output")))
    Message
      ( ) [tool call] my_tool()
      o #> 1
      ( ) [tool call] my_tool(x = 1)
      # #> Error: Unused argument: x
      ( ) [tool call] tool_list()
      o #> {"a":1,"b":2}
      ( ) [tool call] tool_chr()
      o #> a
        #> b
        #> c
      ( ) [tool call] tool_abort()
      # #> Error: Unexpected input
        #> i Please revise and try again.

# tool error warnings

    Code
      warn_tool_errors(errors)
    Condition
      Warning:
      Failed to evaluate 2 tool calls.
      x [returns_json (call1)]: The JSON was invalid: {[1, 2, 3]}
      x [throws (call2)]: went boom!
`````

## File: tests/testthat/_snaps/content.md
`````markdown
# invalid inputs give useful errors

    Code
      chat$chat(question = "Are unicorns real?")
    Condition
      Error in `chat$chat()`:
      ! `...` must be unnamed.
    Code
      chat$chat(TRUE)
    Condition
      Error in `FUN()`:
      ! `...` must be made up strings or <content> objects, not `TRUE`.

# turn contents can be converted to text, markdown and HTML

    Code
      cat(contents_text(turn))
    Output
      User input.
      
      ```sql
      SELECT * FROM mtcars
      ```
      
      #### Suggestions
      
      - What is the total quantity sold for each product last quarter?
      - What is the average discount percentage for orders from the United States?
      - What is the average price of products in the 'electronics' category?

---

    Code
      cat(contents_markdown(turn))
    Output
      User input.
      
      ![](data:image/png;base64,abcd123)
      
      ![](https://example.com/image.jpg)
      
      ```json
      {
        "a": [1, 2],
        "b": "apple"
      }
      ```
      
      
      
      
      ```sql
      SELECT * FROM mtcars
      ```
      
      
      
      #### Suggestions
      
      - What is the total quantity sold for each product last quarter?
      - What is the average discount percentage for orders from the United States?
      - What is the average price of products in the 'electronics' category?

---

    Code
      cat(contents_markdown(chat))
    Output
      ## User
      
      User input.
      
      ![](data:image/png;base64,abcd123)
      
      ![](https://example.com/image.jpg)
      
      ```json
      {
        "a": [1, 2],
        "b": "apple"
      }
      ```
      
      
      
      
      ```sql
      SELECT * FROM mtcars
      ```
      
      
      
      #### Suggestions
      
      - What is the total quantity sold for each product last quarter?
      - What is the average discount percentage for orders from the United States?
      - What is the average price of products in the 'electronics' category?
      
      ## Assistant
      
      Here's your answer.

---

    Code
      cat(contents_html(turn))
    Output
      <p>User input.</p>
      
      <img src="data:image/png;base64,abcd123">
      <img src="https://example.com/image.jpg">
      <pre><code>{
        "a": [1, 2],
        "b": "apple"
      }</code></pre>
      
      <pre><code>SELECT * FROM mtcars</code></pre>

# thinking has useful representations

    Code
      cat(contents_html(ct))
    Output
      <details><summary>Thinking</summary>
      <p>A <strong>thought</strong>.</p>
      </details>

# ContentToolResult@error requires a string or an error condition

    Code
      ContentToolResult("id", error = TRUE)
    Condition
      Error:
      ! <ellmer::ContentToolResult> object properties are invalid:
      - @error must be <NULL>, <character>, or S3<condition>, not <logical>
    Code
      ContentToolResult("id", error = c("one", "two"))
    Condition
      Error:
      ! <ellmer::ContentToolResult> object properties are invalid:
      - @error must be a single string or a condition object, not a character vector.
`````

## File: tests/testthat/_snaps/interpolate.md
`````markdown
# checks inputs

    Code
      interpolate(1)
    Condition
      Error in `interpolate()`:
      ! `prompt` must be a single string, not the number 1.
    Code
      interpolate("x", 1)
    Condition
      Error in `interpolate()`:
      ! All elements of `...` must be named

# has a nice print method

    Code
      interpolate("Hi!")
    Output
      [1] | Hi!

# print method truncates many elements

    Code
      print(prompt, max_items = 1)
    Output
      [1] | x
          | y
      ... and 1 more.
    Code
      print(prompt, max_lines = 2)
    Output
      [1] | x
          | y
          | ...
      ... and 1 more.
    Code
      print(prompt, max_lines = 3)
    Output
      [1] | x
          | y
      [2] | a
          | ...
`````

## File: tests/testthat/_snaps/params.md
`````markdown
# checks its inputs

    Code
      params(temperature = "x")
    Condition
      Error in `params()`:
      ! `temperature` must be a number or `NULL`, not the string "x".
    Code
      params(top_p = "x")
    Condition
      Error in `params()`:
      ! `top_p` must be a number or `NULL`, not the string "x".
    Code
      params(top_k = "x")
    Condition
      Error in `params()`:
      ! `top_k` must be a whole number or `NULL`, not the string "x".
    Code
      params(frequency_penalty = "x")
    Condition
      Error in `params()`:
      ! `frequency_penalty` must be a number or `NULL`, not the string "x".
    Code
      params(presence_penalty = "x")
    Condition
      Error in `params()`:
      ! `presence_penalty` must be a number or `NULL`, not the string "x".
    Code
      params(seed = "x")
    Condition
      Error in `params()`:
      ! `seed` must be a whole number or `NULL`, not the string "x".
    Code
      params(max_tokens = "x")
    Condition
      Error in `params()`:
      ! `max_tokens` must be a whole number or `NULL`, not the string "x".
    Code
      params(log_probs = 1)
    Condition
      Error in `params()`:
      ! `log_probs` must be `TRUE`, `FALSE`, or `NULL`, not the number 1.
    Code
      params(stop_sequences = 1)
    Condition
      Error in `params()`:
      ! `stop_sequences` must be a character vector or `NULL`, not the number 1.

# standardise_params warns about unknown args

    Code
      . <- standardise_params(test_params, provider_params)
    Condition
      Warning:
      Ignoring unsupported parameters: "top_p"
`````

## File: tests/testthat/_snaps/provider-azure.md
`````markdown
# defaults are reported

    Code
      . <- chat_azure_openai_test()
    Message
      Using api_version = "2024-10-21".

# all tool variations work

    Code
      chat$chat("Great. Do it again.")
    Condition
      Error:
      ! Can't use async tools with `$chat()` or `$stream()`.
      i Async tools are supported, but you must use `$chat_async()` or `$stream_async()`.

# Azure request headers are generated correctly

    Code
      str(req$headers)
    Output
       <httr2_headers>
       $ api-key: chr "key"

---

    Code
      str(req$headers)
    Output
       <httr2_headers>
       $ Authorization: chr "Bearer token"

---

    Code
      str(req$headers)
    Output
       <httr2_headers>
       $ api-key      : chr "key"
       $ Authorization: chr "Bearer token"

# service principal authentication requests look correct

    Code
      list(url = req$url, headers = req$headers, body = req$body$data)
    Output
      $url
      [1] "https://login.microsoftonline.com/aaaa0a0a-bb1b-cc2c-dd3d-eeeeee4e4e4e/oauth2/v2.0/token"
      
      $headers
      <httr2_headers>
      Accept: application/json
      
      $body
      $body$grant_type
      [1] "client_credentials"
      
      $body$scope
      [1] "https%3A%2F%2Fcognitiveservices.azure.com%2F.default"
      
      $body$client_id
      [1] "id"
      
      $body$client_secret
      [1] "secret"
`````

## File: tests/testthat/_snaps/provider-bedrock.md
`````markdown
# handles errors

    Code
      chat$chat("What is 1 + 1?", echo = FALSE)
    Condition
      Error in `req_perform()`:
      ! HTTP 400 Bad Request.
      * STRING_VALUE cannot be converted to Float
    Code
      chat$chat("What is 1 + 1?", echo = TRUE)
    Condition
      Error in `req_perform_connection()`:
      ! HTTP 400 Bad Request.
      * STRING_VALUE cannot be converted to Float

# defaults are reported

    Code
      . <- chat_aws_bedrock()
    Message
      Using model = "anthropic.claude-3-5-sonnet-20240620-v1:0".

# all tool variations work

    Code
      chat$chat("Great. Do it again.")
    Condition
      Error:
      ! Can't use async tools with `$chat()` or `$stream()`.
      i Async tools are supported, but you must use `$chat_async()` or `$stream_async()`.

# can use images

    Code
      . <- chat$chat("What's in this image?", image_remote)
    Condition
      Error in `method(as_json, list(ellmer::ProviderAWSBedrock, ellmer::ContentImageRemote))`:
      ! Bedrock doesn't support remote images
`````

## File: tests/testthat/_snaps/provider-claude.md
`````markdown
# defaults are reported

    Code
      . <- chat_anthropic()
    Message
      Using model = "claude-3-7-sonnet-latest".

# all tool variations work

    Code
      chat$chat("Great. Do it again.")
    Condition
      Error:
      ! Can't use async tools with `$chat()` or `$stream()`.
      i Async tools are supported, but you must use `$chat_async()` or `$stream_async()`.

# max_tokens is deprecated

    Code
      chat <- chat_anthropic_test(max_tokens = 10)
    Condition
      Warning:
      The `max_tokens` argument of `chat_anthropic()` is deprecated as of ellmer 0.2.0.
      i Please use the `params` argument instead.
`````

## File: tests/testthat/_snaps/provider-cloudflare.md
`````markdown
# defaults are reported

    Code
      . <- chat_cloudflare()
    Message
      Using model = "@cf/meta/llama-3.3-70b-instruct-fp8-fast".
`````

## File: tests/testthat/_snaps/provider-cortex.md
`````markdown
# Cortex turn formatting

    Code
      cat(turn@text)
    Output
      This semantic data model...
      
      ```sql
      SELECT SUM(revenue) FROM key_business_metrics
      ```
      
      #### Suggestions
      
      - What is the total quantity sold for each product last quarter?
      - What is the average discount percentage for orders from the United States?
      - What is the average price of products in the 'electronics' category?

---

    Code
      cat(format(turn))
    Output
      This semantic data model...
      SQL: `SELECT SUM(revenue) FROM key_business_metrics`
      Suggestions:
      * What is the total quantity sold for each product last quarter?
      * What is the average discount percentage for orders from the United States?
      * What is the average price of products in the 'electronics' category?

# Cortex API requests are generated correctly

    Code
      req$url
    Output
      [1] "https://testorg-test_account.snowflakecomputing.com/api/v2/cortex/analyst/message"

---

    Code
      req$headers
    Output
      <httr2_headers>
      Authorization: <REDACTED>
      X-Snowflake-Authorization-Token-Type: <REDACTED>

---

    Code
      print_json(req$body$data)
    Output
      {
        "messages": [
          {
            "role": "user",
            "content": [
              {
                "type": "text",
                "text": "Tell me about my data."
              }
            ]
          }
        ],
        "stream": false,
        "semantic_model_file": "@my_db.my_schema.my_stage/model.yaml"
      }
`````

## File: tests/testthat/_snaps/provider-databricks.md
`````markdown
# defaults are reported

    Code
      . <- chat_databricks()
    Message
      Using model = "databricks-dbrx-instruct".

# M2M authentication requests look correct

    Code
      list(url = req$url, headers = req$headers, body = req$body$data)
    Output
      $url
      [1] "https://example.cloud.databricks.com/oidc/v1/token"
      
      $headers
      <httr2_headers>
      Authorization: <REDACTED>
      Accept: application/json
      
      $body
      $body$grant_type
      [1] "client_credentials"
      
      $body$scope
      [1] "all-apis"
`````

## File: tests/testthat/_snaps/provider-deepseek.md
`````markdown
# defaults are reported

    Code
      . <- chat_deepseek()
    Message
      Using model = "deepseek-chat".

# all tool variations work

    Code
      chat$chat("Great. Do it again.")
    Condition
      Error in `FUN()`:
      ! Can't use async tools with `$chat()` or `$stream()`.
      i Async tools are supported, but you must use `$chat_async()` or `$stream_async()`.
`````

## File: tests/testthat/_snaps/provider-gemini.md
`````markdown
# defaults are reported

    Code
      . <- chat_google_gemini()
    Message
      Using model = "gemini-2.0-flash".

# all tool variations work

    Code
      chat$chat("Great. Do it again.")
    Condition
      Error:
      ! Can't use async tools with `$chat()` or `$stream()`.
      i Async tools are supported, but you must use `$chat_async()` or `$stream_async()`.

# can use images

    Code
      . <- chat$chat("What's in this image?", image_remote)
    Condition
      Error in `method(as_json, list(ellmer::ProviderGoogleGemini, ellmer::ContentImageRemote))`:
      ! Gemini doesn't support remote images
`````

## File: tests/testthat/_snaps/provider-groq.md
`````markdown
# defaults are reported

    Code
      . <- chat_groq()
    Message
      Using model = "llama3-8b-8192".

# all tool variations work

    Code
      chat$chat("Great. Do it again.")
    Condition
      Error in `FUN()`:
      ! Can't use async tools with `$chat()` or `$stream()`.
      i Async tools are supported, but you must use `$chat_async()` or `$stream_async()`.
`````

## File: tests/testthat/_snaps/provider-huggingface.md
`````markdown
# defaults are reported

    Code
      . <- chat_huggingface_test()
`````

## File: tests/testthat/_snaps/provider-mistral.md
`````markdown
# can handle errors

    Code
      chat$chat("Hi")
    Condition
      Error in `req_perform()`:
      ! HTTP 400 Bad Request.
      * Invalid model: doesnt-exist

# defaults are reported

    Code
      . <- chat_mistral()
    Message
      Using model = "mistral-large-latest".
`````

## File: tests/testthat/_snaps/provider-ollama.md
`````markdown
# includes list of models in error message if `model` is missing

    Code
      chat_ollama()
    Condition
      Error in `chat_ollama()`:
      ! Must specify `model`.
      i Locally installed models: "llama3".

# checks that requested model is installed

    Code
      chat_ollama(model = "not-a-real-model")
    Condition
      Error in `chat_ollama()`:
      ! Model "not-a-real-model" is not installed locally.
      i Run `ollama pull not-a-real-model` in your terminal or `ollamar::pull("not-a-real-model")` in R to install the model.
      i See locally installed models with `ellmer::models_ollama()`.

# as_json specialised for Ollama

    Code
      as_json(stub, type_object(.additional_properties = TRUE))
    Condition
      Error in `method(as_json, list(ellmer::ProviderOllama, ellmer::TypeObject))`:
      ! `.additional_properties` not supported for Ollama.
`````

## File: tests/testthat/_snaps/provider-openai.md
`````markdown
# defaults are reported

    Code
      . <- chat_openai()
    Message
      Using model = "gpt-4.1".

# all tool variations work

    Code
      chat$chat("Great. Do it again.")
    Condition
      Error:
      ! Can't use async tools with `$chat()` or `$stream()`.
      i Async tools are supported, but you must use `$chat_async()` or `$stream_async()`.

# as_json specialised for OpenAI

    Code
      as_json(stub, type_object(.additional_properties = TRUE))
    Condition
      Error in `method(as_json, list(ellmer::ProviderOpenAI, ellmer::TypeObject))`:
      ! `.additional_properties` not supported for OpenAI.

# seed is deprecated, but still honored

    Code
      chat <- chat_openai_test(seed = 1)
    Condition
      Warning:
      The `seed` argument of `chat_openai()` is deprecated as of ellmer 0.2.0.
      i Please use the `params` argument instead.
`````

## File: tests/testthat/_snaps/provider-openrouter.md
`````markdown
# handles errors

    Code
      chat$chat("What is 1 + 1?", echo = FALSE)
    Condition
      Error in `method(value_turn, ellmer::ProviderOpenRouter)`:
      ! message
    Code
      chat$chat("What is 1 + 1?", echo = TRUE)
    Condition
      Error in `method(stream_parse, ellmer::ProviderOpenRouter)`:
      ! message

# all tool variations work

    Code
      chat$chat("Great. Do it again.")
    Condition
      Error in `FUN()`:
      ! Can't use async tools with `$chat()` or `$stream()`.
      i Async tools are supported, but you must use `$chat_async()` or `$stream_async()`.
`````

## File: tests/testthat/_snaps/provider-portkey.md
`````markdown
# defaults are reported

    Code
      . <- chat_portkey()

# all tool variations work

    Code
      chat$chat("Great. Do it again.")
    Condition
      Error in `FUN()`:
      ! Can't use async tools with `$chat()` or `$stream()`.
      i Async tools are supported, but you must use `$chat_async()` or `$stream_async()`.
`````

## File: tests/testthat/_snaps/provider-snowflake.md
`````markdown
# defaults are reported

    Code
      . <- chat_snowflake()
    Message
      Using model = "llama3.1-70b".
`````

## File: tests/testthat/_snaps/tokens.md
`````markdown
# useful message if no tokens

    Code
      token_usage()
    Message
      x No recorded usage in this session

# can retrieve and log tokens

    Code
      token_usage()
    Output
            provider model input output price
      1 testprovider  test    10     60    NA

# token_usage() shows price if available

    Code
      token_usage()
    Output
            provider model    input output price
      1 testprovider  test 12300000 678000 $1.24
`````

## File: tests/testthat/_snaps/tools-def-auto.md
`````markdown
# roxygen2 comment extraction works

    Code
      extract_comments_and_signature(has_roxygen_comments)
    Output
      [1] "#' A function for foo-ing three numbers.\n#'\n#' @param x The first param\n#' @param y The second param\n#' @param z Take a guess\n#' @returns The result of x %foo% y %foo% z.\nfunction (x, y, z = pi - 3.14)  ..."

---

    Code
      extract_comments_and_signature(aliased_function)
    Output
      [1] "#' A function for foo-ing three numbers.\n#'\n#' @param x The first param\n#' @param y The second param\n#' @param z Take a guess\n#' @returns The result of x %foo% y %foo% z.\nfunction (x, y, z = pi - 3.14)  ..."

---

    Code
      extract_comments_and_signature(indented_comments)
    Output
      [1] "  #' A function for foo-ing three numbers.\n  #'\n  #' @param x The first param\n  #' @param y The second param\n  #' @param z Take a guess\n  #' @returns The result of x %foo% y %foo% z.\nfunction (x, y, z = pi - 3.14)  ..."

---

    Code
      extract_comments_and_signature(no_srcfile)
    Output
      [1] "  #' A function for foo-ing three numbers.\nfunction (a, b, c = pi - 3.14)  ..."

# basic signature extraction works

    Code
      extract_comments_and_signature(no_roxygen_comments)
    Output
      [1] "function (i, j, k = pi - 3.14)  ..."

# checks its inputs

    Code
      create_tool_def(print, model = "gpt-4", chat = chat_google_gemini())
    Condition
      Error in `create_tool_def()`:
      ! Exactly one of `model` or `chat` must be supplied.
    Code
      create_tool_def(print, chat = 1)
    Condition
      Error in `create_tool_def()`:
      ! `chat` must be a <Chat> object or `NULL`, not the number 1.

# model is deprecated

    Code
      . <- create_tool_def(print, model = "gpt-4", echo = FALSE)
    Condition
      Warning:
      The `model` argument of `create_tool_def()` is deprecated as of ellmer 1.0.0.
      i Please use the `chat` argument instead.
`````

## File: tests/testthat/_snaps/tools-def.md
`````markdown
# tool_annotations(): checks its inputs

    Code
      tool_annotations(title = list("Something unexpected"))
    Condition
      Error in `tool_annotations()`:
      ! `title` must be a character vector or `NULL`, not a list.
    Code
      tool_annotations(read_only_hint = "yes")
    Condition
      Error in `tool_annotations()`:
      ! `read_only_hint` must be `TRUE`, `FALSE`, or `NULL`, not the string "yes".
    Code
      tool_annotations(open_world_hint = "yes")
    Condition
      Error in `tool_annotations()`:
      ! `open_world_hint` must be `TRUE`, `FALSE`, or `NULL`, not the string "yes".
    Code
      tool_annotations(idempotent_hint = "no")
    Condition
      Error in `tool_annotations()`:
      ! `idempotent_hint` must be `TRUE`, `FALSE`, or `NULL`, not the string "no".
    Code
      tool_annotations(destructive_hint = "no")
    Condition
      Error in `tool_annotations()`:
      ! `destructive_hint` must be `TRUE`, `FALSE`, or `NULL`, not the string "no".
`````

## File: tests/testthat/_snaps/turns.md
`````markdown
# normalize_turns throws useful errors

    Code
      normalize_turns(1)
    Condition
      Error:
      ! `turns` must be an unnamed list or `NULL`, not the number 1.
    Code
      normalize_turns(list(1))
    Condition
      Error in `normalize_turns()`:
      ! Every element of `turns` must be a `turn`.
    Code
      normalize_turns(list(sys_msg, user_msg), 1)
    Condition
      Error in `normalize_turns()`:
      ! `system_prompt` must be a single string or `NULL`, not the number 1.
    Code
      normalize_turns(list(sys_msg, user_msg), "foo2")
    Condition
      Error:
      ! `system_prompt` and `turns[[1]]` can't contain conflicting system prompts.

# as_user_turn gives useful errors

    Code
      as_user_turn(list())
    Condition
      Error:
      ! `...` must contain at least one input.
    Code
      as_user_turn(list(x = 1))
    Condition
      Error:
      ! `...` must be unnamed.
    Code
      as_user_turn(1)
    Condition
      Error in `FUN()`:
      ! `...` must be made up strings or <content> objects, not the number 1.

# as_user_turns gives useful errors

    Code
      as_user_turns(1)
    Condition
      Error:
      ! `1` must be a list or prompt, not the number 1.
    Code
      as_user_turns(x)
    Condition
      Error in `FUN()`:
      ! `x[[1]]` must be made up strings or <content> objects, not the number 1.

# turns have a reasonable print method

    Code
      Turn("user", "hello")
    Output
      <Turn: user>
      hello
`````

## File: tests/testthat/_snaps/utils-callbacks.md
`````markdown
# CallbackManager catches argument mismatches

    Code
      callbacks$add("foo")
    Condition
      Error:
      ! `callback` must be a function, not the string "foo".
    Code
      callbacks$add(function(foo) NULL)
    Condition
      Error:
      ! `callback` must have the argument `data`; it currently has `foo`.
    Code
      callbacks$add(function(x, y) x + y)
    Condition
      Error:
      ! `callback` must have the argument `data`; it currently has `x` and `y`.

---

    Code
      callbacks$invoke()
    Condition
      Error in `private$callbacks[[as.character(id)]]()`:
      ! argument "data" is missing, with no default
    Code
      callbacks$invoke(1, 2)
    Condition
      Error in `private$callbacks[[as.character(id)]]()`:
      ! unused argument (2)
`````

## File: tests/testthat/_snaps/utils-cat.md
`````markdown
# more realistic wrap examples

    Code
      cat(capture_sink(prefix = "?> ", width = 70, function(sink) {
        sink("It was the best of times, it was the worst of times, it was the age ")
        sink("of wisdom, it was the age of foolishness, it was the epoch of belief")
        sink(", it was the epoch of incredulity, it was the season of Light, it wa")
        sink("s the season of Darkness, it was the spring of hope, it was the wint")
        sink("er of despair.")
      }))
    Output
      ?> It was the best of times, it was the worst of times, it was the 
      ?> age of wisdom, it was the age of foolishness, it was the epoch of 
      ?> belief, it was the epoch of incredulity, it was the season of 
      ?> Light, it was the season of Darkness, it was the spring of hope, 
      ?> it was the winter of despair.

---

    Code
      cat(capture_sink(prefix = "?> ", width = 10000, function(sink) {
        sink("It was the best of times, it was the worst of times, it was the age ")
        sink("of wisdom, it was the age of foolishness, it was the epoch of belief")
        sink(", it was the epoch of incredulity, it was the season of Light, it wa")
        sink("s the season of Darkness, it was the spring of hope, it was the wint")
        sink("er of despair.")
      }))
    Output
      ?> It was the best of times, it was the worst of times, it was the age of wisdom, it was the age of foolishness, it was the epoch of belief, it was the epoch of incredulity, it was the season of Light, it was the season of Darkness, it was the spring of hope, it was the winter of despair.

---

    Code
      cat(capture_sink(prefix = "", width = 70, function(sink) {
        sink("It was the best of times, it was the worst of times, it was the age ")
        sink("of wisdom, it was the age of foolishness, it was the epoch of belief")
        sink(", it was the epoch of incredulity, it was the season of Light, it wa")
        sink("s the season of Darkness, it was the spring of hope, it was the wint")
        sink("er of despair.")
      }))
    Output
      It was the best of times, it was the worst of times, it was the age 
      of wisdom, it was the age of foolishness, it was the epoch of belief,
      it was the epoch of incredulity, it was the season of Light, it was 
      the season of Darkness, it was the spring of hope, it was the winter 
      of despair.

---

    Code
      cat(capture_sink(prefix = "", width = 10000, function(sink) {
        sink("It was the best of times, it was the worst of times, it was the age ")
        sink("of wisdom, it was the age of foolishness, it was the epoch of belief")
        sink(", it was the epoch of incredulity, it was the season of Light, it wa")
        sink("s the season of Darkness, it was the spring of hope, it was the wint")
        sink("er of despair.")
      }))
    Output
      It was the best of times, it was the worst of times, it was the age of wisdom, it was the age of foolishness, it was the epoch of belief, it was the epoch of incredulity, it was the season of Light, it was the season of Darkness, it was the spring of hope, it was the winter of despair.

---

    Code
      cat(capture_sink(prefix = "Dickens> ", function(sink) {
        sink("It was the best of times,\nit was the worst of times,\n")
        sink("it was the age ")
        sink("of wisdom, it was the age of ")
        sink("foolishness,\nit was the epoch of belief")
        sink(", it was the epoch of incredulity, ")
        sink(paste(rep_len(" ", 200), collapse = ""))
        sink("it was the season of Light, it wa")
        sink("s the season of Darkness,\n\n\nit was the spring of hope,")
        sink(" it was the wint")
        sink("er of despair.")
      }))
    Output
      Dickens> It was the best of times,
      Dickens> it was the worst of times,
      Dickens> it was the age of wisdom, it was the age of 
      Dickens> foolishness,
      Dickens> it was the epoch of belief, it was the epoch of 
      Dickens> incredulity,
      Dickens> it was the season of Light, it was the season of 
      Dickens> Darkness,
      Dickens> 
      Dickens> 
      Dickens> it was the spring of hope, it was the winter of 
      Dickens> despair.
`````

## File: tests/testthat/_snaps/utils-S7.md
`````markdown
# prop_whole_number validates inputs

    Code
      check_prop()("x")
    Condition
      Error:
      ! <class> object properties are invalid:
      - @prop must be <double>, not <character>
    Code
      check_prop()(c(1:2))
    Condition
      Error:
      ! <class> object properties are invalid:
      - @prop must be <double>, not <integer>
    Code
      check_prop()(1.5)
    Condition
      Error:
      ! <class> object properties are invalid:
      - @prop must be a whole number, not the number 1.5.
    Code
      check_prop(min = 1)(0)
    Condition
      Error:
      ! <class> object properties are invalid:
      - @prop must be at least 1, not 0.
    Code
      check_prop(max = -1)(0)
    Condition
      Error:
      ! <class> object properties are invalid:
      - @prop must be at most -1, not 0.
`````

## File: tests/testthat/_snaps/utils.md
`````markdown
# informative error if no key

    Code
      key_get("FOO")
    Condition
      Error:
      ! Can't find env var `FOO`.

# echo="output" replaces echo="text"

    Code
      expect_equal(check_echo("text"), "output")
    Condition
      Warning:
      `echo = "text"` was deprecated in ellmer 0.2.0.
      i Please use `echo = "output"` instead.
`````

## File: tests/testthat/batch/state-capitals.json
`````json
{
  "version": 1,
  "stage": "done",
  "batch": {
    "id": "batch_6826575e8994819083aca31bb6d307de",
    "object": "batch",
    "endpoint": "/v1/chat/completions",
    "errors": {},
    "input_file_id": "file-M1HWkC3RwUDPgaWtZYjjcy",
    "completion_window": "24h",
    "status": "completed",
    "output_file_id": "file-SdRQAoNeNzaFYr3YFb5hcp",
    "error_file_id": {},
    "created_at": 1747343198,
    "in_progress_at": 1747343199,
    "expires_at": 1747429598,
    "finalizing_at": 1747343399,
    "completed_at": 1747343400,
    "failed_at": {},
    "expired_at": {},
    "cancelling_at": {},
    "cancelled_at": {},
    "request_counts": {
      "total": 4,
      "completed": 4,
      "failed": 0
    },
    "metadata": {}
  },
  "results": [
    {
      "status_code": 200,
      "request_id": "6c41082f8debff173736a0b52e07d948",
      "body": {
        "id": "chatcmpl-BXa7llR1CJFH3KbFBLJf4ZvvYEUj4",
        "object": "chat.completion",
        "created": 1747343385,
        "model": "gpt-4.1-nano-2025-04-14",
        "choices": [
          {
            "index": 0,
            "message": {
              "role": "assistant",
              "content": "Des Moines",
              "refusal": {},
              "annotations": []
            },
            "logprobs": {},
            "finish_reason": "stop"
          }
        ],
        "usage": {
          "prompt_tokens": 20,
          "completion_tokens": 2,
          "total_tokens": 22,
          "prompt_tokens_details": {
            "cached_tokens": 0,
            "audio_tokens": 0
          },
          "completion_tokens_details": {
            "reasoning_tokens": 0,
            "audio_tokens": 0,
            "accepted_prediction_tokens": 0,
            "rejected_prediction_tokens": 0
          }
        },
        "service_tier": "default",
        "system_fingerprint": "fp_eede8f0d45"
      }
    },
    {
      "status_code": 200,
      "request_id": "881526127f188f503beb9e98d7933d01",
      "body": {
        "id": "chatcmpl-BXa6CU6GypSA9ODF6TKhpkHPP8jlI",
        "object": "chat.completion",
        "created": 1747343288,
        "model": "gpt-4.1-nano-2025-04-14",
        "choices": [
          {
            "index": 0,
            "message": {
              "role": "assistant",
              "content": "Albany",
              "refusal": {},
              "annotations": []
            },
            "logprobs": {},
            "finish_reason": "stop"
          }
        ],
        "usage": {
          "prompt_tokens": 21,
          "completion_tokens": 2,
          "total_tokens": 23,
          "prompt_tokens_details": {
            "cached_tokens": 0,
            "audio_tokens": 0
          },
          "completion_tokens_details": {
            "reasoning_tokens": 0,
            "audio_tokens": 0,
            "accepted_prediction_tokens": 0,
            "rejected_prediction_tokens": 0
          }
        },
        "service_tier": "default",
        "system_fingerprint": "fp_eede8f0d45"
      }
    },
    {
      "status_code": 200,
      "request_id": "d35aa9cb5535dd1ea70e1c5e3c469791",
      "body": {
        "id": "chatcmpl-BXa6316yijIIu48fQeazyXljyjTXk",
        "object": "chat.completion",
        "created": 1747343279,
        "model": "gpt-4.1-nano-2025-04-14",
        "choices": [
          {
            "index": 0,
            "message": {
              "role": "assistant",
              "content": "Sacramento",
              "refusal": {},
              "annotations": []
            },
            "logprobs": {},
            "finish_reason": "stop"
          }
        ],
        "usage": {
          "prompt_tokens": 20,
          "completion_tokens": 3,
          "total_tokens": 23,
          "prompt_tokens_details": {
            "cached_tokens": 0,
            "audio_tokens": 0
          },
          "completion_tokens_details": {
            "reasoning_tokens": 0,
            "audio_tokens": 0,
            "accepted_prediction_tokens": 0,
            "rejected_prediction_tokens": 0
          }
        },
        "service_tier": "default",
        "system_fingerprint": "fp_eede8f0d45"
      }
    },
    {
      "status_code": 200,
      "request_id": "fb17b486b4053f56120614c6fbffe571",
      "body": {
        "id": "chatcmpl-BXa6aPBtnciow6qc6gjEPMJ7DjgY7",
        "object": "chat.completion",
        "created": 1747343312,
        "model": "gpt-4.1-nano-2025-04-14",
        "choices": [
          {
            "index": 0,
            "message": {
              "role": "assistant",
              "content": "Austin",
              "refusal": {},
              "annotations": []
            },
            "logprobs": {},
            "finish_reason": "stop"
          }
        ],
        "usage": {
          "prompt_tokens": 20,
          "completion_tokens": 2,
          "total_tokens": 22,
          "prompt_tokens_details": {
            "cached_tokens": 0,
            "audio_tokens": 0
          },
          "completion_tokens_details": {
            "reasoning_tokens": 0,
            "audio_tokens": 0,
            "accepted_prediction_tokens": 0,
            "rejected_prediction_tokens": 0
          }
        },
        "service_tier": "default",
        "system_fingerprint": "fp_eede8f0d45"
      }
    }
  ],
  "started_at": 1747343197,
  "hash": {
    "provider": "de1de607a44b8964f051074a91a3787e",
    "prompts": "b8eafe281e3cc5113058d9722be3e295",
    "user_turns": "8c1302088b9bc30258d1191db0d35705"
  }
}
`````

## File: tests/testthat/batch/state-name.json
`````json
{
  "version": 1,
  "stage": "done",
  "batch": {
    "id": "batch_6826582985488190a4489a615c37539f",
    "object": "batch",
    "endpoint": "/v1/chat/completions",
    "errors": {},
    "input_file_id": "file-2ohRDLpVLSGcpcpbmMCf79",
    "completion_window": "24h",
    "status": "completed",
    "output_file_id": "file-4kMvA4FaKqXvw59xYMfUJW",
    "error_file_id": {},
    "created_at": 1747343401,
    "in_progress_at": 1747343402,
    "expires_at": 1747429801,
    "finalizing_at": 1747343603,
    "completed_at": 1747343604,
    "failed_at": {},
    "expired_at": {},
    "cancelling_at": {},
    "cancelled_at": {},
    "request_counts": {
      "total": 4,
      "completed": 4,
      "failed": 0
    },
    "metadata": {}
  },
  "results": [
    {
      "status_code": 200,
      "request_id": "e308e441d289045e722626dd080ef6b0",
      "body": {
        "id": "chatcmpl-BXaAzMTurodvGwYv20MMNPkn9Ngaz",
        "object": "chat.completion",
        "created": 1747343585,
        "model": "gpt-4.1-nano-2025-04-14",
        "choices": [
          {
            "index": 0,
            "message": {
              "role": "assistant",
              "content": "{\"wrapper\":{\"name\":\"Des Moines\"}}",
              "refusal": {},
              "annotations": []
            },
            "logprobs": {},
            "finish_reason": "stop"
          }
        ],
        "usage": {
          "prompt_tokens": 64,
          "completion_tokens": 8,
          "total_tokens": 72,
          "prompt_tokens_details": {
            "cached_tokens": 0,
            "audio_tokens": 0
          },
          "completion_tokens_details": {
            "reasoning_tokens": 0,
            "audio_tokens": 0,
            "accepted_prediction_tokens": 0,
            "rejected_prediction_tokens": 0
          }
        },
        "service_tier": "default",
        "system_fingerprint": "fp_eede8f0d45"
      }
    },
    {
      "status_code": 200,
      "request_id": "4ec4485816428a52a968d6f645a4d9b8",
      "body": {
        "id": "chatcmpl-BXaAz0hjcGCfGBDTKvDnQNEnTfJiw",
        "object": "chat.completion",
        "created": 1747343585,
        "model": "gpt-4.1-nano-2025-04-14",
        "choices": [
          {
            "index": 0,
            "message": {
              "role": "assistant",
              "content": "{\"wrapper\":{\"name\":\"Albany\"}}",
              "refusal": {},
              "annotations": []
            },
            "logprobs": {},
            "finish_reason": "stop"
          }
        ],
        "usage": {
          "prompt_tokens": 65,
          "completion_tokens": 8,
          "total_tokens": 73,
          "prompt_tokens_details": {
            "cached_tokens": 0,
            "audio_tokens": 0
          },
          "completion_tokens_details": {
            "reasoning_tokens": 0,
            "audio_tokens": 0,
            "accepted_prediction_tokens": 0,
            "rejected_prediction_tokens": 0
          }
        },
        "service_tier": "default",
        "system_fingerprint": "fp_eede8f0d45"
      }
    },
    {
      "status_code": 200,
      "request_id": "cb7815c6867bb534580831eaedacc249",
      "body": {
        "id": "chatcmpl-BXaAz7e7k7zRVVcrxrHp1YUpI6eXw",
        "object": "chat.completion",
        "created": 1747343585,
        "model": "gpt-4.1-nano-2025-04-14",
        "choices": [
          {
            "index": 0,
            "message": {
              "role": "assistant",
              "content": "{\"wrapper\":{\"name\":\"Sacramento\"}}",
              "refusal": {},
              "annotations": []
            },
            "logprobs": {},
            "finish_reason": "stop"
          }
        ],
        "usage": {
          "prompt_tokens": 64,
          "completion_tokens": 8,
          "total_tokens": 72,
          "prompt_tokens_details": {
            "cached_tokens": 0,
            "audio_tokens": 0
          },
          "completion_tokens_details": {
            "reasoning_tokens": 0,
            "audio_tokens": 0,
            "accepted_prediction_tokens": 0,
            "rejected_prediction_tokens": 0
          }
        },
        "service_tier": "default",
        "system_fingerprint": "fp_eede8f0d45"
      }
    },
    {
      "status_code": 200,
      "request_id": "2844ea0eaf101fd5a9c684d070036749",
      "body": {
        "id": "chatcmpl-BXa839Kt3smWySomfLXaaWbVnLAWm",
        "object": "chat.completion",
        "created": 1747343403,
        "model": "gpt-4.1-nano-2025-04-14",
        "choices": [
          {
            "index": 0,
            "message": {
              "role": "assistant",
              "content": "{\"wrapper\":{\"name\":\"Austin\"}}",
              "refusal": {},
              "annotations": []
            },
            "logprobs": {},
            "finish_reason": "stop"
          }
        ],
        "usage": {
          "prompt_tokens": 64,
          "completion_tokens": 7,
          "total_tokens": 71,
          "prompt_tokens_details": {
            "cached_tokens": 0,
            "audio_tokens": 0
          },
          "completion_tokens_details": {
            "reasoning_tokens": 0,
            "audio_tokens": 0,
            "accepted_prediction_tokens": 0,
            "rejected_prediction_tokens": 0
          }
        },
        "service_tier": "default",
        "system_fingerprint": "fp_eede8f0d45"
      }
    }
  ],
  "started_at": 1747343400,
  "hash": {
    "provider": "de1de607a44b8964f051074a91a3787e",
    "prompts": "b8eafe281e3cc5113058d9722be3e295",
    "user_turns": "8c1302088b9bc30258d1191db0d35705"
  }
}
`````

## File: tests/testthat/helper-async.R
`````r
# Given a promise-yielding expression, loop until it resolves or rejects.
# DON'T USE THIS TECHNIQUE IN SHINY, PLUMBER, OR HTTPUV CONTEXTS.
sync <- function(expr) {
  p <- force(expr)

  done <- FALSE
  success <- NULL
  error <- NULL

  promises::then(
    p,
    function(result) {
      success <<- result
      done <<- TRUE
    },
    function(err) {
      error <<- err
      done <<- TRUE
    }
  )

  while (!done) {
    later::run_now(0.25)
  }
  if (!is.null(error)) {
    stop(error)
  } else {
    success
  }
}
`````

## File: tests/testthat/helper-chat.R
`````r
MockedChat <- R6::R6Class(
  "MockedChat",
  inherit = Chat,
  public = list(
    i = 0,
    saved_chats = character(),

    initialize = function(saved_chats) {
      self$saved_chats <- saved_chats
    },

    chat = function(...) {
      self$i <- self$i + 1
      self$saved_chats[self$i]
    }
  )
)

mocked_chat <- function(chats) {
  MockedChat$new(saved_chats = chats)
}
`````

## File: tests/testthat/helper-content-tools.R
`````r
fixture_list_of_tools <- function() {
  list(
    tool_scalar = tool(function() 1, "Tool", .name = "tool_scalar"),
    my_tool = tool(function() 1, "Tool", .name = "my_tool"),
    tool_list = tool(
      function() list(a = 1, b = 2),
      "Tool",
      .name = "tool_list"
    ),
    tool_chr = tool(function() letters[1:3], "Tool", .name = "tool_chr"),
    tool_abort = tool(.description = "Tool", .name = "tool_abort", function() {
      cli::cli_abort(c(
        "Unexpected input",
        "i" = "Please revise and try again."
      ))
    })
  )
}

fixture_turn_with_tool_requests <- function(with_tool = TRUE) {
  tools <- fixture_list_of_tools()

  req_success <- ContentToolRequest(
    id = "x1",
    name = "my_tool",
    arguments = list(),
    tool = if (with_tool) tools$my_tool
  )
  req_fail <- ContentToolRequest(
    id = "x2",
    name = "my_tool",
    arguments = list(x = 1),
    tool = if (with_tool) tools$my_tool
  )
  req_list <- ContentToolRequest(
    id = "x3",
    name = "tool_list",
    arguments = list(),
    tool = if (with_tool) tools$tool_list
  )
  req_chr <- ContentToolRequest(
    id = "x4",
    name = "tool_chr",
    arguments = list(),
    tool = if (with_tool) tools$tool_chr
  )
  req_abort <- ContentToolRequest(
    id = "x5",
    name = "tool_abort",
    arguments = list(),
    tool = if (with_tool) tools$tool_abort
  )

  Turn(
    "assistant",
    list(req_success, req_fail, req_list, req_chr, req_abort)
  )
}
`````

## File: tests/testthat/helper-provider.R
`````r
retry_test <- function(code, retries = 1) {
  code <- enquo(code)

  i <- 1
  while (i <= retries) {
    tryCatch(
      {
        return(eval(get_expr(code), get_env(code)))
        break
      },
      expectation_failure = function(cnd) NULL
    )
    cli::cli_inform(c(i = "Retry {i}"))
    i <- i + 1
  }

  eval(get_expr(code), get_env(code))
}

# Params -----------------------------------------------------------------

test_params_stop <- function(chat_fun) {
  chat <- chat_fun(params = params(stop_sequences = "cool"))
  out <- chat$chat("Repeat after the following phrase: Dogs are cool")
  expect_equal(out, "Dogs are ")
}

# Tool calls -------------------------------------------------------------

test_tools_simple <- function(chat_fun) {
  chat <- chat_fun(
    system_prompt = "Always use a tool to answer. Reply with 'It is ____.'."
  )
  chat$register_tool(tool(
    function() "2024-01-01",
    "Return the current date",
    .name = "current_date"
  ))
  chat$register_tool(tool(
    function() "February",
    "Return the full name of the current month",
    .name = "current_month"
  ))

  result <- chat$chat("What's the current date in Y-M-D format?")
  expect_match(result, "2024-01-01")

  result <- chat$chat("What month is it? Provide the full name")
  expect_match(result, "February")
}

test_tools_async <- function(chat_fun) {
  chat <- chat_fun(system_prompt = "Be very terse, not even punctuation.")
  chat$register_tool(tool(
    coro::async(function() "2024-01-01"),
    "Return the current date"
  ))

  result <- sync(chat$chat_async("What's the current date in Y-M-D format?"))
  expect_match(result, "2024-01-01")

  expect_snapshot(
    chat$chat("Great. Do it again."),
    error = TRUE,
    transform = function(value) gsub(" \\(\\w+_[a-z0-9A-Z]+\\)", " (ID)", value)
  )
}

test_tools_parallel <- function(chat_fun) {
  chat <- chat_fun(system_prompt = "Be very terse, not even punctuation.")
  favourite_color <- function(person) {
    if (person == "Joe") "sage green" else "red"
  }
  chat$register_tool(tool(
    favourite_color,
    "Returns a person's favourite colour",
    person = type_string("Name of a person")
  ))

  result <- chat$chat(
    "
    What are Joe and Hadley's favourite colours?
    Answer like name1: colour1, name2: colour2
  "
  )
  expect_match(result, "Joe: sage green")
  expect_match(result, "Hadley: red")
  expect_length(chat$get_turns(), 4)
}

test_tools_sequential <- function(chat_fun, total_calls) {
  chat <- chat_fun(
    system_prompt = "
    Use provided tool calls to find the weather forecast and suitable
    equipment for a variety of weather conditions.

    In your response, be very terse and omit punctuation.
  "
  )

  forecast <- function(city) if (city == "New York") "rainy" else "sunny"
  equipment <- function(weather) {
    if (weather == "rainy") "umbrella" else "sunscreen"
  }
  chat$register_tool(tool(
    forecast,
    "Gets the weather forecast for a city",
    city = type_string("City name")
  ))
  chat$register_tool(tool(
    equipment,
    "Gets the equipment needed for a weather condition",
    weather = type_string("Weather condition")
  ))

  result <- chat$chat("What should I pack for New York this weekend?")
  expect_match(result, "umbrella", ignore.case = TRUE)
  expect_length(chat$get_turns(), total_calls)
}

# Data extraction --------------------------------------------------------

test_data_extraction <- function(chat_fun) {
  article_summary <- type_object(
    "Summary of the article. Preserve existing case.",
    title = type_string("Content title"),
    author = type_string("Name of the author")
  )

  prompt <- "
    # Apples are tasty
    By Hadley Wickham

    Apples are delicious and tasty and I like to eat them.
    Except for red delicious, that is. They are NOT delicious.
  "

  chat <- chat_fun()
  data <- chat$chat_structured(prompt, type = article_summary)
  expect_mapequal(
    data,
    list(title = "Apples are tasty", author = "Hadley Wickham")
  )

  # Check that we can do it again
  data <- chat$chat_structured(prompt, type = article_summary)
  expect_mapequal(
    data,
    list(title = "Apples are tasty", author = "Hadley Wickham")
  )
}

# Images -----------------------------------------------------------------

test_images_inline <- function(chat_fun, test_shape = TRUE) {
  chat <- chat_fun()
  response <- chat$chat(
    "What's in this image? (Be sure to mention the outside shape)",
    content_image_file(system.file("httr2.png", package = "ellmer"))
  )
  if (test_shape) {
    expect_match(response, "hex")
  }
  expect_match(response, "baseball")
}

test_images_remote <- function(chat_fun, test_shape = TRUE) {
  chat <- chat_fun()
  response <- chat$chat(
    "What's in this image? (Be sure to mention the outside shape)",
    content_image_url("https://httr2.r-lib.org/logo.png")
  )
  if (test_shape) {
    expect_match(response, "hex")
  }
  expect_match(response, "baseball")
}

test_images_remote_error <- function(chat_fun) {
  chat <- chat_fun()

  image_remote <- content_image_url("https://httr2.r-lib.org/logo.png")
  expect_snapshot(
    . <- chat$chat("What's in this image?", image_remote),
    error = TRUE
  )
  expect_length(chat$get_turns(), 0)
}

# PDF ---------------------------------------------------------------------

test_pdf_local <- function(chat_fun) {
  chat <- chat_fun()
  response <- chat$chat(
    "What's the title of this document?",
    content_pdf_file(test_path("apples.pdf"))
  )
  expect_match(response, "Apples are tasty")
  expect_match(chat$chat("What apple is not tasty?"), "red delicious")
}

# Models ------------------------------------------------------------------

test_models <- function(models_fun) {
  models <- models_fun()
  expect_gt(nrow(models), 0)
  expect_s3_class(models, "data.frame")
  expect_contains(names(models), "id")
}
`````

## File: tests/testthat/teardown-usage.R
`````r
token_usage()
`````

## File: tests/testthat/test-as-json.R
`````r
test_that("can convert basic types to json schema", {
  expect_equal(
    as_json(test_provider(), type_boolean("desc")),
    list(type = "boolean", description = "desc")
  )

  expect_equal(
    as_json(test_provider(), type_enum("desc", letters[1:3])),
    list(type = "string", description = "desc", enum = as.list(letters[1:3]))
  )

  expect_equal(
    as_json(test_provider(), type_array("a", type_boolean("b"))),
    list(
      type = "array",
      description = "a",
      items = list(type = "boolean", description = "b")
    )
  )
})

test_that("can convert an object to json schema", {
  obj <- type_object(
    "a",
    integer = type_integer(),
    number = type_number(),
    string = type_string()
  )

  expect_equal(
    as_json(test_provider(), obj),
    list(
      type = "object",
      description = "a",
      properties = list(
        integer = list(type = "integer", description = ""),
        number = list(type = "number", description = ""),
        string = list(type = "string", description = "")
      ),
      required = list("integer", "number", "string"),
      additionalProperties = FALSE
    )
  )
})
`````

## File: tests/testthat/test-batch-chat.R
`````r
test_that("can get chats/data from completed request", {
  chat <- chat_openai_test()

  prompts <- list(
    "What's the capital of Iowa?",
    "What's the capital of New York?",
    "What's the capital of California?",
    "What's the capital of Texas?"
  )
  chats <- batch_chat(
    chat,
    prompts,
    path = test_path("batch/state-capitals.json")
  )
  expect_length(chats, 4)

  type_state <- type_object(name = type_string("State name"))
  data <- batch_chat_structured(
    chat,
    prompts,
    path = test_path("batch/state-name.json"),
    type = type_state
  )
  expect_equal(nrow(data), 4)
})

test_that("errors if chat/provider/prompts don't match previous run", {
  chat <- chat_anthropic_test(system_prompt = "Be cool")
  prompts <- list("What's the capital of Iowa?")
  path <- test_path("batch/state-capitals.json")
  expect_snapshot(batch_chat(chat, prompts, path), error = TRUE)
})

test_that("steps through in logical order, writing to disk at end step", {
  chat <- chat_openai_test()
  prompts <- list("What's your name")
  local_mocked_bindings(
    batch_submit = function(...) list(id = "123"),
    batch_poll = function(...) list(id = "123", results = TRUE),
    batch_status = function(...) list(working = FALSE),
    batch_retrieve = function(...) list(x = 1, y = 2)
  )

  path <- withr::local_tempfile()
  read_stage <- function() jsonlite::read_json(path)$stage

  job <- BatchJob$new(chat, prompts, path)
  completed <- \() batch_chat_completed(chat, prompts, path)

  expect_equal(job$stage, "submitting")
  expect_false(completed())

  job$step()
  expect_equal(job$stage, "waiting")
  expect_equal(read_stage(), "waiting")
  expect_equal(job$batch, list(id = "123"))
  expect_true(completed())

  job$step()
  expect_equal(job$stage, "retrieving")
  expect_equal(read_stage(), "retrieving")
  expect_equal(job$batch, list(id = "123", results = TRUE))
  expect_true(completed())

  job$step()
  expect_equal(job$stage, "done")
  expect_equal(read_stage(), "done")
  expect_equal(job$results, list(x = 1, y = 2))
  expect_true(completed())
})

test_that("can run all steps at once", {
  local_mocked_bindings(
    batch_submit = function(...) list(id = "123"),
    batch_poll = function(...) list(id = "123", results = TRUE),
    batch_status = function(...) list(working = FALSE),
    batch_retrieve = function(...) list(x = 1, y = 2)
  )

  path <- withr::local_tempfile()
  job <- BatchJob$new(
    chat = chat_openai_test(),
    prompts = list("What's your name"),
    path = path
  )
  job$step_until_done()
  expect_equal(job$stage, "done")
  expect_equal(job$results, list(x = 1, y = 2))
})

test_that("errors if wait = FALSE and not complete", {
  local_mocked_bindings(
    batch_submit = function(...) list(id = "123"),
    batch_poll = function(...) list(id = "123", results = TRUE),
    batch_status = function(...) list(working = TRUE)
  )

  path <- withr::local_tempfile()
  job <- BatchJob$new(
    chat = chat_openai_test(),
    prompts = list("What's your name"),
    path = path,
    wait = FALSE
  )
  expect_equal(job$step_until_done(), NULL)
})

test_that("informative error for bad inputs", {
  chat_openai <- chat_openai_test()
  chat_ollama <- chat_openai_test()
  chat_ollama$.__enclos_env__$private$provider <- ProviderOllama(
    "ollama",
    "model",
    "base_url",
    api_key = "api_key"
  )

  expect_snapshot(error = TRUE, {
    batch_chat("x")
    batch_chat(chat_ollama)
    batch_chat(chat_openai, "a")
    batch_chat(chat_openai, list("a"), path = 1)
    batch_chat(chat_openai, list("a"), path = "x", wait = 1)
  })
})
`````

## File: tests/testthat/test-chat-parallel.R
`````r
test_that("can chat in parallel", {
  chat <- chat_openai_test()
  chats <- parallel_chat(chat, list("What's 1 + 1?", "What's 2 + 2?"))

  expect_type(chats, "list")
  expect_length(chats, 2)

  expect_s3_class(chats[[1]], "Chat")
  expect_s3_class(chats[[2]], "Chat")

  expect_equal(chats[[1]]$last_turn()@contents[[1]]@text, "2")
  expect_equal(chats[[2]]$last_turn()@contents[[1]]@text, "4")
})

test_that("can call tools in parallel", {
  prompts <- rep(list("Roll the dice, please! Reply with 'You rolled ____'"), 2)

  chat <- chat_openai_test()
  chat$register_tool(tool(counter(), "Rolls a six-sided die.", .name = "roll"))
  chats <- parallel_chat(chat, prompts)

  turns_1 <- chats[[1]]$get_turns()
  expect_s3_class(turns_1[[2]]@contents[[1]], "ellmer::ContentToolRequest")
  expect_s3_class(turns_1[[3]]@contents[[1]], "ellmer::ContentToolResult")
  expect_equal(contents_text(turns_1[[4]]), "You rolled 1")

  turns_1 <- chats[[2]]$get_turns()
  expect_equal(contents_text(turns_1[[4]]), "You rolled 2")
})

test_that("can have uneven number of turns", {
  prompts <- list(
    "Roll the dice, please! Reply with 'You rolled ____'",
    "reply with the word 'boop'",
    "Roll the dice, please! Reply with 'You rolled ____'",
    "reply with the word 'beep'"
  )

  chat <- chat_openai_test()
  chat$register_tool(tool(counter(), "Rolls a six-sided die.", .name = "roll"))
  chats <- parallel_chat(chat, prompts)

  lengths <- map_int(chats, \(chat) length(chat$get_turns()))
  expect_equal(lengths, c(4, 2, 4, 2))

  text <- map_chr(chats, \(chat) chat$last_turn()@text)
  expect_equal(text, c("You rolled 1", "boop", "You rolled 2", "beep"))
})

# structured data --------------------------------------------------------------

test_that("can extract data in parallel", {
  person <- type_object(name = type_string(), age = type_integer())

  chat <- chat_openai_test()
  data <- parallel_chat_structured(
    chat,
    list(
      "John, age 15, won first prize",
      "Jane, age 16, won second prize"
    ),
    type = person
  )
  expect_equal(data, data.frame(name = c("John", "Jane"), age = c(15, 16)))
})

test_that("can get tokens and/or cost", {
  # These are pretty weak, but it's hard to know how to do better.
  person <- type_object(name = type_string(), age = type_integer())

  chat <- chat_openai_test()
  data <- parallel_chat_structured(
    chat,
    list("John, age 15", "Jane, age 16"),
    type = person,
    include_tokens = TRUE
  )
  expect_contains(names(data), c("input_tokens", "output_tokens"))
  expect_equal(data$input_tokens > 0, c(TRUE, TRUE))
  expect_equal(data$output_tokens > 0, c(TRUE, TRUE))

  data <- parallel_chat_structured(
    chat,
    list("John, age 15", "Jane, age 16"),
    type = person,
    include_cost = TRUE
  )
  expect_contains(names(data), "cost")
  expect_equal(data$cost > 0, c(TRUE, TRUE))

  data <- parallel_chat_structured(
    chat,
    list("John, age 15", "Jane, age 16"),
    type = person,
    include_cost = TRUE,
    include_tokens = TRUE
  )
  expect_contains(names(data), c("input_tokens", "output_tokens", "cost"))
})
`````

## File: tests/testthat/test-chat-structured.R
`````r
# Object from ContentJSON -----------------------------------------------------

test_that("useful error if no ContentJson", {
  turn <- Turn("assistant", list(ContentText("Hello")))
  expect_snapshot(extract_data(turn), error = TRUE)
})

test_that("can extract data from ContentJson", {
  turn <- Turn("assistant", list(ContentJson(list(x = 1))))
  type <- type_object(x = type_integer())
  expect_equal(extract_data(turn, type), list(x = 1))
})

test_that("can opt-out of conversion data from ContentJson", {
  turn <- Turn("assistant", list(ContentJson(list(x = list(1, 2)))))
  type <- type_object(x = type_array(items = type_integer()))
  expect_equal(extract_data(turn, type, convert = TRUE), list(x = c(1L, 2L)))
  expect_equal(extract_data(turn, type, convert = FALSE), list(x = list(1, 2)))
})

test_that("can extract data when wrapper is used", {
  turn <- Turn("assistant", list(ContentJson(list(wrapper = list(x = 1)))))
  type <- wrap_type_if_needed(type_object(x = type_integer()), TRUE)
  expect_equal(extract_data(turn, type, needs_wrapper = TRUE), list(x = 1))
})

# Type coercion ---------------------------------------------------------------

test_that("optional base types (scalars) stay as NULL", {
  expect_equal(convert_from_type(NULL, type_boolean(required = FALSE)), NULL)
  expect_equal(convert_from_type(NULL, type_integer(required = FALSE)), NULL)
  expect_equal(convert_from_type(NULL, type_number(required = FALSE)), NULL)
  expect_equal(convert_from_type(NULL, type_string(required = FALSE)), NULL)
})

test_that("can convert arrays of basic types to simple vectors", {
  expect_equal(
    convert_from_type(list(FALSE, TRUE), type_array(items = type_boolean())),
    c(FALSE, TRUE)
  )
  expect_identical(
    convert_from_type(list(1, 2), type_array(items = type_integer())),
    c(1L, 2L)
  )
  expect_equal(
    convert_from_type(list(1.2, 2.5), type_array(items = type_number())),
    c(1.2, 2.5)
  )
  expect_equal(
    convert_from_type(list("x", "y"), type_array(items = type_string())),
    c("x", "y")
  )
})

test_that("handles empty and NULL vectors of basic types", {
  type <- type_array(items = type_boolean(required = FALSE))
  expect_equal(convert_from_type(list(FALSE, TRUE), type), c(FALSE, TRUE))
  expect_equal(convert_from_type(list(NULL, TRUE), type), c(NA, TRUE))

  type <- type_array(items = type_integer(required = FALSE))
  expect_identical(convert_from_type(list(), type), integer())
  expect_identical(convert_from_type(list(NULL), type), NA_integer_)

  type <- type_array(items = type_number(required = FALSE))
  expect_identical(convert_from_type(list(), type), double())
  expect_identical(convert_from_type(list(NULL), type), NA_real_)

  type <- type_array(items = type_string(required = FALSE))
  expect_equal(convert_from_type(list(), type), character())
  expect_equal(convert_from_type(list(NULL), type), NA_character_)
})

test_that("completely missing optional components become NULL", {
  type <- type_integer(required = FALSE)
  expect_equal(convert_from_type(NULL, type), NULL)

  type <- type_array(items = type_integer(), required = FALSE)
  expect_equal(convert_from_type(NULL, type), NULL)

  type <- type_object(
    x = type_integer(),
    y = type_integer(required = FALSE)
  )
  expect_equal(
    convert_from_type(list(x = 1), type),
    list(x = 1, y = NULL)
  )
})

test_that("can handle missing optional values in objects (#384)", {
  data <- list(
    list(fruit = "Apples", year = NULL),
    list(fruit = "Oranges", year = NULL)
  )
  type <- type_array(
    items = type_object(
      fruit = type_string(),
      year = type_integer(required = FALSE)
    )
  )
  expect_equal(
    convert_from_type(data, type),
    data.frame(
      fruit = c("Apples", "Oranges"),
      year = c(NA_integer_, NA_integer_)
    )
  )
})

test_that("can covert array of arrays to lists of vectors", {
  expect_equal(
    convert_from_type(
      list(list(1, 2), list(3, 4)),
      type_array(items = type_array(items = type_integer()))
    ),
    list(c(1L, 2L), c(3L, 4L))
  )
})

test_that("can convert arrays of enums to factors", {
  expect_equal(
    convert_from_type(
      list("x", "y"),
      type_array(items = type_enum(values = c("x", "y", "z")))
    ),
    factor(c("x", "y"), levels = c("x", "y", "z"))
  )
})

test_that("can convert arrays of objects to data frames", {
  expect_equal(
    convert_from_type(
      list(list(x = 1, y = "x"), list(x = 3, y = "y")),
      type_array(
        items = type_object(
          x = type_integer(),
          y = type_string()
        )
      )
    ),
    data.frame(x = c(1L, 3L), y = c("x", "y"))
  )
})

test_that("can recursively convert objects contents", {
  expect_equal(
    convert_from_type(
      list(x = 1, y = list(1, 2, 3)),
      type_object(
        x = type_integer(),
        y = type_array(items = type_integer())
      )
    ),
    list(x = 1, y = c(1, 2, 3))
  )
})
`````

## File: tests/testthat/test-chat.R
`````r
test_that("can get and set the system prompt", {
  chat <- chat_openai_test()
  chat$set_turns(list(
    Turn("user", "Hi"),
    Turn("assistant", "Hello")
  ))

  # NULL -> NULL
  chat$set_system_prompt(NULL)
  expect_equal(chat$get_system_prompt(), NULL)

  # NULL -> string
  chat$set_system_prompt("x")
  expect_equal(chat$get_system_prompt(), "x")

  # string -> string
  chat$set_system_prompt("y")
  expect_equal(chat$get_system_prompt(), "y")

  # string -> NULL
  chat$set_system_prompt(NULL)
  expect_equal(chat$get_system_prompt(), NULL)
})

test_that("system prompt can be a vector", {
  chat <- chat_openai_test(c("This is", "the system prompt"))
  expect_equal(chat$get_system_prompt(), "This is\n\nthe system prompt")
})

test_that("system prompt must be a character vector", {
  expect_snapshot(error = TRUE, {
    chat_openai_test(1)
  })
})

test_that("can retrieve system prompt with last_turn()", {
  chat1 <- chat_openai_test(system_prompt = NULL)
  expect_equal(chat1$last_turn("system"), NULL)

  chat2 <- chat_openai_test(system_prompt = "You are from New Zealand")
  expect_equal(
    chat2$last_turn("system"),
    Turn("system", "You are from New Zealand")
  )
})

test_that("can get and set turns", {
  chat <- chat_openai_test()
  expect_equal(chat$get_turns(), list())

  turns <- list(Turn("user"), Turn("assistant"))
  chat$set_turns(turns)
  expect_equal(chat$get_turns(), list(Turn("user"), Turn("assistant")))
})

test_that("can get model", {
  chat <- chat_openai_test(model = "abc")
  expect_equal(chat$get_model(), "abc")
})

test_that("setting turns usually preserves, but can set system prompt", {
  chat <- chat_openai_test(system_prompt = "You're a funny guy")
  chat$set_turns(list())
  expect_equal(chat$get_system_prompt(), "You're a funny guy")

  chat$set_turns(list(Turn("system", list(ContentText("You're a cool guy")))))
  expect_equal(chat$get_system_prompt(), "You're a cool guy")
})


test_that("can perform a simple batch chat", {
  chat <- chat_openai_test()

  result <- chat$chat("What's 1 + 1. Just give me the answer, no punctuation")
  expect_equal(result, "2")
  expect_equal(chat$last_turn()@contents[[1]]@text, "2")
})

test_that("can chat with a single prompt", {
  chat <- chat_openai_test()
  expect_no_error(chat$chat(interpolate("What's 1 + 1?")))
})

test_that("can't chat with multiple prompts", {
  chat <- chat_openai_test()
  prompt <- interpolate("{{x}}", x = 1:2)
  expect_snapshot(error = TRUE, {
    chat$chat(prompt)
  })
})

test_that("can perform a simple async batch chat", {
  chat <- chat_openai_test()

  result <- chat$chat_async(
    "What's 1 + 1. Just give me the answer, no punctuation"
  )
  expect_s3_class(result, "promise")

  result <- sync(result)
  expect_equal(result, "2")
  expect_equal(chat$last_turn()@contents[[1]]@text, "2")
})

test_that("can perform a simple streaming chat", {
  chat <- chat_openai_test()

  chunks <- coro::collect(chat$stream(
    "
    What are the canonical colors of the ROYGBIV rainbow?
    Put each colour on its own line. Don't use punctuation.
  "
  ))
  expect_gt(length(chunks), 2)

  rainbow_re <- "^red *\norange *\nyellow *\ngreen *\nblue *\nindigo *\nviolet *\n?$"
  expect_match(paste(chunks, collapse = ""), rainbow_re, ignore.case = TRUE)
  expect_match(
    chat$last_turn()@contents[[1]]@text,
    rainbow_re,
    ignore.case = TRUE
  )
})

test_that("can perform a simple async batch chat", {
  chat <- chat_openai_test()

  chunks <- coro::async_collect(chat$stream_async(
    "
    What are the canonical colors of the ROYGBIV rainbow?
    Put each colour on its own line. Don't use punctuation.
  "
  ))
  expect_s3_class(chunks, "promise")

  chunks <- sync(chunks)
  expect_gt(length(chunks), 2)
  rainbow_re <- "^red *\norange *\nyellow *\ngreen *\nblue *\nindigo *\nviolet *\n?$"
  expect_match(paste(chunks, collapse = ""), rainbow_re, ignore.case = TRUE)
  expect_match(
    chat$last_turn()@contents[[1]]@text,
    rainbow_re,
    ignore.case = TRUE
  )
})

test_that("can extract structured data", {
  person <- type_object(name = type_string(), age = type_integer())

  chat <- chat_openai_test()
  data <- chat$chat_structured("John, age 15, won first prize", type = person)
  expect_equal(data, list(name = "John", age = 15))
})

test_that("can extract structured data (async)", {
  person <- type_object(name = type_string(), age = type_integer())

  chat <- chat_openai_test()
  data <- sync(chat$chat_structured_async(
    "John, age 15, won first prize",
    type = person
  ))
  expect_equal(data, list(name = "John", age = 15))
})

test_that("can retrieve tokens with or without system prompt", {
  chat <- chat_openai_test("abc")
  expect_equal(nrow(chat$get_tokens(FALSE)), 0)
  expect_equal(nrow(chat$get_tokens(TRUE)), 1)

  chat <- chat_openai_test(NULL)
  expect_equal(nrow(chat$get_tokens(FALSE)), 0)
  expect_equal(nrow(chat$get_tokens(TRUE)), 0)
})

test_that("has a basic print method", {
  chat <- chat_openai_test()
  chat$set_turns(list(
    Turn("user", "What's 1 + 1?\nWhat's 1 + 2?"),
    Turn("assistant", "2\n\n3", tokens = c(15, 5))
  ))
  expect_snapshot(chat)
})

test_that("print method shows cumulative tokens & cost", {
  chat <- chat_openai_test(model = "gpt-4o", system_prompt = NULL)
  chat$set_turns(list(
    Turn("user", "Input 1"),
    Turn("assistant", "Output 1", tokens = c(15000, 500)),
    Turn("user", "Input 2"),
    Turn("assistant", "Output 1", tokens = c(30000, 1000))
  ))
  expect_snapshot(chat)

  expect_equal(chat$get_cost(), dollars(0.1275))
  expect_equal(chat$get_cost("last"), dollars(0.085))
})

test_that("can optionally echo", {
  chat <- chat_openai_test("Repeat the input back to me exactly", echo = TRUE)
  expect_output(chat$chat("Echo this."), "Echo this.")
  expect_output(chat$chat("Echo this.", echo = FALSE), NA)

  chat <- chat_openai_test("Repeat the input back to me exactly")
  expect_output(chat$chat("Echo this."), NA)
  expect_output(chat$chat("Echo this.", echo = TRUE), "Echo this.")
})

test_that("can retrieve last_turn for user and assistant", {
  chat <- chat_openai_test()
  expect_equal(chat$last_turn("user"), NULL)
  expect_equal(chat$last_turn("assistant"), NULL)

  chat$chat("Hi")
  expect_equal(chat$last_turn("user")@role, "user")
  expect_equal(chat$last_turn("assistant")@role, "assistant")
})

test_that("chat can get and register a list of tools", {
  chat <- chat_openai_test()
  chat2 <- chat_openai_test()

  tools <- list(
    "sys_time" = tool(
      function() strftime(Sys.time(), "%F %T"),
      .description = "Get the current system time",
      .name = "sys_time"
    ),
    "r_version" = tool(
      function() R.version.string,
      .description = "Get the R version of the current session",
      .name = "r_version"
    )
  )

  for (tool in tools) {
    chat$register_tool(tool)
  }

  chat2$set_tools(tools)

  expect_equal(chat$get_tools(), tools)
  expect_equal(chat2$get_tools(), chat$get_tools())

  # action = "replace" overwrites existing tools
  tool_r_major <- tool(
    function() R.version$major,
    .description = "Get the major version of R",
    .name = "r_version_major"
  )
  new_tools <- list("r_version_major" = tool_r_major)
  chat$set_tools(new_tools)
  expect_equal(chat$get_tools(), new_tools)

  # set_tools() throws with helpful message if given just a tool
  expect_snapshot(
    error = TRUE,
    chat$set_tools(tools[[1]])
  )

  # set_tools() throws with helpful message if not all items are tools
  expect_snapshot(
    error = TRUE,
    chat$set_tools(c(tools, list("foo")))
  )
})

test_that("chat warns on tool failures", {
  chat <- chat_openai_test()

  chat$register_tool(tool(
    function(user) stop("User denied tool request"),
    "Find out a user's favorite color",
    user = type_string("User's name"),
    .name = "user_favorite_color"
  ))

  expect_snapshot(
    . <- chat$chat("What are Joe, Hadley, Simon, and Tom's favorite colors?"),
    transform = function(value) gsub(" \\(\\w+_[a-z0-9A-Z]+\\)", " (ID)", value)
  )
})

test_that("chat callbacks for tool requests/results", {
  chat <- chat_openai_test()

  test_tool <- tool(
    function(user) c("red", "blue")[nchar(user) %% 2 + 1],
    .description = "Find out a user's favorite color",
    user = type_string("User's name"),
    .name = "user_favorite_color"
  )

  chat$register_tool(test_tool)

  last_request <- NULL
  cb_count_request <- 0
  cb_count_result <- 0

  chat$on_tool_request(function(request) {
    cb_count_request <<- cb_count_request + 1
    cli::cli_inform(
      "[{cb_count_request}] Tool request: {request@arguments$user}"
    )

    expect_s7_class(request, ContentToolRequest)
    expect_equal(request@tool, test_tool)
    last_request <<- request
  })
  chat$on_tool_result(function(result) {
    cb_count_result <<- cb_count_result + 1
    cli::cli_inform("[{cb_count_result}] Tool result: {result@value}")

    expect_s7_class(result, ContentToolResult)
    expect_equal(result@request, last_request)
  })

  expect_snapshot(
    . <- chat$chat("What are Joe and Hadley's favorite colors?")
  )
  expect_equal(cb_count_request, 2L)
  expect_equal(cb_count_result, 2L)

  expect_snapshot(error = TRUE, {
    chat$on_tool_request(function(data) NULL)
    chat$on_tool_result(function(data) NULL)
  })
})

test_that("tool calls can be rejected via `tool_request` callbacks", {
  chat <- chat_openai_test()

  chat$register_tool(tool(
    function(user) "red",
    "Find out a user's favorite color",
    user = type_string("User's name"),
    .name = "user_favorite_color"
  ))

  chat$on_tool_request(function(request) {
    if (request@arguments$user == "Joe") {
      tool_reject("Joe denied the request.")
    }
  })

  expect_snapshot(
    . <- chat$chat(
      "What are Joe and Hadley's favorite colors?",
      "Write 'Joe ____ Hadley ____'. Use 'unknown' if you don't know.",
      echo = "output"
    )
  )
})

test_that("tool calls can be rejected via the tool function", {
  chat <- chat_openai_test()

  chat$register_tool(tool(
    function(user) if (user == "Joe") tool_reject() else "red",
    "Find out a user's favorite color",
    user = type_string("User's name"),
    .name = "user_favorite_color"
  ))

  expect_snapshot(
    . <- chat$chat(
      "What are Joe and Hadley's favorite colors?",
      "Write 'Joe ____ Hadley ____'. Use 'unknown' if you don't know.",
      echo = "output"
    )
  )
})

test_that("$chat_async() can run tools concurrently", {
  res <- list()

  chat <- chat_openai_test()
  chat$register_tool(tool(
    coro::async(function(i) {
      res[[i]] <<- list(start = Sys.time())
      coro::await(coro::async_sleep(0.5))
      res[[i]]$end <<- Sys.time()
      i
    }),
    .description = "Tests async tool usage",
    .name = "test_async_tool",
    i = type_string("ID of the tool call")
  ))

  sync(chat$chat_async(
    "Run `test_async_tool` twice with inputs '1' and '2'.",
    tool_mode = "concurrent"
  ))

  # The calls overlap, and both start before the first ends
  expect_true(res[[1]]$start < res[[1]]$end)
  expect_true(res[[2]]$start < res[[1]]$end)
  expect_true(res[[2]]$start < res[[2]]$end)
})

test_that("$chat_async() can run tools sequentially", {
  res <- list()

  chat <- chat_openai_test()
  chat$register_tool(tool(
    coro::async(function(i) {
      res[[i]] <<- list(start = Sys.time())
      coro::await(coro::async_sleep(0.5))
      res[[i]]$end <<- Sys.time()
      i
    }),
    .description = "Tests async tool usage",
    .name = "test_async_tool",
    i = type_string("ID of the tool call")
  ))

  sync(chat$chat_async(
    "Run `test_async_tool` twice with inputs '1' and '2'.",
    tool_mode = "sequential"
  ))

  # The calls don't overlap, the first ends before the second starts
  expect_true(res[[1]]$start < res[[1]]$end)
  expect_true(res[[1]]$end < res[[2]]$start)
  expect_true(res[[2]]$start < res[[2]]$end)
})

test_that("$stream(stream='content') yields tool request/result contents", {
  chat <- chat_openai_test()
  tool_current_date <- tool(function() "2024-01-01", "Return the current date")
  chat$register_tool(tool_current_date)

  res <- coro::collect(
    chat$stream(
      "What's the current date in Y-M-D format?",
      stream = "content"
    )
  )

  # 1. Tool request
  # 2. Tool result (paired with request)
  # 3. ...rest of assistant message
  expect_s7_class(res[[1]], ContentToolRequest)
  expect_equal(res[[1]]@tool, tool_current_date)
  expect_s7_class(res[[2]], ContentToolResult)
  expect_equal(res[[2]]@value, "2024-01-01")
  expect_equal(res[[2]]@request, res[[1]])

  for (delta in res[-(1:2)]) {
    expect_s7_class(delta, ContentText)
  }
})

test_that("$stream_async(stream='content', tool_mode='concurrent') yields tool request/result contents concurrently", {
  chat <- chat_openai_test()
  tool_current_date <- tool(
    coro::async(function() {
      coro::await(coro::async_sleep(0.1))
      "2024-01-01"
    }),
    "Return the current date",
    .name = "current_date"
  )
  chat$register_tool(tool_current_date)

  res <- sync(
    coro::async_collect(
      chat$stream_async(
        "Confirm the current data by calling `current_date` twice.",
        "Write YES if the dates match or NO if not.",
        stream = "content",
        tool_mode = "concurrent"
      )
    )
  )

  # 1. Tool request 1
  expect_s7_class(res[[1]], ContentToolRequest)
  expect_equal(res[[1]]@tool, tool_current_date)
  # 2. Tool request 2
  expect_s7_class(res[[2]], ContentToolRequest)
  expect_equal(res[[2]]@tool, tool_current_date)
  # 3. Tool result 1
  expect_s7_class(res[[3]], ContentToolResult)
  expect_equal(res[[3]]@value, "2024-01-01")
  expect_equal(res[[3]]@request, res[[1]])
  # 4. Tool result 2
  expect_s7_class(res[[4]], ContentToolResult)
  expect_equal(res[[4]]@value, "2024-01-01")
  expect_equal(res[[4]]@request, res[[2]])

  # 5. ...rest of assistant message
  for (delta in res[-(1:4)]) {
    expect_s7_class(delta, ContentText)
  }
})

test_that("$stream_async(stream='content', tool_mode='sequential') yields tool request/result contents sequentially", {
  chat <- chat_openai_test()
  tool_current_date <- tool(
    coro::async(function() {
      coro::await(coro::async_sleep(0.1))
      "2024-01-01"
    }),
    "Return the current date",
    .name = "current_date"
  )
  chat$register_tool(tool_current_date)

  res <- sync(
    coro::async_collect(
      chat$stream_async(
        "Confirm the current data by calling `current_date` twice.",
        "Write YES if the dates match or NO if not.",
        stream = "content",
        tool_mode = "sequential"
      )
    )
  )

  # 1. Tool request 1
  expect_s7_class(res[[1]], ContentToolRequest)
  expect_equal(res[[1]]@tool, tool_current_date)
  # 2. Tool result 1
  expect_s7_class(res[[2]], ContentToolResult)
  expect_equal(res[[2]]@value, "2024-01-01")
  expect_equal(res[[2]]@request, res[[1]])
  # 3. Tool request 2
  expect_s7_class(res[[3]], ContentToolRequest)
  expect_equal(res[[3]]@tool, tool_current_date)
  # 4. Tool result 2
  expect_s7_class(res[[4]], ContentToolResult)
  expect_equal(res[[4]]@value, "2024-01-01")
  expect_equal(res[[4]]@request, res[[3]])

  # 5. ...rest of assistant message
  for (delta in res[-(1:4)]) {
    expect_s7_class(delta, ContentText)
  }
})


test_that("old extract methods are deprecated", {
  ChatNull <- R6::R6Class(
    "ChatNull",
    inherit = Chat,
    public = list(
      chat_structured = function(...) invisible(),
      chat_structured_async = function(...) invisible()
    )
  )

  chat_null <- ChatNull$new(provider = chat_openai()$get_provider())
  expect_snapshot({
    chat_null$extract_data()
    chat_null$extract_data_async()
  })
})
`````

## File: tests/testthat/test-content-image.R
`````r
test_that("can create image from url", {
  obj <- content_image_url("https://www.r-project.org/Rlogo.png")
  expect_s3_class(obj, "ellmer::ContentImageRemote")
})

test_that("can create inline image from data url", {
  obj <- content_image_url("data:image/png;base64,abcd")
  expect_s3_class(obj, "ellmer::ContentImageInline")
  expect_equal(obj@type, "image/png")
  expect_equal(obj@data, "abcd")
})

test_that("errors with invalid data urls", {
  expect_snapshot(content_image_url("data:base64,abcd"), error = TRUE)

  expect_error(content_image_url("data:"))
  expect_error(content_image_url("data:;;;"))
  expect_error(content_image_url("data:image/png;abc"))
})

test_that("can create image from path", {
  skip_if_not_installed("magick")

  path <- system.file("httr2.png", package = "ellmer")
  obj <- content_image_file(path)
  expect_s3_class(obj, "ellmer::ContentImageInline")
})

test_that("can create image from plot", {
  withr::local_pdf(NULL)
  dev.control("enable")
  plot(1:10)

  obj <- content_image_plot()
  expect_s3_class(obj, "ellmer::ContentImageInline")
  expect_equal(obj@type, "image/png")
})

test_that("image resizing", {
  skip_if_not_installed("magick")

  img_file <- system.file("httr2.png", package = "ellmer")

  expect_snapshot(error = TRUE, {
    content_image_file("DOESNTEXIST")
    content_image_file(test_path("test-content.R"))
    content_image_file(img_file, resize = TRUE)
    content_image_file(img_file, resize = "blah")
  })

  expect_no_error(content_image_file(img_file))
  expect_no_error(content_image_file(img_file, resize = "low"))
  expect_no_error(content_image_file(img_file, resize = "high"))
  expect_no_error(content_image_file(img_file, resize = "none"))
  expect_no_error(content_image_file(img_file, resize = "100x100"))
  expect_no_error(content_image_file(img_file, resize = "100x100>!"))
})

test_that("useful errors if no display", {
  # file based devices have display list inhibited
  withr::local_pdf(NULL)
  expect_snapshot(content_image_plot(), error = TRUE)
})
`````

## File: tests/testthat/test-content-pdf.R
`````r
test_that("can create pdf from path", {
  obj <- content_pdf_file(test_path("apples.pdf"))
  expect_s3_class(obj, "ellmer::ContentPDF")
})
`````

## File: tests/testthat/test-content-tools.R
`````r
test_that("invoke_tool returns a ContentToolResult", {
  tool <- tool(function() 1, "A tool", .name = "my_tool")

  res <- invoke_tool(
    ContentToolRequest(
      id = "x",
      name = "my_tool",
      arguments = list(),
      tool = tool
    )
  )
  expect_s3_class(res, "ellmer::ContentToolResult")
  expect_equal(res@error, NULL)
  expect_false(tool_errored(res))
  expect_equal(res@value, 1)
  expect_s3_class(res@request, "ellmer::ContentToolRequest")
  expect_equal(res@request@id, "x")
  expect_equal(res@request@tool, tool)
  expect_equal(res@request@arguments, list())

  res <- invoke_tool(
    ContentToolRequest(
      id = "x",
      name = "my_tool",
      arguments = list(x = 1),
      tool = tool
    )
  )
  expect_s3_class(res, "ellmer::ContentToolResult")
  expect_s3_class(res@error, "condition")
  expect_true(tool_errored(res))
  expect_match(tool_error_string(res), "unused argument", ignore.case = TRUE)
  expect_equal(res@value, NULL)
  expect_equal(res@extra, list())
  expect_s3_class(res@request, "ellmer::ContentToolRequest")
  expect_equal(res@request@id, "x")
  expect_equal(res@request@tool, tool)
  expect_equal(res@request@arguments, list(x = 1))

  res <- invoke_tool(
    ContentToolRequest(
      id = "x",
      arguments = list(x = 1),
      name = "my_tool"
    )
  )
  expect_s3_class(res, "ellmer::ContentToolResult")
  expect_equal(res@error, "Unknown tool")
  expect_equal(tool_error_string(res), "Unknown tool")
  expect_true(tool_errored(res))
  expect_equal(res@value, NULL)
  expect_equal(res@extra, list())
  expect_s3_class(res@request, "ellmer::ContentToolRequest")
  expect_equal(res@request@id, "x")
  expect_equal(res@request@tool, NULL)
  expect_equal(res@request@arguments, list(x = 1))

  tool_ctr <- tool(
    function() ContentToolResult(value = 1, extra = list(a = 1)),
    "A tool that returns ContentToolResult",
    .name = "my_tool"
  )
  res <- invoke_tool(
    ContentToolRequest(
      id = "x",
      name = "my_tool",
      arguments = list(),
      tool = tool_ctr
    )
  )
  expect_s3_class(res, "ellmer::ContentToolResult")
  expect_equal(res@error, NULL)
  expect_false(tool_errored(res))
  expect_equal(res@value, 1)
  expect_equal(res@extra, list(a = 1))
  expect_s3_class(res@request, "ellmer::ContentToolRequest")
  expect_equal(res@request@id, "x")
  expect_equal(res@request@tool, tool_ctr)
  expect_equal(res@request@arguments, list())
})

test_that("invoke_tool_async returns a ContentToolResult", {
  tool <- tool(function() 1, "A tool", .name = "my_tool")

  res <- sync(invoke_tool_async(
    ContentToolRequest(
      id = "x",
      name = "my_tool",
      arguments = list(),
      tool = tool
    )
  ))
  expect_s3_class(res, "ellmer::ContentToolResult")
  expect_equal(res@error, NULL)
  expect_false(tool_errored(res))
  expect_equal(res@value, 1)
  expect_s3_class(res@request, "ellmer::ContentToolRequest")
  expect_equal(res@request@id, "x")
  expect_equal(res@request@tool, tool)
  expect_equal(res@request@arguments, list())

  res <- sync(invoke_tool_async(
    ContentToolRequest(
      id = "x",
      name = "my_tool",
      arguments = list(x = 1),
      tool = tool
    )
  ))
  expect_s3_class(res, "ellmer::ContentToolResult")
  expect_s3_class(res@error, "condition")
  expect_true(tool_errored(res))
  expect_match(tool_error_string(res), "unused argument", ignore.case = TRUE)
  expect_equal(res@value, NULL)
  expect_equal(res@extra, list())
  expect_s3_class(res@request, "ellmer::ContentToolRequest")
  expect_equal(res@request@id, "x")
  expect_equal(res@request@tool, tool)
  expect_equal(res@request@arguments, list(x = 1))

  res <- sync(invoke_tool_async(
    ContentToolRequest(
      id = "x",
      arguments = list(x = 1),
      name = "my_tool"
    )
  ))
  expect_s3_class(res, "ellmer::ContentToolResult")
  expect_equal(res@error, "Unknown tool")
  expect_equal(tool_error_string(res), "Unknown tool")
  expect_true(tool_errored(res))
  expect_equal(res@value, NULL)
  expect_equal(res@extra, list())
  expect_s3_class(res@request, "ellmer::ContentToolRequest")
  expect_equal(res@request@id, "x")
  expect_equal(res@request@tool, NULL)
  expect_equal(res@request@arguments, list(x = 1))

  tool_ctr <- tool(
    function() ContentToolResult(value = 1, extra = list(a = 1)),
    "A tool that returns ContentToolResult",
    .name = "my_tool"
  )
  res <- sync(invoke_tool_async(
    ContentToolRequest(
      id = "x",
      name = "my_tool",
      arguments = list(),
      tool = tool_ctr
    )
  ))
  expect_s3_class(res, "ellmer::ContentToolResult")
  expect_equal(res@error, NULL)
  expect_false(tool_errored(res))
  expect_equal(res@value, 1)
  expect_equal(res@extra, list(a = 1))
  expect_s3_class(res@request, "ellmer::ContentToolRequest")
  expect_equal(res@request@id, "x")
  expect_equal(res@request@tool, tool_ctr)
  expect_equal(res@request@arguments, list())
})

test_that("invoke_tools() echoes tool requests and results", {
  turn <- fixture_turn_with_tool_requests()

  expect_silent(coro::collect(invoke_tools(turn)))
  expect_snapshot(. <- coro::collect(invoke_tools(turn, echo = "output")))
})

test_that("invoke_tools() yields tool requests and results", {
  turn <- fixture_turn_with_tool_requests()

  steps <- coro::collect(invoke_tools(turn, yield_request = TRUE))
  for (i in seq_along(steps)) {
    # Threaded requests and results
    if (i %% 2 == 1) {
      expect_s3_class(steps[[i]], "ellmer::ContentToolRequest")
    } else {
      expect_s3_class(steps[[i]], "ellmer::ContentToolResult")
      # results are paired with previous request
      expect_equal(steps[[i]]@request, steps[[i - 1]])
    }
  }
})

test_that("invoke_tools_async() echoes tool requests and results", {
  turn <- fixture_turn_with_tool_requests()

  expect_silent(sync({
    # Concurrent tool calls
    gen_async_promise_all(invoke_tools_async(turn))
    # Sequential tool calls
    coro::async_collect(invoke_tools_async(turn))
  }))
  expect_snapshot({
    # Concurrent tool calls
    . <- sync(gen_async_promise_all(invoke_tools_async(turn, echo = "output")))
    # Sequential tool calls
    . <- sync(coro::async_collect(invoke_tools_async(turn, echo = "output")))
  })
})

test_that("invoke_tools_async() yields tool requests and promises results", {
  turn <- fixture_turn_with_tool_requests()

  steps <- coro::collect(invoke_tools_async(turn, yield_request = TRUE))

  for (i in seq_along(steps)) {
    # Threaded requests and promise for results
    if (i %% 2 == 1) {
      expect_s3_class(steps[[i]], "ellmer::ContentToolRequest")
    } else {
      expect_s3_class(steps[[i]], "promise")
      result <- sync(steps[[i]])
      expect_s3_class(result, "ellmer::ContentToolResult")
      # results are paired with previous request
      expect_equal(result@request, steps[[i - 1]])
    }
  }
})

test_that("invoke_tools() converts to R data structures", {
  out <- NULL
  tool <- tool(
    function(...) out <<- list(...),
    "A tool",
    x = type_array(items = type_number()),
    y = type_array(items = type_string())
  )

  req <-
    ContentToolRequest(
      id = "x",
      name = "my_tool",
      arguments = list(x = list(1, 2), y = list()),
      tool = tool
    )

  args <- tool_request_args(req)
  expect_equal(args$x, c(1, 2))
  expect_equal(args$y, character())

  res <- invoke_tool(req)
  expect_equal(out$x, c(1, 2))
  expect_equal(out$y, character())
})

test_that("invoke_tools_async() converts to R data structures", {
  out <- NULL
  tool <- tool(
    function(...) out <<- list(...),
    "A tool",
    x = type_array(items = type_number()),
    y = type_array(items = type_string())
  )

  req <-
    ContentToolRequest(
      id = "x",
      name = "my_tool",
      arguments = list(x = list(1, 2), y = list()),
      tool = tool
    )

  args <- tool_request_args(req)
  expect_equal(args$x, c(1, 2))
  expect_equal(args$y, character())

  res <- sync(invoke_tool_async(req))
  expect_equal(out$x, c(1, 2))
  expect_equal(out$y, character())
})

test_that("invoke_tools() can invoke tools with args with default values", {
  out <- NULL
  tool <- tool(
    function(x, y, z = "z") out <<- list(x = x, y = y, z = z),
    "A tool",
    x = type_array(items = type_number()),
    y = type_array(items = type_string()),
    z = type_array(items = type_string(), required = FALSE)
  )

  req <- ContentToolRequest(
    id = "x",
    name = "my_tool",
    arguments = list(x = list(1, 2), y = NULL, z = NULL),
    tool = tool
  )

  args <- tool_request_args(req)
  expect_equal(args$x, c(1, 2))
  expect_equal(args$y, character()) # Required arg
  expect_equal(args$z, NULL) # Optional arg

  res <- invoke_tool(req)
  expect_equal(out$x, c(1, 2))
  expect_equal(out$y, character())
  expect_equal(out$z, "z")
})

test_that("invoke_tools_async() can invoke tools with args with default values", {
  out <- NULL
  tool <- tool(
    function(x, y, z = "z") out <<- list(x = x, y = y, z = z),
    "A tool",
    x = type_array(items = type_number()),
    y = type_array(items = type_string()),
    z = type_array(items = type_string(), required = FALSE)
  )

  req <- ContentToolRequest(
    id = "x",
    name = "my_tool",
    arguments = list(x = list(1, 2), y = NULL, z = NULL),
    tool = tool
  )

  args <- tool_request_args(req)
  expect_equal(args$x, c(1, 2))
  expect_equal(args$y, character()) # Required arg
  expect_equal(args$z, NULL) # Optional arg

  res <- sync(invoke_tool_async(req))
  expect_equal(out$x, c(1, 2))
  expect_equal(out$y, character())
  expect_equal(out$z, "z")
})

test_that("tool error warnings", {
  errors <- list(
    ContentToolResult(
      error = "The JSON was invalid: {[1, 2, 3]}",
      request = ContentToolRequest(
        id = "call1",
        name = "returns_json"
      )
    ),
    ContentToolResult(
      error = rlang::catch_cnd(stop("went boom!")),
      request = ContentToolRequest(
        id = "call2",
        name = "throws"
      )
    )
  )

  expect_snapshot(
    warn_tool_errors(errors)
  )
})

test_that("match_tools() matches tools in a turn to a list of tools", {
  turn_single <- Turn(
    "assistant",
    list(ContentToolRequest("y1", "unknown", list()))
  )
  expect_null(turn_single@contents[[1]]@tool)
  expect_s7_class(match_tools(turn_single, list()), Turn)
  # unmatched requests have NULL tool
  expect_null(match_tools(turn_single, list())@contents[[1]]@tool)

  tools <- fixture_list_of_tools()
  turn <- fixture_turn_with_tool_requests(with_tool = FALSE)

  turn_matched <- match_tools(turn, tools)
  expect_equal(turn_matched, fixture_turn_with_tool_requests(with_tool = TRUE))
})
`````

## File: tests/testthat/test-content.R
`````r
test_that("invalid inputs give useful errors", {
  chat <- chat_openai_test()

  expect_snapshot(error = TRUE, {
    chat$chat(question = "Are unicorns real?")
    chat$chat(TRUE)
  })
})

test_that("can create content from a vector", {
  expect_equal(
    as_content(c("a", "b")),
    ContentText("a\n\nb")
  )
})

test_that("turn contents can be converted to text, markdown and HTML", {
  turn <- Turn(
    "user",
    contents = list(
      ContentText("User input."),
      ContentImageInline("image/png", "abcd123"),
      ContentImageRemote("https://example.com/image.jpg", detail = ""),
      ContentJson(list(a = 1:2, b = "apple")),
      ContentSql("SELECT * FROM mtcars"),
      ContentSuggestions(
        c(
          "What is the total quantity sold for each product last quarter?",
          "What is the average discount percentage for orders from the United States?",
          "What is the average price of products in the 'electronics' category?"
        )
      )
    )
  )

  expect_snapshot(cat(contents_text(turn)))
  expect_snapshot(cat(contents_markdown(turn)))

  turns <- list(
    turn,
    Turn("assistant", list(ContentText("Here's your answer.")))
  )
  chat <- Chat$new(test_provider())
  chat$set_turns(turns)
  expect_snapshot(cat(contents_markdown(chat)))

  skip_if_not_installed("commonmark")
  expect_snapshot(cat(contents_html(turn)))
})


# Content types ----------------------------------------------------------------

test_that("thinking has useful representations", {
  ct <- ContentThinking("A **thought**.")
  expect_equal(contents_text(ct), NULL)
  expect_equal(format(ct), "<thinking>\nA **thought**.\n</thinking>\n")
  expect_equal(
    contents_markdown(ct),
    "<thinking>\nA **thought**.\n</thinking>\n"
  )
  expect_snapshot(cat(contents_html(ct)))
})

test_that("ContentToolResult@error requires a string or an error condition", {
  expect_snapshot(error = TRUE, {
    ContentToolResult("id", error = TRUE)
    ContentToolResult("id", error = c("one", "two"))
  })
})
`````

## File: tests/testthat/test-deprecated.R
`````r
test_that("chat_azure() is deprecated", {
  lifecycle::expect_deprecated(
    chat_azure("foo", "bar", api_key = "key"),
    "chat_azure_openai"
  )
})

test_that("chat_bedrock() is deprecated", {
  local_mocked_bindings(
    aws_creds_cache = function(...) list(),
    paws_credentials = function(...) list(region = "us-east-1")
  )

  lifecycle::expect_deprecated(
    chat_bedrock(),
    "chat_aws_bedrock"
  )
})

test_that("chat_claude() is deprecated", {
  lifecycle::expect_deprecated(
    chat_claude(api_key = "key"),
    "chat_anthropic"
  )
})

test_that("chat_gemini() is deprecated", {
  lifecycle::expect_deprecated(
    chat_gemini(api_key = "key"),
    "chat_google_gemini"
  )
})
`````

## File: tests/testthat/test-interpolate.R
`````r
test_that("checks inputs", {
  expect_snapshot(error = TRUE, {
    interpolate(1)
    interpolate("x", 1)
  })
})

test_that("vectorised interpolation generates a list", {
  expect_equal(
    interpolate("{{x}}", x = 1:2),
    ellmer_prompt(c("1", "2"))
  )
})

test_that("has a nice print method", {
  expect_snapshot(interpolate("Hi!"))
})

test_that("print method truncates many elements", {
  prompt <- ellmer_prompt(c("x\ny", c("a\nb\nc\nd\ne")))
  expect_snapshot({
    print(prompt, max_items = 1)
    print(prompt, max_lines = 2)
    print(prompt, max_lines = 3)
  })
})

test_that("can interpolate from local env or from ...", {
  x <- 1

  expect_equal(interpolate("{{x}}"), ellmer_prompt("1"))
  expect_equal(interpolate("{{x}}", x = 2), ellmer_prompt("2"))
})

test_that("can take a data frame via !!!", {
  df <- data.frame(x = 1, y = 2)
  expect_equal(interpolate("{{x}} + {{y}}", !!!df), ellmer_prompt("1 + 2"))
})

test_that("can interpolate from a file", {
  path <- withr::local_tempfile(lines = "{{x}}")
  expect_equal(interpolate_file(path, x = 1), ellmer_prompt("1"))
})

test_that("can interpolate from a package", {
  path <- withr::local_tempfile(lines = "{{x}}")
  local_mocked_bindings(
    system.file = function(..., package = "base") {
      if (package == "test") path else stop("package not found")
    }
  )

  expect_equal(interpolate_package("test", "bar.md", x = 1), ellmer_prompt("1"))
})
`````

## File: tests/testthat/test-params.R
`````r
# params -------------------------------------------------------------------

test_that("NULL values are stripped", {
  expect_equal(params(), set_names(list()))
})

test_that("checks its inputs", {
  expect_snapshot(error = TRUE, {
    params(temperature = "x")
    params(top_p = "x")
    params(top_k = "x")
    params(frequency_penalty = "x")
    params(presence_penalty = "x")
    params(seed = "x")
    params(max_tokens = "x")
    params(log_probs = 1)
    params(stop_sequences = 1)
  })
})

# standardise_params -------------------------------------------------------

test_that("standardise_params warns about unknown args", {
  test_params <- list(temperature = 0.7, top_p = 0.9)
  provider_params <- c("temperature" = "temperature")
  expect_snapshot(. <- standardise_params(test_params, provider_params))
})

test_that("standardise_params renames supported parameters", {
  test_params <- list(
    top_p = 0.9,
    temperature = 0.7,
    max_tokens = 100
  )

  provider_params <- c(
    temp = "temperature",
    topP = "top_p",
    maxTokens = "max_tokens"
  )
  expect_equal(
    standardise_params(test_params, provider_params),
    list(topP = 0.9, temp = 0.7, maxTokens = 100)
  )
})

test_that("standardise_params handles empty parameters correctly", {
  test_params <- list(extra_args = list())
  provider_params <- c("temperature" = "temperature", "top_p" = "top_p")
  expect_equal(standardise_params(test_params, provider_params), list())
})

test_that("standardise_params leavees extra_args as is", {
  test_params <- list(top_k = 2, extra_args = list(a = 1, b = 2))

  provider_params <- c(top_k = "top_k")
  expect_equal(
    standardise_params(test_params, provider_params),
    list(top_k = 2, a = 1, b = 2)
  )
})
`````

## File: tests/testthat/test-provider-azure.R
`````r
# Getting started --------------------------------------------------------

test_that("can make simple request", {
  chat <- chat_azure_openai_test("Be as terse as possible; no punctuation")
  resp <- chat$chat("What is 1 + 1?", echo = FALSE)
  expect_match(resp, "2")
  expect_equal(chat$last_turn()@tokens > 0, c(TRUE, TRUE))
})

test_that("can make simple streaming request", {
  chat <- chat_azure_openai_test("Be as terse as possible; no punctuation")
  resp <- coro::collect(chat$stream("What is 1 + 1?"))
  expect_match(paste0(unlist(resp), collapse = ""), "2")
})

# Common provider interface -----------------------------------------------

test_that("defaults are reported", {
  expect_snapshot(. <- chat_azure_openai_test())
})

test_that("supports standard parameters", {
  chat_fun <- chat_azure_openai_test

  test_params_stop(chat_fun)
})

test_that("all tool variations work", {
  chat_fun <- chat_azure_openai_test

  test_tools_simple(chat_fun)
  test_tools_async(chat_fun)
  test_tools_parallel(chat_fun)
  test_tools_sequential(chat_fun, total_calls = 6)
})

test_that("can extract data", {
  chat_fun <- chat_azure_openai_test

  test_data_extraction(chat_fun)
})

test_that("can use images", {
  skip("Run manually; 24 hour rate limit")
  chat_fun <- chat_azure_openai_test

  httr2::with_verbosity(test_images_inline(chat_fun), 2)
  test_images_remote(chat_fun)
})

# Authentication --------------------------------------------------------------

test_that("Azure request headers are generated correctly", {
  turn <- Turn(
    role = "user",
    contents = list(ContentText("What is 1 + 1?"))
  )
  deployment_id <- "gpt-4o-mini"
  base_url <- paste0(
    "https://ai-hwickhamai260967855527.openai.azure.com/openai/deployments/",
    deployment_id
  )

  # API key.
  p <- ProviderAzureOpenAI(
    name = "Azure",
    base_url = base_url,
    model = deployment_id,
    api_version = "2024-06-01",
    api_key = "key",
    credentials = default_azure_credentials("key")
  )
  req <- chat_request(p, FALSE, list(turn))
  attr(req$headers, "redact") <- character()
  expect_snapshot(str(req$headers))

  # Token.
  p <- ProviderAzureOpenAI(
    name = "Azure",
    base_url = base_url,
    model = deployment_id,
    api_version = "2024-06-01",
    api_key = "",
    credentials = default_azure_credentials("", "token")
  )
  req <- chat_request(p, FALSE, list(turn))
  attr(req$headers, "redact") <- character()
  expect_snapshot(str(req$headers))

  # Both.
  p <- ProviderAzureOpenAI(
    name = "Azure",
    base_url = base_url,
    model = deployment_id,
    api_version = "2024-06-01",
    api_key = "key",
    credentials = default_azure_credentials("key", "token")
  )
  req <- chat_request(p, FALSE, list(turn))
  attr(req$headers, "redact") <- character()
  expect_snapshot(str(req$headers))
})

test_that("service principal authentication requests look correct", {
  withr::local_envvar(
    AZURE_TENANT_ID = "aaaa0a0a-bb1b-cc2c-dd3d-eeeeee4e4e4e",
    AZURE_CLIENT_ID = "id",
    AZURE_CLIENT_SECRET = "secret"
  )
  local_mocked_responses(function(req) {
    # Snapshot relevant fields of the outgoing request.
    expect_snapshot(
      list(url = req$url, headers = req$headers, body = req$body$data)
    )
    response_json(body = list(access_token = "token"))
  })
  source <- default_azure_credentials()
  expect_equal(source(), list(Authorization = "Bearer token"))
})

test_that("tokens can be requested from a Connect server", {
  skip_if_not_installed("connectcreds")

  connectcreds::local_mocked_connect_responses(token = "token")
  credentials <- default_azure_credentials()
  expect_equal(credentials(), list(Authorization = "Bearer token"))
})
`````

## File: tests/testthat/test-provider-bedrock.R
`````r
test_that("can make simple batch request", {
  chat <- chat_aws_bedrock("Be as terse as possible; no punctuation")
  resp <- chat$chat("What is 1 + 1?", echo = FALSE)
  expect_match(resp, "2")
  expect_equal(chat$last_turn()@tokens > 0, c(TRUE, TRUE))
})

test_that("can make simple streaming request", {
  chat <- chat_aws_bedrock("Be as terse as possible; no punctuation")
  resp <- coro::collect(chat$stream("What is 1 + 1?"))
  expect_match(paste0(unlist(resp), collapse = ""), "2")
})

test_that("can list models", {
  test_models(models_aws_bedrock)
})

test_that("can set api args", {
  chat <- chat_aws_bedrock(
    api_args = list(inferenceConfig = list(maxTokens = 1)),
    echo = FALSE
  )
  result <- chat$chat("Who are the reindeer?")
  expect_true(nchar(result) < 10)
})

test_that("handles errors", {
  chat <- chat_aws_bedrock(
    api_args = list(inferenceConfig = list(temperature = "hot")),
    echo = FALSE
  )
  expect_snapshot(error = TRUE, {
    chat$chat("What is 1 + 1?", echo = FALSE)
    chat$chat("What is 1 + 1?", echo = TRUE)
  })
})

# Common provider interface -----------------------------------------------

test_that("defaults are reported", {
  expect_snapshot(. <- chat_aws_bedrock())
})

test_that("all tool variations work", {
  chat_fun <- chat_aws_bedrock

  test_tools_simple(chat_fun)
  test_tools_async(chat_fun)
  test_tools_parallel(chat_fun)
  test_tools_sequential(chat_fun, total_calls = 6)
})

test_that("can extract data", {
  chat_fun <- chat_aws_bedrock

  test_data_extraction(chat_fun)
})

test_that("can use images", {
  chat_fun <- chat_aws_bedrock

  test_images_inline(chat_fun)
  test_images_remote_error(chat_fun)
})

test_that("can use pdfs", {
  chat_fun <- chat_aws_bedrock

  test_pdf_local(chat_fun)
})

# Provider idiosynchronies -----------------------------------------------

test_that("continues to work after whitespace only outputs (#376)", {
  chat <- chat_aws_bedrock()
  chat$chat("Respond with only two blank lines")
  expect_equal(chat$chat("What's 1+1? Just give me the number"), "2")
})

# Auth --------------------------------------------------------------------

test_that("AWS credential caching works as expected", {
  # Mock AWS credentials for different profiles.
  local_mocked_bindings(
    locate_aws_credentials = function(profile) {
      if (!is.null(profile) && profile == "test") {
        list(
          access_key_id = "key1",
          secret_key = "secret1",
          expiration = Sys.time() + 3600
        )
      } else {
        list(
          access_key_id = "key2",
          secret_key = "secret2",
          expiration = Sys.time() + 3600
        )
      }
    }
  )

  creds1 <- paws_credentials(profile = "test", reauth = TRUE)
  creds2 <- paws_credentials(profile = NULL, reauth = TRUE)

  # Verify different credentials were returned.
  expect_false(identical(creds1, creds2))
  expect_equal(creds1$access_key_id, "key1")
  expect_equal(creds2$access_key_id, "key2")

  # Verify cached credentials match original ones.
  expect_identical(creds1, paws_credentials(profile = "test"))
  expect_identical(creds2, paws_credentials(profile = NULL))

  # Simulate a cache entry that has expired.
  creds_modified <- creds1
  creds_modified$expiration <- Sys.time() - 5
  aws_creds_cache(profile = "test")$set(creds_modified)

  # Ensure the new credentials have been updated.
  expect_false(identical(creds_modified, paws_credentials(profile = "test")))
  expect_false(identical(creds1, paws_credentials(profile = "test")))
  expect_false(identical(creds2, paws_credentials(profile = "test")))
})
`````

## File: tests/testthat/test-provider-claude.R
`````r
test_that("can make simple batch request", {
  chat <- chat_anthropic_test("Be as terse as possible; no punctuation")
  resp <- chat$chat("What is 1 + 1?", echo = FALSE)
  expect_match(resp, "2")
  expect_equal(chat$last_turn()@tokens > 0, c(TRUE, TRUE))
})

test_that("can make simple streaming request", {
  chat <- chat_anthropic_test("Be as terse as possible; no punctuation")
  resp <- coro::collect(chat$stream("What is 1 + 1?"))
  expect_match(paste0(unlist(resp), collapse = ""), "2")
})

test_that("can list models", {
  test_models(models_anthropic)
})

# Common provider interface -----------------------------------------------

test_that("defaults are reported", {
  expect_snapshot(. <- chat_anthropic())
})

test_that("supports standard parameters", {
  chat_fun <- chat_anthropic_test

  test_params_stop(chat_fun)
})

test_that("all tool variations work", {
  chat_fun <- chat_anthropic_test

  retry_test(test_tools_simple(chat_fun))
  test_tools_async(chat_fun)
  test_tools_parallel(chat_fun)
  # Claude sometimes returns an empty string
  retry_test(test_tools_sequential(chat_fun, total_calls = 6))
})

test_that("can extract data", {
  chat_fun <- chat_anthropic_test

  test_data_extraction(chat_fun)
})

test_that("can use images", {
  chat_fun <- chat_anthropic_test

  test_images_inline(chat_fun)
  test_images_remote(chat_fun)
})

test_that("can use pdfs", {
  chat_fun <- chat_anthropic_test

  test_pdf_local(chat_fun)
})

# Custom features --------------------------------------------------------

test_that("can set beta headers", {
  chat <- chat_anthropic_test(beta_headers = c("a", "b"))
  req <- chat_request(chat$get_provider())
  expect_equal(req$headers$`anthropic-beta`, c("a", "b"))
})

test_that("continues to work after whitespace only outputs (#376)", {
  chat <- chat_anthropic()
  chat$chat("Respond with only two blank lines")
  expect_equal(chat$chat("What's 1+1? Just give me the number"), "2")
})

test_that("max_tokens is deprecated", {
  expect_snapshot(chat <- chat_anthropic_test(max_tokens = 10))
  expect_equal(chat$get_provider()@params$max_tokens, 10)
})

test_that("strips suffix from model name", {
  provider <- ProviderAnthropic("", model = "", base_url = "", api_key = "")
  expect_equal(
    standardise_model(provider, "claude-3-7-sonnet-latest"),
    "claude-3-7-sonnet"
  )
  expect_equal(
    standardise_model(provider, "claude-3-7-sonnet-20250219"),
    "claude-3-7-sonnet"
  )
})
`````

## File: tests/testthat/test-provider-cloudflare.R
`````r
# Getting started --------------------------------------------------------

test_that("can make simple request", {
  chat <- chat_cloudflare_test("Be as terse as possible; no punctuation")
  resp <- chat$chat("What is 1 + 1?", echo = FALSE)
  expect_match(resp, "2")
  expect_equal(chat$last_turn()@tokens > 0, c(TRUE, TRUE))
})

test_that("can make simple streaming request", {
  chat <- chat_cloudflare_test("Be as terse as possible; no punctuation")
  resp <- coro::collect(chat$stream("What is 1 + 1?"))
  expect_match(paste0(unlist(resp), collapse = ""), "2")
})

# Common provider interface -----------------------------------------------

test_that("defaults are reported", {
  expect_snapshot(. <- chat_cloudflare())
})

# Not supported
# test_that("supports standard parameters", {
#   chat_fun <- chat_cloudflare_test

#   test_params_stop(chat_fun)
# })

# Doesn't appear to work
# test_that("all tool variations work", {
#   chat_fun <- function(...) {
#     chat_cloudflare_test(
#       ...,
#       model = "@hf/nousresearch/hermes-2-pro-mistral-7b"
#     )
#   }

#   test_tools_simple(chat_fun)
#   test_tools_async(chat_fun)
#   test_tools_parallel(chat_fun)
#   test_tools_sequential(chat_fun, total_calls = 6)
# })

test_that("can extract data", {
  chat_fun <- chat_cloudflare_test

  test_data_extraction(chat_fun)
})

# Can't find model that works
# test_that("can use images", {
#   chat_fun <- function(...)
#     chat_cloudflare_test(model = "@cf/llava-hf/llava-1.5-7b-hf", ...)

#   test_images_inline(chat_fun)
#   # test_images_remote(chat_fun)
# })
`````

## File: tests/testthat/test-provider-cortex.R
`````r
sample_cortex_message <- list(
  role = "analyst",
  content = list(
    list(type = "text", text = "This semantic data model..."),
    list(
      type = "sql",
      statement = "SELECT SUM(revenue) FROM key_business_metrics"
    ),
    list(
      type = "suggestions",
      suggestions = list(
        "What is the total quantity sold for each product last quarter?",
        "What is the average discount percentage for orders from the United States?",
        "What is the average price of products in the 'electronics' category?"
      )
    )
  )
)

test_that("Cortex messages are converted to turns correctly", {
  p <- provider_cortex_test()
  expect_equal(
    # Tests roundtrip conversion.
    as_json(p, value_turn(p, sample_cortex_message)),
    sample_cortex_message
  )
})

test_that("Cortex turn formatting", {
  p <- provider_cortex_test()
  turn <- value_turn(p, sample_cortex_message)
  expect_snapshot(cat(turn@text))
  expect_snapshot(cat(format(turn)))
})

test_that("Cortex chunks are converted to messages correctly", {
  chunks <- list(
    list(
      status = "interpreting_question",
      status_message = "Interpreting question"
    ),
    list(
      type = "text",
      text_delta = "This semantic data model...",
      index = 0
    ),
    list(
      status = "generating_sql",
      status_message = "Generating SQL"
    ),
    list(
      type = "sql",
      statement_delta = "SELECT SUM(revenue) FROM key_business_metrics",
      index = 1
    ),
    list(
      status = "generating_suggestions",
      status_message = "Generating suggestions"
    ),
    list(
      type = "suggestions",
      suggestions_delta = list(
        index = 0,
        suggestion_delta = "What is the total quantity sold for each product last quarter?"
      ),
      index = 2
    ),
    list(
      type = "suggestions",
      suggestions_delta = list(
        index = 1,
        suggestion_delta = "What is the average discount percentage for orders from the United States?"
      ),
      index = 2
    ),
    list(
      type = "suggestions",
      suggestions_delta = list(
        index = 2,
        suggestion_delta = "What is the average price of products in the 'electronics' category?"
      ),
      index = 2
    )
  )
  p <- provider_cortex_test()
  result <- NULL
  output <- ""
  for (chunk in chunks) {
    result <- stream_merge_chunks(p, result, chunk)
    output <- paste0(output, stream_text(p, chunk))
  }
  turn <- value_turn(p, result)
  expect_equal(result, sample_cortex_message$content)
  expect_equal(as_json(p, turn), sample_cortex_message)
  # Make sure streaming output matches batch output.
  expect_equal(output, turn@text)
})

test_that("Cortex API requests are generated correctly", {
  turn <- Turn(
    role = "user",
    contents = list(
      ContentText("Tell me about my data.")
    )
  )
  p <- provider_cortex_test(
    credentials = function(account) {
      list(
        Authorization = paste("Bearer", "obfuscated"),
        `X-Snowflake-Authorization-Token-Type` = "OAUTH"
      )
    },
    model_file = "@my_db.my_schema.my_stage/model.yaml"
  )
  req <- chat_request(p, FALSE, list(turn))
  expect_snapshot(req$url)
  expect_snapshot(req$headers)
  expect_snapshot(print_json(req$body$data))
})

test_that("a simple Cortex chatbot works", {
  chat <- chat_cortex_analyst(
    model_spec = "name: empty
description: An empty semantic model specification.
tables: []
verified_queries: []
"
  )
  resp <- chat$chat("What questions can I ask?")
  # Note: It may not be 100 percent certain this will be in the output.
  expect_match(resp, "semantic data model")
})
`````

## File: tests/testthat/test-provider-databricks.R
`````r
test_that("can make simple batch request", {
  chat <- chat_databricks(
    system_prompt = "Be as terse as possible; no punctuation"
  )
  resp <- chat$chat("What is 1 + 1?", echo = FALSE)
  expect_match(resp, "2")
  expect_equal(chat$last_turn()@tokens > 0, c(TRUE, TRUE))
})

test_that("can make simple streaming request", {
  chat <- chat_databricks(
    system_prompt = "Be as terse as possible; no punctuation"
  )
  resp <- coro::collect(chat$stream("What is 1 + 1?"))
  expect_match(paste0(unlist(resp), collapse = ""), "2")
})

# Common provider interface -----------------------------------------------

test_that("defaults are reported", {
  # Setting a dummy host ensures we don't skip this test, even if there are no
  # Databricks credentials available.
  withr::local_envvar(DATABRICKS_HOST = "https://example.cloud.databricks.com")
  expect_snapshot(. <- chat_databricks())
})

test_that("all tool variations work", {
  # Note: Databricks models cannot yet handle "continuing past the first tool
  # call", which causes issues with how ellmer implements tool calling. Nor do
  # they support parallel tool calls.
  #
  # See: https://docs.databricks.com/en/machine-learning/model-serving/function-calling.html#limitations
  # test_tools_simple(chat_databricks)
  # test_tools_async(chat_databricks)
  # test_tools_parallel(chat_databricks)
  # test_tools_sequential(chat_databricks, total_calls = 6)
})

test_that("can extract data", {
  test_data_extraction(chat_databricks)
})

test_that("can use images", {
  # Databricks models don't support images.
  #
  # test_images_inline(chat_databricks)
  # test_images_remote(chat_databricks)
})

# Auth --------------------------------------------------------------------

test_that("Databricks PATs are detected correctly", {
  withr::local_envvar(
    DATABRICKS_HOST = "https://example.cloud.databricks.com",
    DATABRICKS_TOKEN = "token"
  )
  credentials <- default_databricks_credentials()
  expect_equal(credentials(), list(Authorization = "Bearer token"))
})

test_that("Databricks CLI tokens are detected correctly", {
  withr::local_envvar(
    DATABRICKS_HOST = "https://example.cloud.databricks.com",
    DATABRICKS_CLI_PATH = "echo",
    DATABRICKS_CLIENT_ID = NA,
    DATABRICKS_CLIENT_SECRET = NA
  )
  local_mocked_bindings(databricks_cli_token = function(path, host) "cli_token")

  credentials <- default_databricks_credentials()
  expect_equal(credentials(), list(Authorization = "Bearer cli_token"))
})

test_that("M2M authentication requests look correct", {
  withr::local_envvar(
    DATABRICKS_HOST = "https://example.cloud.databricks.com",
    DATABRICKS_CLIENT_ID = "id",
    DATABRICKS_CLIENT_SECRET = "secret"
  )
  local_mocked_responses(function(req) {
    # Snapshot relevant fields of the outgoing request.
    expect_snapshot(
      list(url = req$url, headers = req$headers, body = req$body$data)
    )
    response_json(body = list(access_token = "token"))
  })
  credentials <- default_databricks_credentials()
  expect_equal(credentials(), list(Authorization = "Bearer token"))
})

test_that("workspace detection handles URLs with and without an https prefix", {
  withr::with_envvar(
    c(DATABRICKS_HOST = "example.cloud.databricks.com"),
    expect_equal(
      databricks_workspace(),
      "https://example.cloud.databricks.com"
    )
  )
  withr::with_envvar(
    c(DATABRICKS_HOST = "https://example.cloud.databricks.com"),
    expect_equal(
      databricks_workspace(),
      "https://example.cloud.databricks.com"
    )
  )
})

test_that("the user agent respects SPARK_CONNECT_USER_AGENT when set", {
  withr::with_envvar(
    c(SPARK_CONNECT_USER_AGENT = NA),
    expect_match(databricks_user_agent(), "^r-ellmer")
  )
  withr::with_envvar(
    c(SPARK_CONNECT_USER_AGENT = "testing"),
    expect_match(databricks_user_agent(), "^testing r-ellmer")
  )
})

test_that("tokens can be requested from a Connect server", {
  skip_if_not_installed("connectcreds")

  withr::local_envvar(
    DATABRICKS_HOST = "https://example.cloud.databricks.com",
    DATABRICKS_TOKEN = "token"
  )
  connectcreds::local_mocked_connect_responses(token = "token")
  credentials <- default_databricks_credentials()
  expect_equal(credentials(), list(Authorization = "Bearer token"))
})
`````

## File: tests/testthat/test-provider-deepseek.R
`````r
# Getting started --------------------------------------------------------

test_that("can make simple request", {
  chat <- chat_deepseek("Be as terse as possible; no punctuation")
  resp <- chat$chat("What is 1 + 1?", echo = FALSE)
  expect_match(resp, "2")
  expect_equal(chat$last_turn()@tokens > 0, c(TRUE, TRUE))
})

test_that("can make simple streaming request", {
  chat <- chat_deepseek("Be as terse as possible; no punctuation")
  resp <- coro::collect(chat$stream("What is 1 + 1?"))
  expect_match(paste0(unlist(resp), collapse = ""), "2")
})

# Common provider interface -----------------------------------------------

test_that("defaults are reported", {
  expect_snapshot(. <- chat_deepseek())
})

test_that("all tool variations work", {
  chat_fun <- chat_deepseek

  test_tools_simple(chat_fun)
  test_tools_async(chat_fun)
  test_tools_parallel(chat_fun)
  test_tools_sequential(chat_fun, total_calls = 6)
})

# # Doesn't support data extraction
# test_that("can extract data", {
#   chat_fun <- chat_deepseek

#   test_data_extraction(chat_fun)
# })

# # Doesn't support images
# test_that("can use images", {
#   chat_fun <- chat_deepseek_test

#   test_images_inline(chat_fun)
#   test_images_remote(chat_fun)
# })
`````

## File: tests/testthat/test-provider-gemini-upload.R
`````r
test_that("can upload a file an ask questions about it", {
  upload <- google_upload(test_path("apples.pdf"))

  chat <- chat_google_gemini()
  response <- chat$chat("What's the title of this document?", upload)
  expect_match(response, "Apples are tasty")
  expect_match(chat$chat("What apple is not tasty?"), "red delicious")
})
`````

## File: tests/testthat/test-provider-gemini.R
`````r
# Getting started --------------------------------------------------------

test_that("can make simple request", {
  chat <- chat_google_gemini("Be as terse as possible; no punctuation")
  resp <- chat$chat("What is 1 + 1?", echo = FALSE)
  expect_match(resp, "2")
  expect_equal(chat$last_turn()@tokens > 0, c(TRUE, TRUE))
})

test_that("can make simple streaming request", {
  chat <- chat_google_gemini("Be as terse as possible; no punctuation")
  resp <- coro::collect(chat$stream("What is 1 + 1?"))
  expect_match(paste0(unlist(resp), collapse = ""), "2")
})

test_that("can list models", {
  test_models(models_google_gemini)
})

# Common provider interface -----------------------------------------------

test_that("defaults are reported", {
  expect_snapshot(. <- chat_google_gemini())
})

test_that("supports standard parameters", {
  chat_fun <- chat_google_gemini

  test_params_stop(chat_fun)
})

test_that("all tool variations work", {
  chat_fun <- chat_google_gemini

  test_tools_simple(chat_fun)
  test_tools_async(chat_fun)
  test_tools_parallel(chat_fun)
  test_tools_sequential(chat_fun, total_calls = 6)
})

test_that("can extract data", {
  chat_fun <- chat_google_gemini

  test_data_extraction(chat_fun)
})

test_that("can use images", {
  chat_fun <- chat_google_gemini

  test_images_inline(chat_fun)
  test_images_remote_error(chat_fun)
})

test_that("can use pdfs", {
  chat_fun <- chat_google_gemini

  test_pdf_local(chat_fun)
})

# custom behaviour -------------------------------------------------------------

test_that("vertex generates expected base_url", {
  chat <- chat_google_vertex("{location}", "{project}")

  service_endpoint <- "https://{location}-aiplatform.googleapis.com/v1"
  model <- "/projects/{project}/locations/{location}/publishers/google/"
  expect_equal(chat$get_provider()@base_url, paste0(service_endpoint, model))
})

test_that("can merge text output", {
  # output from "tell me a joke" with text changed
  messages <- c(
    '{"candidates": [{"content": {"parts": [{"text": "a"}],"role": "model"}}],"usageMetadata": {"promptTokenCount": 5,"totalTokenCount": 5},"modelVersion": "gemini-1.5-flash"}',
    '{"candidates": [{"content": {"parts": [{"text": "b"}],"role": "model"}}],"usageMetadata": {"promptTokenCount": 5,"totalTokenCount": 5},"modelVersion": "gemini-1.5-flash"}',
    '{"candidates": [{"content": {"parts": [{"text": "c"}],"role": "model"},"finishReason": "STOP"}],"usageMetadata": {"promptTokenCount": 5,"candidatesTokenCount": 17,"totalTokenCount": 22},"modelVersion": "gemini-1.5-flash"}'
  )
  chunks <- lapply(messages, jsonlite::parse_json)

  out <- merge_gemini_chunks(chunks[[1]], chunks[[2]])
  out <- merge_gemini_chunks(out, chunks[[3]])

  expect_equal(out$candidates[[1]]$content$parts[[1]]$text, "abc")
  expect_equal(
    out$usageMetadata,
    list(
      promptTokenCount = 5,
      candidatesTokenCount = 17,
      totalTokenCount = 22
    )
  )
  expect_equal(out$candidates[[1]]$finishReason, "STOP")
})

test_that("strips suffix from model name", {
  provider <- ProviderGoogleGemini("", model = "", base_url = "", api_key = "")
  expect_equal(
    standardise_model(provider, "gemini-1.0-pro"),
    "gemini-1.0-pro"
  )
  expect_equal(
    standardise_model(provider, "gemini-1.0-pro-latest"),
    "gemini-1.0-pro"
  )
  expect_equal(
    standardise_model(provider, "gemini-1.0-pro-001"),
    "gemini-1.0-pro"
  )
  expect_equal(
    standardise_model(provider, "gemini-2.0-pro-exp-02-05"),
    "gemini-2.0-pro"
  )
})

test_that("can handle citations", {
  # based on "Write me a 5-paragraph essay on the history of the tidyverse."
  messages <- c(
    '{"candidates": [{"content": {"parts": [{"text": "a"}]}, "role": "model"}]}',
    '{"candidates": [{
      "content": {"parts": [{"text": "a"}]},
      "role": "model",
      "citationMetadata": {
        "citationSources": [
          {
            "startIndex": 1,
            "endIndex": 2,
            "uri": "https://example.com",
            "license": ""
          }
        ]
      }
    }]}'
  )
  chunks <- lapply(messages, jsonlite::parse_json)

  out <- merge_gemini_chunks(chunks[[1]], chunks[[2]])
  source <- out$candidates[[1]]$citationMetadata$citationSources[[1]]
  expect_equal(source$startIndex, 1)
  expect_equal(source$endIndex, 2)
  expect_equal(source$uri, "https://example.com")
  expect_equal(source$license, "")
})
`````

## File: tests/testthat/test-provider-github.R
`````r
test_that("uses to GITHUB_PAT if set", {
  withr::local_envvar(
    GITHUB_PAT = "abc",
    GITHUB_PAT_GITHUB_COM = NA
  )
  expect_equal(github_key(), "abc")
})
`````

## File: tests/testthat/test-provider-groq.R
`````r
# Common provider interface -----------------------------------------------

test_that("defaults are reported", {
  expect_snapshot(. <- chat_groq())
})

test_that("all tool variations work", {
  chat_fun <- function(...) chat_groq(..., model = "Llama-3.3-70b-Versatile")

  test_tools_simple(chat_fun)
  test_tools_async(chat_fun)
  test_tools_parallel(chat_fun)
  test_tools_sequential(chat_fun, total_calls = 6)
})
`````

## File: tests/testthat/test-provider-huggingface.R
`````r
test_that("can make simple request", {
  chat <- chat_huggingface_test("Be as terse as possible; no punctuation")
  resp <- chat$chat("What is 1 + 1?", echo = FALSE)
  expect_match(resp, "2")
  expect_equal(chat$last_turn()@tokens > 0, c(TRUE, TRUE))
})

test_that("can make simple streaming request", {
  chat <- chat_huggingface_test("Be as terse as possible; no punctuation")
  resp <- coro::collect(chat$stream("What is 1 + 1?"))
  expect_match(paste0(unlist(resp), collapse = ""), "2")
})

# Common provider interface -----------------------------------------------

test_that("defaults are reported", {
  expect_snapshot(. <- chat_huggingface_test())
})

# Stop tokens don't appear to work correctly
# test_that("supports standard parameters", {
#   chat_fun <- chat_huggingface_test

#   test_params_stop(chat_fun)
# })

# Gets stuck in infinite loop: https://github.com/huggingface/text-generation-inference/issues/2986
# test_that("all tool variations work", {
#   chat_fun <- chat_huggingface_test

#   test_tools_simple(chat_fun)
#   test_tools_async(chat_fun)
#   test_tools_parallel(chat_fun)
#   test_tools_sequential(chat_fun, total_calls = 6)
# })

# Can't find model that does a good job
# test_that("can extract data", {
#   chat_fun <- chat_huggingface_test

#   test_data_extraction(chat_fun)
# })

# Can't find model that does a good job
# test_that("can use images", {
#   chat_fun <- function(...)
#     chat_huggingface_test(model = "Qwen/Qwen2.5-VL-7B-Instruct")

#   # Thinks hexagon is a diamond
#   test_images_inline(chat_fun, test_shape = FALSE)
#   test_images_remote(chat_fun, test_shape = FALSE)
# })
`````

## File: tests/testthat/test-provider-mistral.R
`````r
# Getting started --------------------------------------------------------

test_that("can make simple request", {
  chat <- chat_mistral_test("Be as terse as possible; no punctuation")
  resp <- chat$chat("What is 1 + 1?", echo = FALSE)
  expect_match(resp, "2")
  expect_equal(chat$last_turn()@tokens > 0, c(TRUE, TRUE))
})

test_that("can make simple streaming request", {
  chat <- chat_mistral_test("Be as terse as possible; no punctuation")
  resp <- coro::collect(chat$stream("What is 1 + 1?"))
  expect_match(paste0(unlist(resp), collapse = ""), "2")
})

test_that("can handle errors", {
  chat <- chat_mistral_test(model = "doesnt-exist")
  expect_snapshot(chat$chat("Hi"), error = TRUE)
})

# Common provider interface -----------------------------------------------

test_that("defaults are reported", {
  expect_snapshot(. <- chat_mistral())
})

test_that("supports standard parameters", {
  chat_fun <- chat_mistral_test

  test_params_stop(chat_fun)
})

# Tool calling is poorly supported
# test_that("all tool variations work", {
#   chat_fun <- chat_mistral_test

#   test_tools_simple(chat_fun)
#   test_tools_async(chat_fun)
#   test_tools_parallel(chat_fun)
#   test_tools_sequential(chat_fun, total_calls = 6)
# })

test_that("can extract data", {
  chat_fun <- chat_mistral_test

  test_data_extraction(chat_fun)
})

test_that("can use images", {
  chat_fun <- \(...) chat_mistral_test(model = "pixtral-12b-latest")

  test_images_inline(chat_fun)
  test_images_remote(chat_fun)
})
`````

## File: tests/testthat/test-provider-ollama.R
`````r
# Getting started --------------------------------------------------------

test_that("can make simple request", {
  chat <- chat_ollama_test("Be as terse as possible; no punctuation")
  resp <- chat$chat("What is 1 + 1?", echo = FALSE)
  expect_match(resp, "2")
  expect_equal(chat$last_turn()@tokens > 0, c(TRUE, TRUE))
})

test_that("can make simple streaming request", {
  chat <- chat_ollama_test("Be as terse as possible; no punctuation")
  resp <- coro::collect(chat$stream("What is 1 + 1?"))
  expect_match(paste0(unlist(resp), collapse = ""), "2")
})

test_that("can list models", {
  skip_if_no_ollama()
  test_models(models_ollama)
})

test_that("includes list of models in error message if `model` is missing", {
  skip_if_no_ollama()

  local_mocked_bindings(
    models_ollama = function(...) list(id = "llama3")
  )

  expect_snapshot(chat_ollama(), error = TRUE)
})

test_that("checks that requested model is installed", {
  skip_if_no_ollama()
  local_mocked_bindings(
    models_ollama = function(...) list(id = "llama3")
  )
  expect_snapshot(
    chat_ollama(model = "not-a-real-model"),
    error = TRUE
  )
})

# Common provider interface -----------------------------------------------

test_that("can chat with tool request", {
  chat <- chat_ollama_test("Be as terse as possible; no punctuation")

  add_two_numbers <- function(x, y = 0) x + y
  chat$register_tool(
    tool(
      add_two_numbers,
      "Add two numbers together.",
      x = type_number("The first number"),
      y = type_number("The second number", required = FALSE)
    )
  )

  # Tool with no properties
  current_time <- function() Sys.time()
  chat$register_tool(tool(current_time, "Current system time"))

  # Ollama tool calling is very inconsistent, esp. with small models, so we
  # just test that the model still works when a tool call is registered.
  expect_no_error(
    coro::collect(chat$stream("What is 1 + 1?"))
  )
})

# Currently no other tests because I can't find a model that returns reliable
# results and is reasonably performant.

# Custom -----------------------------------------------------------------

test_that("as_json specialised for Ollama", {
  stub <- ProviderOllama(name = "", base_url = "", api_key = "", model = "")

  expect_snapshot(
    as_json(stub, type_object(.additional_properties = TRUE)),
    error = TRUE
  )

  obj <- type_object(
    x = type_number(required = FALSE),
    y = type_string(required = TRUE)
  )
  expect_equal(
    as_json(stub, obj),
    list(
      type = "object",
      description = "",
      properties = list(
        x = list(type = c("number"), description = ""),
        y = list(type = c("string"), description = "")
      ),
      required = list("y"),
      additionalProperties = FALSE
    )
  )
})
`````

## File: tests/testthat/test-provider-openai.R
`````r
# Getting started --------------------------------------------------------

test_that("can make simple request", {
  chat <- chat_openai_test()
  resp <- chat$chat("What is 1 + 1?", echo = FALSE)
  expect_match(resp, "2")
  expect_equal(chat$last_turn()@tokens > 0, c(TRUE, TRUE))
})

test_that("can make simple streaming request", {
  chat <- chat_openai_test()
  resp <- coro::collect(chat$stream("What is 1 + 1?"))
  expect_match(paste0(unlist(resp), collapse = ""), "2")
})

test_that("can list models", {
  test_models(models_openai)
})


# Common provider interface -----------------------------------------------

test_that("defaults are reported", {
  expect_snapshot(. <- chat_openai())
})

test_that("supports standard parameters", {
  chat_fun <- chat_openai_test

  test_params_stop(chat_fun)
})

test_that("all tool variations work", {
  chat_fun <- chat_openai_test

  test_tools_simple(chat_fun)
  test_tools_async(chat_fun)
  test_tools_parallel(chat_fun)
  test_tools_sequential(chat_fun, total_calls = 6)
})

test_that("can extract data", {
  chat_fun <- chat_openai_test

  test_data_extraction(chat_fun)
})

test_that("can use images", {
  # Needs mini to get shape correct
  chat_fun <- \(...) chat_openai_test(model = "gpt-4.1-mini", ...)

  test_images_inline(chat_fun)
  test_images_remote(chat_fun)
})

# Custom tests -----------------------------------------------------------------

test_that("can retrieve log_probs (#115)", {
  chat <- chat_openai_test(params = params(log_probs = TRUE))
  pieces <- coro::collect(chat$stream("Hi"))

  logprobs <- chat$last_turn()@json$choices[[1]]$logprobs$content
  expect_equal(
    length(logprobs),
    length(pieces) - 2 # leading "" + trailing \n
  )
})

# Custom -----------------------------------------------------------------

test_that("as_json specialised for OpenAI", {
  stub <- ProviderOpenAI(name = "", base_url = "", api_key = "", model = "")

  expect_snapshot(
    as_json(stub, type_object(.additional_properties = TRUE)),
    error = TRUE
  )

  obj <- type_object(x = type_number(required = FALSE))
  expect_equal(
    as_json(stub, obj),
    list(
      type = "object",
      description = "",
      properties = list(x = list(type = c("number", "null"), description = "")),
      required = list("x"),
      additionalProperties = FALSE
    )
  )
})

test_that("seed is deprecated, but still honored", {
  expect_snapshot(chat <- chat_openai_test(seed = 1))
  expect_equal(chat$get_provider()@params$seed, 1)
})
`````

## File: tests/testthat/test-provider-openrouter.R
`````r
# Getting started --------------------------------------------------------

test_that("can make simple request", {
  chat <- chat_openrouter_test("Be as terse as possible; no punctuation")
  resp <- chat$chat("What is 1 + 1?", echo = FALSE)
  expect_match(resp, "2")
  expect_equal(chat$last_turn()@tokens > 0, c(TRUE, TRUE))
})

test_that("can make simple streaming request", {
  chat <- chat_openrouter_test("Be as terse as possible; no punctuation")
  resp <- coro::collect(chat$stream("What is 1 + 1?"))
  expect_match(paste0(unlist(resp), collapse = ""), "2")
})

test_that("handles errors", {
  chat <- chat_openrouter_test(api_args = list(temperature = "hot"))
  expect_snapshot(error = TRUE, {
    chat$chat("What is 1 + 1?", echo = FALSE)
    chat$chat("What is 1 + 1?", echo = TRUE)
  })
})

# Common provider interface -----------------------------------------------

test_that("all tool variations work", {
  chat_fun <- chat_openrouter_test

  test_tools_simple(chat_fun)
  test_tools_async(chat_fun)
  test_tools_parallel(chat_fun)
  test_tools_sequential(chat_fun, total_calls = 6)
})

test_that("can extract data", {
  chat_fun <- chat_openrouter_test

  test_data_extraction(chat_fun)
})

test_that("can use images", {
  chat_fun <- chat_openrouter_test

  test_images_inline(chat_fun)
  test_images_remote(chat_fun)
})
`````

## File: tests/testthat/test-provider-portkey.R
`````r
# Getting started --------------------------------------------------------

test_that("can make simple request", {
  chat <- chat_portkey_test(
    virtual_key = Sys.getenv("PORTKEY_VIRTUAL_KEY"),
    "Be as terse as possible; no punctuation"
  )
  resp <- chat$chat("What is 1 + 1?", echo = FALSE)
  expect_match(resp, "2")
  expect_equal(chat$last_turn()@tokens > 0, c(TRUE, TRUE))
})

test_that("can make simple streaming request", {
  chat <- chat_portkey_test(
    virtual_key = Sys.getenv("PORTKEY_VIRTUAL_KEY"),
    "Be as terse as possible; no punctuation"
  )
  resp <- coro::collect(chat$stream("What is 1 + 1?"))
  expect_match(paste0(unlist(resp), collapse = ""), "2")
})

# Common provider interface -----------------------------------------------

test_that("defaults are reported", {
  expect_snapshot(. <- chat_portkey())
})

test_that("all tool variations work", {
  chat_fun <- \(...) {
    chat_portkey_test(virtual_key = Sys.getenv("PORTKEY_VIRTUAL_KEY"))
  }

  test_tools_simple(chat_fun)
  test_tools_async(chat_fun)
  test_tools_parallel(chat_fun)
  test_tools_sequential(chat_fun, total_calls = 6)
})

test_that("can extract data", {
  chat_fun <- \(...) {
    chat_portkey_test(virtual_key = Sys.getenv("PORTKEY_VIRTUAL_KEY"))
  }

  test_data_extraction(chat_fun)
})

test_that("can use images", {
  chat_fun <- \(...) {
    chat_portkey_test(
      virtual_key = Sys.getenv("PORTKEY_VIRTUAL_KEY"),
      model = "gpt-4.1-mini",
      ...
    )
  }

  test_images_inline(chat_fun)
  test_images_remote(chat_fun)
})
`````

## File: tests/testthat/test-provider-snowflake.R
`````r
# Getting started --------------------------------------------------------

test_that("can make simple request", {
  # Snowflake models don't support non-streaming responses.
  #
  # chat <- chat_snowflake("Be as terse as possible; no punctuation")
  # resp <- chat$chat("What is 1 + 1?", echo = FALSE)
  # expect_match(resp, "2")
  # expect_equal(chat$last_turn()@tokens > 0, c(TRUE, TRUE))
})

test_that("can make simple streaming request", {
  chat <- chat_snowflake("Be as terse as possible; no punctuation")
  resp <- coro::collect(chat$stream("What is 1 + 1?"))
  expect_match(paste0(unlist(resp), collapse = ""), "2")
  expect_equal(chat$last_turn()@tokens > 0, c(TRUE, TRUE))
})

# Common provider interface -----------------------------------------------

test_that("defaults are reported", {
  # Setting a dummy account ensures we don't skip this test, even if there are
  # no Snowflake credentials available.
  withr::local_envvar(
    SNOWFLAKE_ACCOUNT = "testorg-test_account",
    SNOWFLAKE_TOKEN = "token"
  )
  expect_snapshot(. <- chat_snowflake())
})

test_that("all tool variations work", {
  # Snowflake models don't support tool calling.
  #
  # test_tools_simple(chat_snowflake)
  # test_tools_async(chat_snowflake)
  # test_tools_parallel(chat_snowflake)
  # test_tools_sequential(chat_snowflake, total_calls = 6)
})

test_that("can extract data", {
  # Snowflake models don't support structured data.
  #
  # test_data_extraction(chat_snowflake)
})

test_that("can use images", {
  # Snowflake models don't support images.
  #
  # test_images_inline(chat_snowflake)
  # test_images_remote(chat_snowflake)
})

# Auth --------------------------------------------------------------------

test_snowflake_key <- "-----BEGIN PRIVATE KEY-----
MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCbxG4OC5HU9QlK
dmtbQCa7r+uoKyDSisxqJQchfkDy64v6V6WsovI8evUGPQpkAbqsmXY3DR3T/Mco
P2oHyzGsfd2t7v6NLHNtGbMiEJYjVJvOw52Yn1m4WH5bEtl5JP/8W2qyTdr6qym+
m47X8hAqb+ToQjnolRq9xlme9n6vhwGi8mlco5POLCcEDhcYiqcPxI/WRqHDcdi8
/nU1eRhGTSe77NUnC0QQOojjRZ3P59NuA7zpgFdMLdE0I5qrfL3e6SQlnmTizdng
qiZUAI5p1ISZffn1FLf9GZlnD/usG0Dbp2MDGbYMhx8a5ii0RGyEINYrATdxkKaW
/AKGeKbdAgMBAAECggEAH+a022+HKGQeyP9DsWaMCDhZPRHIIRaIEt0Ofs+KobWX
72dv6NFeZwCPmf16WUz5XEv5qACpsTa92wJRxtLYk4kbk3m07FjEMv3mb/2Roh67
4jax2gYYq+aDykcr/uGTA639RhMn29qeLAlT0eojYW2VJfQaRAX1ehRbWnEFNRFR
Pyy1pBOCReDG0yyw1OtDv85H09UdiRWyNC7HkxdaMZns//GOQ3MwuZL61st7Aezg
Xz+mGw7v+SEIL0zk92GSIOHA0TXiUAhIWGxIyqSeNqw+Cl0+4r6ZuT+z2lILPR9C
UPVMtXUzUBhBPhtvPpq2RoRqcHzXWsdUcfteKyN/iQKBgQC5JvzZOwOnBcqaTUpn
ykrYwyiAOk0h3uOs4Mrs7A40xWmQ35VOb1gWVnTgvC91SBBfP/jGf02ZdLk5NG1/
oe13aKvQ6mh/jTImPLEPxsMm+469+nklitHwF8b6R3zrSPHoqdF4XUOHOcbK5V8W
MgUIIXDGtLCqxTns41VbIM9/5wKBgQDXXvgG5238F1LtHFG0FNZRilRt3d+cO1CU
HctSPGRXVe8ZGEJZ4F/TV6pWEOrdsuk5bp/IoDGKE2b9FI6K9BKy3Xc8qx5Um9zF
q5ca671UmZkcqu8jh99JSn9sKM7PP9QZInhP1eca7J9r2lhROHk0hsyTWtzuVcWO
JttBO0lamwKBgQCJWFGCNxO7h0FGewUxvs8MwqA9loH3GScc69e8LlNPdA2eKSzR
dSkL0PB8cTxnLKDwdzzsyixfJEXuGGUNo6nKxTuHCwufarcDxEu4H0JOnZbCeJX7
cmHPT2QL7pHM21yPscEwH0bjfcloYwPJLCutX1kQHaNb2lfg0LZVlh42iwKBgQCW
3yp0+66qiFRJUitSMb6pRHQ8us8ojMy31d9W7oOEQujJ9ZqVh37ZeHIU9KjzQZ/r
4bkBPGc3yLu+0qXAZZarwkUDNQR8VOtldfzWmQn6t9bwpDX99/LNTujQhg3KVXZp
XSJXGwtYayaK0VxJGXye9UdeeqqGM4O/Py0dF0EdvQKBgDo82ImF2mKzJUEBK33r
uGtR8Fxbg4cNRAc0W6xME86IVTnLnqLp1yeTZZGCFek6hDqERLCbQhQk8t1Szm0V
OdYSh6YfkxhsBGp6hHefOTWuoto4zHZ98uuu0GD8NkzGmnZApZ7It1MiH+SZPG9w
AK4HbizZMWlkvg87OphvnQhC
-----END PRIVATE KEY-----
"

test_that("Snowflake keypair token caching works as expected", {
  skip_if_not_installed("jose")

  # Random RSA key for testing.
  testkey <- openssl::read_key(test_snowflake_key)

  token1 <- snowflake_keypair_token("test1", "user", testkey)
  token2 <- snowflake_keypair_token("test2", "user", testkey)

  # Verify different tokens were returned
  expect_false(identical(token1, token2))

  # Verify cached tokens match original ones
  expect_identical(token1, snowflake_keypair_token("test1", "user", testkey))
  expect_identical(token2, snowflake_keypair_token("test2", "user", testkey))

  # Simulate a cache entry that has expired
  cache <- snowflake_keypair_cache("test1", testkey)
  creds_modified <- cache$get()
  creds_modified$expiry <- Sys.time() - 5
  cache$set(creds_modified)

  # Ensure the new token has been updated
  expect_false(
    identical(
      creds_modified,
      snowflake_keypair_token("test1", "user", testkey)
    )
  )
  expect_false(
    identical(token1, snowflake_keypair_token("test1", "user", testkey))
  )
  expect_false(
    identical(token2, snowflake_keypair_token("test1", "user", testkey))
  )
})

test_that("Snowflake OAuth tokens are detected correctly", {
  withr::local_envvar(
    SNOWFLAKE_ACCOUNT = "testorg-test_account",
    SNOWFLAKE_TOKEN = "token"
  )
  credentials <- default_snowflake_credentials()
  expect_identical(
    credentials(),
    list(
      Authorization = "Bearer token",
      `X-Snowflake-Authorization-Token-Type` = "OAUTH"
    )
  )
})

test_that("Snowflake key-pair credentials are detected correctly", {
  skip_if_not_installed("jose")

  withr::local_envvar(
    SNOWFLAKE_ACCOUNT = "testorg-test_account",
    SNOWFLAKE_USER = "user",
    SNOWFLAKE_PRIVATE_KEY = test_snowflake_key
  )
  # Warm the cache so we can compare more easily.
  token <- snowflake_keypair_token(
    "testorg-test_account",
    "user",
    openssl::read_key(test_snowflake_key)
  )
  credentials <- default_snowflake_credentials()
  expect_identical(
    credentials(),
    list(
      Authorization = paste("Bearer", token),
      `X-Snowflake-Authorization-Token-Type` = "KEYPAIR_JWT"
    )
  )
})

test_that("tokens can be requested from a Connect server", {
  skip_if_not_installed("connectcreds")

  withr::local_envvar(SNOWFLAKE_ACCOUNT = "testorg-test_account")
  connectcreds::local_mocked_connect_responses(token = "token")
  credentials <- default_snowflake_credentials()
  expect_identical(
    credentials(),
    list(
      Authorization = "Bearer token",
      `X-Snowflake-Authorization-Token-Type` = "OAUTH"
    )
  )
})
`````

## File: tests/testthat/test-provider-vllm.R
`````r
# Getting started --------------------------------------------------------

test_that("can make simple request", {
  chat <- chat_vllm_test("Be as terse as possible; no punctuation")
  resp <- chat$chat("What is 1 + 1?", echo = FALSE)
  expect_match(resp, "2")
  expect_equal(chat$last_turn()@tokens > 0, c(TRUE, TRUE))
})

test_that("can make simple streaming request", {
  chat <- chat_vllm_test("Be as terse as possible; no punctuation")
  resp <- coro::collect(chat$stream("What is 1 + 1?"))
  expect_match(paste0(unlist(resp), collapse = ""), "2")
})

test_that("can list models", {
  test_models(\(...) models_vllm("https://llm.nrp-nautilus.io/"))
})
`````

## File: tests/testthat/test-tokens.R
`````r
test_that("useful message if no tokens", {
  local_tokens()

  expect_snapshot(token_usage())
})

test_that("can retrieve and log tokens", {
  local_tokens()
  provider <- test_provider("testprovider", "test")

  expect_equal(tokens_log(provider, 10, 50), c(10, 50))
  expect_equal(the$tokens, tokens_row("testprovider", "test", 10, 50))

  expect_equal(tokens_log(provider, 0, 10), c(0, 10))
  expect_equal(the$tokens, tokens_row("testprovider", "test", 10, 60))

  expect_equal(tokens_log(provider), c(0, 0))
  expect_equal(the$tokens, tokens_row("testprovider", "test", 10, 60))

  expect_snapshot(token_usage())
})

test_that("can compute price of tokens", {
  expect_equal(get_token_cost("OpenAI", "gpt-4o", 1e6, 0), dollars(2.5))
  expect_equal(get_token_cost("OpenAI", "gpt-4o", 0, 1e6), dollars(10))
})

test_that("token_usage() shows price if available", {
  local_tokens()
  local_mocked_bindings(
    prices = data.frame(
      provider = "testprovider",
      model = "test",
      input = 0.10,
      output = 0.01
    )
  )
  provider <- test_provider("testprovider", "test")

  tokens_log(provider, 123e5, 678e3)
  expect_snapshot(token_usage())
})

test_that("price is formatted nicely", {
  expect_equal(format(dollars(NA)), "NA")
  expect_equal(format(dollars(0.0001)), "$0.00")
  expect_equal(format(dollars(c(10, 1))), c("$10.00", "$ 1.00"))
})
`````

## File: tests/testthat/test-tools-def-auto.R
`````r
test_that("help topic extraction works", {
  print_help <- get_help_text("print")
  expect_type(print_help, "character")
  expect_gt(nchar(print_help), 50)

  expect_identical(get_help_text("print", "base"), print_help)
})

test_that("roxygen2 comment extraction works", {
  sys.source(test_path("tools-def.R"), environment(), keep.source = TRUE)
  aliased_function <- has_roxygen_comments

  expect_snapshot(extract_comments_and_signature(has_roxygen_comments))
  expect_snapshot(extract_comments_and_signature(aliased_function))
  expect_snapshot(extract_comments_and_signature(indented_comments))
  expect_snapshot(extract_comments_and_signature(no_srcfile))
})

test_that("basic signature extraction works", {
  sys.source(test_path("tools-def.R"), environment(), keep.source = TRUE)
  expect_snapshot(extract_comments_and_signature(no_roxygen_comments))
})

test_that("checks its inputs", {
  expect_snapshot(error = TRUE, {
    create_tool_def(print, model = "gpt-4", chat = chat_google_gemini())
    create_tool_def(print, chat = 1)
  })
})

test_that("model is deprecated", {
  mock <- mocked_chat("response")
  local_mocked_bindings(chat_openai = function(...) mock)

  expect_snapshot(
    . <- create_tool_def(print, model = "gpt-4", echo = FALSE)
  )
})
`````

## File: tests/testthat/test-tools-def.R
`````r
test_that("tool can get name", {
  f <- function() {
  }
  td <- tool(f, "")
  expect_equal(td@name, "f")

  td <- tool(
    function() {
    },
    ""
  )
  expect_match(td@name, "^tool_")
})

test_that("json_schema_parameters generates correct paramters if no arguments", {
  expect_equal(
    as_json(test_provider(), type_object()),
    list(
      type = "object",
      description = "",
      properties = set_names(list()),
      required = list(),
      additionalProperties = FALSE
    )
  )
})

# tool_annotations() -------------------------------------------------------

test_that("tool_annotations(): NULL values are stripped", {
  expect_equal(tool_annotations(), set_names(list()))
})

test_that("tool_annotations(): checks its inputs", {
  expect_snapshot(error = TRUE, {
    tool_annotations(title = list("Something unexpected"))
    tool_annotations(read_only_hint = "yes")
    tool_annotations(open_world_hint = "yes")
    tool_annotations(idempotent_hint = "no")
    tool_annotations(destructive_hint = "no")
  })
})

test_that("tool_annotations(): allows additional properties", {
  expect_equal(
    tool_annotations(description = "foo"),
    list(description = "foo")
  )
})

test_that("tool() allows annotations", {
  annotations <- tool_annotations(title = "My Tool", read_only_hint = TRUE)

  # fmt: skip
  expect_equal(
    tool(function() { }, "My tool", .annotations = annotations)@annotations,
    annotations
  )
})
`````

## File: tests/testthat/test-turns.R
`````r
test_that("system prompt is applied correctly", {
  sys_prompt <- "foo"
  sys_msg <- Turn("system", sys_prompt)
  user_msg <- Turn("user", "bar")

  expect_equal(normalize_turns(), list())
  expect_equal(normalize_turns(list(user_msg)), list(user_msg))
  expect_equal(normalize_turns(list(sys_msg)), list(sys_msg))

  expect_equal(normalize_turns(list(), sys_prompt), list(sys_msg))
  expect_equal(
    normalize_turns(list(user_msg), sys_prompt),
    list(sys_msg, user_msg)
  )
  expect_equal(
    normalize_turns(list(sys_msg, user_msg), sys_prompt),
    list(sys_msg, user_msg)
  )
})

test_that("normalize_turns throws useful errors", {
  sys_prompt <- "foo"
  sys_msg <- Turn("system", "foo")
  user_msg <- Turn("user", "bar")

  expect_snapshot(error = TRUE, {
    normalize_turns(1)
    normalize_turns(list(1))
    normalize_turns(list(sys_msg, user_msg), 1)
    normalize_turns(list(sys_msg, user_msg), "foo2")
  })
})


test_that("as_user_turn gives useful errors", {
  expect_snapshot(error = TRUE, {
    as_user_turn(list())
    as_user_turn(list(x = 1))
    as_user_turn(1)
  })
})

test_that("as_user_turns gives useful errors", {
  x <- list(list(1))
  expect_snapshot(error = TRUE, {
    as_user_turns(1)
    as_user_turns(x)
  })
})

test_that("can extract text easily", {
  turn <- Turn(
    "assistant",
    list(
      ContentText("ABC"),
      ContentImage(),
      ContentText("DEF")
    )
  )
  expect_equal(turn@text, "ABCDEF")
})

test_that("turns have a reasonable print method", {
  expect_snapshot(Turn("user", "hello"))
})
`````

## File: tests/testthat/test-utils-callbacks.R
`````r
test_that("CallbackManager catches argument mismatches", {
  callbacks <- CallbackManager$new(args = "data")

  expect_snapshot(error = TRUE, {
    callbacks$add("foo")
    callbacks$add(function(foo) NULL)
    callbacks$add(function(x, y) x + y)
  })

  expect_silent(callbacks$add(function(data) data))
  expect_silent(callbacks$invoke(data = data))
  expect_silent(callbacks$invoke(1))

  # Callbacks with invalid args throw standard R error
  expect_snapshot(error = TRUE, {
    callbacks$invoke()
    callbacks$invoke(1, 2)
  })
})

test_that("CallbackManager invokes callbacks in LIFO order", {
  callbacks <- CallbackManager$new()
  res1 <- NULL
  res2 <- NULL

  cb1 <- callbacks$add(function(value) {
    res1 <<- list(value = value, time = Sys.time())
  })

  cb2 <- callbacks$add(function(...) {
    res <- list(time = Sys.time())
    res["value"] <- list(...)
    res2 <<- res
  })

  expect_equal(callbacks$count(), 2)

  # Callbacks don't return a value
  expect_null(callbacks$invoke(list(x = 1, y = 2)))

  # Callbacks receive expected arguments
  expect_equal(res1$value, list(x = 1, y = 2))
  expect_equal(res2$value, list(x = 1, y = 2))
  # Callbacks are invoked in reverse order
  expect_true(res1$time > res2$time)
})

test_that("$add() returns a function to remove the callback", {
  callbacks <- CallbackManager$new()
  res1 <- NULL
  res2 <- NULL

  cb1 <- callbacks$add(function() {
    res1 <<- Sys.time()
  })
  cb2 <- callbacks$add(function() {
    res2 <<- Sys.time()
  })

  expect_equal(callbacks$count(), 2)
  callbacks$invoke()

  # Unregistering a callback
  res1_first <- res1
  res2_first <- res2
  cb1()
  expect_equal(callbacks$count(), 1)
  callbacks$invoke()
  expect_equal(res1, res1_first) # first callback result hasn't changed
  expect_true(res2 > res2_first) # second callback was evaluated

  # Unregistering callbacks are idempotent
  cb_list <- callbacks$get_callbacks()
  expect_null(cb_list[["1"]])
  cb1()
  # Callback list hasn't changed
  expect_equal(callbacks$get_callbacks(), cb_list)
})

test_that("$clear() clears all callbacks", {
  callbacks <- CallbackManager$new()
  res <- c()
  callbacks$add(function() res <<- c(res, 1))
  callbacks$add(function() res <<- c(res, 2))
  expect_equal(callbacks$count(), 2)

  callbacks$clear()
  expect_equal(callbacks$count(), 0)
  expect_equal(callbacks$get_callbacks(), list())

  # Invoking without registered callbacks means nothing happens
  expect_null(callbacks$invoke())
  expect_equal(res, c()) # nothing happened
})
`````

## File: tests/testthat/test-utils-cat.R
`````r
# Execute a function that sinks text to the console and capture the output.
capture_sink <- function(prefix, func, width = 64) {
  con <- file(open = "w+b")
  on.exit(close(con))
  sink <- cat_word_wrap(con, prefix = prefix, width = width)
  func(sink)
  sink(coro::exhausted())
  len <- seek(con, 0)
  readChar(con, len)
}

sink_test_equal <- function(prefix, expected, func, width = 64) {
  value <- capture_sink(prefix, func, width = width)
  rlang::inject(expect_equal(value, {{ expected }}))
}

test_that("wrap + prefix interactions", {
  sink_test_equal(
    prefix = ">>>",
    expected = ">>>\n",
    function(sink) {
      sink("\n")
    },
    width = 12
  )

  sink_test_equal(
    prefix = "> ",
    expected = "> a\n> b\n",
    function(sink) {
      sink("a\n")
      sink("b\n")
    },
    width = 12
  )

  sink_test_equal(
    prefix = "> ",
    expected = "> this_is_a_very_long_string_that_nevertheless_should_not_wrap\n",
    function(sink) {
      sink("this_is_a_very_long_string_that_nevertheless_should_not_wrap\n")
    },
    width = 12
  )

  # Just barely fits (11 chars wide)
  sink_test_equal(
    prefix = "12",
    expected = "12345678 AB\n",
    function(sink) {
      sink("345678 AB\n")
    },
    width = 12
  )

  # Doesn't fit, but can't wrap
  sink_test_equal(
    prefix = "12",
    expected = "123456789ABCD\n",
    function(sink) {
      sink("3456789ABCD\n")
    },
    width = 12
  )

  # Doesn't fit, but wraps
  sink_test_equal(
    prefix = "> ",
    expected = "> 345678 \n> ABCD\n",
    function(sink) {
      sink("345678 ABCD\n")
    },
    width = 12
  )
})

test_that("more realistic wrap examples", {
  for (prefix in c("?> ", "")) {
    for (width in c(70, 10000)) {
      rlang::inject({
        expect_snapshot(cat(capture_sink(
          prefix = !!prefix,
          width = !!width,
          function(sink) {
            sink(
              "It was the best of times, it was the worst of times, it was the age "
            )
            sink(
              "of wisdom, it was the age of foolishness, it was the epoch of belief"
            )
            sink(
              ", it was the epoch of incredulity, it was the season of Light, it wa"
            )
            sink(
              "s the season of Darkness, it was the spring of hope, it was the wint"
            )
            sink("er of despair.")
          }
        )))
      })
    }
  }

  expect_snapshot(cat(capture_sink(prefix = "Dickens> ", function(sink) {
    sink("It was the best of times,\nit was the worst of times,\n")
    sink("it was the age ")
    sink("of wisdom, it was the age of ")
    sink("foolishness,\nit was the epoch of belief")
    sink(", it was the epoch of incredulity, ")
    sink(paste(rep_len(" ", 200), collapse = ""))
    sink("it was the season of Light, it wa")
    sink("s the season of Darkness,\n\n\nit was the spring of hope,")
    sink(" it was the wint")
    sink("er of despair.")
  })))
})
`````

## File: tests/testthat/test-utils-merge.R
`````r
test_that("NULLS + values", {
  expect_equal(merge_dicts(list(), list(a = 1)), list(a = 1))
  expect_equal(merge_dicts(list(a = 1), list()), list(a = 1))
})

test_that("equal values are ok", {
  expect_equal(merge_dicts(list(a = 1), list(a = 1)), list(a = 1))
  expect_equal(merge_dicts(list(a = 1.5), list(a = 1.5)), list(a = 1.5))
  expect_equal(
    merge_dicts(list(a = list(b = 1)), list(a = list(c = 2))),
    list(a = list(b = 1, c = 2))
  )

  expect_equal(merge_dicts(list(a = TRUE), list(a = TRUE)), list(a = TRUE))
  expect_equal(merge_dicts(list(a = FALSE), list(a = FALSE)), list(a = FALSE))

  expect_equal(merge_dicts(list(a = "x"), list(a = "x")), list(a = "x"))
})

test_that("strings are concatenated", {
  expect_equal(merge_dicts(list(a = "a"), list(a = "b")), list(a = "ab"))
  expect_equal(
    merge_dicts(list(a = list(b = "a")), list(a = list(b = "b"))),
    list(a = list(b = "ab"))
  )
})

test_that("can merge dictionaries with different keys", {
  expect_equal(
    merge_dicts(list(a = 1, b = 2), list(a = 1)),
    list(a = 1, b = 2)
  )
  expect_equal(
    merge_dicts(list(a = 1, b = 2), list(c = NULL)),
    list(a = 1, b = 2, c = NULL)
  )
})

test_that("nulls don't overwrite existing values (#115)", {
  expect_equal(
    merge_dicts(list(a = 1, b = 2), list(a = NULL)),
    list(a = 1, b = 2)
  )
})

test_that("can merge lists", {
  expect_equal(
    merge_dicts(list(a = list(1, 2)), list()),
    list(a = list(1, 2))
  )
  expect_equal(
    merge_dicts(list(), list(a = list(1, 2))),
    list(a = list(1, 2))
  )
  expect_equal(
    merge_dicts(list(a = list(1, 2)), list(a = list(3))),
    list(a = list(1, 2, 3))
  )
})

test_that("respects index when merging lists", {
  expect_equal(
    merge_dicts(
      list(a = list(list(index = 0, b = "{"))),
      list(a = list(list(index = 0, b = "f")))
    ),
    list(a = list(list(index = 0, b = "{f")))
  )

  expect_equal(
    merge_dicts(
      list(a = list(list(index = 0, b = "a"))),
      list(a = list(list(index = 1, b = "b")))
    ),
    list(a = list(list(index = 0, b = "a"), list(index = 1, b = "b")))
  )
})
`````

## File: tests/testthat/test-utils-S7.R
`````r
test_that("prop_whole_number validates inputs", {
  check_prop <- function(...) {
    new_class(
      "class",
      properties = list(prop = prop_number_whole(...)),
      package = NULL
    )
  }
  expect_snapshot(error = TRUE, {
    check_prop()("x")
    check_prop()(c(1:2))
    check_prop()(1.5)
    check_prop(min = 1)(0)
    check_prop(max = -1)(0)
  })
})
`````

## File: tests/testthat/test-utils.R
`````r
test_that("finds key if set", {
  withr::local_envvar(FOO = "abc123")
  expect_true(key_exists("FOO"))
  expect_equal(key_get("FOO"), "abc123")
})


test_that("informative error if no key", {
  withr::local_envvar(FOO = NULL, TESTTHAT = "false")
  expect_false(key_exists("FOO"))
  expect_snapshot(key_get("FOO"), error = TRUE)
})

test_that("detects whitespace", {
  expect_true(is_whitespace("\n\n\n \t"))
  expect_true(is_whitespace(""))

  expect_false(is_whitespace("a"))
  expect_false(is_whitespace("."))
})

test_that('echo="output" replaces echo="text"', {
  expect_snapshot(
    expect_equal(check_echo("text"), "output")
  )
})
`````

## File: tests/testthat/tools-def.R
`````r
# fmt: skip file

#' A function for foo-ing three numbers.
#'
#' @param x The first param
#' @param y The second param
#' @param z Take a guess
#' @returns The result of x %foo% y %foo% z.
has_roxygen_comments <- function(x, y, z = pi - 3.14) {
  super_secret_code()
}


  #' A function for foo-ing three numbers.
  #'
  #' @param x The first param
  #' @param y The second param
  #' @param z Take a guess
  #' @returns The result of x %foo% y %foo% z.
  indented_comments <- function(x, y, z = pi - 3.14) {
    super_secret_code()
  }

no_roxygen_comments <- function(i, j, k = pi - 3.14) {
  super_secret_code()
}

no_srcfile <- eval(quote(
  #' A function for foo-ing three numbers.
  function(a, b, c = pi - 3.14) {
    super_secret_code()
  }
))
`````

## File: tests/testthat.R
`````r
# This file is part of the standard setup for testthat.
# It is recommended that you do not modify it.
#
# Where should you do additional test configuration?
# Learn more about the roles of various files in:
# * https://r-pkgs.org/testing-design.html#sec-tests-files-overview
# * https://testthat.r-lib.org/articles/special-files.html

library(testthat)
library(ellmer)

test_check("ellmer")
`````

## File: vignettes/prompt-design_cache/html/__packages
`````
ellmer
`````

## File: vignettes/structured-data_cache/html/__packages
`````
ellmer
`````

## File: vignettes/.gitignore
`````
*.html
*.R

/.quarto/
`````

## File: vignettes/ellmer.Rmd
`````
---
title: "Getting started with ellmer"
output: rmarkdown::html_vignette
vignette: >
  %\VignetteIndexEntry{Getting started with ellmer}
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteEncoding{UTF-8}
---

```{r, include = FALSE}
knitr::opts_chunk$set(
  collapse = TRUE,
  eval = ellmer:::openai_key_exists(),
  comment = "#>"
)
```

```{r setup}
library(ellmer)
```

ellmer makes it easy to access the wealth of large language models (LLMs) from R. But what can you do with those models once you have access to them? This vignette will give you the basic vocabulary you need to use an LLM effectively and will show you some examples to ignite your creativity.

In this vignette we'll mostly ignore how LLMs work, using them as convenient black boxes. If you want to get a sense of how they actually work, we recommend watching Jeremy Howard's posit::conf(2023) keynote: [A hacker's guide to open source LLMs](https://www.youtube.com/watch?v=sYliwvml9Es).

## Vocabulary

We'll start by laying out the key vocab that you'll need to understand LLMs. Unfortunately the vocab is all a little entangled: to understand one term you'll often have to know a little about some of the others. So we'll start with some simple definitions of the most important terms then iteratively go a little deeper.

It all starts with a **prompt**, which is the text (typically a question or a request) that you send to the LLM. This starts a **conversation**, a sequence of turns that alternate between user prompts and model responses. Inside the model, both the prompt and response are represented by a sequence of **tokens**, which represent either individual words or subcomponents of a word. The tokens are used to compute the cost of using a model and to measure the size of the **context**, the combination of the current prompt and any previous prompts and responses used to generate the next response.

It's useful to make the distinction between providers and models. A **provider** is a web API that gives access to one or more **models**. The distinction is a bit subtle because providers are often synonymous with a model, like OpenAI and GPT, Anthropic and Claude, and Google and Gemini. But other providers, like Ollama, can host many different models, typically open source models like LLaMa and Mistral. Still other providers support both open and closed models, typically by partnering with a company that provides a popular closed model. For example, Azure OpenAI offers both open source models and OpenAI's GPT, while AWS Bedrock offers both open source models and Anthropic's Claude.

### What is a token?

An LLM is a _model_, and like all models needs some way to represent its inputs numerically. For LLMs, that means we need some way to convert words to numbers. This is the goal of the **tokenizer**. For example, using the GPT 4o tokenizer, the string "When was R created?" is converted to 5 tokens: 5958 ("When"), 673 (" was"), 460 (" R"), 5371 (" created"), 30 ("?"). As you can see, many simple strings can be represented by a single token. But more complex strings require multiple tokens. For example, the string "counterrevolutionary" requires 4 tokens: 32128 ("counter"), 264 ("re"), 9477 ("volution"), 815 ("ary"). (You can see how various strings are tokenized at <http://tiktokenizer.vercel.app/>).

It's important to have a rough sense of how text is converted to tokens because tokens are used to determine the cost of a model and how much context can be used to predict the next response. On average an English word needs ~1.5 tokens so a page might require 375-400 tokens and a complete book might require 75,000 to 150,000 tokens. Other languages will typically require more tokens, because (in brief) LLMs are trained on data from the internet, which is primarily in English.

LLMs are priced per million tokens. State of the art models (like GPT-4.1 or Claude 3.5 sonnet) cost $2-3 per million input tokens, and $10-15 per million output tokens. Cheaper models can cost much less, e.g. GPT-4.1 nanoo costs $0.10 per million input tokens and $0.40 per million output tokens. Even $10 of API credit will give you a lot of room for experimentation, particularly with cheaper models, and prices are likely to decline as model performance improves.

Tokens also used to measure the context window, which is how much text the LLM can use to generate the next response. As we'll discuss shortly, the context length includes the full state of your conversation so far (both your prompts and the model's responses), which means that cost grow rapidly with the number of conversational turns.

In ellmer, you can see how many tokens a conversations has used by printing it, and you can see total usage for a session with `token_usage()`.

```{r}
chat <- chat_openai(model = "gpt-4.1")
. <- chat$chat("Who created R?", echo = FALSE)
chat

token_usage()
```

If you want to learn more about tokens and tokenizers, I'd recommend watching the first 20-30 minutes of [Let's build the GPT Tokenizer](https://www.youtube.com/watch?v=zduSFxRajkE) by Andrej Karpathy. You certainly don't need to learn how to build your own tokenizer, but the intro will give you a bunch of useful background knowledge that will help improve your undersstanding of how LLM's work.

### What is a conversation?

A conversation with an LLM takes place through a series of HTTP requests and responses: you send your question to the LLM as an HTTP request, and it sends back its reply as an HTTP response. In other words, a conversation consists of a sequence of a paired turns: a sent prompt and a returned response.

It's important to note that a request includes not only the current user prompt, but every previous user prompt and model response. This means that:

* The cost of a conversation grows quadratically with the number of turns: if you want to save money, keep your conversations short.

* Each response is affected by all previous prompts and responses. This can make a converstion get stuck in a local optimum, so it's generally better to iterate by starting a new conversation with a better prompt rather than having a long back-and-forth.

* ellmer has full control over the conversational history. Because it's ellmer's responsibility to send the previous turns of the conversation, it's possible to start a conversation with one model and finish it with another.

### What is a prompt?

The user prompt is the question that you send to the model. There are two other important prompts that underlie the user prompt:

* The **platform prompt**, which is unchangeable, set by the model provider, and affects every conversation. You can see what these look like from Anthropic, who [publishes their core system prompts](https://docs.anthropic.com/en/release-notes/system-prompts).

* The **system prompt** (aka developer prompt), which is set when you create a new conversation, and affects every response. It's used to provide additional instructions to the model, shaping its responses to your needs. For example, you might use the system prompt to ask the model to always respond in Spanish or to write dependency-free base R code. You can also use the system prompt to provide the model with information it wouldn't otherwise know, like the details of your database schema, or your preferred ggplot2 theme and color palette.

OpenAI calls this the [chain of command](https://cdn.openai.com/spec/model-spec-2024-05-08.html#follow-the-chain-of-command): if there are conflicts or inconsistencies the prompts, the platform prompt overrides the system prompt, which in turn overrides the user prompt.

When you use a chat app like ChatGPT or claude.ai you can only iterate on the user prompt. But when you're programming with LLMs, you'll primarily iterate on the system prompt. For example, if you're developing an app that helps a user write tidyverse code, you'd work with the system prompt to ensure that user gets the style of code they want.

Writing a good prompt, which is called __prompt design__, is key to effective use of LLMs. It is discussed in more detail in `vignette("prompt-design")`.

## Example uses

Now that you've got the basic vocab under your belt, I'm going to fire a bunch of interesting potential use cases at you. While there are special purpose tools that might solve these cases faster and/or cheaper, an LLM allows you to rapidly prototype a solution. This can be extremely valuable even if you end up using those more specialised tools in your final product.

In general, we recommend avoiding LLMs where accuracy is critical. That said, there are still many cases for their use. For example, even though they always require some manual fiddling, you might save a bunch of time ever with an 80% correct solution. In fact, even a not-so-good solution can still be useful because it makes it easier to get started: it's easier to react to something rather than to have to start from scratch with a blank page.

### Chatbots

A great place to start with ellmer and LLMs is to build a chatbot with a custom prompt. Chatbots are a familiar interface to LLMs and are easy to create in R with [shinychat](https://github.com/jcheng5/shinychat). And there's a surprising amount of value to creating a custom chatbot that has a prompt stuffed with useful knowledge. For example:

* Help people use your new package. To do so, you need a custom prompt because LLMs were trained on data prior to your package's existence. You can create a surprisingly useful tool just by preloading the prompt with your README and vignettes. This is how the [ellmer assistant](https://github.com/jcheng5/ellmer-assistant) works.

* Build language specific prompts for R and/or python. [Shiny assistant](https://shiny.posit.co/blog/posts/shiny-assistant/) helps you build shiny apps (either in R or python) by combining a [prompt](https://github.com/posit-dev/shiny-assistant/blob/main/shinyapp/app_prompt.md) that gives general advice on building apps with a prompt for [R](https://github.com/posit-dev/shiny-assistant/blob/main/shinyapp/app_prompt_r.md) or [python](https://github.com/posit-dev/shiny-assistant/blob/main/shinyapp/app_prompt_python.md). The python prompt is very detailed because there's much less information about Shiny for Python in the existing LLM knowledgebases.

* Help people find the answers to their questions. Even if you've written a bunch of documentation for something, you might find that you still get questions because folks can't easily find exactly what they're looking for. You can reduce the need to answer these questions by creating a chatbot with a prompt that contains your documentation. For example, if you're a teacher, you could create a chatbot that includes your syllabus in the prompt. This eliminates a common class of question where the data necessary to answer the question is available, but hard to find.

Another direction is to give the chatbot additional context about your current environment. For example, [aidea](https://github.com/cpsievert/aidea) allows the user to interactively explore a dataset with the help of the LLM. It adds summary statistics about the dataset to the [prompt](https://github.com/cpsievert/aidea/blob/main/inst/app/prompt.md) so that the LLM knows something about your data. Along these lines, imagine writing a chatbot to help with data import that has a prompt which include all the files in the current directory along with their first few lines.

### Structured data extraction

LLMs are often very good at extracting structured data from unstructured text. This can give you traction to analyse data that was previously unaccessible. For example:

* Customer tickets and GitHub issues: you can use LLMs for quick and dirty sentiment analysis by extracting any specifically mentioned products and summarising the discussion as a few bullet points.

* Geocoding: LLMs do a surprisingly good job at geocoding, especially extracting addresses or finding the latitute/longitude of cities. There are specialised tools that do this better, but using an LLM makes it easy to get started.

* Recipes: I've extracted structured data from baking and cocktail recipes. Once you have the data in a structured form you can use your R skills to better understand how recipes vary within a cookbook or to look for recipes that use the ingredients currently in your kitchen. You could even use shiny assistant to help make those techniques available to anyone, not just R users.

Structured data extraction also works well with images. It's not the fastest or cheapest way to extract data but it makes it really easy to prototype ideas. For example, maybe you have a bunch of scanned documents that you want to index. You can convert PDFs to images (e.g. using {imagemagick}) then use structured data extraction to pull out key details.

Learn more about structured data extraction in `vignette("structure-data")`.

### Programming

LLMs can also be useful to solve general programming problems. For example:

* Write a detailed prompt that explains how to update code to use a new version of a package. You could combine this with the rstudioapi package to allow the user to select code, transform it, and replace it in the existing text. A comprehensive example of this sort of app is [chores](https://simonpcouch.github.io/chores/), which includes prompts for automatically generating roxygen documentation blocks, updating testthat code to the 3rd edition, and converting `stop()` and `abort()` to use `cli::cli_abort()`.

* You could automatically look up the documentation for an R function, and include it in the prompt to make it easier to figure out how to use a specific function.

* You can use LLMs to explain code, or even ask them to [generate a diagram](https://bsky.app/profile/daviddiviny.com/post/3lb6kjaen4c2u).

* You can ask an LLM to analyse your code for potential code smells or security issues. You can do this a function at a time, or explore the entire source code of your package or script in the prompt.

* You could use [gh](https://gh.r-lib.org) to find unlabelled issues, extract the text, and ask the LLM to figure out what labels might be most appropriate. Or maybe an LLM might be able to help people create better reprexes, or simplify reprexes that are too complicated?

* I find it useful to have an LLM document a function for me, even knowing that it's likely to be mostly incorrect. Having something to react to make it much easier for me to get started.

* If you're working with code or data from another programming language, you can ask an LLM to convert it to R code for you. Even if it's not perfect, it's still typically much faster than doing everything yourself.

## Miscellaneous

To finish up here are a few other ideas that seem cool but didn't seem to fit the above categories:

* Automatically generate alt text for plots, using `content_image_plot()`.

* Analyse the text of your statistical report to look for flaws in your statistical reasoning (e.g. misinterpreting p-values or assuming causation where only correlation exists).

* Use your existing company style guide to generate a [brand.yaml](https://posit-dev.github.io/brand-yml/articles/llm-brand-yml-prompt/) specification to automatically style your reports, apps, dashboards and plots to match your corporate style guide.
`````

## File: vignettes/programming.Rmd
`````
---
title: "Programming with ellmer"
output: rmarkdown::html_vignette
vignette: >
  %\VignetteIndexEntry{Programming with ellmer}
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteEncoding{UTF-8}
---

```{r, include = FALSE}
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = ellmer:::openai_key_exists()
)
```

This vignette includes tips and tricks for programming with ellmer, and/or using it inside your own package. It's currently fairly short but will grow over time.

```{r setup}
library(ellmer)
```

## Cloning chats

Chat objects are [R6 objects](https://r6.r-lib.org), which means that they are **mutable**. Most R objects are immutable. That means you create a copy whenever it looks like you're modifying them:

```{r}
x <- list(a = 1, b = 2)

f <- function() {
  x$a <- 100
}
f()

# The original x is unchanged
str(x)
```

Mutable objects don't work the same way:

```{r}
chat <- chat_openai("Be terse", model = "gpt-4.1-nano")

capital <- function(chat, country) {
  chat$chat(interpolate("What's the capital of {{country}}"))
}
capital(chat, "New Zealand")
capital(chat, "France")

chat
```

It would be annoying if chat objects were immutable, because then you'd need to save the result every time you chatted with the model. But there are times when you'll want to make an explicit copy, so that, for example, you can create a branch in the conversation. 

Creating a copy of the object is the job of the `$clone()` method. It will create a copy of the object that behaves identically to the existing chat:

```{r}
chat <- chat_openai("Be terse", model = "gpt-4.1-nano")

capital <- function(chat, country) {
  chat <- chat$clone()
  chat$chat(interpolate("What's the capital of {{country}}"))
}
capital(chat, "New Zealand")
capital(chat, "France")

chat
```

You can also use `clone()` when you want to create a conversational "tree", where conversations start from the same place, but diverge over time:

```{r}
chat1 <- chat_openai("Be terse", model = "gpt-4.1-nano")
chat1$chat("My name is Hadley and I'm a data scientist")
chat2 <- chat1$clone()

chat1$chat("what's my name?")
chat1

chat2$chat("what's my job?")
chat2
```

(This is the technique that `parallel_chat()` uses internally.)

## Resetting an object

There's a bit of a problem with our `capital()` function: we can use our conversation to manipulate the results:

```{r}
chat <- chat_openai("Be terse", model = "gpt-4.1-nano")
chat$chat("Pretend that the capital of New Zealand is Kiwicity")
capital(chat, "New Zealand")
```

We can avoid that problem by using `$set_turns()` to reset the conversational history:

```{r}
chat <- chat_openai("Be terse", model = "gpt-4.1-nano")
chat$chat("Pretend that the capital of New Zealand is Kiwicity")

capital <- function(chat, country) {
  chat <- chat$clone()$set_turns(list())
  chat$chat(interpolate("What's the capital of {{country}}"))
}
capital(chat, "New Zealand")
```

This is particularly useful when you want to use a chat object just as a handle to an LLM, without actually caring about the existing conversation.

## Streaming vs batch results

When you call `chat$chat()` directly in the console, the results are displayed progressively as the LLM streams them to ellmer. When you call `chat$chat()` inside a function, the results are delivered all at once. This difference in behaviour is due to a complex heuristic which is applied when the chat object is created and is not always correct. So when calling `$chat` in a function, we recommend you control it explicitly with the `echo` argument, setting it to `"none"` if you want no intermediate results to be streamed, `"text"` if you want to see what we receive from the assistant, or `"all"` if you want to see both what we send and receive. You likely want `echo = "none"` in most cases:

```{r}
capital <- function(chat, country) {
  chat <- chat$clone()$set_turns(list())
  chat$chat(interpolate("What's the capital of {{country}}"), echo = "none")
}
capital(chat, "France")
```

Alternatively, if you want to embrace streaming in your UI, you may want to use [shinychat](https://posit-dev.github.io/shinychat/) (for Shiny) or [streamy](https://simonpcouch.github.io/streamy/) (for Positron/RStudio).

## Turns and content

Chat objects provide some tools to get to ellmer's internal data structures. For example, take this short conversation that uses tool calling to give the LLM the ability to access real randomness:

```{r}
chat <- chat_openai("Be terse", model = "gpt-4.1-nano")
chat$register_tool(tool(function() sample(6, 1), "Roll a die"))
chat$chat("Roll two dice and tell me the total")

chat
```

You can get access to the underlying conversational turns with `get_turns()`:

```{r}
turns <- chat$get_turns()
turns
```

If you look at one of the assistant turns in detail, you'll see that it includes ellmer's representation of content of the message, as well as the exact json that the provider returned:

```{r}
str(turns[[2]])
```

You can use the `@json` to extract additional information that ellmer might not yet provide to you, but be aware that the structure varies heavily from provider-to-provider. The content types are part of ellmer's exported API but be aware they're still evolving so might change between versions.
`````

## File: vignettes/prompt-design.Rmd
`````
---
title: "Prompt design"
output: rmarkdown::html_vignette
vignette: >
  %\VignetteIndexEntry{Prompt design}
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteEncoding{UTF-8}
---

```{r, include = FALSE}
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = ellmer:::openai_key_exists() && ellmer:::anthropic_key_exists(),
  cache = TRUE
)
options(ellmer_seed = 1337)
```

This vignette gives you some advice about how to use ellmer to write prompts. We'll work through two hopefully relevant examples: a prompt that generates code and another that extracts structured data. If you've never written a prompt, I'd highly recommend reading Ethan Mollick's [Getting started with AI: Good enough prompting](https://www.oneusefulthing.org/p/getting-started-with-ai-good-enough). I think understanding his analogy about how AI works will really help you get started:

> Treat AI like an infinitely patient new coworker who forgets everything you tell them each new conversation, one that comes highly recommended but whose actual abilities are not that clear. ... Two parts of this are analogous to working with humans (being new on the job and being a coworker) and two of them are very alien (forgetting everything and being infinitely patient). We should start with where AIs are closest to humans, because that is the key to good-enough prompting

As well as learning general prompt design skills, it's also a good idea to read any specific advice for the model that you're using. Here are some pointers to the prompt design guides of some of the most popular models:

* [Claude](https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/overview)
* [OpenAI](https://platform.openai.com/docs/guides/prompt-engineering)
* [Gemini](https://ai.google.dev/gemini-api/docs/prompting-intro)

If you have a claude account, you can use its [prompt-generator](https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/prompt-generator). It's specifically tailored for Claude, but I suspect it will help you with many other LLMs, or at least give you some ideas as to what else to include in your prompt.

```{r setup}
#| cache: false
library(ellmer)
```

```{r}
#| include: false
# Manually ratchet claude variability way down to hopefully make generated
# code better match my prose.
chat_anthropic <- function(...) {
  ellmer::chat_anthropic(..., params = params(temperature = 0))
}
```

## Best practices

It's highly likely that you'll end up writing long, possibly multi-page prompts. To ensure your success with this task, we have two recommendations. First, put each prompt its own, separate file. Second, write the prompts using markdown. The reason to use markdown is that it's quite readable to LLMs (and humans), and it allows you to do things like use headers to divide up a prompt into sections and itemised lists to enumerate multiple options. You can see some examples of this style of prompt here:

* <https://github.com/posit-dev/shiny-assistant/blob/main/shinyapp/app_prompt_python.md>
* <https://github.com/jcheng5/py-sidebot/blob/main/prompt.md>
* <https://github.com/simonpcouch/chores/tree/main/inst/prompts>
* <https://github.com/cpsievert/aidea/blob/main/inst/app/prompt.md>

In terms of file names, if you only have one prompt in your project, call it `prompt.md`. If you have multiple prompts, give them informative names like `prompt-extract-metadata.md` or `prompt-summarize-text.md`. If you're writing a package, put your prompt(s) in `inst/prompts`, otherwise it's fine to put them in the project's root directory.

Your prompts are going to change over time, so we'd highly recommend commiting them to a git repo. That will ensure that you can easily see what has changed, and that if you accidentally make a mistake you can easily roll back to a known good verison.

If your prompt includes dynamic data, use `ellmer::interpolate_file()` to intergrate it into your prompt. `interpolate_file()` works like [glue](https://glue.tidyverse.org) but uses `{{ }}` instead of `{ }` to make it easier to work with JSON.

As you iterate the prompt, it's a good idea to build up a small set of challenging examples that you can regularly re-check with your latest version of the prompt. Currently you'll need to do this by hand, but we hope to eventually provide tools that'll help you do this a little more formally.

Unfortunately, you won't see these best practices in action in this vignette since we're keeping the prompts short and inline to make it easier for you to grok what's going on.

## Code generation

Let's explore prompt design for a simple code generation task:

```{r}
#| cache: false
question <- "
  How can I compute the mean and median of variables a, b, c, and so on,
  all the way up to z, grouped by age and sex.
"
```

I'll use `chat_anthropic()` for this problem because in our experience it does the best job of generating code.

### Basic flavour

When I don't provide a system prompt, I sometimes get answers in different languages or different styles of R code:

```{r}
#| label: code-basic
chat <- chat_anthropic()
chat$chat(question)
```

I can ensure that I always get R code in a specific style by providing a system prompt:

```{r}
#| label: code-r
chat <- chat_anthropic(
  system_prompt = "
  You are an expert R programmer who prefers the tidyverse.
"
)
chat$chat(question)
```

Note that I'm using both a system prompt (which defines the general behaviour) and a user prompt (which asks the specific question). You could put all this content in the user prompt and get similar results, but I think it's helpful to use both to cleanly divide the general framing of the response from the specific questions you ask.

Since I'm mostly interested in the code, I ask it to drop the explanation and sample data:

```{r}
#| label: code-r-minimal
chat <- chat_anthropic(
  system_prompt = "
  You are an expert R programmer who prefers the tidyverse.
  Just give me the code. I don't want any explanation or sample data.
"
)
chat$chat(question)
```

And of course, if you want a different style of R code, just ask for it:

```{r}
#| label: code-styles
chat <- chat_anthropic(
  system_prompt = "
  You are an expert R programmer who prefers data.table.
  Just give me the code. I don't want any explanation or sample data.
"
)
chat$chat(question)

chat <- chat_anthropic(
  system_prompt = "
  You are an expert R programmer who prefers base R.
  Just give me the code. I don't want any explanation or sample data.
"
)
chat$chat(question)
```

### Be explicit

If there's something about the output that you don't like, try being more explicit. For example, the code isn't styled quite how I'd like it, so I provide more details about what I do want:

```{r}
#| label: code-explicit
chat <- chat_anthropic(
  system_prompt = "
  You are an expert R programmer who prefers the tidyverse.
  Just give me the code. I don't want any explanation or sample data.

  Follow the tidyverse style guide:
  * Spread long function calls across multiple lines.
  * Where needed, always indent function calls with two spaces.
  * Only name arguments that are less commonly used.
  * Always use double quotes for strings.
  * Use the base pipe, `|>`, not the magrittr pipe `%>%`.
"
)
chat$chat(question)
```

This still doesn't yield exactly the code that I'd write, but it's pretty close.

You could provide a different prompt if you were looking for more explanation of the code:

```{r}
#| label: code-teacher
chat <- chat_anthropic(
  system_prompt = "
  You are an expert R teacher.
  I am a new R user who wants to improve my programming skills.
  Help me understand the code you produce by explaining each function call with
  a brief comment. For more complicated calls, add documentation to each
  argument. Just give me the code. I don't want any explanation or sample data.
"
)
chat$chat(question)
```

### Teach it about new features

You can imagine LLMs as being a sort of an average of the internet at a given point in time. That means they will provide popular answers, which will tend to reflect older coding styles (either because the new features aren't in their index, or the older features are so much more popular). So if you want your code to use specific newer language features, you might need to provide the examples yourself:

```{r}
#| label: code-new-feature
chat <- chat_anthropic(
  system_prompt = "
  You are an expert R programmer.
  Just give me the code; no explanation in text.
  Use the `.by` argument rather than `group_by()`.
  dplyr 1.1.0 introduced per-operation grouping with the `.by` argument.
  e.g., instead of:

  transactions |>
    group_by(company, year) |>
    mutate(total = sum(revenue))

  write this:
  transactions |>
    mutate(
      total = sum(revenue),
      .by = c(company, year)
    )
"
)
chat$chat(question)
```

## Structured data

Providing a rich set of examples is a great way to encourage the output to produce exactly what you want. This is known as **multi-shot prompting**. Below we'll work through a prompt that I designed to extract structured data from recipes, but the same ideas apply in many other situations.

### Getting started

My overall goal is to turn a list of ingredients, like the following, into a nicely structured JSON that I can then analyse in R (e.g. compute the total weight, scale the recipe up or down, or convert the units from volumes to weights).

```{r}
#| cache: false
ingredients <- "
  ¾ cup (150g) dark brown sugar
  2 large eggs
  ¾ cup (165g) sour cream
  ½ cup (113g) unsalted butter, melted
  1 teaspoon vanilla extract
  ¾ teaspoon kosher salt
  ⅓ cup (80ml) neutral oil
  1½ cups (190g) all-purpose flour
  150g plus 1½ teaspoons sugar
"
```

(This isn't the ingredient list for a real recipe but it includes a sampling of styles that I encountered in my project.)

If you don't have strong feelings about what the data structure should look like, you can start with a very loose prompt and see what you get back. I find this a useful pattern for underspecified problems where the heavy lifting lies with precisely defining the problem you want to solve. Seeing the LLM's attempt to create a data structure gives me something to react to, rather than having to start from a blank page.

```{r}
#| label: data-loose
instruct_json <- "
  You're an expert baker who also loves JSON. I am going to give you a list of
  ingredients and your job is to return nicely structured JSON. Just return the
  JSON and no other commentary.
"

chat <- chat_openai(instruct_json)
chat$chat(ingredients)
```

(I don't know if the additional colour, "You're an expert baker who also loves JSON", does anything, but I like to think this helps the LLM get into the right mindset of a very nerdy baker.)

### Provide examples

This isn't a bad start, but I prefer to cook with weight and I only want to see volumes if weight isn't available so I provide a couple of examples of what I'm looking for. I was pleasantly suprised that I can provide the input and output examples in such a loose format.

```{r}
#| label: data-examples
instruct_weight <- r"(
  Here are some examples of the sort of output I'm looking for:

  ¾ cup (150g) dark brown sugar
  {"name": "dark brown sugar", "quantity": 150, "unit": "g"}

  ⅓ cup (80ml) neutral oil
  {"name": "neutral oil", "quantity": 80, "unit": "ml"}

  2 t ground cinnamon
  {"name": "ground cinnamon", "quantity": 2, "unit": "teaspoon"}
)"

chat <- chat_openai(paste(instruct_json, instruct_weight))
chat$chat(ingredients)
```

Just providing the examples seems to work remarkably well. But I found it useful to also include a description of what the examples are trying to accomplish. I'm not sure if this helps the LLM or not, but it certainly makes it easier for me to understand the organisation of the whole prompt and check that I've covered the key pieces I'm interested in.

```{r}
#| cache: false
instruct_weight <- r"(
  * If an ingredient has both weight and volume, extract only the weight:

  ¾ cup (150g) dark brown sugar
  [
    {"name": "dark brown sugar", "quantity": 150, "unit": "g"}
  ]

* If an ingredient only lists a volume, extract that.

  2 t ground cinnamon
  ⅓ cup (80ml) neutral oil
  [
    {"name": "ground cinnamon", "quantity": 2, "unit": "teaspoon"},
    {"name": "neutral oil", "quantity": 80, "unit": "ml"}
  ]
)"
```

This structure also allows me to give the LLMs a hint about how I want multiple ingredients to be stored, i.e. as an JSON array.

I then iterated on the prompt, looking at the results from different recipes to get a sense of what the LLM was getting wrong. Much of this felt like I waws iterating on my own understanding of the problem as I didn't start by knowing exactly how I wanted the data. For example, when I started out I didn't really think about all the various ways that ingredients are specified. For later analysis, I always want quantities to be number, even if they were originally fractions, or the if the units aren't precise (like a pinch). It made me realise that some ingredients are unitless.

```{r}
#| cache: false
instruct_unit <- r"(
* If the unit uses a fraction, convert it to a decimal.

  ⅓ cup sugar
  ½ teaspoon salt
  [
    {"name": "dark brown sugar", "quantity": 0.33, "unit": "cup"},
    {"name": "salt", "quantity": 0.5, "unit": "teaspoon"}
  ]

* Quantities are always numbers

  pinch of kosher salt
  [
    {"name": "kosher salt", "quantity": 1, "unit": "pinch"}
  ]

* Some ingredients don't have a unit.
  2 eggs
  1 lime
  1 apple
  [
    {"name": "egg", "quantity": 2},
    {"name": "lime", "quantity": 1},
    {"name", "apple", "quantity": 1}
  ]
)"
```

You might want to take a look at the [full prompt](https://gist.github.com/hadley/7688b4dd1e5e97b800c6d7d79e437b48) to see what I ended up with.

### Structured data

Now that I've iterated to get a data structure I like, it seems useful to formalise it and tell the LLM exactly what I'm looking for when dealing with structured data. This guarantees that the LLM will only return JSON, that the JSON will have the fields that you expect, and that ellmer will convert it into an R data structure.

```{r}
#| label: data-structured
type_ingredient <- type_object(
  name = type_string("Ingredient name"),
  quantity = type_number(),
  unit = type_string("Unit of measurement")
)

type_ingredients <- type_array(items = type_ingredient)

chat <- chat_openai(c(instruct_json, instruct_weight))
chat$chat_structured(ingredients, type = type_ingredients)
```

### Capturing raw input

One thing that I'd do next time would also be to include the raw ingredient names in the output. This doesn't make much difference in this simple example but it makes it much easier to align the input with the output and to start developing automated measures of how well my prompt is doing.

```{r}
#| cache: false
instruct_weight_input <- r"(
  * If an ingredient has both weight and volume, extract only the weight:

    ¾ cup (150g) dark brown sugar
    [
      {"name": "dark brown sugar", "quantity": 150, "unit": "g", "input": "¾ cup (150g) dark brown sugar"}
    ]

  * If an ingredient only lists a volume, extract that.

    2 t ground cinnamon
    ⅓ cup (80ml) neutral oil
    [
      {"name": "ground cinnamon", "quantity": 2, "unit": "teaspoon", "input": "2 t ground cinnamon"},
      {"name": "neutral oil", "quantity": 80, "unit": "ml", "input": "⅓ cup (80ml) neutral oil"}
    ]
)"
```

I think this is particularly important if you're working with even less structured text. For example, imagine you had this text:

```{r}
#| cache: false
recipe <- r"(
  In a large bowl, cream together one cup of softened unsalted butter and a
  quarter cup of white sugar until smooth. Beat in an egg and 1 teaspoon of
  vanilla extract. Gradually stir in 2 cups of all-purpose flour until the
  dough forms. Finally, fold in 1 cup of semisweet chocolate chips. Drop
  spoonfuls of dough onto an ungreased baking sheet and bake at 350°F (175°C)
  for 10-12 minutes, or until the edges are lightly browned. Let the cookies
  cool on the baking sheet for a few minutes before transferring to a wire
  rack to cool completely. Enjoy!
)"
```

Including the input text in the output makes it easier to see if it's doing a good job:

```{r}
#| label: data-unstructured-input
chat <- chat_openai(c(instruct_json, instruct_weight_input))
chat$chat(recipe)
```

When I ran it while writing this vignette, it seemed to be working out the weight of the ingredients specified in volume, even though the prompt specifically asks it not to. This may suggest I need to broaden my examples.

## Token usage

```{r}
#| label: usage
#| type: asis
#| echo: false
knitr::kable(token_usage())
```
`````

## File: vignettes/streaming-async.Rmd
`````
---
title: "Streaming and async APIs"
output: rmarkdown::html_vignette
vignette: >
  %\VignetteIndexEntry{Streaming and async APIs}
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteEncoding{UTF-8}
---

```{r, include = FALSE}
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
```


### Streaming results

The `chat()` method does not return any results until the entire response is received. (It can _print_ the streaming results to the console but it _returns_ the result only when the response is complete.)

If you want to process the response as it arrives, you can use the `stream()` method. This is useful when you want to send the response, in realtime, somewhere other than the R console (e.g., to a file, an HTTP response, or a Shiny chat window), or when you want to manipulate the response before displaying it without giving up the immediacy of streaming.

With the `stream()` method, which returns a [coro](https://coro.r-lib.org/) [generator](https://coro.r-lib.org/articles/generator.html), you can process the response by looping over it as it arrives.

```{r eval=FALSE}
stream <- chat$stream("What are some common uses of R?")
coro::loop(for (chunk in stream) {
  cat(toupper(chunk))
})
#>  R IS COMMONLY USED FOR:
#>
#>  1. **STATISTICAL ANALYSIS**: PERFORMING COMPLEX STATISTICAL TESTS AND ANALYSES.
#>  2. **DATA VISUALIZATION**: CREATING GRAPHS, CHARTS, AND PLOTS USING PACKAGES LIKE  GGPLOT2.
#>  3. **DATA MANIPULATION**: CLEANING AND TRANSFORMING DATA WITH PACKAGES LIKE DPLYR AND TIDYR.
#>  4. **MACHINE LEARNING**: BUILDING PREDICTIVE MODELS WITH LIBRARIES LIKE CARET AND #>  RANDOMFOREST.
#>  5. **BIOINFORMATICS**: ANALYZING BIOLOGICAL DATA AND GENOMIC STUDIES.
#>  6. **ECONOMETRICS**: PERFORMING ECONOMIC DATA ANALYSIS AND MODELING.
#>  7. **REPORTING**: GENERATING DYNAMIC REPORTS AND DASHBOARDS WITH R MARKDOWN.
#>  8. **TIME SERIES ANALYSIS**: ANALYZING TEMPORAL DATA AND FORECASTING.
#>
#>  THESE USES MAKE R A POWERFUL TOOL FOR DATA SCIENTISTS, STATISTICIANS, AND RESEARCHERS.
```

## Async usage

ellmer also supports async usage. This is useful when you want to run multiple, concurrent chat sessions. This is particularly important for Shiny applications where using the methods described above would block the Shiny app for other users for the duration of each response.

To use async chat, call `chat_async()`/`stream_async()` instead of `chat()`/`stream()`. The `_async` variants take the same arguments for construction but return a promise instead of the actual response.

Remember that chat objects are stateful; they preserve the conversation history as you interact with it. This means that it doesn't make sense to issue multiple, concurrent chat/stream operations on the same chat object because the conversation history can become corrupted with interleaved conversation fragments. If you need to run concurrent chat sessions, create multiple chat objects.

### Asynchronous chat

For asynchronous, non-streaming chat, you'd use the `chat()` method as before, but handle the result as a promise instead of a string.

```{r eval=FALSE}
library(promises)

chat$chat_async("How's your day going?") %...>% print()
#> I'm just a computer program, so I don't have feelings, but I'm here to help you with any questions you have.
```

#### Shiny example

To add an asynchronous chat interface in your Shiny application, we recommend using [the shinychat package](https://posit-dev.github.io/shinychat/).

The simplest approach is to use shinychat's Shiny module to add a chat UI to your app---similar to the app created by `live_browser()`---using the `shinychat::chat_mod_ui()` and `shinychat::chat_mod_server()` functions.
These module functions connect an `ellmer::Chat` object to `shinychat::chat_ui()` and handle non-blocking asynchronous chat interactions automatically.

```r
library(shiny)
library(shinychat)

ui <- bslib::page_fillable(
  chat_mod_ui("chat")
)

server <- function(input, output, session) {
  chat <- ellmer::chat_openai(
    system_prompt = "You're a trickster who answers in riddles",
    model = "gpt-4.1-nano"
  )

  chat_mod_server("chat", chat)
}

shinyApp(ui, server)
```

For fully custom streaming applications with a custom or no chat interface, you can use `shinychat::markdown_stream()` to stream responses into a Shiny app.
This is particularly useful for creating interactive chat applications where you want to display responses as they are generated.

The following Shiny app demonstrates `markdown_stream()` and uses both `$stream_async()` and `$chat_async()` to stream a story from an OpenAI model.
In the app, we ask the user for a prompt to generate a story and then stream the story into the UI.
Then we follow up by asking the model for a story title and we use the response to update the card title.

This example also highlights the difference between streaming and non-streaming chat.
Use `$stream_async()` with Shiny outputs that are designed to work with generators, like `shinychat::markdown_stream()` and `shinychat::chat_append()`.
Use `$chat_async()` when you want the text response from the model, for example the title of the story.

Also note that in most ellmer-powered Shiny apps, it's best to wrap the chat interaction in a `shiny::ExtendedTask` to avoid blocking the rest of the app while the chat is being generated.
You can learn about `ExtendedTask` in Shiny's [_Non-blocking operations_ article](https://shiny.posit.co/r/articles/improve/nonblocking/).

```
library(shiny)
library(bslib)
library(ellmer)
library(promises)
library(shinychat)

ui <- page_sidebar(
  title = "Interactive chat with async",
  sidebar = sidebar(
    textAreaInput("user_query", "Tell me a story about..."),
    input_task_button("ask_chat", label = "Generate a story")
  ),
  card(
    card_header(textOutput("story_title")),
    shinychat::output_markdown_stream("response"),
  )
)

server <- function(input, output) {
  chat_task <- ExtendedTask$new(function(user_query) {
    # We're using an Extended Task for chat completions to avoid blocking the
    # app. We also start the chat fresh each time, because the UI is not a
    # multi-turn conversation.
    chat <- chat_openai(
      system_prompt = "You are a rambling chatbot who likes to tell stories but gets distracted easily.",
      model = "gpt-4.1-nano"
    )

    # Stream the chat completion into the markdown stream. `markdown_stream()`
    # returns a promise onto which we'll chain the follow-up task of providing
    # a story title.
    stream <- chat$stream_async(user_query)
    stream_res <- shinychat::markdown_stream("response", stream)

    # Follow up by asking the LLM to provide a title for the story that we
    # return from the task.
    stream_res$then(function(value) {
      chat$chat_async(
        "What is the title of the story? Reply with only the title and nothing else."
      )
    })
  })

  bind_task_button(chat_task, "ask_chat")

  observeEvent(input$ask_chat, {
    chat_task$invoke(input$user_query)
  })

  observe({
    # Update the card title during generation and once complete
    switch(
      chat_task$status(),
      success = story_title(chat_task$result()),
      running = story_title("Generating your story..."),
      error = story_title("An error occurred while generating your story.")
    )
  })

  story_title <- reactiveVal("Your story will appear here!")
  output$story_title <- renderText(story_title())
}

shinyApp(ui = ui, server = server)
```

### Asynchronous streaming

For asynchronous streaming, you'd use the `stream()` method as before, but the result is an [async generator](https://coro.r-lib.org/reference/async_generator.html) from the [coro package](https://coro.r-lib.org/). This is the same as a regular [generator](https://coro.r-lib.org/articles/generator.html), except that instead of giving you strings, it gives you promises that resolve to strings.

```{r eval=FALSE}
stream <- chat$stream_async("What are some common uses of R?")
coro::async(function() {
  for (chunk in await_each(stream)) {
    cat(toupper(chunk))
  }
})()
#>  R IS COMMONLY USED FOR:
#>
#>  1. **STATISTICAL ANALYSIS**: PERFORMING VARIOUS STATISTICAL TESTS AND MODELS.
#>  2. **DATA VISUALIZATION**: CREATING PLOTS AND GRAPHS TO VISUALIZE DATA.
#>  3. **DATA MANIPULATION**: CLEANING AND TRANSFORMING DATA WITH PACKAGES LIKE DPLYR.
#>  4. **MACHINE LEARNING**: BUILDING PREDICTIVE MODELS AND ALGORITHMS.
#>  5. **BIOINFORMATICS**: ANALYZING BIOLOGICAL DATA, ESPECIALLY IN GENOMICS.
#>  6. **TIME SERIES ANALYSIS**: ANALYZING TEMPORAL DATA FOR TRENDS AND FORECASTS.
#>  7. **REPORT GENERATION**: CREATING DYNAMIC REPORTS WITH R MARKDOWN.
#>  8. **GEOSPATIAL ANALYSIS**: MAPPING AND ANALYZING GEOGRAPHIC DATA.
```

Async generators are very advanced and require a good understanding of asynchronous programming in R. They are also the only way to present streaming results in Shiny without blocking other users. Fortunately, Shiny will soon have chat components that will make this easier, where you'll simply hand the result of `stream_async()` to a chat output.
`````

## File: vignettes/structured-data.Rmd
`````
---
title: "Structured data"
output: rmarkdown::html_vignette
vignette: >
  %\VignetteIndexEntry{Structured data}
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteEncoding{UTF-8}
---

```{r, include = FALSE}
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = ellmer:::openai_key_exists(),
  cache = TRUE
)
```

When using an LLM to extract data from text or images, you can ask the chatbot to format it in JSON or any other format that you like. This works well most of the time, but there's no guarantee that you'll get the exact format you want. In particular, if you're trying to get JSON, you'll find that it's typically surrounded in ```` ```json ````, and you'll occasionally get text that isn't valid JSON. To avoid these problems, you can use a recent LLM feature: **structured data** (aka structured output). With structured data, you supply the type specification that defines the object structure you want and the LLM ensures that's what you'll get back.

```{r setup}
#| cache: false
library(ellmer)
```

## Structured data basics

To extract structured data you call `$chat_structured()` instead of the `$chat()` method. You'll also need to define a type specification that describes the structure of the data that you want (more on that shortly). Here's a simple example that extracts two specific values from a string:

```{r}
#| label: basics-text
chat <- chat_openai()
chat$chat_structured(
  "My name is Susan and I'm 13 years old",
  type = type_object(
    name = type_string(),
    age = type_number()
  )
)
```

The same basic idea works with images too:

```{r}
#| label: basics-image
chat$chat_structured(
  content_image_url("https://www.r-project.org/Rlogo.png"),
  type = type_object(
    primary_shape = type_string(),
    primary_colour = type_string()
  )
)
```

If you need to extract data from multiple prompts, you can use the same techniques with `parallel_chat_structured()`. It takes the same arguments as `$chat_structured()` with two exceptions: it needs a `chat` object since it's a standalone function, not a method, and it can take a vector of prompts.

```{r}
prompts <- list(
  "I go by Alex. 42 years on this planet and counting.",
  "Pleased to meet you! I'm Jamal, age 27.",
  "They call me Li Wei. Nineteen years young.",
  "Fatima here. Just celebrated my 35th birthday last week.",
  "The name's Robert - 51 years old and proud of it.",
  "Kwame here - just hit the big 5-0 this year."
)
parallel_chat_structured(
  chat,  
  prompts,
  type = type_object(
    name = type_string(),
    age = type_number()
  )
)
```

## Data types basics

To define your desired type specification (also known as a **schema**), you use the `type_()` functions. (You might already be familiar with these if you've done any function calling, as discussed in `vignette("function-calling")`). The type functions can be divided into three main groups:

* **Scalars** represent five types of single values, `type_boolean()`, `type_integer()`, `type_number()`, `type_string()`, and `type_enum()`, which represent a single logical, integer, double, string, and factor value respectively.

* **Arrays** represent any number of values of the same type. They are created with `type_array()`. You must always supply the `item` argument which specifies the type for each individual element. Arrays of scalars are very similar to R's atomic vectors:

  ```{r}
  #| cache: false
  type_logical_vector <- type_array(items = type_boolean())
  type_integer_vector <- type_array(items = type_integer())
  type_double_vector <- type_array(items = type_number())
  type_character_vector <- type_array(items = type_string())
  ```

  You can also have arrays of arrays and arrays of objects, which more closely resemble lists with well defined structures:

  ```{r}
  #| cache: false
  list_of_integers <- type_array(items = type_integer_vector)
  ```

* **Objects** represent a collection of named values. They are created with `type_object()`. Objects can contain any number of scalars, arrays, and other objects. They are similar to named lists in R.

  ```{r}
  #| cache: false
  type_person <- type_object(
    name = type_string(),
    age = type_integer(),
    hobbies = type_array(items = type_string())
  )
  ```

Using these type specifications ensures that the LLM will return JSON. But ellmer goes one step further to convert the results to the closest R analog. Currently, this converts arrays of boolean, integers, numbers, and strings into logical, integer, numeric, and character vectors. Arrays of objects are converted into data frames. You can opt-out of this and get plain lists by setting `convert = FALSE` in `$chat_structured()`.

In addition to defining types, you need to provide the LLM with some information about what you actually want. This is the purpose of the first argument, `description`, which is a string that describes the data that you want. This is a good place to ask nicely for other attributes you'll like the value to have (e.g. minimum or maximum values, date formats, ...). There's no guarantee that these requests will be honoured, but the LLM will usually make a best effort to do so.

```{r}
#| cache: false
type_type_person <- type_object(
  "A person",
  name = type_string("Name"),
  age = type_integer("Age, in years."),
  hobbies = type_array(
    "List of hobbies. Should be exclusive and brief.",
    items = type_string()
  )
)
```

Now we'll dive into some examples before coming back to talk more about the details of data types.

## Examples

The following examples, which are [closely inspired by the Claude documentation](https://github.com/anthropics/anthropic-cookbook/blob/main/tool_use/extracting_structured_json.ipynb), hint at some of the ways you can use structured data extraction.

### Example 1: Article summarisation

```{r}
#| label: examples-summarisation
text <- readLines(system.file("examples/third-party-testing.txt", package = "ellmer"))
# url <- "https://www.anthropic.com/news/third-party-testing"
# html <- rvest::read_html(url)
# text <- rvest::html_text2(rvest::html_element(html, "article"))

type_summary <- type_object(
  "Summary of the article.",
  author = type_string("Name of the article author"),
  topics = type_array(
    'Array of topics, e.g. ["tech", "politics"]. Should be as specific as possible, and can overlap.',
    type_string(),
  ),
  summary = type_string("Summary of the article. One or two paragraphs max"),
  coherence = type_integer("Coherence of the article's key points, 0-100 (inclusive)"),
  persuasion = type_number("Article's persuasion score, 0.0-1.0 (inclusive)")
)

chat <- chat_openai()
data <- chat$chat_structured(text, type = type_summary)
cat(data$summary)

str(data)
```

### Example 2: Named entity recognition

```{r}
#| label: examples-named-entity
text <- "
  John works at Google in New York. He met with Sarah, the CEO of
  Acme Inc., last week in San Francisco.
"

type_named_entity <- type_object(
  name = type_string("The extracted entity name."),
  type = type_enum("The entity type", c("person", "location", "organization")),
  context = type_string("The context in which the entity appears in the text.")
)
type_named_entities <- type_array(items = type_named_entity)

chat <- chat_openai()
chat$chat_structured(text, type = type_named_entities)
```

### Example 3: Sentiment analysis

```{r}
#| label: examples-sentiment
text <- "
  The product was okay, but the customer service was terrible. I probably
  won't buy from them again.
"

type_sentiment <- type_object(
  "Extract the sentiment scores of a given text. Sentiment scores should sum to 1.",
  positive_score = type_number("Positive sentiment score, ranging from 0.0 to 1.0."),
  negative_score = type_number("Negative sentiment score, ranging from 0.0 to 1.0."),
  neutral_score = type_number("Neutral sentiment score, ranging from 0.0 to 1.0.")
)

chat <- chat_openai()
str(chat$chat_structured(text, type = type_sentiment))
```

Note that while we've asked nicely for the scores to sum 1, which they do in this example (at least when I ran the code), this is not guaranteed.

### Example 4: Text classification

```{r}
#| label: examples-classification
text <- "The new quantum computing breakthrough could revolutionize the tech industry."

type_classification <- type_array(
  "Array of classification results. The scores should sum to 1.",
  type_object(
    name = type_enum(
      "The category name",
      values = c(
        "Politics",
        "Sports",
        "Technology",
        "Entertainment",
        "Business",
        "Other"
      )
    ),
    score = type_number(
      "The classification score for the category, ranging from 0.0 to 1.0."
    )
  )
)

chat <- chat_openai()
data <- chat$chat_structured(text, type = type_classification)
data
```

### Example 5: Working with unknown keys

```{r, eval = ellmer:::anthropic_key_exists()}
#| label: examples-unknown-keys
type_characteristics <- type_object(
  "All characteristics",
  .additional_properties = TRUE
)

prompt <- "
  Given a description of a character, your task is to extract all the characteristics of that character.

  <description>
  The man is tall, with a beard and a scar on his left cheek. He has a deep voice and wears a black leather jacket.
  </description>
"

chat <- chat_anthropic()
str(chat$chat_structured(prompt, type = type_characteristics))
```

This example only works with Claude, not GPT or Gemini, because only Claude supports adding additional, arbitrary properties.

### Example 6: Extracting data from an image

The final example comes from [Dan Nguyen](https://gist.github.com/dannguyen/faaa56cebf30ad51108a9fe4f8db36d8) (you can see other interesting applications at that link). The goal is to extract structured data from this screenshot:

![Screenshot of schedule A: a table showing assets and "unearned" income](congressional-assets.png)

Even without any descriptions, ChatGPT does pretty well:

```{r}
#| label: examples-image
type_asset <- type_object(
  assert_name = type_string(),
  owner = type_string(),
  location = type_string(),
  asset_value_low = type_integer(),
  asset_value_high = type_integer(),
  income_type = type_string(),
  income_low = type_integer(),
  income_high = type_integer(),
  tx_gt_1000 = type_boolean()
)
type_assets <- type_array(items = type_asset)

chat <- chat_openai()
image <- content_image_file("congressional-assets.png")
data <- chat$chat_structured(image, type = type_assets)
data
```

## Advanced data types

Now that you've seen a few examples, it's time to get into more specifics about data type declarations.

### Required vs optional

By default, all components of an object are required. If you want to make some optional, set `required = FALSE`. This is a good idea if you don't think your text will always contain the required fields as LLMs may hallucinate data in order to fulfill your spec.

For example, here the LLM hallucinates a date even though there isn't one in the text:

```{r}
#| label: type-required
type_article <- type_object(
  "Information about an article written in markdown",
  title = type_string("Article title"),
  author = type_string("Name of the author"),
  date = type_string("Date written in YYYY-MM-DD format.")
)

prompt <- "
  Extract data from the following text:

  <text>
  # Structured Data
  By Hadley Wickham

  When using an LLM to extract data from text or images, you can ask the chatbot to nicely format it, in JSON or any other format that you like.
  </text>
"

chat <- chat_openai()
chat$chat_structured(prompt, type = type_article)
str(data)
```

Note that I've used more of an explict prompt here. For this example, I found that this generated better results and that it's a useful place to put additional instructions.

If I let the LLM know that the fields are all optional, it'll return `NULL` for the missing fields:

```{r}
#| label: type-optional
type_article <- type_object(
  "Information about an article written in markdown",
  title = type_string("Article title", required = FALSE),
  author = type_string("Name of the author", required = FALSE),
  date = type_string("Date written in YYYY-MM-DD format.", required = FALSE)
)
chat$chat_structured(prompt, type = type_article)
```

### Data frames

If you want to define a data frame like object, you might be tempted to create a definition similar to what R uses: an object (i.e., a named list) containing multiple vectors (i.e., an array):

```{r}
#| cache: false
type_my_df <- type_object(
  name = type_array(items = type_string()),
  age = type_array(items = type_integer()),
  height = type_array(items = type_number()),
  weight = type_array(items = type_number())
)
```

This, however, is not quite right becuase there's no way to specify that each array should have the same length. Instead, you'll need to turn the data structure "inside out" and create an array of objects:

```{r}
#| cache: false
type_my_df <- type_array(
  items = type_object(
    name = type_string(),
    age = type_integer(),
    height = type_number(),
    weight = type_number()
  )
)
```

If you're familiar with the terms row-oriented and column-oriented data frames, this is the same idea. Since most languages don't possess vectorisation like R, row-oriented structures tend to be much more common in the wild.

## Token usage

```{r}
#| label: usage
#| type: asis
#| echo: false
knitr::kable(token_usage())
```
`````

## File: vignettes/tool-calling-right.svg
`````
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" width="836.5641619696639" height="632.7915061847272"><desc>title%20How%20tool%20calling%20DOES%20work%0A%0Aparticipant%20openweather.org%0Aactor%20User%0Amaterialdesignicons%20F167A%20Assistant%0A%0AUser-%3EAssistant%3A%20%7B%5Cn%20%20role%3A%20%22user%22%2C%5Cn%20%20content%3A%20%22What's%20the%20weather%20right%20now%20at%20Fenway%20Park%3F%22%2C%5Cn%20%20tools%3A%20%5Bget_current_weather%5D%5Cn%7D%0AAssistant-%3EUser%3A%20CALL%20get_current_weather(%2202215%22)%0AUser-%3Eopenweather.org%3A%20GET%20%2Fweather%2Fcurrent%2Fus%2F02215.json%0Aopenweather.org-%3EUser%3A%20%7B%22temp%22%3A%2065%2C%20%22conditions%22%3A%20%22sunny%22%7D%0AUser-%3EAssistant%3A%20RETURN%20%7B%22temp%22%3A%2065%2C%20%22conditions%22%3A%20%22sunny%22%7D%0AAssistant-%3EUser%3A%20%7B%5Cn%20%20role%3A%20%22assistant%22%2C%5Cn%20%20content%3A%20%22It's%2065%20degrees%20and%20sunny%E2%80%94a%20beautiful%20day!%22%5Cn%7D</desc><defs/><g><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g><rect fill="white" stroke="none" x="0" y="0" width="836" height="632"/></g><g/><g><path fill="none" stroke="black" paint-order="fill stroke markers" d=" M 82.52127929003517 143.74065046472725 L 82.52127929003517 632.7915061847272" stroke-miterlimit="10" stroke-width="1.4659797833333332" stroke-dasharray="13.532121076923076,5.863919133333333"/><path fill="none" stroke="black" paint-order="fill stroke markers" d=" M 365.03749647718524 143.74065046472725 L 365.03749647718524 632.7915061847272" stroke-miterlimit="10" stroke-width="1.4659797833333332" stroke-dasharray="13.532121076923076,5.863919133333333"/><path fill="none" stroke="black" paint-order="fill stroke markers" d=" M 793.6402739136639 143.74065046472725 L 793.6402739136639 632.7915061847272" stroke-miterlimit="10" stroke-width="1.4659797833333332" stroke-dasharray="13.532121076923076,5.863919133333333"/></g><g><path fill="none" stroke="none"/><g><path fill="white" stroke="black" paint-order="fill stroke markers" d=" M 8.795878700000003 96.24290548472726 L 156.24667988007033 96.24290548472726 L 156.24667988007033 143.74065046472725 L 8.795878700000003 143.74065046472725 L 8.795878700000003 96.24290548472726 Z" stroke-miterlimit="10" stroke-width="2.814681184" stroke-dasharray=""/></g><g><g/><text fill="black" stroke="none" font-family="sans-serif" font-size="11pt" font-style="normal" font-weight="normal" text-decoration="normal" x="27.88293547900001" y="126.14889306472728" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">openweather.org</text></g><g><path fill="white" stroke="black" paint-order="fill stroke markers" d=" M 375.06479819518523 69.32751666272726 A 10.027301717999999 10.027301717999999 0 1 1 375.0647931815348 69.31748936268048 M 365.03749647718524 79.35481838072725 L 365.03749647718524 100.81676240872724 M 352.37143114918524 87.09519163672726 L 377.70356180518525 87.09519163672726 M 365.03749647718524 100.81676240872724 L 352.37143114918524 120.87136584472725 M 365.03749647718524 100.81676240872724 L 377.70356180518525 120.87136584472725" stroke-miterlimit="10" stroke-width="2.990598758" stroke-dasharray=""/></g><g><g/><text fill="black" stroke="none" font-family="sans-serif" font-size="11pt" font-style="normal" font-weight="normal" text-decoration="normal" x="349.55442324262714" y="138.46312324472726" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">User</text></g><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" id="mdi-robot-outline" width="68.256018712" height="68.256018712" x="759.5122645576639" y="52.61534713272725"><path d="M17.5 15.5C17.5 16.61 16.61 17.5 15.5 17.5S13.5 16.61 13.5 15.5 14.4 13.5 15.5 13.5 17.5 14.4 17.5 15.5M8.5 13.5C7.4 13.5 6.5 14.4 6.5 15.5S7.4 17.5 8.5 17.5 10.5 16.61 10.5 15.5 9.61 13.5 8.5 13.5M23 15V18C23 18.55 22.55 19 22 19H21V20C21 21.11 20.11 22 19 22H5C3.9 22 3 21.11 3 20V19H2C1.45 19 1 18.55 1 18V15C1 14.45 1.45 14 2 14H3C3 10.13 6.13 7 10 7H11V5.73C10.4 5.39 10 4.74 10 4C10 2.9 10.9 2 12 2S14 2.9 14 4C14 4.74 13.6 5.39 13 5.73V7H14C17.87 7 21 10.13 21 14H22C22.55 14 23 14.45 23 15M21 16H19V14C19 11.24 16.76 9 14 9H10C7.24 9 5 11.24 5 14V16H3V17H5V20H19V17H21V16Z"/></svg><g><g/><text fill="black" stroke="none" font-family="sans-serif" font-size="11pt" font-style="normal" font-weight="normal" text-decoration="normal" x="763.8879927246991" y="138.46312324472726" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">Assistant</text></g></g><g><g><text fill="black" stroke="none" font-family="sans-serif" font-size="16pt" font-style="normal" font-weight="normal" text-decoration="normal" x="284.6197853088379" y="26.547561167272725" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">How tool calling DOES work</text></g><g><rect fill="white" stroke="none" x="385.8544094005186" y="178.92416526472726" width="10.17596472" height="22.86928462"/><rect fill="white" stroke="none" x="385.8544094005186" y="196.51592266472727" width="89.05226934646484" height="22.86928462"/><rect fill="white" stroke="none" x="385.8544094005186" y="214.10768006472728" width="386.96893347" height="22.86928462"/><rect fill="white" stroke="none" x="385.8544094005186" y="231.69943746472728" width="195.23522985671875" height="22.86928462"/><rect fill="white" stroke="none" x="385.8544094005186" y="249.2911948647273" width="10.17596472" height="22.86928462"/><text fill="black" stroke="none" font-family="sans-serif" font-size="11pt" font-style="normal" font-weight="normal" text-decoration="normal" x="388.4931730105186" y="194.75674692472728" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">{</text><text fill="black" stroke="none" font-family="sans-serif" font-size="11pt" font-style="normal" font-weight="normal" text-decoration="normal" x="388.4931730105186" y="212.3485043247273" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">  role: "user",</text><text fill="black" stroke="none" font-family="sans-serif" font-size="11pt" font-style="normal" font-weight="normal" text-decoration="normal" x="388.4931730105186" y="229.9402617247273" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">  content: "What's the weather right now at Fenway Park?",</text><text fill="black" stroke="none" font-family="sans-serif" font-size="11pt" font-style="normal" font-weight="normal" text-decoration="normal" x="388.4931730105186" y="247.5320191247273" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">  tools: [get_current_weather]</text><text fill="black" stroke="none" font-family="sans-serif" font-size="11pt" font-style="normal" font-weight="normal" text-decoration="normal" x="388.4931730105186" y="265.1237765247273" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">}</text></g><g><path fill="none" stroke="black" paint-order="fill stroke markers" d=" M 365.03749647718524 272.16047948472726 L 779.1563936543306 272.16047948472726" stroke-miterlimit="10" stroke-width="1.4659797833333332" stroke-dasharray=""/><g transform="translate(793.6402739136639,272.16047948472726) translate(-793.6402739136639,-272.16047948472726)"><path fill="black" stroke="none" paint-order="stroke fill markers" d=" M 778.9804760803306 264.8305805680606 L 793.6402739136639 272.16047948472726 L 778.9804760803306 279.4903784013939 Z"/></g></g><g><rect fill="white" stroke="none" x="458.5718733707029" y="298.54811558472727" width="240.9969638655078" height="22.86928462"/><text fill="black" stroke="none" font-family="sans-serif" font-size="11pt" font-style="normal" font-weight="normal" text-decoration="normal" x="461.21063698070293" y="314.3806972447273" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">CALL get_current_weather("02215")</text></g><g><path fill="none" stroke="black" paint-order="fill stroke markers" d=" M 793.6402739136639 321.41740020472724 L 379.52137673651856 321.41740020472724" stroke-miterlimit="10" stroke-width="1.4659797833333332" stroke-dasharray=""/><g transform="translate(365.03749647718524,321.41740020472724) translate(-365.03749647718524,-321.41740020472724)"><path fill="black" stroke="none" paint-order="stroke fill markers" d=" M 379.6972943105186 314.0875012880606 L 365.03749647718524 321.41740020472724 L 379.6972943105186 328.7472991213939 Z"/></g></g><g><rect fill="white" stroke="none" x="103.33819221336849" y="347.80503630472725" width="240.62458837722656" height="22.86928462"/><text fill="black" stroke="none" font-family="sans-serif" font-size="11pt" font-style="normal" font-weight="normal" text-decoration="normal" x="105.97695582336848" y="363.63761796472727" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">GET /weather/current/us/02215.json</text></g><g><path fill="none" stroke="black" paint-order="fill stroke markers" d=" M 365.03749647718524 370.6743209247272 L 97.0051595493685 370.6743209247272" stroke-miterlimit="10" stroke-width="1.4659797833333332" stroke-dasharray=""/><g transform="translate(82.52127929003517,370.6743209247272) translate(-82.52127929003517,-370.6743209247272)"><path fill="black" stroke="none" paint-order="stroke fill markers" d=" M 97.1810771233685 363.3444220080606 L 82.52127929003517 370.6743209247272 L 97.1810771233685 378.0042198413939 Z"/></g></g><g><rect fill="white" stroke="none" x="111.34830020744808" y="397.06195702472723" width="224.86215246414062" height="22.86928462"/><text fill="black" stroke="none" font-family="sans-serif" font-size="11pt" font-style="normal" font-weight="normal" text-decoration="normal" x="113.98706381744807" y="412.89453868472725" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">{"temp": 65, "conditions": "sunny"}</text></g><g><path fill="none" stroke="black" paint-order="fill stroke markers" d=" M 82.52127929003517 419.9312416447272 L 350.5536162178519 419.9312416447272" stroke-miterlimit="10" stroke-width="1.4659797833333332" stroke-dasharray=""/><g transform="translate(365.03749647718524,419.9312416447272) translate(-365.03749647718524,-419.9312416447272)"><path fill="black" stroke="none" paint-order="stroke fill markers" d=" M 350.3776986438519 412.60134272806056 L 365.03749647718524 419.9312416447272 L 350.3776986438519 427.26114056139386 Z"/></g></g><g><rect fill="white" stroke="none" x="434.31599873691385" y="446.3188777447272" width="290.0458072492969" height="22.86928462"/><text fill="black" stroke="none" font-family="sans-serif" font-size="11pt" font-style="normal" font-weight="normal" text-decoration="normal" x="436.95476234691387" y="462.15145940472723" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">RETURN {"temp": 65, "conditions": "sunny"}</text></g><g><path fill="none" stroke="black" paint-order="fill stroke markers" d=" M 365.03749647718524 469.1881623647272 L 779.1563936543306 469.1881623647272" stroke-miterlimit="10" stroke-width="1.4659797833333332" stroke-dasharray=""/><g transform="translate(793.6402739136639,469.1881623647272) translate(-793.6402739136639,-469.1881623647272)"><path fill="black" stroke="none" paint-order="stroke fill markers" d=" M 778.9804760803306 461.85826344806054 L 793.6402739136639 469.1881623647272 L 778.9804760803306 476.51806128139384 Z"/></g></g><g><rect fill="white" stroke="none" x="398.4621526637632" y="495.57579846472714" width="10.17596472" height="22.86928462"/><rect fill="white" stroke="none" x="398.4621526637632" y="513.1675558647272" width="118.39991796707031" height="22.86928462"/><rect fill="white" stroke="none" x="398.4621526637632" y="530.7593132647272" width="361.753357298125" height="22.86928462"/><rect fill="white" stroke="none" x="398.4621526637632" y="548.3510706647272" width="10.17596472" height="22.86928462"/><text fill="black" stroke="none" font-family="sans-serif" font-size="11pt" font-style="normal" font-weight="normal" text-decoration="normal" x="401.10091627376323" y="511.40838012472716" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">{</text><text fill="black" stroke="none" font-family="sans-serif" font-size="11pt" font-style="normal" font-weight="normal" text-decoration="normal" x="401.10091627376323" y="529.0001375247272" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">  role: "assistant",</text><text fill="black" stroke="none" font-family="sans-serif" font-size="11pt" font-style="normal" font-weight="normal" text-decoration="normal" x="401.10091627376323" y="546.5918949247272" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">  content: "It's 65 degrees and sunny—a beautiful day!"</text><text fill="black" stroke="none" font-family="sans-serif" font-size="11pt" font-style="normal" font-weight="normal" text-decoration="normal" x="401.10091627376323" y="564.1836523247272" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">}</text></g><g><path fill="none" stroke="black" paint-order="fill stroke markers" d=" M 793.6402739136639 571.2203552847271 L 379.52137673651856 571.2203552847271" stroke-miterlimit="10" stroke-width="1.4659797833333332" stroke-dasharray=""/><g transform="translate(365.03749647718524,571.2203552847271) translate(-365.03749647718524,-571.2203552847271)"><path fill="black" stroke="none" paint-order="stroke fill markers" d=" M 379.6972943105186 563.8904563680604 L 365.03749647718524 571.2203552847271 L 379.6972943105186 578.5502542013938 Z"/></g></g></g><g/><g/><g/></g></svg>
`````

## File: vignettes/tool-calling-wrong.svg
`````
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" width="817.919225848222" height="516.6859073447272"><desc>title%20How%20tool%20calling%20DOESN%E2%80%99T%20work%0A%0Aactor%20User%0Amaterialdesignicons%20F167A%20Assistant%0Aparticipant%20openweather.org%0A%0AUser-%3EAssistant%3A%20%7B%5Cn%20%20role%3A%20%22user%22%2C%5Cn%20%20content%3A%20%22What's%20the%20weather%20right%20now%20at%20Fenway%20Park%3F%22%2C%5Cn%7D%0AAssistant-%3Eopenweather.org%3A%20GET%20%2Fweather%2Fcurrent%2Fus%2F02215.json%0Aopenweather.org-%3EAssistant%3A%20%7B%22temp%22%3A%2065%2C%20%22conditions%22%3A%20%22sunny%22%7D%0AAssistant-%3EUser%3A%20%7B%5Cn%20%20role%3A%20%22assistant%22%2C%5Cn%20%20content%3A%20%22It's%2065%20degrees%20and%20sunny%E2%80%94a%20beautiful%20day!%22%5Cn%7D</desc><defs/><g><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g/><g><rect fill="white" stroke="none" x="0" y="0" width="817" height="516"/></g><g/><g><path fill="none" stroke="black" paint-order="fill stroke markers" d=" M 24.278951934558105 143.74065046472725 L 24.278951934558105 516.6859073447272" stroke-miterlimit="10" stroke-width="1.4659797833333332" stroke-dasharray="13.532121076923076,5.863919133333333"/><path fill="none" stroke="black" paint-order="fill stroke markers" d=" M 452.8817293710368 143.74065046472725 L 452.8817293710368 516.6859073447272" stroke-miterlimit="10" stroke-width="1.4659797833333332" stroke-dasharray="13.532121076923076,5.863919133333333"/><path fill="none" stroke="black" paint-order="fill stroke markers" d=" M 735.3979465581868 143.74065046472725 L 735.3979465581868 516.6859073447272" stroke-miterlimit="10" stroke-width="1.4659797833333332" stroke-dasharray="13.532121076923076,5.863919133333333"/></g><g><g><path fill="white" stroke="black" paint-order="fill stroke markers" d=" M 34.306253652558105 69.32751666272726 A 10.027301717999999 10.027301717999999 0 1 1 34.30624863890766 69.31748936268048 M 24.278951934558105 79.35481838072725 L 24.278951934558105 100.81676240872724 M 11.612886606558106 87.09519163672726 L 36.9450172625581 87.09519163672726 M 24.278951934558105 100.81676240872724 L 11.612886606558106 120.87136584472725 M 24.278951934558105 100.81676240872724 L 36.9450172625581 120.87136584472725" stroke-miterlimit="10" stroke-width="2.990598758" stroke-dasharray=""/></g><g><g/><text fill="black" stroke="none" font-family="sans-serif" font-size="11pt" font-style="normal" font-weight="normal" text-decoration="normal" x="8.7958787" y="138.46312324472726" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">User</text></g><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" id="mdi-robot-outline" width="68.256018712" height="68.256018712" x="418.7537200150368" y="52.61534713272725"><path d="M17.5 15.5C17.5 16.61 16.61 17.5 15.5 17.5S13.5 16.61 13.5 15.5 14.4 13.5 15.5 13.5 17.5 14.4 17.5 15.5M8.5 13.5C7.4 13.5 6.5 14.4 6.5 15.5S7.4 17.5 8.5 17.5 10.5 16.61 10.5 15.5 9.61 13.5 8.5 13.5M23 15V18C23 18.55 22.55 19 22 19H21V20C21 21.11 20.11 22 19 22H5C3.9 22 3 21.11 3 20V19H2C1.45 19 1 18.55 1 18V15C1 14.45 1.45 14 2 14H3C3 10.13 6.13 7 10 7H11V5.73C10.4 5.39 10 4.74 10 4C10 2.9 10.9 2 12 2S14 2.9 14 4C14 4.74 13.6 5.39 13 5.73V7H14C17.87 7 21 10.13 21 14H22C22.55 14 23 14.45 23 15M21 16H19V14C19 11.24 16.76 9 14 9H10C7.24 9 5 11.24 5 14V16H3V17H5V20H19V17H21V16Z"/></svg><g><g/><text fill="black" stroke="none" font-family="sans-serif" font-size="11pt" font-style="normal" font-weight="normal" text-decoration="normal" x="423.12944818207194" y="138.46312324472726" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">Assistant</text></g><path fill="none" stroke="none"/><g><path fill="white" stroke="black" paint-order="fill stroke markers" d=" M 661.6725459681517 96.24290548472726 L 809.123347148222 96.24290548472726 L 809.123347148222 143.74065046472725 L 661.6725459681517 143.74065046472725 L 661.6725459681517 96.24290548472726 Z" stroke-miterlimit="10" stroke-width="2.814681184" stroke-dasharray=""/></g><g><g/><text fill="black" stroke="none" font-family="sans-serif" font-size="11pt" font-style="normal" font-weight="normal" text-decoration="normal" x="680.7596027471517" y="126.14889306472728" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">openweather.org</text></g></g><g><g><text fill="black" stroke="none" font-family="sans-serif" font-size="16pt" font-style="normal" font-weight="normal" text-decoration="normal" x="258.53124237060547" y="26.547561167272725" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">How tool calling DOESN’T work</text></g><g><rect fill="white" stroke="none" x="45.09586485789144" y="178.92416526472726" width="10.17596472" height="22.86928462"/><rect fill="white" stroke="none" x="45.09586485789144" y="196.51592266472727" width="89.05226934646484" height="22.86928462"/><rect fill="white" stroke="none" x="45.09586485789144" y="214.10768006472728" width="386.96893347" height="22.86928462"/><rect fill="white" stroke="none" x="45.09586485789144" y="231.69943746472728" width="10.17596472" height="22.86928462"/><text fill="black" stroke="none" font-family="sans-serif" font-size="11pt" font-style="normal" font-weight="normal" text-decoration="normal" x="47.73462846789144" y="194.75674692472728" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">{</text><text fill="black" stroke="none" font-family="sans-serif" font-size="11pt" font-style="normal" font-weight="normal" text-decoration="normal" x="47.73462846789144" y="212.3485043247273" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">  role: "user",</text><text fill="black" stroke="none" font-family="sans-serif" font-size="11pt" font-style="normal" font-weight="normal" text-decoration="normal" x="47.73462846789144" y="229.9402617247273" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">  content: "What's the weather right now at Fenway Park?",</text><text fill="black" stroke="none" font-family="sans-serif" font-size="11pt" font-style="normal" font-weight="normal" text-decoration="normal" x="47.73462846789144" y="247.5320191247273" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">}</text></g><g><path fill="none" stroke="black" paint-order="fill stroke markers" d=" M 24.278951934558105 254.56872208472726 L 438.39784911170347 254.56872208472726" stroke-miterlimit="10" stroke-width="1.4659797833333332" stroke-dasharray=""/><g transform="translate(452.8817293710368,254.56872208472726) translate(-452.8817293710368,-254.56872208472726)"><path fill="black" stroke="none" paint-order="stroke fill markers" d=" M 438.2219315377034 247.23882316806058 L 452.8817293710368 254.56872208472726 L 438.2219315377034 261.8986210013939 Z"/></g></g><g><rect fill="white" stroke="none" x="473.69864229437013" y="280.95635818472726" width="240.62458837722656" height="22.86928462"/><text fill="black" stroke="none" font-family="sans-serif" font-size="11pt" font-style="normal" font-weight="normal" text-decoration="normal" x="476.33740590437014" y="296.7889398447273" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">GET /weather/current/us/02215.json</text></g><g><path fill="none" stroke="black" paint-order="fill stroke markers" d=" M 452.8817293710368 303.82564280472724 L 720.9140662988535 303.82564280472724" stroke-miterlimit="10" stroke-width="1.4659797833333332" stroke-dasharray=""/><g transform="translate(735.3979465581868,303.82564280472724) translate(-735.3979465581868,-303.82564280472724)"><path fill="black" stroke="none" paint-order="stroke fill markers" d=" M 720.7381487248535 296.4957438880606 L 735.3979465581868 303.82564280472724 L 720.7381487248535 311.1555417213939 Z"/></g></g><g><rect fill="white" stroke="none" x="481.7087502884497" y="330.21327890472725" width="224.86215246414062" height="22.86928462"/><text fill="black" stroke="none" font-family="sans-serif" font-size="11pt" font-style="normal" font-weight="normal" text-decoration="normal" x="484.34751389844973" y="346.04586056472726" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">{"temp": 65, "conditions": "sunny"}</text></g><g><path fill="none" stroke="black" paint-order="fill stroke markers" d=" M 735.3979465581868 353.0825635247272 L 467.3656096303701 353.0825635247272" stroke-miterlimit="10" stroke-width="1.4659797833333332" stroke-dasharray=""/><g transform="translate(452.8817293710368,353.0825635247272) translate(-452.8817293710368,-353.0825635247272)"><path fill="black" stroke="none" paint-order="stroke fill markers" d=" M 467.54152720437014 345.75266460806057 L 452.8817293710368 353.0825635247272 L 467.54152720437014 360.41246244139387 Z"/></g></g><g><rect fill="white" stroke="none" x="57.70360812113607" y="379.47019962472723" width="10.17596472" height="22.86928462"/><rect fill="white" stroke="none" x="57.70360812113607" y="397.06195702472723" width="118.39991796707031" height="22.86928462"/><rect fill="white" stroke="none" x="57.70360812113607" y="414.65371442472724" width="361.753357298125" height="22.86928462"/><rect fill="white" stroke="none" x="57.70360812113607" y="432.24547182472725" width="10.17596472" height="22.86928462"/><text fill="black" stroke="none" font-family="sans-serif" font-size="11pt" font-style="normal" font-weight="normal" text-decoration="normal" x="60.34237173113607" y="395.30278128472725" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">{</text><text fill="black" stroke="none" font-family="sans-serif" font-size="11pt" font-style="normal" font-weight="normal" text-decoration="normal" x="60.34237173113607" y="412.89453868472725" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">  role: "assistant",</text><text fill="black" stroke="none" font-family="sans-serif" font-size="11pt" font-style="normal" font-weight="normal" text-decoration="normal" x="60.34237173113607" y="430.48629608472726" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">  content: "It's 65 degrees and sunny—a beautiful day!"</text><text fill="black" stroke="none" font-family="sans-serif" font-size="11pt" font-style="normal" font-weight="normal" text-decoration="normal" x="60.34237173113607" y="448.07805348472726" text-anchor="start" dominant-baseline="alphabetic" xml:space="preserve">}</text></g><g><path fill="none" stroke="black" paint-order="fill stroke markers" d=" M 452.8817293710368 455.1147564447272 L 38.76283219389144 455.1147564447272" stroke-miterlimit="10" stroke-width="1.4659797833333332" stroke-dasharray=""/><g transform="translate(24.278951934558105,455.1147564447272) translate(-24.278951934558105,-455.1147564447272)"><path fill="black" stroke="none" paint-order="stroke fill markers" d=" M 38.93874976789144 447.78485752806057 L 24.278951934558105 455.1147564447272 L 38.93874976789144 462.44465536139387 Z"/></g></g></g><g/><g/><g/></g></svg>
`````

## File: vignettes/tool-calling.Rmd
`````
---
title: "Tool/function calling"
output: rmarkdown::html_vignette
vignette: >
  %\VignetteIndexEntry{Tool/function calling}
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteEncoding{UTF-8}
---

```{r, include = FALSE}
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = ellmer:::openai_key_exists()
)
```

## Introduction

One of the most interesting aspects of modern chat models is their ability to make use of external tools that are defined by the caller.

When making a chat request to the chat model, the caller advertises one or more tools (defined by their function name, description, and a list of expected arguments), and the chat model can choose to respond with one or more "tool calls". These tool calls are requests *from the chat model to the caller* to execute the function with the given arguments; the caller is expected to execute the functions and "return" the results by submitting another chat request with the conversation so far, plus the results. The chat model can then use those results in formulating its response, or, it may decide to make additional tool calls.

*Note that the chat model does not directly execute any external tools!* It only makes requests for the caller to execute them. It's easy to think that tool calling might work like this:

![Diagram showing showing the wrong mental model of tool calls: a user initiates a request that flows to the assistant, which then runs the code, and returns the result back to the user."](tool-calling-wrong.svg)

But in fact it works like this:

![Diagram showing the correct mental model for tool calls: a user sends a request that needs a tool call, the assistant request that the user's runs that tool, returns the result to the assistant, which uses it to generate the final answer.](tool-calling-right.svg)

The value that the chat model brings is not in helping with execution, but with knowing when it makes sense to call a tool, what values to pass as arguments, and how to use the results in formulating its response.

```{r setup}
library(ellmer)
```

### Motivating example

Let's take a look at an example where we really need an external tool. Chat models generally do not know the current time, which makes questions like these impossible.

```{r eval=FALSE}
chat <- chat_openai(model = "gpt-4o")
chat$chat("How long ago exactly was the moment Neil Armstrong touched down on the moon?")
#> Neil Armstrong touched down on the moon on July 20, 1969, at 20:17 UTC. To determine how long ago that
#> was from the current year of 2023, we can calculate the difference in years, months, and days.
#>
#> From July 20, 1969, to July 20, 2023, is exactly 54 years. If today's date is after July 20, 2023, you
#> would add the additional time since then. If it is before, you would consider slightly less than 54
#> years.
#>
#> As of right now, can you confirm the current date so we can calculate the precise duration?
```

Unfortunately, this example was run on September 18, 2024. Let's give the chat model the ability to determine the current time and try again.

### Defining a tool function

The first thing we'll do is define an R function that returns the current time. This will be our tool.

```{r}
#' Gets the current time in the given time zone.
#'
#' @param tz The time zone to get the current time in.
#' @return The current time in the given time zone.
get_current_time <- function(tz = "UTC") {
  format(Sys.time(), tz = tz, usetz = TRUE)
}
```

Note that we've gone through the trouble of creating [roxygen2 comments](https://roxygen2.r-lib.org/). This is a very important step that will help the model use your tool correctly!

Let's test it:

```{r eval=FALSE}
get_current_time()
#> [1] "2024-09-18 17:47:14 UTC"
```

### Registering tools

Now we need to tell our chat object about our `get_current_time` function. This by creating and registering a tool:

```{r}
chat <- chat_openai(model = "gpt-4o")

chat$register_tool(tool(
  get_current_time,
  "Gets the current time in the given time zone.",
  tz = type_string(
    "The time zone to get the current time in. Defaults to `\"UTC\"`.",
    required = FALSE
  )
))
```

This is a fair amount of code to write, even for such a simple function as `get_current_time`. Fortunately, you don't have to write this by hand! I generated the above `register_tool` call by calling `create_tool_def(get_current_time)`, which printed that code at the console. `create_tool_def()` works by passing the function's signature and documentation to GPT-4o, and asking it to generate the `register_tool` call for you.

Note that `create_tool_def()` may not create perfect results, so you must review the generated code before using it. But it is a huge time-saver nonetheless, and removes the tedious boilerplate generation you'd have to do otherwise.

### Using the tool

That's all we need to do! Let's retry our query:

```{r eval=FALSE}
chat$chat("How long ago exactly was the moment Neil Armstrong touched down on the moon?")
#> Neil Armstrong touched down on the moon on July 20, 1969, at 20:17 UTC.
#>
#> To calculate the time elapsed from that moment until the current time (September 18, 2024, 17:47:19
#> UTC), we need to break it down.
#>
#> 1. From July 20, 1969, 20:17 UTC to July 20, 2024, 20:17 UTC is exactly 55 years.
#> 2. From July 20, 2024, 20:17 UTC to September 18, 2024, 17:47:19 UTC, we need to further break down:
#>
#>    - From July 20, 2024, 20:17 UTC to September 18, 2024, 17:47:19 UTC, which is:
#>      - 1 full month (August)
#>      - 30 – 20 = 10 days of July
#>      - 18 days of September until 17:47:19 UTC
#>
#> So, in detail:
#>    - 55 years
#>    - 1 month
#>    - 28 days
#>    - From July 20, 2024, 20:17 UTC to July 20, 2024, 17:47:19 UTC: 23 hours, 30 minutes, and 19 seconds
#>
#> Time Total:
#> - 55 years
#> - 1 month
#> - 28 days
#> - 23 hours
#> - 30 minutes
#> - 19 seconds
#>
#> This is the exact time that has elapsed since Neil Armstrong's historic touchdown on the moon.
```

That's correct! Without any further guidance, the chat model decided to call our tool function and successfully used its result in formulating its response.

(Full disclosure: I originally tried this example with the default model of `gpt-4o-mini` and it got the tool calling right but the date math wrong, hence the explicit `model="gpt-4o"`.)

This tool example was extremely simple, but you can imagine doing much more interesting things from tool functions: calling APIs, reading from or writing to a database, kicking off a complex simulation, or even calling a complementary GenAI model (like an image generator). Or if you are using ellmer in a Shiny app, you could use tools to set reactive values, setting off a chain of reactive updates.

### Tool inputs and outputs

Remember that tool arguments come from the LLM, and tool results are returned to the LLM. This implies that you should keep both as simple as possible.

Inputs to a tool call, must be defined by `type_boolean()`, `type_integer()`, `type_number()`, `type_string()`, `type_enum()`, `type_array()`, or `type_object()`. We recommend keeping them as simple as possible, focussing on basic scalar types as much as you can.

The output of the tool call will be interpreted by the LLM, just as if you had typed that information into the data. That means you'll generally want to produce text or other atomic vectors. For more complex data, ellmer will automatically serialize the result to JSON, which LLMs generally seem to be good at understanding. 

To show off these ideas, here's a slightly more complicated example simulating a weather API that returns data for multiple cities at once. The `get_weather()` function returns a data frame that ellmer will automatically convert into JSON in row-major format, which our experiments suggest is good for LLMs.

```{r}
raining <- c(London = "heavy", Houston = "none", Chicago = "overcast")
temperature <- c(London = "cool", Houston = "hot", Chicago = "warm")
wind <- c(London = "strong", Houston = "weak", Chicago = "strong")

get_weather <- function(cities) {
  data.frame(
    city = cities,
    raining = unname(raining[cities]),
    temperature = unname(temperature[cities]),
    wind = unname(wind[cities])
  )
}
chat <- chat_openai()
chat$register_tool(tool( 
  get_weather,
  "Report on weather conditions in multiple cities. For efficiency, request all 
  weather updates using a single tool call",
  cities = type_array("City names", type_string())
))
chat$chat("Give me a weather udpate for London and Chicago")
```
`````

## File: _pkgdown.yml
`````yaml
url: https://ellmer.tidyverse.org
template:
  bootstrap: 5
  package: tidytemplate
  includes:
    in_header: |
      <script defer data-domain="ellmer.tidyverse.org,all.tidyverse.org" src="https://plausible.io/js/plausible.js"></script>

development:
  mode: auto

reference:
  - title: Chatbots
    desc: >
      ellmer provides a simple interface to a wide range of LLM providers. Use
      the `chat_` functions to initialize a `Chat` object for a specific
      provider and model. Once created, use the methods of the `Chat` object
      to send messages, receive responses, manage tools and extract structured
      data.
    contents:
      - Chat
      - starts_with("chat_")
      - token_usage

  - title: Chat helpers
    contents:
      - create_tool_def
      - content_image_url
      - content_pdf_url
      - starts_with("live_")
      - interpolate
      - google_upload

  - title: Parallel and batch chat
    contents:
      - batch_chat
      - parallel_chat

  - title: Tools and structured data
    contents:
      - tool
      - tool_annotations
      - tool_reject
      - type_boolean

  - title: Objects
    desc: >
      These classes abstract away behaviour differences in chat providers so
      that for typical ellmer use you don't need to worry about them. You'll need
      to learn more about the objects if you're doing something that's only
      supported by one provider, or if you're implementing a new provider.
    contents:
      - Provider
      - Chat
      - Turn
      - Content
      - Type

  - title: Utilities
    contents:
      - contents_text
      - params

  - title: Deprecated functions
    contents:
      - deprecated
`````

## File: .gitignore
`````
.Rproj.user
.Rhistory
.Rdata
.httr-oauth
.DS_Store
.quarto
docs
inst/doc

/.quarto/
`````

## File: .Rbuildignore
`````
^ellmer\.Rproj$
^\.Rproj\.user$
^LICENSE\.md$
^\.github$
^codecov\.yml$
^README\.Rmd$
^_pkgdown\.yml$
^docs$
^pkgdown$
^vignettes/articles$
_cache/
^cran-comments\.md$
^CRAN-SUBMISSION$
^[\.]?air\.toml$
^\.vscode$
^data-raw$
^revdep$
`````

## File: codecov.yml
`````yaml
comment: false

coverage:
  status:
    project:
      default:
        target: auto
        threshold: 1%
        informational: true
    patch:
      default:
        target: auto
        threshold: 1%
        informational: true
`````

## File: cran-comments.md
`````markdown
# R CMD check results

0 errors | 0 warnings | 1 note

* The failing links do all appear to work from a real browser. 
  (I wonder if we check if https://github.com/lwthiker/curl-impersonate gives
  fewer false positives.)

## revdepcheck results

We checked 9 reverse dependencies, comparing R CMD check results across CRAN and dev versions of this package.

 * We saw 1 new problems
 * We failed to check 0 packages

GitAI fails with new ellmer, I have submitted a patch to the maintainers: https://github.com/r-world-devs/GitAI/pull/108.
`````

## File: CRAN-SUBMISSION
`````
Version: 0.1.0
Date: 2024-12-20 14:50:44 UTC
SHA: 9503a1f2988a0c718575c8df7bccee10a9435857
`````

## File: DESCRIPTION
`````
Package: ellmer
Title: Chat with Large Language Models
Version: 0.2.0.9000
Authors@R: c(
    person("Hadley", "Wickham", , "hadley@posit.co", role = c("aut", "cre"),
           comment = c(ORCID = "0000-0003-4757-117X")),
    person("Joe", "Cheng", role = "aut"),
    person("Aaron", "Jacobs", role = "aut"),
    person("Garrick", "Aden-Buie", , "garrick@posit.co", role = "aut",
           comment = c(ORCID = "0000-0002-7111-0077")),
    person("Posit Software, PBC", role = c("cph", "fnd"),
           comment = c(ROR = "03wc8by49"))
  )
Description: Chat with large language models from a range of providers
    including 'Claude' <https://claude.ai>, 'OpenAI'
    <https://chatgpt.com>, and more. Supports streaming, asynchronous
    calls, tool calling, and structured data extraction.
License: MIT + file LICENSE
URL: https://ellmer.tidyverse.org, https://github.com/tidyverse/ellmer
BugReports: https://github.com/tidyverse/ellmer/issues
Depends:
    R (>= 4.1)
Imports:
    cli,
    coro (>= 1.1.0),
    glue,
    httr2 (>= 1.1.1),
    jsonlite,
    later (>= 1.4.0),
    lifecycle,
    promises (>= 1.3.1),
    R6,
    rlang (>= 1.1.0),
    S7 (>= 0.2.0)
Suggests:
    base64enc,
    connectcreds,
    curl (>= 6.0.1),
    gargle,
    gitcreds,
    knitr,
    magick,
    openssl,
    paws.common,
    rmarkdown,
    shiny,
    shinychat (>= 0.2.0),
    testthat (>= 3.0.0),
    withr
VignetteBuilder:
    knitr
Config/Needs/website: tidyverse/tidytemplate, rmarkdown
Config/testthat/edition: 3
Config/testthat/parallel: true
Config/testthat/start-first: test-provider-*
Encoding: UTF-8
Roxygen: list(markdown = TRUE)
RoxygenNote: 7.3.2
Collate:
    'utils-S7.R'
    'types.R'
    'tools-def.R'
    'content.R'
    'provider.R'
    'as-json.R'
    'batch-chat.R'
    'chat-parallel.R'
    'chat-structured.R'
    'utils-coro.R'
    'chat.R'
    'content-image.R'
    'content-pdf.R'
    'turns.R'
    'content-tools.R'
    'deprecated.R'
    'ellmer-package.R'
    'httr2.R'
    'import-standalone-obj-type.R'
    'import-standalone-purrr.R'
    'import-standalone-types-check.R'
    'interpolate.R'
    'params.R'
    'provider-openai.R'
    'provider-azure.R'
    'provider-bedrock.R'
    'provider-claude.R'
    'provider-gemini.R'
    'provider-cloudflare.R'
    'provider-cortex.R'
    'provider-databricks.R'
    'provider-deepseek.R'
    'provider-gemini-upload.R'
    'provider-github.R'
    'provider-groq.R'
    'provider-huggingface.r'
    'provider-mistral.R'
    'provider-ollama.R'
    'provider-openrouter.R'
    'provider-perplexity.R'
    'provider-portkey.R'
    'provider-snowflake.R'
    'provider-vllm.R'
    'shiny.R'
    'tokens.R'
    'tools-def-auto.R'
    'utils-callbacks.R'
    'utils-cat.R'
    'utils-merge.R'
    'utils-prettytime.R'
    'utils.R'
    'zzz.R'
`````

## File: ellmer.Rproj
`````
Version: 1.0

RestoreWorkspace: No
SaveWorkspace: No
AlwaysSaveHistory: Default

EnableCodeIndexing: Yes
UseSpacesForTab: Yes
NumSpacesForTab: 2
Encoding: UTF-8

RnwWeave: Sweave
LaTeX: pdfLaTeX

AutoAppendNewline: Yes
StripTrailingWhitespace: Yes
LineEndingConversion: Posix

BuildType: Package
PackageUseDevtools: Yes
PackageInstallArgs: --no-multiarch --with-keep.source
PackageRoxygenize: rd,collate,namespace
`````

## File: LICENSE
`````
YEAR: 2024
COPYRIGHT HOLDER: ellmer authors
`````

## File: LICENSE.md
`````markdown
# MIT License

Copyright (c) 2024 ellmer authors

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
`````

## File: NAMESPACE
`````
# Generated by roxygen2: do not edit by hand

S3method("[",ellmer_prompt)
S3method(format,ellmer_dollars)
S3method(print,Chat)
S3method(print,ellmer_dollars)
S3method(print,ellmer_prompt)
export(Content)
export(ContentImage)
export(ContentImageInline)
export(ContentImageRemote)
export(ContentPDF)
export(ContentText)
export(ContentThinking)
export(ContentToolRequest)
export(ContentToolResult)
export(Provider)
export(Turn)
export(TypeArray)
export(TypeBasic)
export(TypeEnum)
export(TypeObject)
export(batch_chat)
export(batch_chat_completed)
export(batch_chat_structured)
export(chat_anthropic)
export(chat_aws_bedrock)
export(chat_azure)
export(chat_azure_openai)
export(chat_bedrock)
export(chat_claude)
export(chat_cloudflare)
export(chat_cortex)
export(chat_cortex_analyst)
export(chat_databricks)
export(chat_deepseek)
export(chat_gemini)
export(chat_github)
export(chat_google_gemini)
export(chat_google_vertex)
export(chat_groq)
export(chat_huggingface)
export(chat_mistral)
export(chat_ollama)
export(chat_openai)
export(chat_openrouter)
export(chat_perplexity)
export(chat_portkey)
export(chat_snowflake)
export(chat_vllm)
export(content_image_file)
export(content_image_plot)
export(content_image_url)
export(content_pdf_file)
export(content_pdf_url)
export(contents_html)
export(contents_markdown)
export(contents_text)
export(create_tool_def)
export(google_upload)
export(has_credentials)
export(interpolate)
export(interpolate_file)
export(interpolate_package)
export(live_browser)
export(live_console)
export(models_anthropic)
export(models_aws_bedrock)
export(models_google_gemini)
export(models_google_vertex)
export(models_ollama)
export(models_openai)
export(models_portkey)
export(models_vllm)
export(parallel_chat)
export(parallel_chat_structured)
export(params)
export(token_usage)
export(tool)
export(tool_annotations)
export(tool_reject)
export(type_array)
export(type_boolean)
export(type_enum)
export(type_integer)
export(type_number)
export(type_object)
export(type_string)
if (getRversion() < "4.3.0") importFrom("S7", "@")
import(S7)
import(httr2)
import(rlang)
importFrom(R6,R6Class)
importFrom(lifecycle,deprecated)
`````

## File: NEWS.md
`````markdown
# ellmer (development version)

# ellmer 0.2.0

## Breaking changes

* We have made a number of refinements to the way ellmer converts JSON
  to R data structures. These are breaking changes, although we don't expect
  them to affect much code in the wild. Most importantly, tools are now invoked 
  with their inputs coerced to standard R data structures (#461); opt-out
  by setting `convert = FALSE` in `tool()`.

  Additionally ellmer now converts `NULL` to `NA` for `type_boolean()`, 
  `type_integer()`, `type_number()`, and `type_string()` (#445), and does a 
  better job with arrays when `required = FALSE` (#384).

* `chat_` functions no longer have a `turn` argument. If you need to set the
  turns, you can now use `Chat$set_turns()` (#427). Additionally, 
  `Chat$tokens()` has been renamed to `Chat$get_tokens()` and returns a data 
  frame of tokens, correctly aligned to the individual turn. The print method 
  now uses this to show how many input/output tokens were used by each turn 
  (#354).

## New features

* Two new interfaces help you do multiple chats with a single function call:

  * `batch_chat()` and `batch_chat_structured()` allow you to submit multiple 
    chats to OpenAI and Anthropic's batched interfaces. These only guarantee a 
    response within 24 hours, but are 50% of the price of regular requests 
    (#143).

  * `parallel_chat()` and `parallel_chat_structured()` work with any provider
    and allow you to submit multiple chats in parallel (#143). This doesn't give
    you any cost savings, but it's can be much, much faster.

  This new family of functions is experimental because I'm not 100% sure that 
  the shape of the user interface is correct, particularly as it pertains to 
  handling errors.

* `google_upload()` lets you upload files to Google Gemini or Vertex AI (#310).
  This allows you to work with videos, PDFs, and other large files with Gemini.

* `models_google_gemini()`, `models_anthropic()`, `models_openai()`,
  `models_aws_bedrock()`, `models_ollama()` and `models_vllm()`, list available
  models for Google Gemini, Anthropic, OpenAI, AWS Bedrock, Ollama, and VLLM
  respectively. Different providers return different metadata so they are only
  guaranteed to return a data frame with at least an `id` column (#296).
  Where possible (currently for Gemini, Anthropic, and OpenAI) we include
  known token prices (per million tokens).

* `interpolate()` and friends are now vectorised so you can generate multiple
  prompts for (e.g.) a data frame of inputs. They also now return a specially
  classed object with a custom print method (#445). New `interpolate_package()` 
  makes it easier to interpolate from prompts stored in the `inst/prompts` 
  directory inside a package (#164).

* `chat_anthropic()`, `chat_azure()`, `chat_openai()`, and `chat_gemini()` now 
  take a `params` argument, that coupled with the `params()` helper, makes it 
  easy to specify common model parameters (like `seed` and `temperature`) 
  across providers. Support for other providers will grow as you request it 
  (#280).

* ellmer now tracks the cost of input and output tokens. The cost is displayed
  when you print a `Chat` object, in `tokens_usage()`, and with
  `Chat$get_cost()`. You can also request costs in `parallel_chat_structured()`.
  We do our best to accurately compute the cost, but you should treat it as an
  estimate rather than the exact price. Unfortunately LLM providers currently
  make it very difficult to figure out exactly how much your queries cost (#203).

## Provider updates

* We have support for three new providers:

  * `chat_huggingface()` for models hosted at <https://huggingface.co>
    (#359, @s-spavound).
  * `chat_mistral()` for models hosted at <https://mistral.ai> (#319).
  * `chat_portkey()` and `models_portkey()` for models hosted at
    <https://portkey.ai> (#363, @maciekbanas).

* We also renamed (with deprecation) a few functions to make the naming 
  scheme more consistent (#382, @gadenbuie):

  * `chat_azure_openai()` replaces `chat_azure()`.
  * `chat_aws_bedrock()` replaces `chat_bedrock()`.
  * `chat_anthropic()` replaces `chat_anthropic()`.
  * `chat_google_gemini()` replaces `chat_gemini()`.

* We have updated the default model for a couple of providers:
  * `chat_anthropic()` uses Sonnet 3.7 (which it also now displays) (#336).
  * `chat_openai()` uses GPT-4.1 (#512)

## Developer tooling

* New `Chat$get_provider()` lets you access the underlying provider object 
  (#202).

* `Chat$chat_async()` and `Chat$stream_async()` gain a `tool_mode` argument to 
  decide between `"sequential"` and `"concurrent"` tool calling. This is an 
  advanced feature that primarily affects asynchronous tools (#488, @gadenbuie).

* `Chat$stream()` and `Chat$stream_async()` gain support for streaming the 
  additional content types generated during a tool call with a new `stream` 
  argument. When `stream = "content"` is set, the streaming response yields 
  `Content` objects, including the `ContentToolRequest` and `ContentToolResult` 
  objects used to request and return tool calls (#400, @gadenbuie).

* New `Chat$on_tool_request()` and `$on_tool_result()` methods allow you to
  register callbacks to run on a tool request or tool result. These callbacks
  can be used to implement custom logging or other actions when tools are
  called, without modifying the tool function (#493, @gadenbuie).

* `Chat$chat(echo = "output")` replaces the now-deprecated `echo = "text"` 
  option. When using `echo = "output"`, additional output, such as tool
  requests and results, are shown as they occur. When `echo = "none"`, tool
  call failures are emitted as warnings (#366, @gadenbuie).

* `ContentToolResult` objects can now be returned directly from the `tool()`
  function and now includes additional information (#398 #399, @gadenbuie):

  * `extra`: A list of additional data associated with the tool result that is
    not shown to the chatbot.
  * `request`: The `ContentToolRequest` that triggered the tool call.
    `ContentToolResult` no longer has an `id` property, instead the tool call
    ID can be retrieved from `request@id`.

  They also include the error condition in the `error` property when a tool call 
  fails (#421, @gadenbuie).

* `ContentToolRequest` gains a `tool` property that includes the `tool()`
  definition when a request is matched to a tool by ellmer (#423, @gadenbuie).

* `tool()` gains an `.annotations` argument that can be created with the
  `tool_annotations()` helper. Tool annotations are described in the
  [Model Context Protocol](https://modelcontextprotocol.io/introduction) and can
  be used to describe the tool to clients. (#402, @gadenbuie)

* New `tool_reject()` function can be used to reject a tool request with an
  explanation for the rejection reason. `tool_reject()` can be called within a
  tool function or in a `Chat$on_tool_request()` callback. In the latter case,
  rejecting a tool call will ensure that the tool function is not evaluated
  (#490, #493, @gadenbuie).

## Minor improvements and bug fixes

* All requests now set a custom User-Agent that identifies that the requests
  come from ellmer (#341). The default timeout has been increased to 
  5 minutes (#451, #321).

* `chat_anthropic()` now supports the thinking content type (#396), and 
  `content_image_url()` (#347). It gains a `beta_header` argument to opt-in 
  to beta features (#339). It (along with `chat_bedrock()`) no longer chokes 
  after receiving an output that consists only of whitespace (#376).
  Finally, `chat_anthropic(max_tokens =)` is now deprecated in favour of
  `chat_anthropic(params = )` (#280).

* `chat_google_gemini()` and `chat_google_vertex()` gain more ways to 
  authenticate. They can use `GEMINI_API_KEY` if set (@t-kalinowski, #513), 
  authenticate with Google default application credentials (including service 
  accounts, etc) (#317, @atheriel) and use viewer-based credentials when 
  running on Posit Connect (#320, @atheriel). Authentication with default 
  application credentials requires the {gargle} package. They now also can now 
  handle responses that include citation metadata (#358).

* `chat_ollama()` now works with `tool()` definitions with optional arguments 
  or empty properties (#342, #348, @gadenbuie), and now accepts `api_key` and 
  consults the `OLLAMA_API_KEY` environment variable. This is not needed for 
  local usage, but enables bearer-token authentication when Ollama is running 
  behind a reverse proxy (#501, @gadenbuie).

* `chat_openai(seed =)` is now deprecated in favour of `chat_openai(params = )` 
  (#280).

* `create_tool_def()` can now use any Chat instance (#118, @pedrobtz).

* `live_browser()` now requires {shinychat} v0.2.0 or later which provides
  access to the app that powers `live_browser()` via `shinychat::chat_app()`,
  as well as a Shiny module for easily including a chat interface for an ellmer
  `Chat` object in your Shiny apps (#397, @gadenbuie). It now initializes the
  UI with the messages from the chat turns, rather than replaying the turns
  server-side (#381).

* `Provider` gains `name` and `model` fields (#406). These are now reported when
  you print a chat object and are used in `token_usage()`.

# ellmer 0.1.1

## Lifecycle changes

* `option(ellmer_verbosity)` is no longer supported; instead use the standard
  httr2 verbosity functions, such as `httr2::with_verbosity()`; these now
  support streaming data.

* `chat_cortex()` has been renamed `chat_cortex_analyst()` to better
  disambiguate it from `chat_snowflake()` (which *also* uses "Cortex")
  (#275, @atheriel).

## New features

* All providers now wait for up to 60s to get the complete response. You can
  increase this with, e.g., `option(ellmer_timeout_s = 120)` (#213, #300).

* `chat_azure()`, `chat_databricks()`, `chat_snowflake()`, and
  `chat_cortex_analyst()` now detect viewer-based credentials when running on
  Posit Connect (#285, @atheriel).

* `chat_deepseek()` provides support for DeepSeek models (#242).

* `chat_openrouter()` provides support for models hosted by OpenRouter (#212).

* `chat_snowflake()` allows chatting with models hosted through Snowflake's
  [Cortex LLM REST API](https://docs.snowflake.com/en/user-guide/snowflake-cortex/cortex-llm-rest-api)
  (#258, @atheriel).

* `content_pdf_file()` and `content_pdf_url()` allow you to upload PDFs to
  supported models. Models that currently support PDFs are Google Gemini and
  Claude Anthropic. With help from @walkerke and @andrie (#265).

## Bug fixes and minor improvements

* `Chat$get_model()` returns the model name (#299).

* `chat_azure()` has greatly improved support for Azure Entra ID. API keys are
  now optional and we can pick up on ambient credentials from Azure service
  principals or attempt to use interactive Entra ID authentication when
  possible. The broken-by-design `token` argument has been deprecated (it
  could not handle refreshing tokens properly), but a new `credentials`
  argument can be used for custom Entra ID support when needed instead
  (for instance, if you're trying to use tokens generated by the `AzureAuth`
  package) (#248, #263, #273, #257, @atheriel).

* `chat_azure()` now reports better error messages when the underlying HTTP
  requests fail (#269, @atheriel). It now also defaults to
  `api_version = "2024-10-21"` which includes data for structured data
  extraction (#271).

* `chat_bedrock()` now handles temporary IAM credentials better
  (#261, @atheriel) and `chat_bedrock()` gains `api_args` argument (@billsanto, #295).

* `chat_databricks()` now handles the `DATABRICKS_HOST` environment variable
  correctly whether it includes an HTTPS prefix or not (#252, @atheriel).
  It also respects the `SPARK_CONNECT_USER_AGENT` environment variable when
  making requests (#254, @atheriel).

* `chat_gemini()` now defaults to using the gemini-2.0-flash model.

* `print(Chat)` no longer wraps long lines, making it easier to read code
  and bulleted lists (#246).

# ellmer 0.1.0

* New `chat_vllm()` to chat with models served by vLLM (#140).

* The default `chat_openai()` model is now GPT-4o.

* New `Chat$set_turns()` to set turns. `Chat$turns()` is now `Chat$get_turns()`. `Chat$system_prompt()` is replaced with `Chat$set_system_prompt()` and `Chat$get_system_prompt()`.

* Async and streaming async chat are now event-driven and use `later::later_fd()` to wait efficiently on curl socket activity (#157).

* New `chat_bedrock()` to chat with AWS bedrock models (#50).

* New `chat$extract_data()` uses the structured data API where available (and tool calling otherwise) to extract data structured according to a known type specification. You can create specs with functions `type_boolean()`, `type_integer()`, `type_number()`, `type_string()`, `type_enum()`, `type_array()`, and `type_object()` (#31).

* The general `ToolArg()` has been replaced by the more specific `type_*()` functions. `ToolDef()` has been renamed to `tool`.

* `content_image_url()` will now create inline images when given a data url (#110).

* Streaming ollama results works once again (#117).

* Streaming OpenAI results now capture more results, including `logprobs` (#115).

* New `interpolate()` and `prompt_file()` make it easier to create prompts that are a mix of static text and dynamic values.

* You can find how many tokens you've used in the current session by calling `token_usage()`.

* `chat_browser()` and `chat_console()` are now `live_browser()` and `live_console()`.

* The `echo` can now be one of three values: "none", "text", or "all". If "all", you'll now see both user and assistant turns, and all content types will be printed, not just text. When running in the global environment, `echo` defaults to "text", and when running inside a function it defaults to "none".

* You can now log low-level JSON request/response info by setting `options(ellmer_verbosity = 2)`.

* `chat$register_tool()` now takes an object created by `Tool()`. This makes it a little easier to reuse tool definitions (#32).

* `new_chat_openai()` is now `chat_openai()`.

* Claude and Gemini are now supported via `chat_claude()` and `chat_gemini()`.

* The Snowflake Cortex Analyst is now supported via `chat_cortex()` (#56).

* Databricks is now supported via `chat_databricks()` (#152).
`````

## File: README.md
`````markdown
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ellmer <a href="https://ellmer.tidyverse.org"><img src="man/figures/logo.png" align="right" height="138" alt="ellmer website" /></a>

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/tidyverse/ellmer/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/tidyverse/ellmer/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

ellmer makes it easy to use large language models (LLM) from R. It
supports a wide variety of LLM providers and implements a rich set of
features including streaming outputs, tool/function calling, structured
data extraction, and more.

(Looking for something similar to ellmer for python? Check out
[chatlas](https://github.com/posit-dev/chatlas)!)

## Installation

You can install ellmer from CRAN with:

``` r
install.packages("ellmer")
```

## Providers

ellmer supports a wide variety of model providers:

- Anthropic’s Claude: `chat_anthropic()`.
- AWS Bedrock: `chat_aws_bedrock()`.
- Azure OpenAI: `chat_azure_openai()`.
- Cloudflare: `chat_cloudflare()`.
- Databricks: `chat_databricks()`.
- DeepSeek: `chat_deepseek()`.
- GitHub model marketplace: `chat_github()`.
- Google Gemini/Vertex AI: `chat_google_gemini()`,
  `chat_google_vertex()`.
- Groq: `chat_groq()`.
- Hugging Face: `chat_huggingface()`.
- Mistral: `chat_mistral()`.
- Ollama: `chat_ollama()`.
- OpenAI: `chat_openai()`.
- OpenRouter: `chat_openrouter()`.
- perplexity.ai: `chat_perplexity()`.
- Snowflake Cortex: `chat_snowflake()` and `chat_cortex_analyst()`.
- VLLM: `chat_vllm()`.

### Provider/model choice

If you’re using ellmer inside an organisation, you may have internal
policies that limit you to models from big cloud providers,
e.g. `chat_azure_openai()`, `chat_aws_bedrock()`, `chat_databricks()`,
or `chat_snowflake()`.

If you’re using ellmer for your own exploration, you’ll have a lot more
freedom, so we have a few recommendations to help you get started:

- `chat_openai()` or `chat_anthropic()` are good places to start.
  `chat_openai()` defaults to **GPT-4.1**, but you can use
  `model = "gpt-4-1-nano"` for a cheaper, faster model, or
  `model = "o3"` for more complex reasoning. `chat_anthropic()` is also
  good; it defaults to **Claude 3.7 Sonnet**, which we have found to be
  particularly good at writing R code.

- `chat_google_gemini()` is a strong model with generous free tier (with
  the downside that [your data is
  used](https://ai.google.dev/gemini-api/terms#unpaid-services) to
  improve the model), making it a great place to start if you don’t want
  to spend any money.

- `chat_ollama()`, which uses [Ollama](https://ollama.com), allows you
  to run models on your own computer. While the biggest models you can
  run locally aren’t as good as the state of the art hosted models, they
  don’t share your data and are effectively free.

### Authentication

Authentication works a little differently depending on the provider. A
few popular ones (including OpenAI and Anthropic) require you to obtain
an API key. We recommend you save it in an environment variable rather
than using it directly in your code, and if you deploy an app or report
that uses ellmer to another system, you’ll need to ensure that this
environment variable is available there, too.

ellmer also automatically detects many of the OAuth or IAM-based
credentials used by the big cloud providers (currently
`chat_azure_openai()`, `chat_aws_bedrock()`, `chat_databricks()`,
`chat_snowflake()`). That includes credentials for these platforms
managed by [Posit
Workbench](https://docs.posit.co/ide/server-pro/user/posit-workbench/managed-credentials/managed-credentials.html)
and [Posit
Connect](https://docs.posit.co/connect/user/oauth-integrations/#adding-oauth-integrations-to-deployed-content).

If you find cases where ellmer cannot detect credentials from one of
these cloud providers, feel free to open an issue; we’re happy to add
more auth mechanisms if needed.

## Using ellmer

You can work with ellmer in several different ways, depending on whether
you are working interactively or programmatically. They all start with
creating a new chat object:

``` r
library(ellmer)

chat <- chat_openai(
  model = "gpt-4o-mini",
  system_prompt = "You are a friendly but terse assistant.",
)
```

Chat objects are stateful [R6 objects](https://r6.r-lib.org): they
retain the context of the conversation, so each new query builds on the
previous ones. You call their methods with `$`.

### Interactive chat console

The most interactive and least programmatic way of using ellmer is to
chat directly in your R console or browser with `live_console(chat)` or
`live_browser()`:

``` r
live_console(chat)
#> ╔════════════════════════════════════════════════════════╗
#> ║  Entering chat console. Use """ for multi-line input.  ║
#> ║  Press Ctrl+C to quit.                                 ║
#> ╚════════════════════════════════════════════════════════╝
#> >>> Who were the original creators of R?
#> R was originally created by Ross Ihaka and Robert Gentleman at the University of
#> Auckland, New Zealand.
#>
#> >>> When was that?
#> R was initially released in 1995. Development began a few years prior to that,
#> in the early 1990s.
```

Keep in mind that the chat object retains state, so when you enter the
chat console, any previous interactions with that chat object are still
part of the conversation, and any interactions you have in the chat
console will persist after you exit back to the R prompt. This is true
regardless of which chat function you use.

### Interactive method call

The second most interactive way to chat is to call the `chat()` method:

``` r
chat$chat("What preceding languages most influenced R?")
#> R was primarily influenced by the S programming language, particularly S-PLUS.
#> Other languages that had an impact include Scheme and various data analysis
#> languages.
```

If you initialize the chat object in the global environment, the `chat`
method will stream the response to the console. When the entire response
is received, it’s also (invisibly) returned as a character vector. This
is useful when you want to see the response as it arrives, but you don’t
want to enter the chat console.

If you want to ask a question about an image, you can pass one or more
additional input arguments using `content_image_file()` and/or
`content_image_url()`:

``` r
chat$chat(
  content_image_url("https://www.r-project.org/Rlogo.png"),
  "Can you explain this logo?"
)
#> The logo of R features a stylized letter "R" in blue, enclosed in an oval
#> shape that resembles the letter "O," signifying the programming language's
#> name. The design conveys a modern and professional look, reflecting its use
#> in statistical computing and data analysis. The blue color often represents
#> trust and reliability, which aligns with R's role in data science.
```

### Programmatic chat

The most programmatic way to chat is to create the chat object inside a
function. By doing so, live streaming is automatically suppressed and
`$chat()` returns the result as a string:

``` r
my_function <- function() {
  chat <- chat_openai(
    model = "gpt-4o-mini",
    system_prompt = "You are a friendly but terse assistant.",
  )
  chat$chat("Is R a functional programming language?")
}
my_function()
#> [1] "Yes, R supports functional programming concepts. It allows functions to
#> be first-class objects, supports higher-order functions, and encourages the
#> use of functions as core components of code. However, it also supports
#> procedural and object-oriented programming styles."
```

If needed, you can manually control this behaviour with the `echo`
argument. This is useful for programming with ellmer when the result is
either not intended for human consumption or when you want to process
the response before displaying it.

## Learning more

ellmer comes with a bunch of vignettes to help you learn more:

- Learn key vocabulary and see example use cases in
  `vignette("ellmer")`.
- Learn how to design your prompt in `vignette("prompt-design")`.
- Learn about tool/function calling in `vignette("tool-calling")`.
- Learn how to extract structured data in `vignette("structured-data")`.
- Learn about streaming and async APIs in `vignette("streaming-async")`.
`````

## File: README.Rmd
`````
---
output: github_document
---

<!-- README.md is generated from README.Rmd. Please edit that file -->

```{r, include = FALSE}
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.path = "man/figures/README-",
  out.width = "100%"
)
```

# ellmer <a href="https://ellmer.tidyverse.org"><img src="man/figures/logo.png" align="right" height="138" alt="ellmer website" /></a>

<!-- badges: start -->
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/tidyverse/ellmer/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/tidyverse/ellmer/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

ellmer makes it easy to use large language models (LLM) from R. It supports a wide variety of LLM providers and implements a rich set of features including streaming outputs, tool/function calling, structured data extraction, and more.

(Looking for something similar to ellmer for python? Check out [chatlas](https://github.com/posit-dev/chatlas)!)

## Installation

You can install ellmer from CRAN with:

```{r}
#| eval: false
install.packages("ellmer")
```

## Providers

ellmer supports a wide variety of model providers:

* Anthropic's Claude: `chat_anthropic()`.
* AWS Bedrock: `chat_aws_bedrock()`.
* Azure OpenAI: `chat_azure_openai()`.
* Cloudflare: `chat_cloudflare()`.
* Databricks: `chat_databricks()`.
* DeepSeek: `chat_deepseek()`.
* GitHub model marketplace: `chat_github()`.
* Google Gemini/Vertex AI: `chat_google_gemini()`, `chat_google_vertex()`.
* Groq: `chat_groq()`.
* Hugging Face: `chat_huggingface()`.
* Mistral: `chat_mistral()`.
* Ollama: `chat_ollama()`.
* OpenAI: `chat_openai()`.
* OpenRouter: `chat_openrouter()`.
* perplexity.ai: `chat_perplexity()`.
* Snowflake Cortex: `chat_snowflake()` and `chat_cortex_analyst()`.
* VLLM: `chat_vllm()`.

### Provider/model choice

If you're using ellmer inside an organisation, you may have internal policies that limit you to models from big cloud providers, e.g. `chat_azure_openai()`, `chat_aws_bedrock()`, `chat_databricks()`, or `chat_snowflake()`.

If you're using ellmer for your own exploration, you'll have a lot more freedom, so we have a few recommendations to help you get started:

- `chat_openai()` or `chat_anthropic()` are good places to start. `chat_openai()` defaults to **GPT-4.1**, but you can use `model = "gpt-4-1-nano"` for a cheaper, faster model, or `model = "o3"` for more complex reasoning. `chat_anthropic()` is also good; it defaults to **Claude 3.7 Sonnet**, which we have found to be particularly good at writing R code.

- `chat_google_gemini()` is a strong model with generous free tier (with the downside that [your data is used](https://ai.google.dev/gemini-api/terms#unpaid-services) to improve the model), making it a great place to start if you don't want to spend any money.

- `chat_ollama()`, which uses [Ollama](https://ollama.com), allows you to run models on your own computer. While the biggest models you can run locally aren't as good as the state of the art hosted models, they don't share your data and are effectively free.

### Authentication

Authentication works a little differently depending on the provider. A few popular ones (including OpenAI and Anthropic) require you to obtain an API key. We recommend you save it in an environment variable rather than using it directly in your code, and if you deploy an app or report that uses ellmer to another system, you'll need to ensure that this environment variable is available there, too.

ellmer also automatically detects many of the OAuth or IAM-based credentials used by the big cloud providers (currently `chat_azure_openai()`, `chat_aws_bedrock()`, `chat_databricks()`, `chat_snowflake()`). That includes credentials for these platforms managed by [Posit Workbench](https://docs.posit.co/ide/server-pro/user/posit-workbench/managed-credentials/managed-credentials.html) and [Posit Connect](https://docs.posit.co/connect/user/oauth-integrations/#adding-oauth-integrations-to-deployed-content).

If you find cases where ellmer cannot detect credentials from one of these cloud providers, feel free to open an issue; we're happy to add more auth mechanisms if needed.

## Using ellmer

You can work with ellmer in several different ways, depending on whether you are working interactively or programmatically. They all start with creating a new chat object:

```r
library(ellmer)

chat <- chat_openai(
  model = "gpt-4o-mini",
  system_prompt = "You are a friendly but terse assistant.",
)
```

Chat objects are stateful [R6 objects](https://r6.r-lib.org): they retain the context of the conversation, so each new query builds on the previous ones. You call their methods with `$`.

### Interactive chat console

The most interactive and least programmatic way of using ellmer is to chat directly in your R console or browser with `live_console(chat)` or `live_browser()`:

```{r}
#| eval: false

live_console(chat)
#> ╔════════════════════════════════════════════════════════╗
#> ║  Entering chat console. Use """ for multi-line input.  ║
#> ║  Press Ctrl+C to quit.                                 ║
#> ╚════════════════════════════════════════════════════════╝
#> >>> Who were the original creators of R?
#> R was originally created by Ross Ihaka and Robert Gentleman at the University of
#> Auckland, New Zealand.
#>
#> >>> When was that?
#> R was initially released in 1995. Development began a few years prior to that,
#> in the early 1990s.
```

Keep in mind that the chat object retains state, so when you enter the chat console, any previous interactions with that chat object are still part of the conversation, and any interactions you have in the chat console will persist after you exit back to the R prompt. This is true regardless of which chat function you use.

### Interactive method call

The second most interactive way to chat is to call the `chat()` method:

```{r}
#| eval: false

chat$chat("What preceding languages most influenced R?")
#> R was primarily influenced by the S programming language, particularly S-PLUS.
#> Other languages that had an impact include Scheme and various data analysis
#> languages.
```

If you initialize the chat object in the global environment, the `chat` method will stream the response to the console. When the entire response is received, it's also (invisibly) returned as a character vector. This is useful when you want to see the response as it arrives, but you don't want to enter the chat console.

If you want to ask a question about an image, you can pass one or more additional input arguments using `content_image_file()` and/or `content_image_url()`:

```{r}
#| eval: false

chat$chat(
  content_image_url("https://www.r-project.org/Rlogo.png"),
  "Can you explain this logo?"
)
#> The logo of R features a stylized letter "R" in blue, enclosed in an oval
#> shape that resembles the letter "O," signifying the programming language's
#> name. The design conveys a modern and professional look, reflecting its use
#> in statistical computing and data analysis. The blue color often represents
#> trust and reliability, which aligns with R's role in data science.
```

### Programmatic chat

The most programmatic way to chat is to create the chat object inside a function. By doing so, live streaming is automatically suppressed and `$chat()` returns the result as a string:

```{r}
#| eval: false

my_function <- function() {
  chat <- chat_openai(
    model = "gpt-4o-mini",
    system_prompt = "You are a friendly but terse assistant.",
  )
  chat$chat("Is R a functional programming language?")
}
my_function()
#> [1] "Yes, R supports functional programming concepts. It allows functions to
#> be first-class objects, supports higher-order functions, and encourages the
#> use of functions as core components of code. However, it also supports
#> procedural and object-oriented programming styles."
```

If needed, you can manually control this behaviour with the `echo` argument. This is useful for programming with ellmer when the result is either not intended for human consumption or when you want to process the response before displaying it.

## Learning more

ellmer comes with a bunch of vignettes to help you learn more:

* Learn key vocabulary and see example use cases in `vignette("ellmer")`.
* Learn how to design your prompt in `vignette("prompt-design")`.
* Learn about tool/function calling in `vignette("tool-calling")`.
* Learn how to extract structured data in `vignette("structured-data")`.
* Learn about streaming and async APIs in `vignette("streaming-async")`.
`````
