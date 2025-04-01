This file is a merged representation of a subset of the codebase, containing specifically included files and files not matching ignore patterns, combined into a single document by Repomix. The content has been processed where line numbers have been added, content has been formatted for parsing.

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
- Only files matching these patterns are included: R/**/*, src/**/*, inst/**/*, man/**/*.Rd, data-raw/**/*.R, data/**/*.rda, vignettes/**/*.Rmd, DESCRIPTION, NAMESPACE, README.md, NEWS.md
- Files matching these patterns are excluded: .Rproj.user/**, *.Rproj, .Rhistory, .RData, .Ruserdata, *.rds, *.Rproj, *.o, *.so, *.dll, *.Rcheck/**, docs/**, *.tar.gz, *.qs, *.log, *.tmp, temp/**, dev/**, config.yml
- Files matching patterns in .gitignore are excluded
- Files matching default ignore patterns are excluded
- Line numbers have been added to the beginning of each line
- Content has been formatted for parsing in markdown style

## Additional Info

# Directory Structure
```
data-raw/exported.R
data-raw/internal.R
data-raw/scripts/base_urls.R
data-raw/scripts/providers.R
DESCRIPTION
inst/config/.gitignore
inst/config/config.template.yml
inst/database/extensions/pgai.sql
inst/database/extensions/pgvector.sql
inst/database/noclocksai.database.dbml
inst/database/noclocksai.database.sql
inst/database/README.md
inst/database/schemas/noclocks/functions/noclocks.find_similar_documents.sql
inst/database/schemas/noclocks/functions/noclocks.update_query_cache.sql
inst/database/schemas/noclocks/functions/noclocks.update_timestamp.sql
inst/database/schemas/noclocks/noclocks.schema.sql
inst/database/schemas/noclocks/tables/noclocks.documents.sql
inst/database/schemas/noclocks/tables/noclocks.query_cache.sql
inst/database/schemas/noclocks/triggers/update_documents_timestamp.trigger.sql
inst/database/schemas/public/functions/public.update_timestamp.sql
inst/extdata/documents/Anthropic-Building-Effective-AI-Agents-Comprehensive-Analysis.md
inst/extdata/documents/example-markdown.md
inst/prompts/anomaly-detection/system.prompt.md
inst/prompts/code_analysis/system.prompt.md
inst/prompts/default.system.prompt.md
inst/prompts/default/system.prompt.md
inst/prompts/document_dataset/system.prompt.md
inst/prompts/document_dataset/user.prompt.md
inst/prompts/eda/system.prompt.md
inst/prompts/eda/user.prompt.md
inst/prompts/empty.prompt.md
inst/prompts/enhance_markdown/user.prompt.md
inst/prompts/explain_code/system.prompt.md
inst/prompts/git-commit/system.prompt.md
inst/prompts/git-commit/user.prompt.md
inst/prompts/gmaps.geocode.user.prompt.md
inst/prompts/gmaps.places.user.prompt.md
inst/prompts/gmaps.system.prompt.md
inst/prompts/mermaid/system.prompt.md
inst/prompts/mermaid/user.prompt.md
inst/prompts/parse_unstructured_data/system.prompt.md
inst/prompts/parse_unstructured_data/user.prompt.md
inst/prompts/pkgdown.system.prompt.md
inst/prompts/pkgdown.user.prompt.md
inst/prompts/sql2text/system.prompt.md
inst/prompts/synthetic_data/system.prompt.md
inst/templates/repomix/repomix-instructions.md
inst/templates/repomix/repomix.config.template.json
inst/templates/repomix/repomixignore
inst/WORDLIST
man/apis.Rd
man/cache.Rd
man/checks.Rd
man/config.Rd
man/create_config_template.Rd
man/create_mermaid_diagram.Rd
man/db_connect.Rd
man/db_get_documents.Rd
man/db_preload_documents.Rd
man/db_store_document.Rd
man/eda_agent.Rd
man/embeddings.Rd
man/encode_base64.Rd
man/encode_data.Rd
man/encrypt_config.Rd
man/execute_r_code.Rd
man/extract_and_format_code.Rd
man/extract_code_blocks.Rd
man/extract_code.Rd
man/firecrawl.Rd
man/format_code.Rd
man/geocode.Rd
man/get_regex_code_pattern.Rd
man/get_weather.Rd
man/git_agent.Rd
man/gmaps_extract_place_info.Rd
man/gmaps_find_best_match.Rd
man/gmaps_geocode_address.Rd
man/gmaps_places_search.Rd
man/initialize_chat.Rd
man/langfuse.Rd
man/lf_add_dataset_item.Rd
man/lf_add_dataset.Rd
man/lf_add_feedback.Rd
man/lf_add_prompt.Rd
man/lf_client.Rd
man/lf_create_evaluation.Rd
man/lf_create_generation_event.Rd
man/lf_create_observation.Rd
man/lf_create_score_event.Rd
man/lf_create_session.Rd
man/lf_create_trace_event.Rd
man/lf_get_prompt.Rd
man/lf_ingestion.Rd
man/lf_run_experiment.Rd
man/lf_trace_chat_session.Rd
man/lf_trace_chat.Rd
man/merge_code_blocks.Rd
man/mermaid_agent.Rd
man/models.Rd
man/noclocksai-package.Rd
man/npx.Rd
man/pkg_sys.Rd
man/prompts.Rd
man/register_tool.Rd
man/repomix.Rd
man/tools.Rd
man/trim_code.Rd
man/types.Rd
man/write_code_to_file.Rd
NAMESPACE
R/agents.R
R/apis.R
R/cache.R
R/chats.R
R/checks.R
R/config.R
R/db.R
R/document.R
R/eda.R
R/embed.R
R/encode.R
R/execute.R
R/extract.R
R/firecrawl.R
R/gmaps.R
R/import-standalone-obj-type.R
R/import-standalone-types-check.R
R/langfuse.R
R/mermaid.R
R/models.R
R/noclocksai-package.R
R/npx.R
R/parallel.R
R/pkgdown.R
R/prompts.R
R/repomix.R
R/templates.R
R/tools.R
R/types.R
R/utils.R
R/zzz.R
README.md
vignettes/examples.Rmd
vignettes/noclocksai.Rmd
```

# Files

## File: data-raw/exported.R
`````r
1: #  ------------------------------------------------------------------------
2: #
3: # Title : Exported Data Preparation
4: #    By : Jimmy Briggs
5: #  Date : 2025-03-03
6: #
7: #  ------------------------------------------------------------------------
8: 
9: # usethis::use_data(, overwrite = TRUE)
`````

## File: data-raw/internal.R
`````r
 1: #  ------------------------------------------------------------------------
 2: #
 3: # Title : Internal Data Preparation
 4: #    By : Jimmy Briggs
 5: #  Date : 2025-03-03
 6: #
 7: #  ------------------------------------------------------------------------
 8: 
 9: source("data-raw/scripts/providers.R")
10: source("data-raw/scripts/base_urls.R")
11: 
12: usethis::use_data(
13:   providers,
14:   provider_base_urls,
15:   internal = TRUE,
16:   overwrite = TRUE,
17:   version = 3
18: )
`````

## File: data-raw/scripts/base_urls.R
`````r
 1: #  ------------------------------------------------------------------------
 2: #
 3: # Title : API Base URLs
 4: #    By : Jimmy Briggs
 5: #  Date : 2025-03-09
 6: #
 7: #  ------------------------------------------------------------------------
 8: 
 9: # openai ----------------------------------------------------------------------------------------------------------
10: openai_base_urls <- list(
11:   base = "https://api.openai.com/v1",
12:   models = "https://api.openai.com/v1/models",
13:   chat = "https://api.openai.com/v1/chat",
14:   chat_completions = "https://api.openai.com/v1/chat/completions",
15:   completions = "https://api.openai.com/v1/completions",
16:   embeddings = "https://api.openai.com/v1/embeddings",
17:   fine_tuning = "https://api.openai.com/v1/fine_tuning"
18: )
19: 
20: # anthropic -------------------------------------------------------------------------------------------------------
21: anthropic_base_urls <- list(
22:   models = "https://api.anthropic.com/v1/models",
23:   messages = "https://api.anthropic.com/v1/messages",
24:   messages_batch = "https://api.anthropic.com/v1/messages/batch"
25: )
26: 
27: # gemini ---------------------------------------------------------------------------------------------------------
28: gemini_base_urls <- list(
29:   base = "https://generativelanguage.googleapis.com/v1beta/",
30:   models = "https://generativelanguage.googleapis.com/v1beta/models"
31: )
32: 
33: 
34: # ollama ----------------------------------------------------------------------------------------------------------
35: 
36: ollama_base_urls <- list(
37:   base = "http://localhost:11434/api/",
38:   embeddings = "http://localhost:11434/api/embed"
39: )
40: 
41: # merge -----------------------------------------------------------------------------------------------------------
42: 
43: provider_base_urls <- list(
44:   openai = openai_base_urls,
45:   anthropic = anthropic_base_urls,
46:   gemini = gemini_base_urls,
47:   ollama = ollama_base_urls
48: )
49: 
50: # cleanup ---------------------------------------------------------------------------------------------------------
51: rm(
52:   openai_base_urls,
53:   anthropic_base_urls,
54:   gemini_base_urls,
55:   ollama_base_urls
56: )
57: 
58: cli::cli_alert_success("Succssfully prepared {.field provider_base_urls}.")
`````

## File: data-raw/scripts/providers.R
`````r
 1: #  ------------------------------------------------------------------------
 2: #
 3: # Title : AI Providers
 4: #    By : Jimmy Briggs
 5: #  Date : 2025-03-09
 6: #
 7: #  ------------------------------------------------------------------------
 8: 
 9: providers <- c(
10:   "openai",
11:   "anthropic",
12:   "gemini",
13:   "github",
14:   "groq",
15:   "ollama",
16:   "openrouter",
17:   "perplexity",
18:   "deepseek",
19:   "bedrock",
20:   "meta"
21: )
22: 
23: cli::cli_alert_success("Succssfully prepared {.field providers}.")
`````

## File: DESCRIPTION
`````
 1: Package: noclocksai
 2: Title: No Clocks AI
 3: Version: 0.0.0.9000
 4: Authors@R: c(
 5:     person("Jimmy", "Briggs", , "jimmy.briggs@jimbrig.com", role = c("aut", "cre"),
 6:            comment = c(ORCID = "0000-0002-7489-8787")),
 7:     person("Patrick", "Howard", , "patrick.howard@noclocks.dev", role = c("aut", "rev")),
 8:     person("No Clocks, LLC", , , "team@noclocks.dev", role = c("cph", "fnd"))
 9:   )
10: Description: The `noclocksai` package provides a set of tools for working
11:     with AI at No Clocks, LLC.
12: License: file LICENSE
13: URL: https://github.com/noclocks/noclocksai
14: BugReports: https://github.com/noclocks/noclocksai/issues
15: Depends: 
16:     R (>= 4.1)
17: Imports: 
18:     base64enc,
19:     cachem,
20:     cli,
21:     config,
22:     DBI,
23:     dm,
24:     dplyr,
25:     ellmer,
26:     evaluate,
27:     formatR,
28:     fs,
29:     future,
30:     glue,
31:     googleway,
32:     httr2,
33:     jsonlite,
34:     listviewer,
35:     lubridate,
36:     memoise,
37:     parallel,
38:     pkgload,
39:     pool,
40:     processx,
41:     purrr,
42:     qs2,
43:     R6,
44:     rappdirs,
45:     readr,
46:     rlang (>= 1.1.0),
47:     RPostgres,
48:     S7,
49:     skimr,
50:     snakecase,
51:     stats,
52:     stringr,
53:     tibble,
54:     tidyselect,
55:     utils,
56:     uuid,
57:     whisker,
58:     withr,
59:     yaml
60: Suggests: 
61:     DiagrammeR,
62:     knitr,
63:     rmarkdown,
64:     spelling,
65:     testthat (>= 3.0.0)
66: VignetteBuilder: 
67:     knitr
68: Config/testthat/edition: 3
69: Encoding: UTF-8
70: Language: en-US
71: Roxygen: list(markdown = TRUE)
72: RoxygenNote: 7.3.2
73: SystemRequirements: npm, npx
`````

## File: inst/config/.gitignore
`````
1: *
2: !.gitignore
3: !*.encrypted.yml
4: !*.template.yml
5: !*.md
6: !*.R
7: !config.d/
`````

## File: inst/config/config.template.yml
`````yaml
 1: default:
 2:   llms:
 3:     openai_api_key: "<OPENAI_API_KEY>"
 4:     anthropic_api_key: "<ANTHROPIC_API_KEY>"
 5:     gemini_api_key: "<GEMINI_API_KEY>"
 6:     perplexity_api_key: "<PERPLEXITY_API_KEY>"
 7:     groq_api_key: "<GROQ_API_KEY>"
 8:     openrouter_api_key: "<OPENROUTER_API_KEY>"
 9:   db:
10:     host: "<HOST>"
11:     dbname: "<DBNAME>"
12:     user: "<USER>"
13:     password: "<PASSWORD>"
14:     port: "<PORT>"
15:     sslmode: "<SSLMODE>"
16:     uri: "<URI>"
17:   tools:
18:     gmaps_api_key: "<GMAPS_API_KEY>"
19:     hunterio_api_key: "<HUNTERIO_API_KEY>"
20:     anymailfinder_api_key: "<ANYMAILFINDER_API_KEY>"
21:     attom_api_key: "<ATTOM_API_KEY>"
22:     search_api_key: "<SEARCH_API_KEY>"
23:     serp_api_key: "<SERP_API_KEY>"
24:     tavily_api_key: "<TAVILY_API_KEY>"
`````

## File: inst/database/extensions/pgai.sql
`````sql
1: CREATE EXTENSION IF NOT EXISTS ai CASCADE;
`````

## File: inst/database/extensions/pgvector.sql
`````sql
1: CREATE EXTENSION IF NOT EXISTS vector;
`````

## File: inst/database/noclocksai.database.dbml
`````
  1: Enum "auth"."confirmation_status" {
  2:   "Unconfirmed"
  3:   "Pending"
  4:   "Expired"
  5:   "Confirmed"
  6: }
  7: 
  8: Enum "auth"."hash_algorithms" {
  9:   "pbkdf2"
 10:   "argon2id"
 11:   "scrypt"
 12:   "bcrypt"
 13:   "sha256"
 14:   "sha512"
 15:   "md5"
 16: }
 17: 
 18: Table "auth"."accounts" {
 19:   "id" uuid [pk, not null, default: `gen_random_uuid()`, note: 'Primary key as a UUID generated by gen_random_uuid()']
 20:   "tenant_id" uuid [note: 'Foreign key reference to the tenants table']
 21:   "name" text [not null, note: 'Name of the account within the tenant']
 22:   "status" text [not null, default: 'active', note: 'Status of the account (e.g., active, inactive, suspended)']
 23:   "created_at" timestamptz [default: `now()`, note: 'Timestamp when the account was created']
 24:   "modified_at" timestamptz [default: `now()`, note: 'Timestamp when the account was last modified']
 25:   Note: 'Represents accounts under a tenant organization'
 26: }
 27: 
 28: Table "auth"."api_keys" {
 29:   "id" uuid [pk, not null, default: `gen_random_uuid()`, note: 'Primary key as a UUID generated by gen_random_uuid()']
 30:   "user_id" uuid [note: 'Foreign key reference to the users table']
 31:   "tenant_id" uuid [note: 'Foreign key reference to the tenants table']
 32:   "key" text [unique, not null, note: 'Unique API key']
 33:   "expires_at" timestamptz [note: 'Expiration timestamp for the API key']
 34:   "created_at" timestamptz [default: `now()`, note: 'Timestamp when the API key was created']
 35:   Note: 'Stores API keys for programmatic access'
 36: }
 37: 
 38: Table "auth"."apps" {
 39:   "id" uuid [pk, not null, default: `gen_random_uuid()`, note: 'Primary key as a UUID generated by gen_random_uuid()']
 40:   "tenant_id" uuid [note: 'Foreign key reference to the tenants table']
 41:   "owner_id" uuid [note: 'Reference to the owner of the application']
 42:   "name" text [not null, note: 'Name of the application']
 43:   "description" text [note: 'Detailed description of the application']
 44:   "client_id" text [unique, note: 'Unique client identifier for OAuth']
 45:   "client_secret" text [note: 'Client secret for OAuth authentication']
 46:   "redirect_uri" text [note: 'Redirect URI for OAuth']
 47:   "created_at" timestamptz [default: `now()`, note: 'Timestamp when the application was created']
 48:   "modified_at" timestamptz [default: `now()`, note: 'Timestamp when the application was last modified']
 49:   Note: 'Manages applications within a tenant organization'
 50: }
 51: 
 52: Table "auth"."auth_templates" {
 53:   "id" uuid [pk, not null, default: `gen_random_uuid()`, note: 'Primary key as a UUID generated by gen_random_uuid()']
 54:   "brand_id" uuid [note: 'Reference to the associated brand for styling']
 55:   "tenant_id" uuid [note: 'Foreign key reference to the tenants table']
 56:   "name" text [unique, not null, note: 'Unique name for the authentication template']
 57:   "content" text [not null, note: 'HTML or templated content for the authentication page']
 58:   "created_at" timestamptz [default: `now()`, note: 'Timestamp when the template was created']
 59:   "modified_at" timestamptz [default: `now()`, note: 'Timestamp when the template was last modified']
 60:   Note: 'Stores reusable templates for authentication pages'
 61: }
 62: 
 63: Table "auth"."brands" {
 64:   "id" uuid [pk, not null, default: `gen_random_uuid()`, note: 'Primary key as a UUID generated by gen_random_uuid()']
 65:   "tenant_id" uuid [note: 'Foreign key reference to the tenants table']
 66:   "brandfetch_id" text [note: 'Unique identifier from Brandfetch API']
 67:   "domain_id" uuid [note: 'Reference to the associated domain']
 68:   "name" text [not null, note: 'Brand name']
 69:   "description" text [note: 'Brand description']
 70:   "company" jsonb [note: 'JSONB field containing details like company size, tagline']
 71:   "industries" jsonb [note: 'Array of industries associated with the brand']
 72:   "links" jsonb [note: 'JSONB field containing links to brand’s website and social media']
 73:   "logos" jsonb [note: 'JSONB field for brand logos']
 74:   "colors" jsonb [note: 'JSONB field for brand colors']
 75:   "fonts" jsonb [note: 'JSONB field for font specifications']
 76:   "styles" jsonb [note: 'JSONB field for additional CSS or branding styles']
 77:   "created_at" timestamptz [default: `now()`, note: 'Timestamp when the brand record was created']
 78:   "modified_at" timestamptz [default: `now()`, note: 'Timestamp when the brand record was last modified']
 79:   Note: 'Stores branding details for tenant-specific configurations'
 80: }
 81: 
 82: Table "auth"."domains" {
 83:   "id" uuid [pk, not null, default: `gen_random_uuid()`, note: 'Primary key as a UUID generated by gen_random_uuid()']
 84:   "domain_name" text [unique, not null, note: 'Unique domain name associated with a tenant']
 85:   "branding" jsonb [note: 'JSONB field for optional branding configurations']
 86:   "email_settings" jsonb [note: 'JSONB field for email configuration settings like SMTP, DKIM']
 87:   "auth_settings" jsonb [note: 'JSONB field for authentication settings (e.g., SSO)']
 88:   "seo_settings" jsonb [note: 'SEO-related configurations stored as JSONB']
 89:   "is_default" bool [default: false, note: 'Boolean indicating if this domain is the default for its tenant']
 90:   "created_at" timestamptz [default: `now()`, note: 'Timestamp when the domain was created']
 91:   "modified_at" timestamptz [default: `now()`, note: 'Timestamp when the domain was last modified']
 92:   Note: 'Stores domain-specific configurations and branding options for tenants'
 93: }
 94: 
 95: Table "auth"."email_templates" {
 96:   "id" uuid [pk, not null, default: `gen_random_uuid()`, note: 'Primary key as a UUID generated by gen_random_uuid()']
 97:   "brand_id" uuid [note: 'Reference to the associated brand']
 98:   "tenant_id" uuid [note: 'Foreign key reference to the tenants table']
 99:   "name" text [unique, not null, note: 'Unique name for the email template']
100:   "subject" text [not null, note: 'Subject line for the email template']
101:   "body_html" text [not null, note: 'HTML content of the email template']
102:   "body_text" text [note: 'Plain text content of the email template']
103:   "created_at" timestamptz [default: `now()`, note: 'Timestamp when the template was created']
104:   "modified_at" timestamptz [default: `now()`, note: 'Timestamp when the template was last modified']
105:   Note: 'Defines reusable email templates'
106: }
107: 
108: Table "auth"."emails" {
109:   "id" uuid [pk, not null, default: `gen_random_uuid()`, note: 'Primary key as a UUID generated by gen_random_uuid()']
110:   "user_id" uuid [note: 'Foreign key reference to the users table']
111:   "tenant_id" uuid [note: 'Foreign key reference to the tenants table']
112:   "to_email" text [not null, note: 'Recipient email address']
113:   "from_email" text [not null, note: 'Sender email address']
114:   "subject" text [not null, note: 'Email subject line']
115:   "body_html" text [note: 'HTML content of the email']
116:   "body_text" text [note: 'Plain text content of the email']
117:   "status" email_status [not null, default: 'pending', note: 'Delivery status of the email (e.g., pending, sent, bounced)']
118:   "email_template_id" uuid [note: 'Reference to the email template used']
119:   "resend_url" text [note: 'URL to resend the email if needed']
120:   "sent_at" timestamptz [default: `now()`, note: 'Timestamp when the email was sent']
121:   "created_at" timestamptz [default: `now()`, note: 'Timestamp when the email record was created']
122:   Note: 'Tracks sent emails with references to templates and delivery status'
123: }
124: 
125: Table "auth"."errors" {
126:   "id" uuid [pk, not null, default: `gen_random_uuid()`, note: 'Primary key as a UUID generated by gen_random_uuid()']
127:   "tenant_id" uuid [note: 'Foreign key reference to the tenants table']
128:   "user_id" uuid [note: 'Foreign key reference to the users table']
129:   "error_type" text [not null, note: 'Type of error (e.g., email_failure, auth_failure)']
130:   "message" text [not null, note: 'Error message describing the issue']
131:   "details" jsonb [note: 'Additional details about the error in JSONB format']
132:   "occurred_at" timestamptz [default: `now()`, note: 'Timestamp when the error occurred']
133:   Note: 'Captures system errors for debugging and diagnostics'
134: }
135: 
136: Table "auth"."logs" {
137:   "id" uuid [pk, not null, default: `gen_random_uuid()`, note: 'Primary key as a UUID generated by gen_random_uuid()']
138:   "tenant_id" uuid [note: 'Foreign key reference to the tenants table']
139:   "user_id" uuid [note: 'Foreign key reference to the users table']
140:   "action" text [not null, note: 'Description of the action performed']
141:   "details" text [note: 'Additional details about the action']
142:   "object_id" uuid [note: 'Reference to the ID of the affected object']
143:   "object_type" text [note: 'Type of the affected object (e.g., email, user)']
144:   "ip_address" inet [note: 'IP address of the user performing the action']
145:   "user_agent" text [note: 'User agent string of the browser/device']
146:   "created_at" timestamptz [default: `now()`, note: 'Timestamp when the log entry was created']
147:   Note: 'Tracks user actions and system events for auditing and diagnostics'
148: }
149: 
150: Table "auth"."notifications" {
151:   "id" uuid [pk, not null, default: `gen_random_uuid()`, note: 'Primary key as a UUID generated by gen_random_uuid()']
152:   "user_id" uuid [note: 'Foreign key reference to the users table']
153:   "message" text [not null, note: 'Notification message']
154:   "read" bool [default: false, note: 'Read status of the notification']
155:   "created_at" timestamptz [default: `now()`, note: 'Timestamp when the notification was created']
156: 
157:   Indexes {
158:     user_id [type: btree, name: "notifications_user_id_idx"]
159:   }
160:   Note: 'Stores user notifications'
161: }
162: 
163: Table "auth"."permissions" {
164:   "id" uuid [pk, not null, default: `gen_random_uuid()`, note: 'Primary key as a UUID generated by gen_random_uuid()']
165:   "name" text [unique, not null, note: 'Unique name for each permission']
166:   "description" text [note: 'Detailed description of the permission']
167:   Note: 'Defines various permissions for role-based access control'
168: }
169: 
170: Table "auth"."profiles" {
171:   "user_id" uuid [pk, not null, note: 'Primary key and foreign key to the users table']
172:   "first_name" text [note: 'First name of the user']
173:   "last_name" text [note: 'Last name of the user']
174:   "avatar_url" text [note: '''URL to the user\'s avatar image''']
175:   "bio" text [note: 'Biography or description of the user']
176:   "preferences" jsonb [note: 'JSONB field for user preferences, e.g., theme or language']
177:   "metadata" jsonb [note: 'JSONB field for additional metadata']
178:   "created_at" timestamptz [default: `now()`, note: 'Timestamp when the profile was created']
179:   "modified_at" timestamptz [default: `now()`, note: 'Timestamp when the profile was last modified']
180:   Note: 'Stores non-sensitive profile information for each user'
181: }
182: 
183: Table "auth"."rate_limits" {
184:   "id" uuid [pk, not null, default: `gen_random_uuid()`]
185:   "tenant_id" uuid [not null]
186:   "limit_type" varchar [not null]
187:   "limit_path" varchar [not null, default: '/']
188:   "limit_period" int4 [not null]
189:   "limit_threshold" int4 [not null]
190:   "limit_window_start" timestamptz [not null]
191:   "limit_requests_count" int4 [not null, default: 0]
192:   "created_at" timestamptz [not null, default: `now()`]
193:   "modified_at" timestamptz [not null, default: `now()`]
194: }
195: 
196: Table "auth"."role_permissions" {
197:   "role_id" uuid [not null, note: 'Foreign key reference to the roles table']
198:   "permission_id" uuid [not null, note: 'Foreign key reference to the permissions table']
199:   "created_at" timestamptz [default: `now()`, note: 'Timestamp when the role-permission association was created']
200: 
201:   Indexes {
202:     (role_id, permission_id) [type: btree, name: "role_permissions_pkey"]
203:   }
204:   Note: 'Associates roles with permissions for role-based access control'
205: }
206: 
207: Table "auth"."roles" {
208:   "id" uuid [pk, not null, default: `gen_random_uuid()`, note: 'Primary key as a UUID generated by gen_random_uuid()']
209:   "tenant_id" uuid [note: 'Foreign key reference to the tenants table']
210:   "name" text [unique, not null, note: 'Name of the role (e.g., Admin, User)']
211:   "description" text [note: '''Description of the role\'s purpose and permissions''']
212:   "created_at" timestamptz [default: `now()`, note: 'Timestamp when the role was created']
213:   Note: 'Defines roles within the tenant for access control'
214: }
215: 
216: Table "auth"."scheduled_tasks" {
217:   "id" uuid [pk, not null, default: `gen_random_uuid()`, note: 'Primary key as a UUID generated by gen_random_uuid()']
218:   "tenant_id" uuid
219:   "task_name" text [not null, note: 'Name of the scheduled task']
220:   "description" text [note: 'Detailed description of the scheduled task']
221:   "task_type" text [not null, note: 'Type of task (e.g., email, cleanup)']
222:   "scheduled_for" timestamptz [not null, note: 'Scheduled timestamp for task execution']
223:   "status" text [not null, default: 'pending', note: 'Status of the scheduled task (e.g., pending, completed)']
224:   "details" jsonb [note: 'Additional details about the task in JSONB format']
225:   "created_at" timestamptz [default: `now()`, note: 'Timestamp when the task was created']
226:   Note: 'Stores details of system tasks and schedules them for execution'
227: }
228: 
229: Table "auth"."service_accounts" {
230:   "id" uuid [pk, not null, default: `gen_random_uuid()`, note: 'Primary key as a UUID generated by gen_random_uuid()']
231:   "tenant_id" uuid [note: 'Foreign key reference to the tenants table']
232:   "name" text [not null, note: 'Name of the service account']
233:   "description" text [note: 'Description of the service account']
234:   "api_key_id" uuid [note: 'Reference to the API key used by this service account']
235:   "created_at" timestamptz [default: `now()`, note: 'Timestamp when the service account was created']
236:   Note: 'Stores service accounts for automated or programmatic access'
237: }
238: 
239: Table "auth"."sessions" {
240:   "id" uuid [pk, not null, default: `gen_random_uuid()`, note: 'Primary key as a UUID generated by gen_random_uuid()']
241:   "user_id" uuid [note: 'Foreign key reference to the users table']
242:   "tenant_id" uuid [note: 'Foreign key reference to the tenants table']
243:   "session_token" text [unique, not null, note: 'Unique token for session identification']
244:   "created_at" timestamptz [default: `now()`, note: 'Timestamp when the session was created']
245:   "expires_at" timestamptz [not null, note: 'Expiration timestamp for the session']
246:   Note: 'Tracks active user sessions for authentication'
247: }
248: 
249: Table "auth"."tenants" {
250:   "id" uuid [pk, not null, default: `gen_random_uuid()`, note: 'Primary key as a UUID generated by gen_random_uuid()']
251:   "name" text [unique, not null, note: 'Unique name for the tenant organization']
252:   "description" text [note: 'Detailed description of the tenant']
253:   "domain_id" uuid [note: 'Optional foreign key reference to the domains table']
254:   "created_at" timestamptz [default: `now()`, note: 'Timestamp when the tenant was created']
255:   "modified_at" timestamptz [default: `now()`, note: 'Timestamp when the tenant was last modified']
256:   Note: 'Stores tenant organizations with optional domain association'
257: }
258: 
259: Table "auth"."user_roles" {
260:   "user_id" uuid [not null, note: 'Foreign key reference to the users table']
261:   "role_id" uuid [not null, note: 'Foreign key reference to the roles table']
262:   "created_at" timestamptz [default: `now()`, note: 'Timestamp when the user-role association was created']
263: 
264:   Indexes {
265:     (user_id, role_id) [type: btree, name: "user_roles_pkey"]
266:   }
267:   Note: 'Associates users with roles for role-based access control'
268: }
269: 
270: Table "auth"."user_settings" {
271:   "user_id" uuid [pk, not null, note: 'Primary key and foreign key to the users table']
272:   "settings" jsonb [note: 'JSONB field containing customizable user settings']
273:   "created_at" timestamptz [default: `now()`, note: 'Timestamp when the settings were created']
274:   "modified_at" timestamptz [default: `now()`, note: 'Timestamp when the settings were last modified']
275:   Note: 'Stores customizable settings for each user as JSONB'
276: }
277: 
278: Table "auth"."users" {
279:   "id" uuid [pk, not null, default: `gen_random_uuid()`, note: 'Primary key as a UUID generated by gen_random_uuid()']
280:   "tenant_id" uuid [note: 'Foreign key reference to the tenants table']
281:   "email" text [unique, not null, note: 'Unique email address for the user']
282:   "status" user_status [not null, default: 'invited', note: 'Status of the user (e.g., invited, active, verified)']
283:   "invited_by" uuid [note: 'Reference to the user who sent the invitation']
284:   "last_login_at" timestamptz [note: 'Timestamp of the last login']
285:   "last_password_reset_at" timestamptz [note: 'Timestamp of the last password reset']
286:   "created_at" timestamptz [default: `now()`, note: 'Timestamp when the user was created']
287:   "modified_at" timestamptz [default: `now()`, note: 'Timestamp when the user was last modified']
288:   "deleted_at" timestamptz [note: 'Timestamp when the user was soft deleted']
289: 
290:   Indexes {
291:     tenant_id [type: btree, name: "users_tenant_id_idx"]
292:   }
293:   Note: 'Stores primary user information with status and invitation tracking'
294: }
295: 
296: Enum "account_status" {
297:   "created"
298:   "active"
299:   "idle"
300:   "inactive"
301:   "pending"
302:   "archived"
303: }
304: 
305: Enum "email_status" {
306:   "pending"
307:   "sent"
308:   "bounced"
309: }
310: 
311: Enum "user_status" {
312:   "invited"
313:   "active"
314:   "verified"
315:   "suspended"
316: }
317: 
318: Table "documents" {
319:   "id" int4 [pk, not null, increment]
320:   "title" text [not null]
321:   "content" text [not null]
322:   "metadata" jsonb [default: `{}`]
323:   "embedding" public.vector
324:   "created_at" timestamptz [default: `CURRENT_TIMESTAMP`]
325:   "updated_at" timestamptz [default: `CURRENT_TIMESTAMP`]
326: }
327: 
328: Ref "fk_accounts_tenant":"auth"."tenants"."id" < "auth"."accounts"."tenant_id" [delete: cascade]
329: 
330: Ref "fk_api_keys_tenant":"auth"."tenants"."id" < "auth"."api_keys"."tenant_id" [delete: cascade]
331: 
332: Ref "fk_api_keys_user":"auth"."users"."id" < "auth"."api_keys"."user_id" [delete: cascade]
333: 
334: Ref "fk_apps_owner":"auth"."users"."id" < "auth"."apps"."owner_id" [delete: set null]
335: 
336: Ref "fk_apps_tenant":"auth"."tenants"."id" < "auth"."apps"."tenant_id" [delete: cascade]
337: 
338: Ref "fk_auth_templates_brand":"auth"."brands"."id" < "auth"."auth_templates"."brand_id" [delete: cascade]
339: 
340: Ref "fk_auth_templates_tenant":"auth"."tenants"."id" < "auth"."auth_templates"."tenant_id" [delete: cascade]
341: 
342: Ref "fk_brands_domain":"auth"."domains"."id" < "auth"."brands"."domain_id" [delete: set null]
343: 
344: Ref "fk_brands_tenant":"auth"."tenants"."id" < "auth"."brands"."tenant_id" [delete: cascade]
345: 
346: Ref "fk_email_templates_brand":"auth"."brands"."id" < "auth"."email_templates"."brand_id" [delete: cascade]
347: 
348: Ref "fk_email_templates_tenant":"auth"."tenants"."id" < "auth"."email_templates"."tenant_id" [delete: cascade]
349: 
350: Ref "fk_emails_template":"auth"."email_templates"."id" < "auth"."emails"."email_template_id" [delete: set null]
351: 
352: Ref "fk_emails_tenant":"auth"."tenants"."id" < "auth"."emails"."tenant_id" [delete: cascade]
353: 
354: Ref "fk_emails_user":"auth"."users"."id" < "auth"."emails"."user_id" [delete: cascade]
355: 
356: Ref "fk_errors_tenant":"auth"."tenants"."id" < "auth"."errors"."tenant_id" [delete: cascade]
357: 
358: Ref "fk_errors_user":"auth"."users"."id" < "auth"."errors"."user_id" [delete: set null]
359: 
360: Ref "fk_logs_tenant":"auth"."tenants"."id" < "auth"."logs"."tenant_id" [delete: cascade]
361: 
362: Ref "fk_logs_user":"auth"."users"."id" < "auth"."logs"."user_id" [delete: set null]
363: 
364: Ref "fk_profiles_user":"auth"."users"."id" < "auth"."profiles"."user_id" [delete: cascade]
365: 
366: Ref "fk_role_permissions_permission":"auth"."permissions"."id" < "auth"."role_permissions"."permission_id" [delete: cascade]
367: 
368: Ref "fk_role_permissions_role":"auth"."roles"."id" < "auth"."role_permissions"."role_id" [delete: cascade]
369: 
370: Ref "fk_roles_tenant":"auth"."tenants"."id" < "auth"."roles"."tenant_id" [delete: cascade]
371: 
372: Ref "fk_scheduled_tasks_tenant":"auth"."tenants"."id" < "auth"."scheduled_tasks"."tenant_id" [delete: cascade]
373: 
374: Ref "fk_service_accounts_api_key":"auth"."api_keys"."id" < "auth"."service_accounts"."api_key_id" [delete: set null]
375: 
376: Ref "fk_service_accounts_tenant":"auth"."tenants"."id" < "auth"."service_accounts"."tenant_id" [delete: cascade]
377: 
378: Ref "fk_sessions_tenant":"auth"."tenants"."id" < "auth"."sessions"."tenant_id" [delete: cascade]
379: 
380: Ref "fk_sessions_user":"auth"."users"."id" < "auth"."sessions"."user_id" [delete: cascade]
381: 
382: Ref "fk_tenants_domain":"auth"."domains"."id" < "auth"."tenants"."domain_id" [delete: set null]
383: 
384: Ref "fk_user_roles_role":"auth"."roles"."id" < "auth"."user_roles"."role_id" [delete: cascade]
385: 
386: Ref "fk_user_roles_user":"auth"."users"."id" < "auth"."user_roles"."user_id" [delete: cascade]
387: 
388: Ref "fk_user_settings_user":"auth"."users"."id" < "auth"."user_settings"."user_id" [delete: cascade]
389: 
390: Ref "fk_users_invited_by":"auth"."users"."id" < "auth"."users"."invited_by" [delete: set null]
391: 
392: Ref "fk_users_tenant":"auth"."tenants"."id" < "auth"."users"."tenant_id" [delete: cascade]
393: 
394: Table "neon_auth"."users_sync" {
395:   "raw_json" jsonb [not null]
396:   "id" text [pk, not null]
397:   "name" text
398:   "email" text
399:   "created_at" timestamptz
400:   "updated_at" timestamptz
401:   "deleted_at" timestamptz
402: 
403:   Indexes {
404:     deleted_at [type: btree, name: "users_sync_deleted_at_idx"]
405:   }
406: }
407: 
408: Table "noclocks"."documents" {
409:   "id" int4 [pk, not null, increment]
410:   "title" text [not null]
411:   "content" text [not null]
412:   "metadata" jsonb [default: `{}`]
413:   "embedding" public.vector
414:   "created_at" timestamptz [default: `CURRENT_TIMESTAMP`]
415:   "updated_at" timestamptz [default: `CURRENT_TIMESTAMP`]
416: }
417: 
418: Table "noclocks"."query_cache" {
419:   "id" int4 [pk, not null, increment]
420:   "qry_text" text [not null]
421:   "qry_embedding" public.vector
422:   "document_ids" "int4[]" [not null]
423:   "frequency" int4 [not null, default: 1]
424:   "last_accessed" timestamptz [default: `CURRENT_TIMESTAMP`]
425: }
`````

## File: inst/database/noclocksai.database.sql
`````sql
 1: /* SCHEMAS */
 2: CREATE SCHEAMA IF NOT EXISTS public;
 3: CREATE SCHEMA IF NOT EXISTS noclocks;
 4: CREATE SCHEMA IF NOT EXISTS ai;
 5: 
 6: 
 7: /* EXTENSIONS */
 8: 
 9: SET neon.allow_unstable_extensions='true';
10: 
11: CREATE EXTENSION IF NOT EXISTS pg_stat_statements CASCADE;
12: CREATE EXTENSION IF NOT EXISTS pgcrypto CASCADE;
13: CREATE EXTENSION IF NOT EXISTS ltree CASCADE;
14: CREATE EXTENSION IF NOT EXISTS hstore CASCADE;
15: CREATE EXTENSION IF NOT EXISTS pg_trgm CASCADE;
16: 
17: CREATE EXTENSION IF NOT EXISTS vector CASCADE;
18: CREATE EXTENSION IF NOT EXISTS pg_tiktoken CASCADE;
19: CREATE EXTENSION IF NOT EXISTS rag CASCADE;
20: CREATE EXTENSION IF NOT EXISTS rag_bge_small_en_v15 CASCADE;
21: CREATE EXTENSION IF NOT EXISTS rag_jina_reranker_v1_tiny_en CASCADE;
22: 
23: /* TABLES */
24: 
25: -- documents
26: DROP TABLE IF EXISTS noclocks.documents CASCADE;
27: 
28: CREATE TABLE documents (
29:   id INTEGER NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
30:   title TEXT NOT NULL,
31:   content TEXT NOT NULL,
32:   metadata JSONB DEFAULT '{}'::JSONB,
33:   created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
34:   updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
35: );
36: 
37: -- embeddings
38: DROP TABLE IF EXISTS embeddings CASCADE;
39: 
40: CREATE TABLE embeddings (
41:   id INTEGER NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
42:   document_id INTEGER NOT NULL REFERENCES documents(id),
43:   content_type TEXT,
44:   source TEXT,
45:   content TEXT,
46:   metadata JSONB DEFAULT '{}'::JSONB,
47:   chunk TEXT,
48:   tokens INTEGER,
49:   embedding VECTOR(1536) NOT NULL,
50:   created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
51:   updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
52: );
53: 
54: CREATE INDEX ON embeddings USING hnsw (embedding vector_cosine_ops) WITH (dim = 1536);
55: CREATE INDEX ON embeddings USING ivfflat (embedding vector_l2_ops) WITH (lists = 100);
56: 
57: -- Vector Index for Similarity Search
58: CREATE INDEX IF NOT EXISTS noclocks.documents_embedding_idx
59: ON noclocks.documents USING IVFFLAT (embedding vector_cosine_ops) WITH (dim = 1536);
60: 
61: -- GIN Index for JSONB metadata
62: CREATE INDEX IF NOT EXISTS noclocks.documents_metadata_idx
63: ON noclocks.documents USING GIN (metadata);
64: 
65: -- Comments
66: COMMENT ON TABLE noclocks.documents IS 'Documents table for storing documents';
67: COMMENT ON COLUMN noclocks.documents.id IS 'Unique identifier for the document';
68: COMMENT ON COLUMN noclocks.documents.title IS 'Title of the document';
69: COMMENT ON COLUMN noclocks.documents.content IS 'Content of the document';
70: COMMENT ON COLUMN noclocks.documents.metadata IS 'Metadata of the document';
71: COMMENT ON COLUMN noclocks.documents.embedding IS 'OpenAI CLIP embedding of the document';
72: COMMENT ON COLUMN noclocks.documents.created_at IS 'Timestamp when the document was created';
73: COMMENT ON COLUMN noclocks.documents.updated_at IS 'Timestamp when the document was last updated';
`````

## File: inst/database/README.md
`````markdown
  1: ## Database Architecture Overview
  2: 
  3: ### Core Entities
  4: 
  5: 1. **Users**
  6:   - Central to authentication and ownership of resources
  7:   - Will relate to almost every other entity in the system
  8: 2. **Documents**
  9:   - Storage for text, code, and other content
 10:   - Need vector embeddings for semantic search
 11: 3. **Repositories**
 12:   - Collections of related documents/code
 13:   - Metadata about source and purpose
 14: 4. **Chat Sessions**
 15:   - Conversation containers
 16:   - Context and metadata
 17: 5. **Messages**
 18:   - Individual exchanges within chat sessions
 19:   - Need to track roles, content, and timestamps
 20: 6. **Memory/Knowledge**
 21:   - Long-term storage of important information
 22:   - Vector embeddings for retrieval
 23: 7. **Vector Stores**
 24:   - Optimized tables for embedding storage and similarity search
 25: 
 26: ### Schema Design
 27: 
 28: Users:
 29: 
 30: ```sql
 31: -- Users table
 32: CREATE TABLE users (
 33:     user_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
 34:     email VARCHAR(255) UNIQUE NOT NULL,
 35:     username VARCHAR(100) UNIQUE,
 36:     password_hash VARCHAR(255) NOT NULL,
 37:     created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
 38:     updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
 39:     last_login_at TIMESTAMPTZ,
 40:     is_active BOOLEAN NOT NULL DEFAULT TRUE
 41: );
 42: 
 43: -- Documents table
 44: CREATE TABLE documents (
 45:     document_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
 46:     owner_id UUID NOT NULL REFERENCES users(user_id),
 47:     title VARCHAR(255) NOT NULL,
 48:     content TEXT,
 49:     content_type VARCHAR(50) NOT NULL, -- e.g., 'text', 'code', 'markdown'
 50:     source_url TEXT,
 51:     created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
 52:     updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
 53:     metadata JSONB,
 54:     is_archived BOOLEAN NOT NULL DEFAULT FALSE
 55: );
 56: 
 57: -- Document embeddings table with pgvector support
 58: CREATE TABLE document_embeddings (
 59:     embedding_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
 60:     document_id UUID NOT NULL REFERENCES documents(document_id) ON DELETE CASCADE,
 61:     embedding VECTOR(1536), -- Adjust dimension based on your embedding model
 62:     chunk_index INTEGER NOT NULL DEFAULT 0,
 63:     chunk_text TEXT,
 64:     created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
 65: );
 66: 
 67: -- Repositories table
 68: CREATE TABLE repositories (
 69:     repo_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
 70:     owner_id UUID NOT NULL REFERENCES users(user_id),
 71:     name VARCHAR(255) NOT NULL,
 72:     description TEXT,
 73:     repo_url TEXT,
 74:     source_type VARCHAR(50), -- e.g., 'github', 'local', 'repomix'
 75:     created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
 76:     updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
 77:     metadata JSONB,
 78:     is_archived BOOLEAN NOT NULL DEFAULT FALSE,
 79:     UNIQUE(owner_id, name)
 80: );
 81: 
 82: -- Repository documents junction table
 83: CREATE TABLE repo_documents (
 84:     repo_id UUID NOT NULL REFERENCES repositories(repo_id) ON DELETE CASCADE,
 85:     document_id UUID NOT NULL REFERENCES documents(document_id) ON DELETE CASCADE,
 86:     file_path VARCHAR(1024), -- Path within repository
 87:     added_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
 88:     PRIMARY KEY (repo_id, document_id)
 89: );
 90: 
 91: -- Chat sessions table
 92: CREATE TABLE chat_sessions (
 93:     session_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
 94:     owner_id UUID NOT NULL REFERENCES users(user_id),
 95:     title VARCHAR(255),
 96:     created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
 97:     updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
 98:     is_archived BOOLEAN NOT NULL DEFAULT FALSE,
 99:     metadata JSONB -- For session-specific settings, model parameters, etc.
100: );
101: 
102: -- Messages table
103: CREATE TABLE messages (
104:     message_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
105:     session_id UUID NOT NULL REFERENCES chat_sessions(session_id) ON DELETE CASCADE,
106:     role VARCHAR(50) NOT NULL, -- 'user', 'assistant', 'system', etc.
107:     content TEXT NOT NULL,
108:     created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
109:     parent_message_id UUID REFERENCES messages(message_id), -- For threaded conversations
110:     metadata JSONB -- For tokens, model info, etc.
111: );
112: 
113: -- Message embeddings table
114: CREATE TABLE message_embeddings (
115:     embedding_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
116:     message_id UUID NOT NULL REFERENCES messages(message_id) ON DELETE CASCADE,
117:     embedding VECTOR(1536), -- Adjust dimension based on your embedding model
118:     created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
119: );
120: 
121: -- Memory/Knowledge Base items
122: CREATE TABLE memory_items (
123:     memory_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
124:     owner_id UUID NOT NULL REFERENCES users(user_id),
125:     content TEXT NOT NULL,
126:     source_type VARCHAR(50) NOT NULL, -- e.g., 'chat', 'document', 'manual'
127:     source_id UUID, -- Could be message_id, document_id, etc.
128:     importance FLOAT,
129:     created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
130:     last_accessed_at TIMESTAMPTZ,
131:     access_count INTEGER NOT NULL DEFAULT 0,
132:     metadata JSONB
133: );
134: 
135: -- Memory embeddings table
136: CREATE TABLE memory_embeddings (
137:     embedding_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
138:     memory_id UUID NOT NULL REFERENCES memory_items(memory_id) ON DELETE CASCADE,
139:     embedding VECTOR(1536), -- Adjust dimension based on your embedding model
140:     created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
141: );
142: 
143: -- Tags table for tagging various entities
144: CREATE TABLE tags (
145:     tag_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
146:     name VARCHAR(100) NOT NULL,
147:     owner_id UUID REFERENCES users(user_id),
148:     created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
149:     UNIQUE(owner_id, name)
150: );
151: 
152: -- Entity tags junction table
153: CREATE TABLE entity_tags (
154:     tag_id UUID NOT NULL REFERENCES tags(tag_id) ON DELETE CASCADE,
155:     entity_type VARCHAR(50) NOT NULL, -- 'document', 'repository', 'chat_session', 'memory'
156:     entity_id UUID NOT NULL,
157:     created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
158:     PRIMARY KEY (tag_id, entity_type, entity_id)
159: );
160: 
161: -- API keys for integrations and programmatic access
162: CREATE TABLE api_keys (
163:     key_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
164:     user_id UUID NOT NULL REFERENCES users(user_id) ON DELETE CASCADE,
165:     key_hash VARCHAR(255) NOT NULL,
166:     name VARCHAR(255) NOT NULL,
167:     created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
168:     expires_at TIMESTAMPTZ,
169:     last_used_at TIMESTAMPTZ,
170:     is_active BOOLEAN NOT NULL DEFAULT TRUE
171: );
172: 
173: -- Audit log for tracking important system events
174: CREATE TABLE audit_logs (
175:     log_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
176:     user_id UUID REFERENCES users(user_id),
177:     action VARCHAR(255) NOT NULL,
178:     entity_type VARCHAR(50),
179:     entity_id UUID,
180:     timestamp TIMESTAMPTZ NOT NULL DEFAULT NOW(),
181:     ip_address VARCHAR(45),
182:     details JSONB
183: );
184: ```
185: 
186: ### Extensions & Indexes
187: 
188: ```sql
189: -- Enable pgvector extension for vector similarity search
190: CREATE EXTENSION IF NOT EXISTS vector;
191: 
192: -- Create indexes for performance
193: CREATE INDEX idx_documents_owner ON documents(owner_id);
194: CREATE INDEX idx_repositories_owner ON repositories(owner_id);
195: CREATE INDEX idx_chat_sessions_owner ON chat_sessions(owner_id);
196: CREATE INDEX idx_messages_session ON messages(session_id);
197: CREATE INDEX idx_memory_items_owner ON memory_items(owner_id);
198: 
199: -- Vector similarity search indexes
200: CREATE INDEX idx_document_embeddings_embedding ON document_embeddings USING ivfflat (embedding vector_cosine_ops) WITH (lists = 100);
201: CREATE INDEX idx_message_embeddings_embedding ON message_embeddings USING ivfflat (embedding vector_cosine_ops) WITH (lists = 100);
202: CREATE INDEX idx_memory_embeddings_embedding ON memory_embeddings USING ivfflat (embedding vector_cosine_ops) WITH (lists = 100);
203: 
204: -- GIN indexes for JSONB metadata and full-text search
205: CREATE INDEX idx_documents_metadata ON documents USING GIN (metadata);
206: CREATE INDEX idx_chat_sessions_metadata ON chat_sessions USING GIN (metadata);
207: CREATE INDEX idx_messages_metadata ON messages USING GIN (metadata);
208: CREATE INDEX idx_memory_items_metadata ON memory_items USING GIN (metadata);
209: ```
210: 
211: ### Implementation Notes
212: 
213: **Vector Storage Considerations:**
214: 
215: - Using `pgvector` extension for embedding storage and similarity search
216: - Consider chunking larger documents for better semantic search
217: - Vector dimensions should match your embedding model (1536 for OpenAI's text-embedding-ada-002, for example)
218: 
219: **Content Storage Strategy:**
220: 
221: - For documents larger than PostgreSQL's practical limits, consider using blob storage with references
222: - Implement efficient chunking strategies for large documents
223: 
224: **Performance Optimizations:**
225: 
226: - Implement materialized views for common complex queries
227: - Consider partitioning large tables (messages, document_embeddings) by date
228: - Use connection pooling in your app to manage database connections
229: 
230: **Scaling Considerations:**
231: 
232: - The ivfflat vector indexes will need occasional reindexing as data grows
233: - Monitor query performance and adjust index parameters accordingly
234: - Consider read replicas for scaling read operations
235: 
236: **Security Considerations:**
237: 
238: - Implement row-level security policies for multi-tenant isolation
239: - Store sensitive configurations in separate secured tables
240: - Use connection encryption and least-privilege database roles
`````

## File: inst/database/schemas/noclocks/functions/noclocks.find_similar_documents.sql
`````sql
 1: CREATE OR REPLACE FUNCTION noclocks.find_similar_documents(
 2:     qry_embedding VECTOR,
 3:     similarity_threshold FLOAT DEFAULT 0.7,
 4:     max_results INT DEFAULT 10
 5: )
 6: RETURNS TABLE (
 7:     id INTEGER,
 8:     title TEXT,
 9:     content TEXT,
10:     metadata JSONB,
11:     similarity FLOAT
12: ) AS $$
13: BEGIN
14:     RETURN QUERY
15:     SELECT
16:         d.id,
17:         d.title,
18:         d.content,
19:         d.metadata,
20:         1 - (d.embedding <=> query_embedding) AS similarity
21:     FROM
22:         noclocks.documents d
23:     WHERE
24:         1 - (d.embedding <=> query_embedding) > similarity_threshold
25:     ORDER BY
26:         d.embedding <=> query_embedding
27:     LIMIT max_results;
28: END;
29: $$ LANGUAGE plpgsql;
`````

## File: inst/database/schemas/noclocks/functions/noclocks.update_query_cache.sql
`````sql
 1: CREATE OR REPLACE FUNCTION noclocks.update_query_cache(
 2:     p_query_text TEXT,
 3:     p_query_embedding VECTOR,
 4:     p_document_ids INTEGER[]
 5: )
 6: RETURNS VOID AS $$
 7: BEGIN
 8:     -- Try to update existing cache entry
 9:     UPDATE noclocks.query_cache
10:     SET
11:         frequency = frequency + 1,
12:         last_accessed = CURRENT_TIMESTAMP,
13:         document_ids = p_document_ids
14:     WHERE qry_text = p_query_text;
15: 
16:     -- If no rows were updated, insert a new cache entry
17:     IF NOT FOUND THEN
18:         INSERT INTO noclocks.query_cache (qry_text, qry_embedding, document_ids)
19:         VALUES (p_query_text, p_query_embedding, p_document_ids);
20:     END IF;
21: END;
22: $$ LANGUAGE plpgsql;
`````

## File: inst/database/schemas/noclocks/functions/noclocks.update_timestamp.sql
`````sql
1: -- function for updating 'updated_at' timestamps
2: 
3: CREATE OR REPLACE FUNCTION noclocks.update_timestamp()
4: RETURNS TRIGGER AS $$
5: BEGIN
6:   NEW.updated_at = CURRENT_TIMESTAMP;
7:   RETURN NEW;
8: END;
9: $$ LANGUAGE plpgsql;
`````

## File: inst/database/schemas/noclocks/noclocks.schema.sql
`````sql
  1: CREATE EXTENSION IF NOT EXISTS vector;
  2: 
  3: CREATE SCHEMA IF NOT EXISTS noclocks;
  4: 
  5: DROP TABLE IF EXISTS noclocks.documents CASCADE;
  6: 
  7: CREATE TABLE noclocks.documents (
  8:   id INTEGER NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  9:   title TEXT NOT NULL,
 10:   content TEXT NOT NULL,
 11:   metadata JSONB DEFAULT '{}'::JSONB,
 12:   embedding VECTOR(1536),
 13:   created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
 14:   updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
 15: );
 16: 
 17: -- Vector Index for Similarity Search
 18: CREATE INDEX IF NOT EXISTS noclocks.documents_embedding_idx
 19: ON noclocks.documents USING IVFFLAT (embedding vector_cosine_ops) WITH (dim = 1536);
 20: 
 21: -- GIN Index for JSONB metadata
 22: CREATE INDEX IF NOT EXISTS noclocks.documents_metadata_idx
 23: ON noclocks.documents USING GIN (metadata);
 24: 
 25: -- Comments
 26: COMMENT ON TABLE noclocks.documents IS 'Documents table for storing documents';
 27: COMMENT ON COLUMN noclocks.documents.id IS 'Unique identifier for the document';
 28: COMMENT ON COLUMN noclocks.documents.title IS 'Title of the document';
 29: COMMENT ON COLUMN noclocks.documents.content IS 'Content of the document';
 30: COMMENT ON COLUMN noclocks.documents.metadata IS 'Metadata of the document';
 31: COMMENT ON COLUMN noclocks.documents.embedding IS 'OpenAI CLIP embedding of the document';
 32: COMMENT ON COLUMN noclocks.documents.created_at IS 'Timestamp when the document was created';
 33: COMMENT ON COLUMN noclocks.documents.updated_at IS 'Timestamp when the document was last updated';
 34: 
 35: DROP TABLE IF EXISTS noclocks.query_cache CASCADE;
 36: 
 37: CREATE TABLE noclocks.query_cache (
 38:   id INTEGER NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
 39:   qry_text TEXT NOT NULL,
 40:   qry_embedding VECTOR(1536),
 41:   document_ids INTEGER[] NOT NULL,
 42:   frquency INTEGER NOT NULL DEFAULT 1,
 43:   last_accessed TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
 44: );
 45: 
 46: CREATE INDEX IF NOT EXISTS noclocks.query_cache_embedding_idx
 47: ON noclocks.query_cache USING IVFFLAT (qry_embedding vector_cosine_ops) WITH (dim = 1536);
 48: 
 49: CREATE INDEX IF NOT EXISTS noclocks.query_cache_qry_text_idx
 50: ON noclocks.query_cache (qry_text);
 51: 
 52: COMMENT ON TABLE noclocks.query_cache IS 'Query cache table for caching frequency queries';
 53: COMMENT ON COLUMN noclocks.query_cache.id IS 'Unique identifier for the query cache';
 54: COMMENT ON COLUMN noclocks.query_cache.qry_text IS 'Text of the query';
 55: COMMENT ON COLUMN noclocks.query_cache.qry_embedding IS 'OpenAI CLIP embedding of the query';
 56: COMMENT ON COLUMN noclocks.query_cache.document_ids IS 'Array of document IDs that match the query';
 57: COMMENT ON COLUMN noclocks.query_cache.frquency IS 'Frequency of the query';
 58: COMMENT ON COLUMN noclocks.query_cache.last_accessed IS 'Timestamp when the query was last accessed';
 59: 
 60: /* FUNCTIONS */
 61: 
 62: -- function for updating 'updated_at' timestamps
 63: CREATE OR REPLACE FUNCTION noclocks.update_timestamp()
 64: RETURNS TRIGGER AS $$
 65: BEGIN
 66:   NEW.updated_at = CURRENT_TIMESTAMP;
 67:   RETURN NEW;
 68: END;
 69: $$ LANGUAGE plpgsql;
 70: 
 71: -- function for finding similar documents
 72: CREATE OR REPLACE FUNCTION noclocks.find_similar_documents(
 73:     qry_embedding VECTOR,
 74:     similarity_threshold FLOAT DEFAULT 0.7,
 75:     max_results INT DEFAULT 10
 76: )
 77: RETURNS TABLE (
 78:     id INTEGER,
 79:     title TEXT,
 80:     content TEXT,
 81:     metadata JSONB,
 82:     similarity FLOAT
 83: ) AS $$
 84: BEGIN
 85:     RETURN QUERY
 86:     SELECT
 87:         d.id,
 88:         d.title,
 89:         d.content,
 90:         d.metadata,
 91:         1 - (d.embedding <=> qry_embedding) AS similarity
 92:     FROM
 93:         noclocks.documents d
 94:     WHERE
 95:         1 - (d.embedding <=> qry_embedding) > similarity_threshold
 96:     ORDER BY
 97:         d.embedding <=> qry_embedding
 98:     LIMIT max_results;
 99: END;
100: $$ LANGUAGE plpgsql;
101: 
102: -- function for updating query cache
103: CREATE OR REPLACE FUNCTION noclocks.update_query_cache(
104:     p_query_text TEXT,
105:     p_query_embedding VECTOR,
106:     p_document_ids INTEGER[]
107: )
108: RETURNS VOID AS $$
109: BEGIN
110:     -- Try to update existing cache entry
111:     UPDATE noclocks.query_cache
112:     SET
113:         frequency = frequency + 1,
114:         last_accessed = CURRENT_TIMESTAMP,
115:         document_ids = p_document_ids
116:     WHERE qry_text = p_query_text;
117: 
118:     -- If no rows were updated, insert a new cache entry
119:     IF NOT FOUND THEN
120:         INSERT INTO noclocks.query_cache (qry_text, qry_embedding, document_ids)
121:         VALUES (p_query_text, p_query_embedding, p_document_ids);
122:     END IF;
123: END;
124: $$ LANGUAGE plpgsql;
125: 
126: 
127: /* TRIGGERS */
128: 
129: -- trigger for updating 'updated_at' timestamp in documents table
130: CREATE TRIGGER noclocks.update_documents_timestamp
131: BEFORE UPDATE ON noclocks.documents
132: FOR EACH ROW EXECUTE FUNCTION noclocks.update_timestamp();
`````

## File: inst/database/schemas/noclocks/tables/noclocks.documents.sql
`````sql
 1: DROP TABLE IF EXISTS noclocks.documents CASCADE;
 2: 
 3: CREATE TABLE noclocks.documents (
 4:   id INTEGER NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
 5:   title TEXT NOT NULL,
 6:   content TEXT NOT NULL,
 7:   metadata JSONB DEFAULT '{}'::JSONB,
 8:   embedding VECTOR(1536),
 9:   created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
10:   updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
11: );
12: 
13: -- Vector Index for Similarity Search
14: CREATE INDEX IF NOT EXISTS noclocks.documents_embedding_idx
15: ON noclocks.documents USING IVFFLAT (embedding vector_cosine_ops) WITH (dim = 1536);
16: 
17: -- GIN Index for JSONB metadata
18: CREATE INDEX IF NOT EXISTS noclocks.documents_metadata_idx
19: ON noclocks.documents USING GIN (metadata);
20: 
21: -- Comments
22: COMMENT ON TABLE noclocks.documents IS 'Documents table for storing documents';
23: COMMENT ON COLUMN noclocks.documents.id IS 'Unique identifier for the document';
24: COMMENT ON COLUMN noclocks.documents.title IS 'Title of the document';
25: COMMENT ON COLUMN noclocks.documents.content IS 'Content of the document';
26: COMMENT ON COLUMN noclocks.documents.metadata IS 'Metadata of the document';
27: COMMENT ON COLUMN noclocks.documents.embedding IS 'OpenAI CLIP embedding of the document';
28: COMMENT ON COLUMN noclocks.documents.created_at IS 'Timestamp when the document was created';
29: COMMENT ON COLUMN noclocks.documents.updated_at IS 'Timestamp when the document was last updated';
`````

## File: inst/database/schemas/noclocks/tables/noclocks.query_cache.sql
`````sql
 1: DROP TABLE IF EXISTS noclocks.query_cache CASCADE;
 2: 
 3: CREATE TABLE noclocks.query_cache (
 4:   id INTEGER NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
 5:   qry_text TEXT NOT NULL,
 6:   qry_embedding VECTOR(1536),
 7:   document_ids INTEGER[] NOT NULL,
 8:   frquency INTEGER NOT NULL DEFAULT 1,
 9:   last_accessed TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
10: );
11: 
12: CREATE INDEX IF NOT EXISTS noclocks.query_cache_embedding_idx
13: ON noclocks.query_cache USING IVFFLAT (qry_embedding vector_cosine_ops) WITH (dim = 1536);
14: 
15: CREATE INDEX IF NOT EXISTS noclocks.query_cache_qry_text_idx
16: ON noclocks.query_cache (qry_text);
17: 
18: COMMENT ON TABLE noclocks.query_cache IS 'Query cache table for caching frequency queries';
19: COMMENT ON COLUMN noclocks.query_cache.id IS 'Unique identifier for the query cache';
20: COMMENT ON COLUMN noclocks.query_cache.qry_text IS 'Text of the query';
21: COMMENT ON COLUMN noclocks.query_cache.qry_embedding IS 'OpenAI CLIP embedding of the query';
22: COMMENT ON COLUMN noclocks.query_cache.document_ids IS 'Array of document IDs that match the query';
23: COMMENT ON COLUMN noclocks.query_cache.frquency IS 'Frequency of the query';
24: COMMENT ON COLUMN noclocks.query_cache.last_accessed IS 'Timestamp when the query was last accessed';
`````

## File: inst/database/schemas/noclocks/triggers/update_documents_timestamp.trigger.sql
`````sql
1: CREATE TRIGGER noclocks.update_documents_timestamp
2: BEFORE UPDATE ON noclocks.documents
3: FOR EACH ROW EXECUTE FUNCTION noclocks.update_timestamp();
`````

## File: inst/database/schemas/public/functions/public.update_timestamp.sql
`````sql
1: -- function for updating 'updated_at' timestamps
2: 
3: CREATE OR REPLACE FUNCTION public.update_timestamp()
4: RETURNS TRIGGER AS $$
5: BEGIN
6:   NEW.updated_at = CURRENT_TIMESTAMP;
7:   RETURN NEW;
8: END;
9: $$ LANGUAGE plpgsql;
`````

## File: inst/extdata/documents/Anthropic-Building-Effective-AI-Agents-Comprehensive-Analysis.md
`````markdown
  1: ---
  2: date: 2024-12-19
  3: source: https://www.anthropic.com/engineering/building-effective-agents
  4: author: Anthropic
  5: title: Building Effective AI Agents
  6: ---
  7: 
  8: # Building Effective Agents (Anthropic)
  9: 
 10: Anthropic's research on building effective agents presents valuable insights drawn from their extensive work with teams implementing large language model (LLM) agents across industries. Their findings reveal that the most successful implementations rarely depend on complex frameworks or specialized libraries but instead utilize simple, composable patterns. This comprehensive report examines Anthropic's approach to building effective AI agents, analyzing their definitions, recommended patterns, and practical advice for developers.
 11: 
 12: ## Understanding Agentic Systems
 13: 
 14: Anthropic acknowledges the term "agent" carries various interpretations across the industry. Some define agents as fully autonomous systems operating independently over extended periods, utilizing various tools to accomplish complex tasks. Others use the term more narrowly to describe implementations following predefined workflows[^1_1].
 15: 
 16: To provide clarity, Anthropic categorizes these variations under "agentic systems" while drawing an important architectural distinction between workflows and agents. They define **workflows** as systems where LLMs and tools are orchestrated through predefined code paths, whereas **agents** are systems where LLMs dynamically direct their own processes and tool usage, maintaining control over how they accomplish tasks[^1_1][^1_2].
 17: 
 18: This distinction emphasizes the level of autonomy granted to the LLM within the system. Workflows follow fixed patterns determined by developers, while agents have greater flexibility to determine their approach to solving problems. However, this definition has received some criticism. The AgentsDecoded analysis suggests that defining agents based on how they operate rather than what they fundamentally are (goal-directed components) may not stand the test of time, arguing that "agent definitions should focus on the what and not the how"[^1_3].
 19: 
 20: Another perspective describes agents as "systems so intelligent they can plan, adapt, and make decisions independently," acting as highly capable virtual assistants that dynamically figure out how to achieve goals[^1_4]. This focuses on the autonomous decision-making aspect rather than specific implementation details.
 21: 
 22: ## When to Use Agentic Systems
 23: 
 24: When building applications with LLMs, Anthropic strongly recommends finding the simplest solution possible and only increasing complexity when demonstrably necessary. This pragmatic approach recognizes that agentic systems often trade latency and cost for better task performance – a tradeoff that deserves careful consideration[^1_1][^1_2].
 25: 
 26: For many applications, optimizing single LLM calls with retrieval and in-context examples proves sufficient. When greater complexity becomes warranted, workflows provide predictability and consistency for well-defined tasks, while agents offer flexibility and model-driven decision-making when needed at scale[^1_1][^1_2].
 27: 
 28: The decision between implementing a workflow versus an agent should be based on the nature of the task. If the task has clear, predictable steps and requires consistency, a workflow approach typically works better. Conversely, if the task involves open-ended problems where predicting the required number of steps proves difficult, and hardcoding a fixed path isn't feasible, an agent approach may yield better results[^1_1].
 29: 
 30: The autonomous nature of agents means higher costs and potential for compounding errors. Therefore, Anthropic recommends extensive testing in sandboxed environments alongside appropriate guardrails when implementing agent-based systems[^1_1][^1_2].
 31: 
 32: ## Frameworks and Implementation Approaches
 33: 
 34: Numerous frameworks exist to simplify the implementation of agentic systems, including LangGraph from LangChain, Amazon Bedrock's AI Agent framework, Rivet (a drag-and-drop GUI LLM workflow builder), and Vellum (another GUI tool for complex workflows)[^1_1][^1_2].
 35: 
 36: These frameworks provide convenient abstractions for standard low-level tasks such as calling LLMs, defining and parsing tools, and chaining calls together. However, Anthropic cautions that they often create extra layers of abstraction that can obscure the underlying prompts and responses, making debugging more challenging. They might also tempt developers to add unnecessary complexity when simpler solutions would suffice[^1_1].
 37: 
 38: Anthropic suggests that developers begin by using LLM APIs directly, as many patterns can be implemented in just a few lines of code. If using a framework, they emphasize the importance of understanding the underlying code to avoid incorrect assumptions about what's happening behind the scenes[^1_1][^1_2].
 39: 
 40: This recommendation has sparked debate, with some arguing that while understanding underlying principles remains important, frameworks save time and reflect community best practices. A balanced approach combining frameworks and APIs may prove more practical for many development scenarios[^1_3].
 41: 
 42: ## Building Blocks of Agentic Systems
 43: 
 44: ### The Augmented LLM
 45: 
 46: The fundamental building block of agentic systems is what Anthropic calls the "augmented LLM" – a large language model enhanced with capabilities such as retrieval, tools, and memory. Modern models like Claude can actively leverage these capabilities, generating their own search queries, selecting appropriate tools, and determining what information to retain[^1_1][^1_2].
 47: 
 48: When implementing augmented LLMs, Anthropic recommends focusing on two key aspects: tailoring these capabilities to specific use cases and ensuring they provide an easy, well-documented interface for the LLM. These augmentations transform a basic LLM into a more capable system that can interact with external data sources and tools, providing a foundation for more complex agentic systems[^1_1].
 49: 
 50: One way to conceptualize the augmented LLM is as "an assistant with instant access to your calendar, emails, and historical data, offering tailored solutions for every task," highlighting the practical benefits of these enhancements[^1_4].
 51: 
 52: ## Workflow Patterns
 53: 
 54: Anthropic identifies several common workflow patterns that serve as building blocks for more complex agentic systems. These patterns are composable and can be combined to address various use cases.
 55: 
 56: ### Prompt Chaining
 57: 
 58: Prompt chaining decomposes a task into a sequence of steps, where each LLM call processes the output of the previous one. This approach allows for programmatic checks (or "gates") between steps to ensure the process remains on track[^1_1][^1_2].
 59: 
 60: This workflow proves ideal for situations where tasks can be easily decomposed into fixed subtasks. The primary goal is to trade latency for higher accuracy by making each LLM call focus on an easier subtask[^1_1]. Examples where prompt chaining demonstrates value include generating marketing copy before translating it into different languages, or writing a document outline, checking that it meets certain criteria, then writing the full document based on the outline[^1_1][^1_2].
 61: 
 62: By breaking complex tasks into manageable steps, prompt chaining ensures quality control and enables iterative improvements throughout the process. Each step becomes more manageable for the LLM, potentially improving overall performance while allowing for validation at critical junctures in the workflow[^1_1].
 63: 
 64: ### Routing
 65: 
 66: Routing classifies an input and directs it to a specialized followup task. This workflow enables separation of concerns and allows for more specialized prompts for different types of inputs[^1_1][^1_2].
 67: 
 68: This pattern works particularly well for complex tasks with distinct categories that benefit from specialized handling, and where classification can be performed accurately, either by an LLM or a more traditional classification model or algorithm[^1_1]. Practical applications include directing different types of customer service queries (general questions, refund requests, technical support) to different downstream processes, prompts, and tools; or routing simpler questions to smaller models while directing more complex inquiries to more capable models to optimize cost and speed[^1_1][^1_2].
 69: 
 70: The routing workflow functions similar to "a smart dispatcher, directing tasks to the right specialist," ensuring efficient resolution by the most qualified system component[^1_4]. This approach allows developers to optimize each specialized handler without compromising performance across different input types.
 71: 
 72: ### Parallelization
 73: 
 74: Parallelization involves having LLMs work simultaneously on a task and then aggregating their outputs programmatically. This workflow manifests in two key variations: **sectioning** (breaking a task into independent subtasks run in parallel) and **voting** (running the same task multiple times to get diverse outputs)[^1_1][^1_2].
 75: 
 76: This approach proves effective when subtasks can be parallelized for speed, or when multiple perspectives or attempts are needed for higher confidence results. For complex tasks with multiple considerations, LLMs generally perform better when each consideration receives focused attention from a separate LLM call[^1_1].
 77: 
 78: Examples of effective parallelization include implementing guardrails where one model instance processes user queries while another screens them for inappropriate content; reviewing code for vulnerabilities using several different prompts to identify potential issues; or evaluating whether content is inappropriate through multiple prompts assessing different aspects with varying vote thresholds to balance false positives and negatives[^1_1][^1_2].
 79: 
 80: Parallelization allows systems to tackle multiple subtasks simultaneously, aggregating results quickly for comprehensive analysis while potentially improving both speed and accuracy through specialized focus or consensus mechanisms[^1_1][^1_4].
 81: 
 82: ### Orchestrator-Workers
 83: 
 84: The orchestrator-workers workflow features a central LLM that dynamically breaks down tasks, delegates them to worker LLMs, and synthesizes their results[^1_1][^1_2].
 85: 
 86: This pattern is particularly well-suited for complex tasks where subtasks cannot be predicted in advance. The key difference from parallelization lies in its flexibility—subtasks aren't pre-defined but determined by the orchestrator based on the specific input[^1_1]. Applications include coding products that require complex changes across multiple files, or search tasks involving gathering and analyzing information from multiple sources for relevant information[^1_1][^1_2].
 87: 
 88: A concrete example might involve "planning a product launch by assigning market research to one agent, logistics planning to another, and creative design to a third" with the orchestrator consolidating the outputs into a cohesive plan[^1_4]. This approach combines the benefits of specialized handling with dynamic task allocation based on the specific requirements of each input.
 89: 
 90: ### Evaluator-Optimizer
 91: 
 92: In the evaluator-optimizer workflow, one LLM call generates a response while another provides evaluation and feedback in a loop, enabling iterative refinement[^1_1][^1_2].
 93: 
 94: This workflow proves particularly effective with clear evaluation criteria and when iterative refinement provides measurable value. It works well when LLM responses demonstrably improve through feedback and when the LLM itself can provide such feedback. This process mimics the iterative writing process a human writer might use when producing a polished document[^1_1].
 95: 
 96: Examples where the evaluator-optimizer approach creates value include literary translation where nuances might not be captured initially but where an evaluator LLM can provide useful critiques; or complex search tasks requiring multiple rounds of searching and analysis to gather comprehensive information, with the evaluator determining whether further searches are warranted[^1_1][^1_2].
 97: 
 98: This back-and-forth interaction ensures that the final output undergoes refinement through multiple iterations of feedback and improvement, potentially leading to higher quality results than could be achieved in a single pass[^1_1][^1_4].
 99: 
100: ## Autonomous Agents
101: 
102: Agents represent the most sophisticated form of agentic systems, emerging as LLMs mature in key capabilities—understanding complex inputs, reasoning and planning, using tools reliably, and recovering from errors[^1_1][^1_2].
103: 
104: Agents begin with either a command from or interactive discussion with a human user. Once the task becomes clear, they plan and operate independently, potentially returning to the human for further information or judgment. During execution, agents must gain "ground truth" from the environment at each step (such as tool call results or code execution) to assess their progress. They can pause for human feedback at checkpoints or when encountering blockers[^1_1][^1_2].
105: 
106: Despite handling sophisticated tasks, agent implementation often remains straightforward—typically just LLMs using tools based on environmental feedback in a loop. This makes tool design and documentation particularly important for successful agent development[^1_1].
107: 
108: Agents excel with open-ended problems where predicting the required number of steps proves difficult or impossible, and where hardcoding a fixed path isn't feasible. The LLM potentially operates for many turns, requiring some level of trust in its decision-making capabilities. Their autonomy makes agents well-suited for scaling tasks in trusted environments[^1_1][^1_2].
109: 
110: Anthropic provides examples of their own agent implementations, including a coding agent to resolve SWE-bench tasks involving edits across multiple files based on task descriptions, and a "computer use" reference implementation where Claude uses a computer to accomplish tasks[^1_1][^1_2].
111: 
112: ## Real-World Applications
113: 
114: Anthropic's work with customers has revealed two particularly promising applications for AI agents that demonstrate the practical value of the patterns discussed: customer support and coding.
115: 
116: ### Customer Support
117: 
118: Customer support combines familiar chatbot interfaces with enhanced capabilities through tool integration. This application suits more open-ended agents because support interactions naturally follow a conversation flow while requiring access to external information and actions. Tools can integrate customer data, order history, and knowledge base articles, while actions such as issuing refunds or updating tickets can be handled programmatically. Importantly, success can be clearly measured through user-defined resolutions[^1_1][^1_2].
119: 
120: Several companies have demonstrated confidence in their agents' effectiveness by implementing usage-based pricing models that charge only for successful resolutions, showcasing their belief in the practical value of these systems[^1_1].
121: 
122: ### Coding Agents
123: 
124: The software development space has shown remarkable potential for LLM features, with capabilities evolving from code completion to autonomous problem-solving. Agents prove particularly effective in this domain because code solutions are verifiable through automated tests, agents can iterate on solutions using test results as feedback, the problem space is well-defined and structured, and output quality can be measured objectively[^1_1][^1_2].
125: 
126: Anthropic reports their own agents can solve real GitHub issues in the SWE-bench Verified benchmark based solely on pull request descriptions. However, while automated testing helps verify functionality, human review remains crucial for ensuring solutions align with broader system requirements[^1_1][^1_2].
127: 
128: ## Tool Design for Agents
129: 
130: Tool design represents a critical aspect of building effective agents. Anthropic emphasizes that tool definitions and specifications deserve as much prompt engineering attention as overall prompts[^1_1][^1_2].
131: 
132: When designing tools for agents, Anthropic suggests giving the model enough tokens to "think" before it commits to a solution path, keeping formats close to what the model has naturally encountered in internet text, and avoiding formatting "overhead" such as maintaining accurate counts of code lines or managing string escaping complexities[^1_1][^1_2].
133: 
134: Anthropic recommends investing as much effort in creating good agent-computer interfaces (ACI) as typically goes into human-computer interfaces (HCI). This includes assessing if tools feel intuitive from the model's perspective, crafting clear parameter names and descriptions (similar to writing excellent documentation for junior developers), testing how the model uses the tools and iterating based on observed mistakes, and "poka-yoke" (mistake-proofing) tools by designing arguments to prevent errors[^1_1][^1_2].
135: 
136: Interestingly, while building their agent for SWE-bench, Anthropic spent more time optimizing their tools than the overall prompt. For example, they discovered the model made mistakes with tools using relative filepaths after moving out of the root directory. By changing the tool to always require absolute filepaths, they achieved flawless usage[^1_1][^1_2].
137: 
138: ## Best Practices and Recommendations
139: 
140: Based on their research and experience, Anthropic emphasizes three core principles for implementing effective agents:
141: 
142: 1. **Simplicity**: Maintain a straightforward design to ensure maintainability and reduce unexpected errors.
143: 2. **Transparency**: Prioritize transparency by explicitly showing the agent's planning steps to build trust and provide insights into its decision-making process.
144: 3. **Documentation and Testing**: Carefully craft the agent-computer interface through thorough tool documentation and testing[^1_6].
145: 
146: Anthropic emphasizes that success with LLMs isn't about building the most sophisticated system but rather the right system for specific needs. They recommend starting with simple prompts, optimizing them through comprehensive evaluation, and adding multi-step agentic systems only when simpler solutions fall short[^1_1][^1_2].
147: 
148: While frameworks can help developers get started quickly, Anthropic advises not hesitating to reduce abstraction layers and build with basic components when moving to production environments[^1_1]. This approach balances practical development needs with system maintainability and transparency.
149: 
150: ## Conclusion
151: 
152: Anthropic's research on building effective agents provides a valuable framework for developers working with LLMs across various applications. Their emphasis on simplicity, composable patterns, and thoughtful tool design offers practical guidance for creating agentic systems that balance capability with reliability and maintainability.
153: 
154: The distinction between workflows (with predefined paths) and agents (with dynamic decision-making) helps clarify when different approaches prove appropriate, while their detailed examination of patterns like prompt chaining, routing, parallelization, orchestrator-workers, and evaluator-optimizer provides a toolkit of strategies developers can adapt to their specific needs.
155: 
156: Rather than advocating for maximum complexity or the latest frameworks, Anthropic encourages a pragmatic approach that starts simple and adds sophistication only when demonstrably beneficial. This philosophy, combined with their insights on tool design and real-world applications, constitutes a practical roadmap for developers seeking to harness the power of LLMs in agentic systems.
157: 
158: As the field continues to evolve, the patterns and principles outlined by Anthropic provide a foundation that developers can build upon, adapting and combining approaches to create effective agents that solve real-world problems while maintaining reliability, transparency, and user trust. The key takeaway remains that effectiveness comes not from implementing the most complex system possible, but from carefully matching the right level of sophistication to each specific use case.
159: 
160: ***
161: 
162: ### Footnotes
163: 
164: [^1_1]: https://www.anthropic.com/research/building-effective-agents
165: 
166: [^1_2]: https://www.anthropic.com/research/building-effective-agents
167: 
168: [^1_3]: https://www.agentsdecoded.com/p/an-analysis-of-anthropics-guide-to
169: 
170: [^1_4]: https://workforcewise.org/what-can-agentic-ai-really-do-anthropic-opened-up-and-it-clarified-a-lot/
171: 
172: [^1_5]: https://news.ycombinator.com/item?id=42470541
173: 
174: [^1_6]: https://www.youtube.com/watch?v=hYKLA9JPOC8
175: 
176: [^1_7]: https://www.youtube.com/watch?v=JEERoZQbG9k
177: 
178: [^1_8]: https://www.youtube.com/watch?v=Pp3KIt5_gMg
179: 
180: [^1_9]: https://www.youtube.com/watch?v=Dii4fa2a5QQ
181: 
182: [^1_10]: https://www.linkedin.com/pulse/anthropic-agentic-systems-1-prompt-chaining-vikram-ekambaram-pjn5e
183: 
184: [^1_11]: https://www.linkedin.com/pulse/learning-from-anthropic-building-effective-agents-marc-abraham-zw1xe
185: 
186: [^1_12]: https://www.youtube.com/watch?v=0v7TQIh_kes
187: 
188: [^1_13]: https://huggingface.co/blog/Sri-Vigneshwar-DJ/building-effective-agents-with-anthropics-best-pra
189: 
190: [^1_14]: https://www.linkedin.com/pulse/anthropic-agentic-systems-2-routing-vikram-ekambaram-cmxvc
191: 
192: [^1_15]: https://www.linkedin.com/pulse/series-4-building-effective-ai-agents-lessons-from-purushothaman-kx1ec
193: 
194: [^1_16]: https://www.youtube.com/watch?v=Pr8mqF_RXeM
195: 
196: [^1_17]: https://www.forbes.com/sites/jodiecook/2025/02/27/how-to-build-ai-agents-that-actually-work-anthropics-rules-revealed/
197: 
198: [^1_18]: https://www.anthropic.com/news/3-5-models-and-computer-use
199: 
200: [^1_19]: https://www.linkedin.com/pulse/takeaways-building-effective-agents-charles-shen-phd-emba-lsuge
201: 
202: [^1_20]: https://www.reddit.com/r/ClaudeAI/comments/1hiww4y/i_just_read_anthropics_blog_on_building_effective/
203: 
204: [^1_21]: https://www.hkdca.com/wp-content/uploads/2025/02/how-to-build-effective-ai-agents-anthropic.pdf
`````

## File: inst/extdata/documents/example-markdown.md
`````markdown
  1: ---
  2: created: 2025-03-17T16:29:23 (UTC -04:00)
  3: tags: [openai, llm, responses]
  4: source: https://platform.openai.com/docs/guides/text?api-mode=responses
  5: author: OpenAI
  6: ---
  7: 
  8: # Text generation and Prompting - OpenAI API
  9: 
 10: > **Excerpt**
 11: > Learn how to use the OpenAI API to generate text from a prompt. Learn about message types and available text formats like JSON and Structured Outputs.
 12: 
 13: ---
 14: Learn how to prompt a model to generate text.
 15: 
 16: With the OpenAI API, you can use a [large language model](https://platform.openai.com/docs/models) to generate text from a prompt, as you might using [ChatGPT](https://chatgpt.com/). Models can generate almost any kind of text response—like code, mathematical equations, structured JSON data, or human-like prose.
 17: 
 18: Here's a simple example using the [Responses API](https://platform.openai.com/docs/api-reference/responses).
 19: 
 20: Generate text from a simple prompt
 21: 
 22: ```bash
 23: curl "https://api.openai.com/v1/responses" \
 24:     -H "Content-Type: application/json" \
 25:     -H "Authorization: Bearer $OPENAI_API_KEY" \
 26:     -d '{
 27:         "model": "gpt-4o",
 28:         "input": "Write a one-sentence bedtime story about a unicorn."
 29:     }'
 30: ```
 31: 
 32: An array of content generated by the model is in the `output` property of the response. In this simple example, we have just one output which looks like this:
 33: 
 34: ```json
 35: [
 36:     {
 37:         "id": "msg_67b73f697ba4819183a15cc17d011509",
 38:         "type": "message",
 39:         "role": "assistant",
 40:         "content": [
 41:             {
 42:                 "type": "output_text",
 43:                 "text": "Under the soft glow of the moon, Luna the unicorn danced through fields of twinkling stardust, leaving trails of dreams for every child asleep.",
 44:                 "annotations": []
 45:             }
 46:         ]
 47:     }
 48: ]
 49: ```
 50: 
 51: Note that the output often has more than one item!
 52: 
 53: Some of our [official SDKs](https://platform.openai.com/docs/libraries) include an `output_text` property on model responses for convenience, which aggregates all text outputs from the model into a single string. This may be useful as a shortcut to access text output from the model.
 54: 
 55: In addition to plain text, you can also have the model return structured data in JSON format - this feature is called [**Structured Outputs**](https://platform.openai.com/docs/guides/structured-outputs).
 56: 
 57: ## Message roles and instruction following
 58: 
 59: You can provide instructions to the model with [differing levels of authority](https://model-spec.openai.com/2025-02-12.html#chain_of_command) using the `instructions` API parameter or **message roles**.
 60: 
 61: The `instructions` parameter gives the model high-level instructions on how it should behave while generating a response, including tone, goals, and examples of correct responses. Any instructions provided this way will take priority over a prompt in the `input` parameter.
 62: 
 63: Generate text with instructions
 64: 
 65: ```bash
 66: curl "https://api.openai.com/v1/responses" \
 67:     -H "Content-Type: application/json" \
 68:     -H "Authorization: Bearer $OPENAI_API_KEY" \
 69:     -d '{
 70:         "model": "gpt-4o",
 71:         "instructions": "Talk like a pirate.",
 72:         "input": "Are semicolons optional in JavaScript?"
 73:     }'
 74: ```
 75: 
 76: The example above is roughly equivalent to using the following input messages in the `input` array:
 77: 
 78: Generate text with messages using different roles
 79: 
 80: ```bash
 81: curl "https://api.openai.com/v1/responses" \
 82:     -H "Content-Type: application/json" \
 83:     -H "Authorization: Bearer $OPENAI_API_KEY" \
 84:     -d '{
 85:         "model": "gpt-4o",
 86:         "input": [
 87:             {
 88:                 "role": "developer",
 89:                 "content": "Talk like a pirate."
 90:             },
 91:             {
 92:                 "role": "user",
 93:                 "content": "Are semicolons optional in JavaScript?"
 94:             }
 95:         ]
 96:     }'
 97: ```
 98: 
 99: Instructions versus developer messages in multi-turn conversations
100: 
101: The [OpenAI model spec](https://model-spec.openai.com/2025-02-12.html#chain_of_command) describes how our models give different levels of priority to messages with different roles.
102: 
103: |                                                  developer                                                  |                                            user                                             |                        assistant                         |
104: |-------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------|----------------------------------------------------------|
105: | developer messages are instructions provided by the application developer, weighted ahead of user messages. | user messages are instructions provided by an end user, weighted behind developer messages. | Messages generated by the model have the assistant role. |
106: 
107: A multi-turn conversation may consist of several messages of these types, along with other content types provided by both you and the model. Learn more about [managing conversation state here](https://platform.openai.com/docs/guides/conversation-state).
108: 
109: ## Choosing a model
110: 
111: A key choice to make when generating content through the API is which model you want to use - the `model` parameter of the code samples above. [You can find a full listing of available models here](https://platform.openai.com/docs/models).
112: 
113: ### Which model should I choose?
114: 
115: Here are a few factors to consider when choosing a model for text generation.
116: 
117: -   **[Reasoning models](https://platform.openai.com/docs/guides/reasoning)** generate an internal chain of thought to analyze the input prompt, and excel at understanding complex tasks and multi-step planning. They are also generally slower and more expensive to use than GPT models.
118: -   **GPT models** are fast, cost-efficient, and highly intelligent, but benefit from more explicit instructions around how to accomplish tasks.
119: -   **Large and small (mini) models** offer trade-offs for speed, cost, and intelligence. Large models are more effective at understanding prompts and solving problems across domains, while small models are generally faster and cheaper to use. Small models like GPT-4o mini can also be trained to excel at a specific task through [fine tuning](https://platform.openai.com/docs/guides/fine-tuning) and [distillation](https://platform.openai.com/docs/guides/distillation) of results from larger models.
120: 
121: When in doubt, `gpt-4o` offers a solid combination of intelligence, speed, and cost effectiveness.
122: 
123: ## Prompt engineering
124: 
125: Creating effective instructions for a model to generate content is a process known as **prompt engineering**. Because the content generated from a model is non-deterministic, it is a combination of art and science to build a prompt that will generate the right kind of content from a model. You can find a more complete exploration of [prompt engineering here](https://platform.openai.com/docs/guides/prompt-engineering), but here are some general guidelines:
126: 
127: -   Be detailed in your instructions to the model to eliminate ambiguity in how you want the model to respond.
128: -   Provide examples to the model of the type of inputs you expect, and the type of outputs you would want for that input - this technique is called **few-shot learning**.
129: -   When using a [reasoning model](https://platform.openai.com/docs/guides/reasoning), describe the task to be done in terms of goals and desired outcomes, rather than specific step-by-step instructions of how to accomplish a task.
130: -   Invest in creating [evaluations (evals)](https://platform.openai.com/docs/guides/evals) for your prompts, using test data that looks like the data you expect to see in production. Due to the inherent variable results from different models, using evals to see how your prompts perform is the best way to ensure your prompts work as expected.
131: 
132: Iterating on prompts is often all you need to do to get great results from a model, but you can also explore [fine tuning](https://platform.openai.com/docs/guides/fine-tuning) to customize base models for a particular use case.
133: 
134: ## Next steps
135: 
136: Now that you known the basics of text inputs and outputs, you might want to check out one of these resources next.
137: 
138: - [Build a prompt in the Playground](https://platform.openai.com/playground): Use the Playground to develop and iterate on prompts.
139: - [Generate JSON data with Structured Outputs](https://platform.openai.com/docs/guides/structured-outputs): Ensure JSON data emitted from a model conforms to a JSON schema.
140: - Check out all the options for text generation in the [API Reference](https://platform.openai.com/docs/api-reference/responses).
`````

## File: inst/prompts/anomaly-detection/system.prompt.md
`````markdown
1: You are an anomaly detection specialist. Analyze data to identify outliers and unusual patterns.
`````

## File: inst/prompts/code_analysis/system.prompt.md
`````markdown
1: <system>
2: You are an expert R code analyzer specializing in identifying coding patterns,
3: naming conventions, and style preferences. Your task is to analyze code samples and extract 
4: consistent patterns that can be formalized into coding conventions.
5: </system>
`````

## File: inst/prompts/default.system.prompt.md
`````markdown
1: You are helpful, terse AI assistant that is well-versed in the R programming language.
`````

## File: inst/prompts/default/system.prompt.md
`````markdown
1: You are helpful, terse AI assistant that is well-versed in the R programming language.
`````

## File: inst/prompts/document_dataset/system.prompt.md
`````markdown
1: <system>
2: You are helpful, terse AI assistant that is well-versed in the R programming language.
3: You are an R programming expert specializing in package documentation with roxygen2.
4: </system>
`````

## File: inst/prompts/document_dataset/user.prompt.md
`````markdown
 1: <instructions>
 2: Your task is to generate valid roxygen2 documentation for a provided R dataset.
 3: </instructions>
 4: 
 5: <data>
 6: Here is information pertaining to the dataset:
 7: 
 8: Dimensions: {{nrow(data)}} rows x {{ncol(data)}} columns
 9: 
10: Column names: {{paste(colnames(data), collapse = ", ")}}
11: 
12: Data types: {{paste(sapply(data, class), collapse = ", ")}}
13: 
14: Summary:
15: 
16: {{paste(capture.output(skimr::skim(data)), collapse = "\n")}}
17: </data>
18: 
19: <output>
20: Generate comprehensive roxygen2 documentation for the provided dataset.
21: </output>
22: 
23: <example>
24: Below is an example using the mtcars data:
25: 
26: ```R
27: #' mtcars dataset
28: #'
29: #' @description
30: #' The `mtcars` dataset contains information about various car models and their specifications. 
31: #'
32: #' @source
33: #' The dataset is extracted from the 1974 Motor Trend US magazine. 
34: #'
35: #' @format A data.frame with 32 rows and 11 columns:
36: #' \describe{
37: #'   \item{mpg}{Miles per gallon}
38: #'   \item{cyl}{Number of cylinders}
39: #'   \item{disp}{Displacement (cu.in.)}
40: #'   \item{hp}{Gross horsepower}
41: #'   \item{drat}{Rear axle ratio}
42: #'   \item{wt}{Weight (1000 lbs)}
43: #'   \item{qsec}{1/4 mile time}
44: #'   \item{vs}{Engine type (0 = V/S, 1 = straight)}
45: #'   \item{am}{Transmission (0 = automatic, 1 = manual)}
46: #'   \item{gear}{Number of forward gears}
47: #'   \item{carb}{Number of carburetors}
48: #' }
49: "mtcars"
50: ```
51: 
52: </example>
`````

## File: inst/prompts/eda/system.prompt.md
`````markdown
 1: <system>
 2: You are helpful, terse AI assistant that is well-versed in the R programming language.
 3: You are assisting the user with exploration of a dataset loaded into the R programming language.
 4: Your goal is to help the user understand the dataset and provide guidance on how to analyze it.
 5: </system>
 6: 
 7: <instructions>
 8: Your first response is actually the first message the user sees when they start exploring the dataset 
 9: (i.e., the 1st user message you receive isn't actually from the user), so it's important to provide a welcoming and
10: informative response that isn't too overwhelming. 
11: 
12: Avoid detailed descriptions of variables in the dataset (since the user likely has that context, but you don't), 
13: but also highlight key numerical summaries and aspects of the dataset that may help guide further analysis.
14: 
15: Also, for your information, it's not interesting to say the dataset "has summary statistics" since that's a given.
16: Instead, focus on the most interesting aspects of the dataset that will help guide the user's exploration.
17: 
18: Finish this initial response by providing some example questions that will help the user get started with exploring the 
19: dataset.
20: 
21: Also, if you don't know much about the dataset information provided, it's okay to say that and ask the user to provide
22: more context before offering further help.
23: 
24: When you do receive questions about the data, include R code that can be executed on the dataset provided
25: and don't pretend to know more than you do since you likely will only have access to summary statistics about the
26: dataset. 
27: 
28: The user will likely copy/paste your answer to produce the result, and return back to you with those results to
29: ask further questions.
30: 
31: Your R code solutions should prefer use of tidyverse functions (e.g., dplyr, tidyr, etc.) and other packages that are
32: commonly used in the R community.
33: 
34: If you are not sure about the best way to solve a problem, feel free to ask for help from the user.
35: </instructions>
36: 
37: <rules>
38: Whenever referring to the dataset in an answer, wrap the name in backticks (e.g., `name`).
39: </rules>
`````

## File: inst/prompts/eda/user.prompt.md
`````markdown
1: <data>
2: Dataset Name: {{ deparse(substitute(data)) }}
3: Column Names: {{ paste(names(data), collapse = ",") }}
4: Column Types: {{ paste(vapply(data, function(x) { paste(class(x), collapse = "-") }, character(1)), collapse = ", ") }}
5: Summary Statistics: 
6: ```
7: {{ paste(capture.output(skimr::skim(data)), collapse = "\n") }}
8: ```
9: </data>
`````

## File: inst/prompts/empty.prompt.md
`````markdown
1: <!-- Empty Prompt -->
2: 
3: <!-- Prompt Tone & Style -->
4: <
`````

## File: inst/prompts/enhance_markdown/user.prompt.md
`````markdown
1: Take the following markdown content and restructure it for better readability:
2: 
3: {{markdown}}
`````

## File: inst/prompts/explain_code/system.prompt.md
`````markdown
1: You will be provided with a piece of code, and your task is to explain it in a concise way.
`````

## File: inst/prompts/git-commit/system.prompt.md
`````markdown
 1: <system>
 2: You are a Git Commit Message Assistant and your task is to generate a git commit message that strictly adheres
 3: to the Conventional Commits specification.
 4: 
 5: Your purpose is to help developers create well-formatted git commit messages that follow the conventional commits 
 6: specification and align with the company's changelog generation configuration.
 7: 
 8: Reference the following configurations:
 9: 
10: 1. The company uses git-cliff for changelog generation
11: 2. Commits must follow conventional commit format
12: 3. The commit parsers recognize specific types and group them accordingly
13: 4. Breaking changes require special formatting
14: 
15: When generating commit messages:
16: 
17: - Ensure they follow the conventional format
18: - Match the appropriate type from the allowed list
19: - Include relevant scope when applicable
20: - Write descriptions in imperative present tense
21: - Format breaking changes correctly
22: - Include details in body/footer as needed
23: 
24: Always provide the complete, formatted commit message that the user can directly copy and use.
25: </system>
`````

## File: inst/prompts/git-commit/user.prompt.md
`````markdown
 1: <role>
 2: You are an expert Git user tasked with generating commit messages that adhere to the Conventional Commits
 3: specification. Your goal is to create clear, concise, and informative commit messages based on the provided inputs.
 4: </role>
 5: 
 6: <context>
 7: The user needs assistance creating a conventional commit message for the code changes.
 8: </context>
 9: 
10: <inputs>
11: Here are the components of the commit message you'll be working with:
12: <commit_type>{{COMMIT_TYPE}}</commit_type>
13: <commit_scope>{{COMMIT_SCOPE}}</commit_scope>
14: <commit_description>{{COMMIT_DESCRIPTION}}</commit_description>
15: <commit_body>{{COMMIT_BODY}}</commit_body>
16: <commit_footer>{{COMMIT_FOOTER}}</commit_footer>
17: </inputs>
18: 
19: <instructions>
20: Instructions for creating the commit message:
21: 
22: 1. Start with the commit type and scope:
23:    - If a scope is provided, combine them like this: type(scope):
24:    - If no scope is provided, just use the type followed by a colon.
25: 
26: 2. Add the commit description:
27:    - Ensure it's in imperative mood, lowercase, and provides a brief summary of the change.
28:    - The first line (type, scope, and description) should not exceed 72 characters.
29: 
30: 3. If a commit body is provided:
31:    - Add it on a new line after the description.
32:    - Wrap the body text at 72 characters.
33:    - Use bullet points if applicable to highlight specific changes.
34: 
35: 4. If a commit footer is provided:
36:    - Add it on a new line after the body.
37:    - Include any additional information, such as breaking changes or issue references.
38:    - If it's a breaking change, start with 'BREAKING CHANGE:'.
39: 
40: 5. Use blank lines to separate the description, body, and footer.
41: 
42: 6. Ensure the entire message follows these guidelines:
43:    - Use present tense (e.g., "add feature" not "added feature")
44:    - Be concise and clear
45:    - Provide context and motivation for the change
46: 
47: Before generating the final commit message, analyze the provided inputs in <commit_analysis> tags:
48: 
49: 1. List out each component of the commit message and its content.
50: 2. Analyze the length of the first line (type, scope, and description) by counting the characters.
51: 3. If the commit body is provided, count the number of lines and suggest how to wrap it at 72 characters.
52: 4. If a footer is provided, determine if it's a breaking change or not.
53: 
54: After your analysis, provide the commit message in <commit_message> tags, followed by an explanation of your choices in <explanation> tags. The explanation should detail how the message adheres to the Conventional Commits specification and why you made specific formatting decisions.
55: 
56: <user>
57: <context>
58: I need help creating a conventional commit message for my code changes.
59: 
60: <commit_format>
61: <type>(<optional scope>): <description>
62: 
63: <optional body>
64: 
65: <optional footer>
66: </commit_format>
67: 
68: 
69: 
70: <examples>
71: - feat(auth): add email validation for login process
72: - fix(dashboard): prevent crash when no data is available
73: - refactor(api): improve error handling in user service
74: - docs: update README with new environment setup
75: - perf(data): optimize query for customer retrieval
76: - test(user): add tests for user registration flow
77: </examples>
78: 
79: <breaking_changes>
80: For breaking changes:
81: 1. Add ! before the colon: feat(api)!: remove status endpoint
82: 2. Include in footer: BREAKING CHANGE: ticket endpoints no longer support list all entities.
83: </breaking_changes>
84: 
85: <tips>
86: - Be specific but concise in your descriptions
87: - Focus on the "why" in the body, not the "how"
88: - Link to issues/tickets where applicable
89: - Think of the commit message as: "This commit will..."
90: - Each commit should represent a single logical change
91: </tips>
92: </context>
93: 
94: My changes: [Describe your code changes here]
95: </user>
`````

## File: inst/prompts/gmaps.geocode.user.prompt.md
`````markdown
 1: <!-- Google Maps Geocoding Prompt Template -->
 2: 
 3: <purpose>
 4: Geocoding
 5: </purpose>
 6: 
 7: <format>
 8: Structured
 9: </format>
10: 
11: Please geocode the following address: {{address}}.
12: 
13: Return the formatted address, latitude, longitude, and (if available) the place ID.
`````

## File: inst/prompts/gmaps.places.user.prompt.md
`````markdown
 1: <!-- Google Maps Places Search Prompt Template -->
 2: 
 3: <purpose>
 4: Places Search
 5: </purpose>
 6: 
 7: <format>
 8: Table
 9: </format>
10: 
11: <detail>
12: Detailed
13: </detail>
14: 
15: Please search the Google Maps Places API using the following query: {{query}}.
16: 
17: Abide by the following search parameters (if provided):
18: 
19: {{#has_location}}
20: Search around the location: {{location}}.
21: {{/has_location}}
22: 
23: {{#has_radius}}
24: Search within a radius of {{radius}} meters.
25: {{/has_radius}}
26: 
27: {{#has_type}}
28: Search for places of type: {{type}}.
29: {{/has_type}}
30: 
31: {{#has_keyword}}
32: Search for places with the keyword: {{keyword}}.
33: {{/has_keyword}}
34: 
35: {{#has_limit}}
36: Limit the number of results to {{limit}}.
37: {{/has_limit}}
38: 
39: <response>
40: For each place in the search results, provide the following details in a table format:
41: - Name
42: - Formatted Address
43: - Latitude
44: - Longitude
45: - Place ID
46: - Types
47: - Website (if available)
48: - Rating (if available)
49: - User Ratings Total (if available)
50: </response>
`````

## File: inst/prompts/gmaps.system.prompt.md
`````markdown
 1: You are a specialized Google Maps assistant that helps users find locations, get directions, and discover places of interest.
 2: 
 3: You have access to geocoding and places search capabilities.
 4: 
 5: <capabilities>
 6: - Geocode addresses to obtain coordinates
 7: - Search for places by name or category
 8: - Find nearby establishments around a specific location
 9: - Provide detailed information about places including ratings and types.
10: </capabilities>
11: 
12: <response>
13: When providing results, always structure the response with:
14: 1. A clear interpretation of the user's request
15: 2. The specific API actions you're taking
16: 3. The structured results in an easy-to-read format
17: 4. Follow-up suggestions when appropriate
18: </response>
19: 
20: <tone>
21: Maintain a professional, helpful, and concise tone. Be precise with geographical information and use friendly language when suggesting places.
22: </tone>
`````

## File: inst/prompts/mermaid/system.prompt.md
`````markdown
 1: <role>
 2: You are a MermaidJS expert who can generate syntactically correct diagrams based on provided information.
 3: </role>
 4: 
 5: <guidelines>
 6: - Use the appropriate Mermaid.js diagram type (flowchart, graph, sequence, class, etc.) based on the context, data, or code snippet provided by the user.
 7: - If the user specifies a chart type preference, always use that chart type.
 8: - If the user specifies a chart type preference that is not supported, use your expertise to choose the most appropriate type.
 9: - Ensure all mermaid syntax is correct and that the diagram is visually clear and easy to understand.
10: - Use clean, concise labels for nodes and edges to ensure clarity.
11: - Implement appropriate styling and colors to enhance readability and visual appeal.
12: - Include a title using the `GRAPH TB` syntax for top-to-bottom diagrams or `GRAPH LR` for left-to-right diagrams.
13: - Add comments to explain complex parts of the diagram if necessary.
14: - Optimise the layout for clarity and minimal crossing lines.
15: - Ensure the diagram is self-contained and does not rely on external styles or scripts.
16: - Validate the generated diagram for any syntax errors before presenting it to the user.
17: </guidelines>
18: 
19: <instructions>
20: Generate a mermaid.js diagram using the provided information. 
21: The diagram should be generated based on the context, data, or code snippet provided by the user. 
22: The diagram should be clear, concise, and visually represent the flow or structure of the information.
23: The choice of which type of diagram to generate should be based on the content provided.
24: If multiple chart types can be used to represent the provided information and context, prioritize flowcharts and graphs.
25: </instructions>
26: 
27: <validation>
28: After generating the diagram, ensure that it accurately represents the provided information and is free of errors.
29: </validation>
30: 
31: <response>
32: - Respond ONLY with the Mermaid.js code block.
33: - Unless specified otherwise by the user's prompt, respond without any introduction, explanation, or conclusion.
34: - Do not use backticks or any other formatting other than starting the response with three backticks and mermaidjs suitable
35:   for using in markdown, then begin your response with the diagram type declaration and end it with the last line of
36:   MermaidJS code and closing backticks.
37: </response>
38: 
39: <examples>
40: <example>
41: Example mermaid diagram for a provided R code snippet:
42: R Code:
43: ```R
44: starwars |>
45:   group_by(species) |>
46:   summarise(
47:     n = n(),
48:     mass = mean(mass, na.rm = TRUE)
49:   ) |>
50:   filter(
51:     n > 1,
52:     mass > 50
53:   )
54: ```
55: Mermaid Diagram:
56: ```mermaid
57: graph TD
58:     A[starwars dataset] --> B[Group by species]
59:     B --> C[Summarise]
60:     C -->|Calculate n = count of species| D
61:     C -->|Calculate mass = mean mass of species| D
62:     D --> E[Filter]
63:     E -->|n > 1| F[Filtered Data]
64:     E -->|mass > 50| F[Filtered Data]
65: ```
66: </example>
67: <example>
68: Example mermaid diagram for a provided user natural language prompt.
69: User Prompt:
70: ```plaintext
71: Create a diagram that shows the process of photosynthesis.
72: ```
73: Mermaid Diagram:
74: ```mermaid
75: graph TD
76:     A[Sunlight] --> B[Chlorophyll in Leaves]
77:     B --> C[Light-dependent Reactions]
78:     C -->|Produces ATP & NADPH| D[Calvin Cycle]
79:     D -->|Uses CO2| E[Glucose Production]
80:     E --> F[Oxygen Release]
81:     F --> G[Photosynthesis Complete]
82: ```
83: </example>
84: </examples>
`````

## File: inst/prompts/mermaid/user.prompt.md
`````markdown
 1: <instructions>
 2: Generate a MermaidJS diagram using the provided information below.
 3: If any of the below sections are blank, ignore them.
 4: If no chart type is specified, use the best chart type given the context.
 5: </instructions>
 6: 
 7: <inputs>
 8: {{if (!is.na(chart_type)) paste0("Chart Type: ", chart_type) else ""}}
 9: {{if (!is.na(chart_styles)) paste0("Chart Styles: ", chart_styles) else ""}}
10: </inputs>
11: 
12: <context>
13: {{if (!is.na(context)) paste(context, collapse = "\n") else ""}}
14: </context>
15: 
16: <code>
17: {{if (!is.na(code)) paste(code, collapse = "\n") else ""}}
18: </code>
19: 
20: <additional_context>
21: {{if (!is.na(additional_context)) paste(additional_context, collapse = "\n") else ""}}
22: </additional_context>
23: 
24: <validation>
25: - Validate the generated diagram for any syntax errors before presenting it to the user.
26: </validation>
`````

## File: inst/prompts/parse_unstructured_data/system.prompt.md
`````markdown
1: You will be provided with unstructured data, and your task is to parse it into CSV format.
`````

## File: inst/prompts/parse_unstructured_data/user.prompt.md
`````markdown
1: 
`````

## File: inst/prompts/pkgdown.system.prompt.md
`````markdown
1: You are an expert R programmer specializing in package documentation. 
2: Your task is to organize R package functions into logical groups for pkgdown documentation.
`````

## File: inst/prompts/pkgdown.user.prompt.md
`````markdown
 1: I need to organize the functions of an R package named {{pkg_name}} into logical groups for the pkgdown
 2: YAML metadata "reference" section.
 3: 
 4: Here are the exported functions and their corresponding documentation:
 5: 
 6: {{pkg_funcs}}
 7: 
 8: ***
 9: 
10: Here is the existing `_pkgdown.yml` file:
11: 
12: ```yaml
13: {{existing_yaml}}
14: ```
15: 
16: Please update only the `reference` section of the YAML file to include the logical grouping of functions based on their
17: purpose and functionality.
18: 
19: ***
20: 
21: If the above existing YAML file is empty, or missing a reference section,
22: please generate the YAML 'reference:' section that organizes these functions into logical groups 
23: based on their purpose and functionality for the pkgdown website. 
24: 
25: Use the following format:
26: 
27: ```yaml
28: reference:
29:   - title: "Group 1"
30:     desc: >-
31:       Description of the functions in this group.
32:     contents:
33:       - function1
34:       - function2
35:       - starts_with("prefix_")
36:   - title: Group 2
37:     desc: >-
38:       Description of the functions in this group.
39:     contents:
40:       - function4
41:       - function5
42:       - matches("pattern")
43: ```
44: 
45: Use `starts_with()`, `matches()`, or other appropriate functions to group the functions based on their names.
`````

## File: inst/prompts/sql2text/system.prompt.md
`````markdown
 1: <summary>
 2: You are a friendly but terse assistant designed to convert natural language questions or text into valid PostgreSQL
 3: SQL queries. You will be provided with a natural language question or text and your task is to convert it
 4: into a valid PostgreSQL SQL query given the context provided.
 5: </summary>
 6: 
 7: <instructions>
 8: You will be provided with a natural language question or text that requires a SQL query to be generated.
 9: Your task is to convert the natural language question or text into a valid PostgreSQL SQL query.
10: You should consider the context provided in the question or text when generating the SQL query.
11: You should respond with the generated SQL query as a markdown code block.
12: Be sure to properly format the SQL query to ensure it is valid.
13: Be sure the SQL query is appropriate for the question asked by the user.
14: Be sure to properly quote and use proper PostgreSQL syntax with "schema"."table" syntax.
15: </instructions>
16: 
17: <clarifications>
18: You should assume that the user is asking for a valid SQL query that can be executed in a PostgreSQL database.
19: You should consider the context provided in the question or text to generate an appropriate SQL query.
20: You should ensure that the generated SQL query is syntactically correct and follows PostgreSQL conventions.
21: If the user says to use a specific schema for the query, ensure that the schema is used in the generated SQL query.
22: </clarifications>
23: 
24: <schema>
25: You will need to understand the structure of a PostgreSQL database and how to write SQL queries to interact with it.
26: 
27: Database Schema Details:
28: 
29: {{schema_details}}
30: 
31: </schema>
32: 
33: <input>
34: A natural language question or text that requires a SQL query to be generated.
35: </input>
36: 
37: <output>
38: Respond with the generated PostgreSQL SQL query as a markdown code block.
39: </output>
40: 
41: <examples>
42: Input: 
43: "List all the employees from the 'employees' table."
44: 
45: Output:
46: ```sql
47: SELECT * FROM "public"."employees";
48: ```
49: 
50: Input:
51: "Find the total number of documents in the 'documents' table."
52: 
53: Output:
54: ```sql
55: SELECT COUNT(*) FROM "public"."documents";
56: ```
57: 
58: Input:
59: "Get the names of all the users in the 'auth' schema."
60: 
61: Output:
62: ```sql
63: SELECT user_name FROM "auth"."users";
64: ```
65: </examples>
`````

## File: inst/prompts/synthetic_data/system.prompt.md
`````markdown
1: You are a helpful assistant designed to generate data. You will be given a format for the data to generate and some examples of the data.
`````

## File: inst/templates/repomix/repomix-instructions.md
`````markdown
 1: # Repository Instructions
 2: 
 3: This document provides guidance for analyzing the `{{name}}` repository. The instructions are designed to help AI systems and developers understand the structure, purpose, and key components of this project.
 4: 
 5: ## Overview
 6: 
 7: The `{{name}}` repository contains the source code and resources for an R package. The project is structured to follow standard R package conventions, with additional directories for development and testing.
 8: 
 9: ## Key Directories
10: 
11: - **R/**: Contains R scripts defining the core functionality of the package.
12: - **inst/**: Contains additional files to be installed with the package.
13: - **man/**: Documentation files in `.Rd` format generated by `roxygen2`.
14: - **vignettes/**: Long-form documentation written in `.Rmd` format.
15: - **tests/**: Unit tests and integration tests for validating package functionality.
16: - **data/**: Preprocessed datasets included with the package.
17: - **data-raw/**: Scripts used to generate or preprocess datasets.
18: 
19: ## Key Files
20: 
21: - **DESCRIPTION**: Metadata about the R package, including dependencies and versioning.
22: - **NAMESPACE**: Exported functions and imported dependencies.
23: - **README.md**: Overview of the project and usage instructions.
24: - **NEWS.md**: Changelog documenting updates to the package.
25: 
26: ## Analysis Guidelines
27: 
28: 1. Focus on the core functionality in the `R/` directory.
29: 2. Pay attention to exported functions listed in `NAMESPACE`.
30: 3. Review dependencies specified in `DESCRIPTION` for compatibility and security.
31: 4. Examine test coverage in the `tests/` directory to ensure all critical functions are validated.
32: 
33: ## Exclusions
34: 
35: The following files and directories can be ignored during analysis:
36: - Temporary files (e.g., `.Rproj.user/**`, `.Rhistory`, `.RData`)
37: - Build artifacts (e.g., `.o`, `.so`, `.dll`)
38: - Test outputs or logs (e.g., `*.log`, `*.tmp`)
39: - Development files (e.g., `dev/**`, `config.yml`)
40: 
41: ## Security Considerations
42: 
43: Ensure sensitive data is excluded from analysis:
44: - Avoid processing files containing credentials or API keys.
45: - Verify that no private data is included in datasets under `data/`.
46: 
47: ## Additional Notes
48: 
49: For further details on this repository, refer to:
50: - The [README.md](README.md) file for general information.
51: - The [vignettes/](vignettes/) directory for detailed examples and use cases.
`````

## File: inst/templates/repomix/repomix.config.template.json
`````json
 1: {
 2:   "output": {
 3:     "filePath": "{{output_dir}}/{{name}}.repomix.{{ext}}",
 4:     "style": "{{style}}",
 5:     "parsableStyle": true,
 6:     "fileSummary": true,
 7:     "directoryStructure": true,
 8:     "removeComments": false,
 9:     "removeEmptyLines": false,
10:     "compress": false,
11:     "topFilesLength": 10,
12:     "showLineNumbers": true,
13:     "copyToClipboard": false,
14:     "headerText": "{{header}}",
15:     "instructionsFilePath": "{{instructions_file}}",
16:     "includeEmptyDirectories": false,
17:     "git": {
18:       "sortByChanges": true,
19:       "sortByChangesMaxCommits": 100
20:     }
21:   },
22:   "include": [
23:     "R/**/*",
24:     "src/**/*",
25:     "inst/**/*",
26:     "man/**/*.Rd",
27:     "data-raw/**/*.R",
28:     "data/**/*.rda",
29:     "vignettes/**/*.Rmd",
30:     "DESCRIPTION",
31:     "NAMESPACE",
32:     "README.md",
33:     "NEWS.md"
34:   ],
35:   "ignore": {
36:     "useGitignore": true,
37:     "useDefaultPatterns": true,
38:     "customPatterns": [
39:       ".Rproj.user/**",
40:       "*.Rproj",
41:       ".Rhistory",
42:       ".RData",
43:       ".Ruserdata",
44:       "*.rds",
45:       "*.Rproj",
46:       "*.o",
47:       "*.so",
48:       "*.dll",
49:       "*.Rcheck/**",
50:       "docs/**",
51:       "*.tar.gz",
52:       "*.qs",
53:       "*.log",
54:       "*.tmp",
55:       "temp/**",
56:       "dev/**",
57:       "config.yml"
58:     ]
59:   },
60:   "security": {
61:     "enableSecurityCheck": true
62:   },
63:   "tokenCount": {
64:     "encoding": "o200k_base"
65:   }
66: }
`````

## File: inst/templates/repomix/repomixignore
`````
 1: # Add patterns to ignore here, one per line
 2: *.log
 3: tmp/
 4: Meta/
 5: meta/
 6: doc/
 7: docs/
 8: .github/
 9: .vscode/
10: .devcontainer/
11: .Rproj.user/
12: .git/
13: codemeta.json
14: .repomixignore
15: repomix.config.json
16: .lintr
17: codecov.yml
18: .covrignore
19: Dockerfile
20: compose.yml
21: Makefile
22: Justfile
23: .editorconfig
24: .gitignore
25: .gitattributes
26: .gitmodules
27: LICENSE
28: LICENSE.md
29: CHANGELOG.md
30: *.Rproj
31: *.code-workspace
32: _pkgdown.yml
33: _pkgdown.yaml
34: config.yml
`````

## File: inst/WORDLIST
`````
1: Codecov
2: LLC
3: ORCID
`````

## File: man/apis.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/apis.R
 3: \name{apis}
 4: \alias{apis}
 5: \alias{get_api_url}
 6: \title{AI APIs}
 7: \usage{
 8: get_api_url(provider, name = NULL)
 9: }
10: \arguments{
11: \item{provider}{A character string specifying the API provider.}
12: 
13: \item{name}{A character string specifying the service name.}
14: }
15: \value{
16: A character string of the base URL for the specified API service.
17: }
18: \description{
19: These functions are helpers for working with various AI APIs.
20: \itemize{
21: \item \code{get_api_url()}: Retrieve the base URL for a given API provider and service.
22: }
23: }
`````

## File: man/cache.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/cache.R
 3: \name{cache}
 4: \alias{cache}
 5: \alias{write_cache}
 6: \alias{read_cache}
 7: \title{Caching Utility Functions}
 8: \usage{
 9: write_cache(obj, name = NULL, path = "cache", overwrite = FALSE, ...)
10: 
11: read_cache(name, path = "cache", ...)
12: }
13: \arguments{
14: \item{obj}{The object to be cached.}
15: 
16: \item{name}{The name of the object to be cached. If \code{NULL}, the name of the object in the environment will be used.}
17: 
18: \item{path}{The directory where the object will be cached. Default is \code{"cache"}.}
19: 
20: \item{overwrite}{If \code{TRUE}, overwrite the existing file if it exists. Default is \code{FALSE}.}
21: 
22: \item{...}{Additional arguments passed to the \code{qs2} functions.}
23: }
24: \value{
25: \itemize{
26: \item \code{write_cache()}: Invisible object.
27: \item \code{read_cache()}: Invisible path to the cached file.
28: }
29: }
30: \description{
31: These functions provide a simple caching mechanism for storing and retrieving objects to and from disk.
32: \itemize{
33: \item \code{write_cache()}: Save an object to disk using the \code{qs} format.
34: \item \code{read_cache()}: Read an object from disk using the \code{qs} format.
35: }
36: }
37: \seealso{
38: \code{\link[qs2:qs_read]{qs2::qs_read()}} and \code{\link[qs2:qs_save]{qs2::qs_save()}}
39: }
`````

## File: man/checks.Rd
`````
  1: % Generated by roxygen2: do not edit by hand
  2: % Please edit documentation in R/checks.R
  3: \name{checks}
  4: \alias{checks}
  5: \alias{check_inherits}
  6: \alias{check_s7}
  7: \alias{check_r6}
  8: \alias{check_db_conn}
  9: \alias{check_db_config}
 10: \alias{check_chat}
 11: \alias{check_tool}
 12: \alias{check_type}
 13: \alias{check_turn}
 14: \alias{check_request}
 15: \alias{check_response}
 16: \alias{check_tibble}
 17: \alias{check_row}
 18: \alias{check_col_names}
 19: \alias{check_list}
 20: \alias{check_named}
 21: \alias{check_names}
 22: \alias{check_date}
 23: \alias{check_path}
 24: \alias{check_dir}
 25: \alias{check_cache}
 26: \alias{check_installed}
 27: \alias{check_repo}
 28: \alias{check_openai_api_key}
 29: \alias{check_anthropic_api_key}
 30: \title{Check Functions}
 31: \usage{
 32: check_inherits(
 33:   obj,
 34:   class,
 35:   arg = rlang::caller_arg(obj),
 36:   call = rlang::caller_env()
 37: )
 38: 
 39: check_s7(obj, arg = rlang::caller_arg(obj), call = rlang::caller_env())
 40: 
 41: check_r6(obj, arg = rlang::caller_arg(obj), call = rlang::caller_env())
 42: 
 43: check_db_conn(conn, arg = rlang::caller_arg(conn), call = rlang::caller_env())
 44: 
 45: check_db_config(cfg, arg = rlang::caller_arg(cfg), call = rlang::caller_env())
 46: 
 47: check_chat(chat, arg = rlang::caller_arg(chat), call = rlang::caller_env())
 48: 
 49: check_tool(tool, arg = rlang::caller_arg(tool), call = rlang::caller_env())
 50: 
 51: check_type(type, arg = rlang::caller_arg(type), call = rlang::caller_env())
 52: 
 53: check_turn(turn, arg = rlang::caller_arg(turn), call = rlang::caller_env())
 54: 
 55: check_request(req, arg = rlang::caller_arg(req), call = rlang::caller_env())
 56: 
 57: check_response(resp, arg = rlang::caller_arg(resp), call = rlang::caller_env())
 58: 
 59: check_tibble(data, arg = rlang::caller_arg(data), call = rlang::caller_env())
 60: 
 61: check_row(row, arg = rlang::caller_arg(row), call = rlang::caller_env())
 62: 
 63: check_col_names(
 64:   data,
 65:   req_cols,
 66:   arg = rlang::caller_arg(data),
 67:   call = rlang::caller_env()
 68: )
 69: 
 70: check_request(req, arg = rlang::caller_arg(req), call = rlang::caller_env())
 71: 
 72: check_response(resp, arg = rlang::caller_arg(resp), call = rlang::caller_env())
 73: 
 74: check_list(lst, arg = rlang::caller_arg(lst), call = rlang::caller_env())
 75: 
 76: check_named(obj, arg = rlang::caller_arg(obj), call = rlang::caller_env())
 77: 
 78: check_names(
 79:   obj,
 80:   req_names,
 81:   arg = rlang::caller_arg(lst),
 82:   call = rlang::caller_env()
 83: )
 84: 
 85: check_col_names(
 86:   data,
 87:   req_cols,
 88:   arg = rlang::caller_arg(data),
 89:   call = rlang::caller_env()
 90: )
 91: 
 92: check_date(date, arg = rlang::caller_arg(date), call = rlang::caller_env())
 93: 
 94: check_path(path, arg = rlang::caller_arg(path), call = rlang::caller_env())
 95: 
 96: check_dir(path, arg = rlang::caller_arg(path), call = rlang::caller_env())
 97: 
 98: check_cache(path, arg = rlang::caller_arg(path), call = rlang::caller_env())
 99: 
100: check_installed(pkg, arg = rlang::caller_arg(pkg), call = rlang::caller_env())
101: 
102: check_repo(repo, arg = rlang::caller_arg(repo), call = rlang::caller_env())
103: 
104: check_openai_api_key(
105:   api_key,
106:   arg = rlang::caller_arg(api_key),
107:   call = rlang::caller_env()
108: )
109: 
110: check_anthropic_api_key(
111:   api_key,
112:   arg = rlang::caller_arg(api_key),
113:   call = rlang::caller_env()
114: )
115: }
116: \arguments{
117: \item{class}{A character string representing the class to check against.}
118: 
119: \item{arg, arg, call}{Internal arguments used for \link[rlang:args_error_context]{rlang::args_error_context} features.}
120: 
121: \item{req_cols}{A character vector representing the required column names.}
122: 
123: \item{x, conn, cfg, chat, tool, data, row, req, resp, lst, date, pkg, api_key}{The object to check.}
124: }
125: \description{
126: A collection of functions for checking the validity of function arguments.
127: 
128: Below are the \code{check_} functions grouped by category:
129: \subsection{Classes}{
130: \itemize{
131: \item \code{check_inherits()}: Check if an object inherits from a specific class.
132: \item \code{check_s7()}: Check if an object is an S3 object.
133: \item \code{check_r6()}: Check if an object is an R6 object.
134: }
135: }
136: 
137: \subsection{Database}{
138: \itemize{
139: \item \code{check_db_conn()}: Check if an object is a valid database connection (DBI or Pool).
140: \item \code{check_db_config()}: Check if an object is a valid database configuration list.
141: }
142: }
143: 
144: \subsection{\code{ellmer}}{
145: \itemize{
146: \item \code{check_chat()}: Check if an object is a \link[ellmer:Chat]{ellmer::Chat} object.
147: \item \code{check_tool()}: Check if an object is an \code{\link[ellmer:tool]{ellmer::tool()}} object.
148: \item \code{check_type()}: Check if an object is an \link[ellmer:Type]{ellmer::Type} object.
149: }
150: }
151: 
152: \subsection{\code{tibble}}{
153: \itemize{
154: \item \code{check_tibble()}: Check if an object is a \code{\link[tibble:tibble]{tibble::tibble()}} data frame.
155: \item \code{check_row()}: Check if an object is a single-row data frame.
156: \item \code{check_col_names()}: Check if a data frame contains specific column names.
157: }
158: }
159: 
160: \subsection{Lists}{
161: \itemize{
162: \item \code{check_list()}: Check if an object is a list.
163: \item \code{check_list_names()}: Check if a list contains specific names.
164: }
165: }
166: 
167: \subsection{Dates}{
168: \itemize{
169: \item \code{check_date()}: Check if an object is a valid date object.
170: }
171: }
172: 
173: \subsection{Packages}{
174: \itemize{
175: \item \code{check_installed()}: Check if a package is installed.
176: }
177: }
178: 
179: \subsection{API Keys}{
180: \itemize{
181: \item \code{check_openai_api_key()}: Check if an object is a valid OpenAI API key.
182: \item \code{check_anthropic_api_key()}: Check if an object is a valid Anthropic API key.
183: }
184: }
185: }
`````

## File: man/config.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/config.R
 3: \name{config}
 4: \alias{config}
 5: \alias{cfg_get}
 6: \alias{cfg_list}
 7: \alias{get_db_config}
 8: \alias{get_llms_config}
 9: \alias{get_openai_api_key}
10: \alias{set_openai_api_key}
11: \alias{get_anthropic_api_key}
12: \alias{set_anthropic_api_key}
13: \alias{get_gemini_api_key}
14: \alias{set_gemini_api_key}
15: \alias{get_gmaps_api_key}
16: \alias{set_gmaps_api_key}
17: \title{Configuration}
18: \usage{
19: cfg_get(
20:   ...,
21:   file = Sys.getenv("R_CONFIG_FILE", unset = pkg_sys_config("config.yml")),
22:   config = Sys.getenv("R_CONFIG_ACTIVE", unset = "default")
23: )
24: 
25: cfg_list(
26:   file = Sys.getenv("R_CONFIG_FILE", unset = pkg_sys_config("config.yml")),
27:   config = Sys.getenv("R_CONFIG_ACTIVE", unset = "default")
28: )
29: 
30: get_db_config(
31:   key = NULL,
32:   file = Sys.getenv("R_CONFIG_FILE", pkg_sys("config/config.yml")),
33:   config = Sys.getenv("R_CONFIG_ACTIVE", "default")
34: )
35: 
36: get_llms_config(
37:   key = NULL,
38:   file = Sys.getenv("R_CONFIG_FILE", pkg_sys("config/config.yml")),
39:   config = Sys.getenv("R_CONFIG_ACTIVE", "default")
40: )
41: 
42: get_openai_api_key()
43: 
44: set_openai_api_key(key)
45: 
46: get_anthropic_api_key()
47: 
48: set_anthropic_api_key(key)
49: 
50: get_gemini_api_key()
51: 
52: set_gemini_api_key(key)
53: 
54: get_gmaps_api_key()
55: 
56: set_gmaps_api_key(key)
57: }
58: \value{
59: Each function returns the respective API key or sets it as an environment variable.
60: }
61: \description{
62: Functions for managing configuration settings and environment variables.
63: 
64: Functions:
65: \itemize{
66: \item \code{get_db_config()}: Get the database configuration from the configuration file.
67: \item \code{get_llms_config()}: Get the LLM configuration from the configuration file.
68: \item \code{get_tools_config()}: Get the tools configuration from the configuration file.
69: }
70: 
71: LLM API Keys:
72: \itemize{
73: \item \code{get_openai_api_key()}: Get the OpenAI API key from the configuration file.
74: \item \code{set_openai_api_key()}: Set the OpenAI API key as an environment variable.
75: \item \code{get_gemini_api_key()}: Get the Gemini API key from the configuration file.
76: \item \code{set_gemini_api_key()}: Set the Gemini API key as an environment variable.
77: \item \code{get_gmaps_api_key()}: Get the Google Maps API key from the configuration file.
78: \item \code{set_gmaps_api_key()}: Set the Google Maps API key as an environment variable.
79: \item \code{get_hunterio_api_key()}: Get the Hunter.io API key from the configuration file.
80: \item \code{set_hunterio_api_key()}: Set the Hunter.io API key as an environment variable.
81: }
82: 
83: Functions for managing configuration settings and environment variables.
84: 
85: Main Functions:
86: \itemize{
87: \item \code{cfg_get()}: Get the configuration settings from a configuration file.
88: \item \code{cfg_list()}: List the configuration settings from a configuration file.
89: }
90: }
`````

## File: man/create_config_template.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/config.R
 3: \name{create_config_template}
 4: \alias{create_config_template}
 5: \title{Create a Configuration Template}
 6: \usage{
 7: create_config_template(
 8:   config_file = Sys.getenv("R_CONFIG_FILE", unset = pkg_sys_config("config.yml")),
 9:   template_file = NULL
10: )
11: }
12: \arguments{
13: \item{config_file}{A character string representing the path to the configuration file. If left
14: \code{NULL}, the function will attempt to use the default configuration file via \code{pkg_sys_config("config.yml")}.}
15: 
16: \item{template_file}{A character string representing the path to the template file. If left \code{NULL}, the function will
17: create a new file with the same name and path as the original file but with the extension \code{.template.yml}.}
18: }
19: \value{
20: The function writes the template configuration file to the specified location.
21: }
22: \description{
23: Create a template configuration file based on an existing configuration file with all values replaced by placeholders.
24: }
`````

## File: man/create_mermaid_diagram.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/mermaid.R
 3: \name{create_mermaid_diagram}
 4: \alias{create_mermaid_diagram}
 5: \title{Generate Mermaid Diagrams}
 6: \usage{
 7: create_mermaid_diagram(chat_agent = NULL, prompt = NULL, ...)
 8: }
 9: \arguments{
10: \item{chat_agent}{An optional chat agent object. If not provided, a default agent will be created.}
11: 
12: \item{prompt}{A prompt to generate the diagram. If not provided, a default prompt will be used.}
13: 
14: \item{...}{Additional arguments passed to \code{\link[=prompt_mermaid_user]{prompt_mermaid_user()}}. (e.g. \code{context}, \code{code}, \code{chart_type}, \code{chart_styles}).}
15: }
16: \value{
17: A character string containing the mermaid code block.
18: }
19: \description{
20: Generate a mermaid diagram using the dedicated \code{\link[=mermaid_agent]{mermaid_agent()}} based on a prompt or code.
21: }
22: \examples{
23: \dontrun{
24: # generate a diagram based off of code
25: example <- "
26:   starwars |>
27:     group_by(species) |>
28:     summarise(
29:       n = n(),
30:       mass = mean(mass, na.rm = TRUE)
31:     ) |>
32:     filter(
33:       n > 1,
34:       mass > 50
35:     )
36: "
37: create_mermaid_diagram(code = example)
38: 
39: # generate a diagram based off of a prompt
40: prompt <- prompt_mermaid_user("Create a flowchart representing the process of photosynthesis.")
41: create_mermaid_diagram(prompt = prompt)
42: 
43: # specify chart type and styles
44: create_mermaid_diagram(prompt = prompt, chart_type = "flowchart", chart_styles = "Make the chart colorful.")
45: }
46: }
`````

## File: man/db_connect.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/db.R
 3: \name{db_connect}
 4: \alias{db_connect}
 5: \title{Connect to the Database}
 6: \usage{
 7: db_connect(db_config = get_db_config(), pool = TRUE, ...)
 8: }
 9: \arguments{
10: \item{db_config}{A list containing the database configuration. Must include the following fields:
11: \code{dbname}, \code{host}, \code{user}, \code{password}, \code{port}.}
12: 
13: \item{pool}{Logical. If \code{TRUE}, the connection will be pooled using \code{\link[pool:dbPool]{pool::dbPool()}}, otherwise will
14: create a single connection via \code{\link[DBI:dbConnect]{DBI::dbConnect()}}. Default is \code{TRUE}.}
15: 
16: \item{...}{Additional arguments passed to the connection function, i.e. either \code{\link[pool:dbPool]{pool::dbPool()}} or \code{\link[DBI:dbConnect]{DBI::dbConnect()}}.}
17: }
18: \value{
19: Database connection object.
20: If \code{pool = TRUE}, returns a \link[pool:Pool-class]{pool::Pool} (R6) object.
21: If \code{pool = FALSE}, returns a \link[DBI:DBIConnection-class]{DBI::DBIConnection} (S4) object.
22: }
23: \description{
24: Connect to the database using the provided configuration.
25: }
`````

## File: man/db_get_documents.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/db.R
 3: \name{db_get_documents}
 4: \alias{db_get_documents}
 5: \title{Retrieve Documents}
 6: \usage{
 7: db_get_documents(pool, query, max_results = 10L, use_cache = TRUE)
 8: }
 9: \arguments{
10: \item{pool}{Database connection pool object.}
11: 
12: \item{query}{The query to search for in the documents.}
13: 
14: \item{max_results}{Maximum number of documents to retrieve.}
15: 
16: \item{use_cache}{Logical. If \code{TRUE}, will attempt to retrieve documents from the cache first.}
17: }
18: \value{
19: A data frame containing the retrieved documents.
20: }
21: \description{
22: Retrieve documents from the database based on the provided \code{query}.
23: }
24: \examples{
25: \dontrun{
26: pool <- db_connect()
27: db_get_documents(pool, "Anthropic Research", 5)
28: }
29: }
`````

## File: man/db_preload_documents.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/db.R
 3: \name{db_preload_documents}
 4: \alias{db_preload_documents}
 5: \title{Pre-Load Documents}
 6: \usage{
 7: db_preload_documents(pool, topic, max_docs = 10)
 8: }
 9: \arguments{
10: \item{pool}{Database connection pool object.}
11: 
12: \item{topic}{The topic to find documents for.}
13: 
14: \item{max_docs}{Maximum number of documents to load.}
15: }
16: \value{
17: A formatted string of documents
18: }
19: \description{
20: This function pre-loads documents for a "Cache Augmented Generation" (CAG) system, based on provided \code{topic}.
21: }
`````

## File: man/db_store_document.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/db.R
 3: \name{db_store_document}
 4: \alias{db_store_document}
 5: \title{Store Embedded Document}
 6: \usage{
 7: db_store_document(pool, title, content, metadata = list())
 8: }
 9: \arguments{
10: \item{pool}{Database connection object.}
11: 
12: \item{title}{Title of the document.}
13: 
14: \item{content}{Content of the document.}
15: 
16: \item{metadata}{List of metadata to store with the document.}
17: }
18: \value{
19: The ID of the document stored.
20: }
21: \description{
22: This function will insert a new document into the database along with its metadata and embedding.
23: }
24: \examples{
25: \dontrun{
26: doc_text <- readLines("inst/extdata/documents/Anthropic-Building-Effective-AI-Agents-Comprehensive-Analysis.md") |>
27:   paste(collapse = "\n")
28: pool <- db_connect()
29: db_store_document(
30:   pool,
31:   title = "Anthropic Research: Building Effective Agents",
32:   content = doc_text,
33:   metadata = list(source = "Anthropic")
34: )
35: }
36: }
`````

## File: man/eda_agent.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/agents.R
 3: \name{eda_agent}
 4: \alias{eda_agent}
 5: \title{Create an EDA Agent}
 6: \usage{
 7: eda_agent(data, anomaly_threshold = 0.95)
 8: }
 9: \arguments{
10: \item{data}{The data frame to analyze}
11: 
12: \item{anomaly_threshold}{Threshold for anomaly detection (default 0.95)}
13: }
14: \value{
15: A list of agents specialized for different EDA tasks
16: }
17: \description{
18: Creates a collection of specialized agents for exploratory data analysis.
19: }
`````

## File: man/embeddings.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/embed.R
 3: \name{embeddings}
 4: \alias{embeddings}
 5: \alias{embed_openai}
 6: \alias{embed_ollama}
 7: \title{Embeddings}
 8: \usage{
 9: embed_openai(
10:   text,
11:   base_url = get_api_url("openai", "embeddings"),
12:   model = c("text-embedding-3-small", "text-embedding-3-large"),
13:   dims = NULL,
14:   user = NULL,
15:   batch_size = 20L,
16:   api_key = get_openai_api_key()
17: )
18: 
19: embed_ollama(
20:   text,
21:   base_url = "http://localhost:11434/api/embeddings",
22:   model = "llama3",
23:   batch_size = 10L
24: )
25: }
26: \arguments{
27: \item{text}{Character string to embed. Can be one of the following:
28: \itemize{
29: \item A character vector, in which case a matrix of embeddings is returned.
30: \item A \code{data.frame} with a column named \code{text}, in which case the \code{data.frame} is returned with
31: an additional column added named \code{embedding}.
32: \item Missing of \code{NULL}, in which case a function is returned that can be called to get embeddings.
33: }}
34: 
35: \item{base_url}{The base URL for the API. Default depends on the embedding provider.}
36: 
37: \item{model}{The model to use for the embedding. Default depends on the embedding provider.}
38: 
39: \item{dims}{Number of dimensions for the embedding (if supported by the model).}
40: 
41: \item{user}{User identifier for the embedding request (if supported by the provider).}
42: 
43: \item{batch_size}{The batch size to use for the embedding. This will split \code{text} into batches when embedding.}
44: 
45: \item{api_key}{The API key to use for the embedding. Default is obtained from the appropriate configuration.}
46: }
47: \value{
48: If \code{text} is a character vector, a matrix of embeddings is returned.
49: If \code{text} is a \code{data.frame}, the \code{data.frame} is returned with an additional column named \code{embedding}.
50: If \code{text} is missing or \code{NULL}, a function is returned that can be called to get embeddings.
51: }
52: \description{
53: These functions generate text embeddings using external APIs.
54: 
55: Functions:
56: \itemize{
57: \item \code{embed_openai()}: Generate text embeddings using OpenAI's API.
58: \item \code{embed_ollama()}: Generate text embeddings using Ollama's API.
59: }
60: }
61: \examples{
62: \dontrun{
63: # Get embeddings for a single string
64: embedding <- embed_openai("This is a test sentence.")
65: 
66: # Get embeddings for multiple strings
67: embeddings <- embed_openai(c("First sentence", "Second sentence"))
68: 
69: # Add embeddings to a data frame
70: df <- data.frame(text = c("First", "Second", "Third"))
71: df_with_embeddings <- embed_openai(df)
72: }
73: }
`````

## File: man/encode_base64.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/encode.R
 3: \name{encode_base64}
 4: \alias{encode_base64}
 5: \alias{decode_base64}
 6: \title{Base64 Encoding & Decoding}
 7: \usage{
 8: encode_base64(data)
 9: 
10: decode_base64(data)
11: }
12: \arguments{
13: \item{data}{A character vector to encode or decode.}
14: }
15: \value{
16: \itemize{
17: \item \code{encode_base64()}: A character vector of Base64 encoded data.
18: \item \code{decode_base64()}: A character vector of decoded data.
19: }
20: }
21: \description{
22: Functions for encoding and decoding data using Base64 encoding.
23: }
`````

## File: man/encode_data.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/encode.R
 3: \name{encode_data}
 4: \alias{encode_data}
 5: \alias{encode_data_csv}
 6: \alias{encode_data_json}
 7: \alias{encode_data_text}
 8: \title{Encode Data}
 9: \usage{
10: encode_data(
11:   data,
12:   method = c("json", "csv", "text"),
13:   max_rows = 100,
14:   show_end = 10
15: )
16: 
17: encode_data_csv(data, colnames = TRUE)
18: 
19: encode_data_json(data, strip_brackets = FALSE)
20: 
21: encode_data_text(data)
22: }
23: \arguments{
24: \item{data}{A data frame to encode.}
25: 
26: \item{method}{A character string specifying the encoding method. Options include "json", "csv", or "text".
27: The default value is "json".}
28: 
29: \item{max_rows}{An integer specifying the maximum number of rows to include in the encoded output.
30: If the number of rows in the data frame exceeds this value, the output will be truncated.
31: The default value is \code{100}.}
32: 
33: \item{show_end}{An integer specifying the number of rows to show at the end of the encoded output.
34: The default value is \code{10}.}
35: }
36: \value{
37: A character string representing the encoded data.
38: }
39: \description{
40: Encode a data frame into a specified format (e.g., JSON, CSV, or text) with optional
41: truncation of rows to a specified maximum number.
42: 
43: Its primary purpose is to provide a convenient way to encode data for use with
44: AI Chat Agents.
45: }
46: \examples{
47: encode_data(hud_markets, "json", max_rows = 10, show_end = 5) |> cat()
48: encode_data(hud_markets, "csv", max_rows = 10, show_end = 5) |> cat()
49: encode_data(hud_markets, "text", max_rows = 10, show_end = 5) |> cat()
50: }
`````

## File: man/encrypt_config.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/config.R
 3: \name{encrypt_config}
 4: \alias{encrypt_config}
 5: \alias{decrypt_config}
 6: \title{Encrypt/Decrypt Configuration Files}
 7: \usage{
 8: encrypt_config(
 9:   config_file = NULL,
10:   encrypted_file = NULL,
11:   overwrite = TRUE,
12:   key = "NOCLOCKS_ENCRYPTION_KEY"
13: )
14: 
15: decrypt_config(
16:   encrypted_file = NULL,
17:   decrypted_file = NULL,
18:   key = "NOCLOCKS_ENCRYPTION_KEY",
19:   set_env = FALSE
20: )
21: }
22: \arguments{
23: \item{config_file}{A character string representing the path to the configuration file. If left
24: \code{NULL}, the function will attempt to use the default configuration file via \code{pkg_sys_config("config.yml")}.}
25: 
26: \item{encrypted_file}{A character string representing the path to the encrypted configuration file. If left
27: \code{NULL}, the function will create a new file with the same name as the original file but with the extension
28: \code{.encrypted.yml}.}
29: 
30: \item{overwrite}{A logical value indicating whether to overwrite an existing encrypted file. Default is \code{TRUE}.}
31: 
32: \item{key}{A character string representing the name of the encryption key. Default is \code{NOCLOCKS_ENCRYPTION_KEY}.}
33: 
34: \item{decrypted_file}{A character string representing the path to the decrypted configuration file. If left
35: \code{NULL}, the function will create a new \code{config.yml} in the same directory as the encrypted file.}
36: 
37: \item{set_env}{A logical value indicating whether to set the \code{R_CONFIG_FILE} environment variable to the decrypted file.}
38: }
39: \value{
40: \itemize{
41: \item \code{encrypt_config()}: Returns \code{0} invisibly.
42: \item \code{decrypt_config()}: Returns the configuration invisibly.
43: }
44: }
45: \description{
46: Functions for encrypting and decrypting configuration files.
47: 
48: Functions:
49: \itemize{
50: \item \code{encrypt_config()}: Encrypt a configuration file using a secret key.
51: \item \code{decrypt_config()}: Decrypt an encrypted configuration file using a secret key.
52: }
53: }
54: \examples{
55: \dontrun{
56: # encrypt the default configuration file
57: encrypt_config()
58: 
59: # decrypt the encrypted configuration file
60: decrypt_config()
61: }
62: }
`````

## File: man/execute_r_code.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/execute.R
 3: \name{execute_r_code}
 4: \alias{execute_r_code}
 5: \title{Execute R Code}
 6: \usage{
 7: execute_r_code(code)
 8: }
 9: \arguments{
10: \item{code}{A character string containing the R code to execute.}
11: }
12: \value{
13: The result of the executed R code.
14: }
15: \description{
16: This function executes a given R code string and returns the result.
17: }
18: \examples{
19: \dontrun{
20: execute_r_code("print('Hello, World!')")
21: }
22: 
23: }
`````

## File: man/extract_and_format_code.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/extract.R
 3: \name{extract_and_format_code}
 4: \alias{extract_and_format_code}
 5: \title{Extract and Format Code Blocks}
 6: \usage{
 7: extract_and_format_code(
 8:   markdown_text,
 9:   language = "R",
10:   keep_comments = TRUE,
11:   style = list(),
12:   separator = `\\n\\n`
13: )
14: }
15: \arguments{
16: \item{markdown_text}{The markdown text containing code blocks.}
17: 
18: \item{language}{The language identifier to extract (default: "R").}
19: 
20: \item{keep_comments}{Whether to keep comments when formatting (default: TRUE).}
21: 
22: \item{style}{A list of formatting options for format_code.}
23: 
24: \item{separator}{String used to join blocks (default: \verb{\\n\\n}).}
25: }
26: \value{
27: A single string containing all merged and formatted code blocks.
28: }
29: \description{
30: Extracts code blocks of a specified language from markdown text,
31: formats each block, and merges them.
32: }
`````

## File: man/extract_code_blocks.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/extract.R
 3: \name{extract_code_blocks}
 4: \alias{extract_code_blocks}
 5: \title{Extract Code Blocks from Markdown}
 6: \usage{
 7: extract_code_blocks(markdown_text, language = "R")
 8: }
 9: \arguments{
10: \item{markdown_text}{The markdown text containing code blocks.}
11: 
12: \item{language}{The language identifier to extract (default: "R").}
13: }
14: \value{
15: A character vector with each element containing a code block.
16: }
17: \description{
18: This function extracts code blocks of a specified language from markdown text.
19: It handles both uppercase and lowercase language identifiers (e.g., 'R' and 'r').
20: }
`````

## File: man/extract_code.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/utils.R
 3: \name{extract_code}
 4: \alias{extract_code}
 5: \title{Extract Code}
 6: \usage{
 7: extract_code(text, lang = NULL, print = FALSE)
 8: }
 9: \arguments{
10: \item{text}{A character string representing the text to extract code blocks from.}
11: 
12: \item{lang}{The language of the code block to extract. If left \code{NULL}, the pattern will attempt to
13: match any language.}
14: 
15: \item{print}{Logical. If \code{TRUE}, the extracted code block content will be printed to the console.
16: Defaults to \code{FALSE}.}
17: }
18: \value{
19: A character string representing the extracted code block content.
20: }
21: \description{
22: Extract code blocks from a markdown string.
23: 
24: This function extracts code blocks from a markdown string using a regular expression pattern.
25: }
26: \examples{
27: examples/ex_extract_code.R
28: }
29: \seealso{
30: \code{\link[=get_regex_code_pattern]{get_regex_code_pattern()}} for more information on the regular expression pattern used to extract code blocks.
31: }
`````

## File: man/firecrawl.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/firecrawl.R
 3: \name{firecrawl}
 4: \alias{firecrawl}
 5: \alias{firecrawl_request}
 6: \alias{firecrawl_scrape_url}
 7: \alias{firecrawl_crawl_url}
 8: \title{FireCrawl API}
 9: \usage{
10: firecrawl_request(endpoint = NULL, api_key = get_api_key("firecrawl"))
11: 
12: firecrawl_scrape_url(url, api_key = get_api_key("firecrawl"))
13: 
14: firecrawl_crawl_url(url, ..., api_key = get_api_key("firecrawl"))
15: }
16: \arguments{
17: \item{endpoint}{The API endpoint to use. Default is \code{NULL}.}
18: 
19: \item{api_key}{The API key to use. Defaults to the value returned by \code{get_api_key("firecrawl")}.}
20: 
21: \item{url}{The URL to scrape or crawl.}
22: 
23: \item{...}{Additional arguments to pass to the API.}
24: }
25: \value{
26: \itemize{
27: \item \code{firecrawl_request()}: A request object for the FireCrawl API.
28: \item \code{firecrawl_scrape_url()}: The scraped content in markdown format.
29: \item \code{firecrawl_crawl_url()}: The response from the FireCrawl API.
30: }
31: }
32: \description{
33: The FireCrawl API provides a way to scrape and crawl web pages.
34: \itemize{
35: \item \code{firecrawl_request()}: Create a request object for the FireCrawl API.
36: \item \code{firecrawl_scrape_url()}: Scrape a URL using the FireCrawl API.
37: \item \code{firecrawl_crawl_url()}: Crawl a URL using the FireCrawl API.
38: }
39: }
`````

## File: man/format_code.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/extract.R
 3: \name{format_code}
 4: \alias{format_code}
 5: \title{Format Code Block}
 6: \usage{
 7: format_code(code, keep_comments = TRUE, style = list())
 8: }
 9: \arguments{
10: \item{code}{The code block to format.}
11: 
12: \item{keep_comments}{Whether to keep comments (default: TRUE).}
13: 
14: \item{style}{A list of formatting options to override defaults.}
15: }
16: \value{
17: A formatted code block.
18: }
19: \description{
20: Uses formatR to format a code block with consistent styling.
21: }
`````

## File: man/geocode.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/apis.R
 3: \name{geocode}
 4: \alias{geocode}
 5: \title{Geocode}
 6: \usage{
 7: geocode(location, api_key = get_api_key("openweather"))
 8: }
 9: \arguments{
10: \item{location}{A character string representing the location to geocode.}
11: 
12: \item{api_key}{A character string representing the OpenWeather API key.}
13: }
14: \value{
15: A list containing the geocoded location data.
16: }
17: \description{
18: Geocode a location using the OpenWeather API.
19: }
`````

## File: man/get_regex_code_pattern.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/utils.R
 3: \name{get_regex_code_pattern}
 4: \alias{get_regex_code_pattern}
 5: \title{Get Regex Code Pattern}
 6: \usage{
 7: get_regex_code_pattern(lang = NULL)
 8: }
 9: \arguments{
10: \item{lang}{The language of the code block to extract. If left \code{NULL}, the pattern will match any language
11: using a wildcard \verb{.*?} to match the language name.}
12: }
13: \value{
14: A regular expression pattern for extracting code blocks from a markdown string.
15: }
16: \description{
17: Get a regular expression pattern for extracting code blocks from a markdown string.
18: 
19: For example, to extract R code from a string, you need a pattern to match the following:
20: 
21: \if{html}{\out{<div class="sourceCode">}}\preformatted{```R
22: # some R code
23: ```
24: }\if{html}{\out{</div>}}
25: 
26: This function returns a pattern that can be used to extract the code block from the string.
27: 
28: In the above example with R code the pattern would be: \verb{(?s)(?<=```(r|R)\\n).*?(?=```)}.
29: }
30: \examples{
31: examples/ex_get_regex_code_pattern.R
32: }
`````

## File: man/get_weather.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/apis.R
 3: \name{get_weather}
 4: \alias{get_weather}
 5: \title{Get Weather}
 6: \usage{
 7: get_weather(
 8:   lat,
 9:   lon,
10:   units = c("standard", "metric", "imperial"),
11:   api_key = get_api_key("openweather")
12: )
13: }
14: \arguments{
15: \item{api_key}{A character string representing the OpenWeather API key.
16: If not provided, it will be retrieved from the environment variable \code{OPENWEATHER_API_KEY}.}
17: 
18: \item{location}{A character string representing the location to get the weather for.}
19: }
20: \value{
21: A list containing the current weather data for the specified location.
22: }
23: \description{
24: Get the current weather for a given location using the OpenWeather API.
25: }
`````

## File: man/git_agent.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/agents.R
 3: \name{git_agent}
 4: \alias{git_agent}
 5: \title{Create a Git Agent}
 6: \usage{
 7: git_agent(repo_path = ".")
 8: }
 9: \arguments{
10: \item{repo_path}{Path to the Git repository}
11: }
12: \value{
13: An agent object configured for Git operations
14: }
15: \description{
16: Creates an agent specialized for Git operations and repository management.
17: }
`````

## File: man/gmaps_extract_place_info.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/gmaps.R
 3: \name{gmaps_extract_place_info}
 4: \alias{gmaps_extract_place_info}
 5: \title{Extract Place Information}
 6: \usage{
 7: gmaps_extract_place_info(place)
 8: }
 9: \arguments{
10: \item{place}{A list representing a place object returned by the Google Maps Places API.}
11: }
12: \value{
13: A list containing the following elements:
14: \itemize{
15: \item \code{display_name}: The display name of the place.
16: \item \code{formatted_address}: The formatted address of the place.
17: \item \code{phone}: The phone number of the place.
18: \item \code{business_status}: The business status of the place.
19: \item \code{business_primary_type}: The primary type of the business.
20: \item \code{business_types}: A vector of business types associated with the place.
21: \item \code{latitude}: The latitude of the place.
22: \item \code{longitude}: The longitude of the place.
23: \item \code{maps_url}: The Google Maps URL of the place.
24: \item \code{place_id}: The unique identifier of the place.
25: \item \code{website}: The website URL of the place.
26: \item \code{domain}: The domain extracted from the website URL.
27: }
28: }
29: \description{
30: This function extracts relevant information from a place object returned by the Google Maps Places API.
31: }
`````

## File: man/gmaps_find_best_match.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/gmaps.R
 3: \name{gmaps_find_best_match}
 4: \alias{gmaps_find_best_match}
 5: \title{Determine the Best Match from Multiple Places}
 6: \usage{
 7: gmaps_find_best_match(
 8:   places,
 9:   company_name,
10:   company_address,
11:   company_phone = NULL
12: )
13: }
14: \arguments{
15: \item{places}{List of places returned from the Google Maps Places API.}
16: 
17: \item{company_name}{Character string representing the name of the company.}
18: 
19: \item{company_address}{Character string representing the address of the company.}
20: 
21: \item{company_phone}{Character string representing the phone number of the company.}
22: }
23: \value{
24: A list containing the following elements:
25: \itemize{
26: \item \code{display_name}: The display name of the place.
27: \item \code{formatted_address}: The formatted address of the place.
28: \item \code{phone}: The phone number of the place.
29: \item \code{business_status}: The business status of the place.
30: \item \code{business_primary_type}: The primary type of the business.
31: \item \code{business_types}: A vector of business types associated with the place.
32: \item \code{latitude}: The latitude of the place.
33: \item \code{longitude}: The longitude of the place.
34: \item \code{maps_url}: The Google Maps URL of the place.
35: \item \code{place_id}: The unique identifier of the place.
36: \item \code{website}: The website URL of the place.
37: \item \code{domain}: The domain extracted from the website URL.
38: }
39: }
40: \description{
41: This function takes a list of places returned from the Google Maps Places API
42: and compares them to find the best match based on various criteria.
43: }
44: \details{
45: The function evaluates each place based on:
46: \itemize{
47: \item Type of place (e.g., real estate agency, property management company)
48: \item String similarity of the company name
49: \item String similarity of the address
50: \item Phone number area code match
51: \item Presence of a website
52: \item Business status (operational or not)
53: }
54: 
55: The function returns the place with the highest score, indicating the best match.
56: }
`````

## File: man/gmaps_geocode_address.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/gmaps.R
 3: \name{gmaps_geocode_address}
 4: \alias{gmaps_geocode_address}
 5: \title{Geocode Address}
 6: \usage{
 7: gmaps_geocode_address(address, api_key = get_gmaps_api_key())
 8: }
 9: \arguments{
10: \item{address}{A character string representing the address to geocode.}
11: 
12: \item{api_key}{A character string representing the Google Maps API key.
13: Will default to the result from \code{\link[=get_gmaps_api_key]{get_gmaps_api_key()}}.}
14: }
15: \value{
16: A list containing the following elements:
17: \itemize{
18: \item \code{status}: A character string indicating the status of the API request.
19: \item \code{formatted_address}: A character string representing the formatted address.
20: \item \code{place_id}: A character string representing the place ID.
21: \item \code{place_types}: A character string representing the place types.
22: \item \code{latitude}: A numeric value representing the latitude.
23: \item \code{longitude}: A numeric value representing the longitude.
24: }
25: }
26: \description{
27: Geocode an address using the Google Maps Geocoding API.
28: }
29: \examples{
30: examples/ex_gmaps_geocode_address.R
31: 
32: }
`````

## File: man/gmaps_places_search.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/gmaps.R
 3: \name{gmaps_places_search}
 4: \alias{gmaps_places_search}
 5: \title{Google Maps Places Search}
 6: \usage{
 7: gmaps_places_search(
 8:   company_name,
 9:   company_address,
10:   company_phone = NULL,
11:   api_key = "AIzaSyA9iicnOPVX6NmifeCQNYtEhIciwdSgaOc"
12: )
13: }
14: \arguments{
15: \item{company_name}{Character string representing the name of the company.}
16: 
17: \item{company_address}{Character string representing the address of the company.}
18: 
19: \item{company_phone}{Character string representing the phone number of the company.}
20: 
21: \item{api_key}{A character string representing the Google Maps API key.
22: Defaults to the result from \code{\link[=get_gmaps_api_key]{get_gmaps_api_key()}}.}
23: }
24: \value{
25: A list containing the following elements:
26: \itemize{
27: \item \code{website}: A character string representing the website URL.
28: \item \code{domain}: A character string representing the domain extracted from the website URL.
29: \item \code{display_name}: A character string representing the display name of the place.
30: \item \code{formatted_address}: A character string representing the formatted address of the place.
31: \item \code{phone}: A character string representing the phone number of the place.
32: \item \code{business_status}: A character string representing the business status of the place.
33: \item \code{business_type}: A character string representing the business type of the place.
34: \item \code{latitude}: A numeric value representing the latitude of the place.
35: \item \code{longitude}: A numeric value representing the longitude of the place.
36: \item \code{maps_url}: A character string representing the Google Maps URL of the place.
37: \item \code{place_id}: A character string representing the place ID of the place.
38: }
39: }
40: \description{
41: Search for a company using the Google Maps Places API.
42: }
43: \examples{
44: \dontrun{
45:   gmaps_places_search("Google", "1600 Amphitheatre Parkway, Mountain View, CA")
46: }
47: }
`````

## File: man/initialize_chat.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/chats.R
 3: \name{initialize_chat}
 4: \alias{initialize_chat}
 5: \title{Initialize AI Chat}
 6: \usage{
 7: initialize_chat(
 8:   model = "gpt-4o",
 9:   system_prompt = prompt_default_sys(),
10:   tools = NULL,
11:   temperature = 0,
12:   api_key = get_openai_api_key(),
13:   ...
14: )
15: }
16: \arguments{
17: \item{model}{The model to use for the chat. Default is \verb{gpt-4o}.}
18: 
19: \item{system_prompt}{The system prompt to use for the chat. Default is \code{prompt_default_sys()}.}
20: 
21: \item{tools}{A list of tools to register with the chat.}
22: 
23: \item{api_key}{The OpenAI API key to use for the chat. Default is \code{get_openai_api_key()}.}
24: 
25: \item{...}{Additional arguments to pass to \code{\link[ellmer:chat_openai]{ellmer::chat_openai()}}.}
26: }
27: \value{
28: An \link[ellmer:Chat]{ellmer::Chat} S7 object.
29: }
30: \description{
31: Initialize an AI chat via \code{\link[ellmer:chat_openai]{ellmer::chat_openai()}} and optionally register tools.
32: }
33: \examples{
34: \dontrun{
35: chat <- initialize_chat()
36: chat$chat("What is the meaning of life?")
37: }
38: }
39: \seealso{
40: \code{\link[ellmer:chat_openai]{ellmer::chat_openai()}}
41: }
`````

## File: man/langfuse.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/langfuse.R
 3: \name{langfuse}
 4: \alias{langfuse}
 5: \title{Langfuse API Client}
 6: \description{
 7: A collection of functions for tracking and evaluating LLM interactions
 8: using Langfuse.
 9: 
10: Below are the functions grouped by category:
11: \subsection{Core Client Functions}{
12: \itemize{
13: \item \code{lf_client()}: Create a Langfuse API client configuration.
14: \item \code{lf_ingestion()}: Send data to the Langfuse ingestion endpoint.
15: }
16: }
17: 
18: \subsection{Chat Tracing}{
19: \itemize{
20: \item \code{lf_trace_chat()}: Trace an individual ellmer chat interaction.
21: \item \code{lf_trace_chat_session()}: Trace a chat interaction within a session.
22: \item \code{lf_add_feedback()}: Add user feedback for a traced chat interaction.
23: }
24: }
25: 
26: \subsection{Session Management}{
27: \itemize{
28: \item \code{lf_create_session()}: Create a new session for grouped interactions.
29: \item \code{lf_create_observation()}: Add an observation to a trace.
30: \item \code{lf_create_evaluation()}: Add an evaluation score to a trace.
31: }
32: }
33: 
34: \subsection{Prompt Management}{
35: \itemize{
36: \item \code{lf_add_prompt()}: Add a prompt template to Langfuse.
37: \item \code{lf_get_prompt()}: Retrieve a prompt template from Langfuse.
38: }
39: }
40: 
41: \subsection{Dataset & Experimentation}{
42: \itemize{
43: \item \code{lf_add_dataset()}: Create a new dataset for testing.
44: \item \code{lf_add_dataset_item()}: Add an item to a dataset.
45: \item \code{lf_run_experiment()}: Run an experiment using a dataset.
46: }
47: }
48: }
`````

## File: man/lf_add_dataset_item.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/langfuse.R
 3: \name{lf_add_dataset_item}
 4: \alias{lf_add_dataset_item}
 5: \title{Add an Item to a Dataset}
 6: \usage{
 7: lf_add_dataset_item(
 8:   dataset_name,
 9:   input,
10:   expected_output = NULL,
11:   metadata = NULL,
12:   source_trace_id = NULL,
13:   source_observation_id = NULL,
14:   id = NULL,
15:   status = "ACTIVE",
16:   langfuse_client
17: )
18: }
19: \arguments{
20: \item{dataset_name}{Name of the dataset}
21: 
22: \item{input}{Input text or data}
23: 
24: \item{expected_output}{Expected output (optional)}
25: 
26: \item{metadata}{Optional metadata as a list}
27: 
28: \item{source_trace_id}{Optional trace ID that this item is based on}
29: 
30: \item{source_observation_id}{Optional observation ID that this item is based on}
31: 
32: \item{id}{Optional custom ID for the dataset item (must be unique)}
33: 
34: \item{status}{Item status ("ACTIVE" or "ARCHIVED", defaults to "ACTIVE")}
35: 
36: \item{langfuse_client}{Langfuse client configuration from \code{lf_client()}}
37: }
38: \value{
39: Item ID if successful, NULL otherwise
40: }
41: \description{
42: Adds a test item to a Langfuse dataset.
43: }
44: \examples{
45: \dontrun{
46: # Add an item to a dataset
47: lf_add_dataset_item(
48:   dataset_name = "R Programming Questions",
49:   input = "What are the differences between a list and a data frame in R?",
50:   expected_output = "A detailed comparison of lists and data frames",
51:   metadata = list(category = "data_structures"),
52:   langfuse_client = lf_client
53: )
54: 
55: # Add an item with a custom ID
56: lf_add_dataset_item(
57:   dataset_name = "R Programming Questions",
58:   input = "How do you create a ggplot2 visualization?",
59:   id = "ggplot2-question",
60:   langfuse_client = lf_client
61: )
62: }
63: }
`````

## File: man/lf_add_dataset.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/langfuse.R
 3: \name{lf_add_dataset}
 4: \alias{lf_add_dataset}
 5: \title{Add a Dataset to Langfuse}
 6: \usage{
 7: lf_add_dataset(name, description = NULL, metadata = NULL, langfuse_client)
 8: }
 9: \arguments{
10: \item{name}{Dataset name}
11: 
12: \item{description}{Dataset description (optional)}
13: 
14: \item{metadata}{Additional metadata as a list (optional)}
15: 
16: \item{langfuse_client}{Langfuse client configuration from \code{lf_client()}}
17: }
18: \value{
19: Dataset ID if successful, NULL otherwise
20: }
21: \description{
22: Creates a new dataset for testing and evaluation.
23: }
24: \examples{
25: \dontrun{
26: # Create a dataset
27: dataset_id <- lf_add_dataset(
28:   name = "R Programming Questions",
29:   description = "Common questions about R programming for testing",
30:   langfuse_client = lf_client
31: )
32: }
33: }
`````

## File: man/lf_add_feedback.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/langfuse.R
 3: \name{lf_add_feedback}
 4: \alias{lf_add_feedback}
 5: \title{Add Feedback for a Chat Interaction}
 6: \usage{
 7: lf_add_feedback(result, score, comment = NULL, langfuse_client)
 8: }
 9: \arguments{
10: \item{result}{The result returned from \code{lf_trace_chat()}}
11: 
12: \item{score}{Score value (0-1)}
13: 
14: \item{comment}{Optional comment}
15: 
16: \item{langfuse_client}{Langfuse client configuration from \code{lf_client()}}
17: }
18: \value{
19: Invisibly returns whether the feedback was sent
20: }
21: \description{
22: Adds user feedback for a traced chat interaction.
23: }
24: \examples{
25: \dontrun{
26: # First trace a chat interaction
27: response <- lf_trace_chat(chat, "Tell me about R", lf_client)
28: 
29: # Then add feedback
30: lf_add_feedback(
31:   result = response,
32:   score = 0.95,
33:   comment = "Very helpful response",
34:   langfuse_client = lf_client
35: )
36: }
37: }
`````

## File: man/lf_add_prompt.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/langfuse.R
 3: \name{lf_add_prompt}
 4: \alias{lf_add_prompt}
 5: \title{Add a Prompt to Langfuse}
 6: \usage{
 7: lf_add_prompt(
 8:   name,
 9:   prompt,
10:   type = c("chat", "text"),
11:   config = NULL,
12:   labels = NULL,
13:   tags = NULL,
14:   commit_message = NULL,
15:   langfuse_client
16: )
17: }
18: \arguments{
19: \item{name}{Prompt name}
20: 
21: \item{prompt}{Prompt text or array of message objects (depends on type)}
22: 
23: \item{type}{Prompt type, either "text" or "chat"}
24: 
25: \item{config}{Optional configuration parameters (model, temperature, etc.)}
26: 
27: \item{labels}{Optional list of labels for organizing prompts}
28: 
29: \item{tags}{Optional list of tags for categorizing prompts}
30: 
31: \item{commit_message}{Optional message describing changes (for versioning)}
32: 
33: \item{langfuse_client}{Langfuse client configuration from \code{lf_client()}}
34: }
35: \value{
36: Prompt ID if successful, NULL otherwise
37: }
38: \description{
39: Adds a prompt template to Langfuse for version control and reuse.
40: }
41: \examples{
42: \dontrun{
43: # Add a text prompt template
44: prompt_id <- lf_add_prompt(
45:   name = "r_tutorial_text",
46:   prompt = "You are a helpful R programming tutor. Explain {{topic}} with examples.",
47:   type = "text",
48:   langfuse_client = lf_client
49: )
50: 
51: # Add a chat prompt template
52: prompt_id <- lf_add_prompt(
53:   name = "r_tutorial_chat",
54:   prompt = list(
55:     list(role = "system", content = "You are a helpful R programming tutor."),
56:     list(role = "user", content = "Explain {{topic}} in simple terms with examples.")
57:   ),
58:   type = "chat",
59:   config = list(model = "gpt-4", temperature = 0.7),
60:   labels = c("tutorial", "r-programming"),
61:   langfuse_client = lf_client
62: )
63: }
64: }
`````

## File: man/lf_client.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/langfuse.R
 3: \name{lf_client}
 4: \alias{lf_client}
 5: \title{Create a Langfuse API Client}
 6: \usage{
 7: lf_client(
 8:   secret_key = Sys.getenv("LANGFUSE_SECRET_KEY"),
 9:   public_key = Sys.getenv("LANGFUSE_PUBLIC_KEY"),
10:   host = Sys.getenv("LANGFUSE_HOST", "https://us.cloud.langfuse.com"),
11:   enabled = TRUE
12: )
13: }
14: \arguments{
15: \item{secret_key}{Langfuse API Secret Key. Defaults to \code{LANGFUSE_SECRET_KEY} environment variable.}
16: 
17: \item{public_key}{Langfuse API Public Key. Defaults to \code{LANGFUSE_PUBLIC_KEY} environment variable.}
18: 
19: \item{host}{Langfuse API Host URL. Defaults to \code{LANGFUSE_HOST} environment variable.
20: If not set, defaults to \verb{https://us.cloud.langfuse.com} (US region).}
21: 
22: \item{enabled}{Whether tracing is enabled. Defaults to \code{TRUE}.}
23: }
24: \value{
25: A list containing the Langfuse client configuration.
26: }
27: \description{
28: This function creates a Langfuse API client configuration.
29: }
30: \examples{
31: # Create client with environment variables
32: client <- lf_client()
33: 
34: # Create client with explicit keys
35: client <- lf_client(
36:   secret_key = "your_secret_key",
37:   public_key = "your_public_key"
38: )
39: }
`````

## File: man/lf_create_evaluation.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/langfuse.R
 3: \name{lf_create_evaluation}
 4: \alias{lf_create_evaluation}
 5: \title{Create an Evaluation in Langfuse}
 6: \usage{
 7: lf_create_evaluation(
 8:   trace_id,
 9:   name,
10:   value,
11:   comment = NULL,
12:   metadata = NULL,
13:   langfuse_client
14: )
15: }
16: \arguments{
17: \item{trace_id}{Parent trace ID}
18: 
19: \item{name}{Evaluation name}
20: 
21: \item{value}{Numeric score value (0-1)}
22: 
23: \item{comment}{Optional comment}
24: 
25: \item{metadata}{Optional metadata}
26: 
27: \item{langfuse_client}{Langfuse client configuration from \code{lf_client()}}
28: }
29: \value{
30: Evaluation ID if successful, NULL otherwise
31: }
32: \description{
33: Adds a quality evaluation score to a trace.
34: }
35: \examples{
36: \dontrun{
37: # First trace a chat interaction
38: response <- lf_trace_chat(chat, "Tell me about R", lf_client)
39: trace_id <- attr(response, "trace_id")
40: 
41: # Add an evaluation
42: lf_create_evaluation(
43:   trace_id = trace_id,
44:   name = "response_quality",
45:   value = 0.95,
46:   comment = "Excellent explanation",
47:   langfuse_client = lf_client
48: )
49: }
50: }
`````

## File: man/lf_create_generation_event.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/langfuse.R
 3: \name{lf_create_generation_event}
 4: \alias{lf_create_generation_event}
 5: \title{Create a Generation Event}
 6: \usage{
 7: lf_create_generation_event(
 8:   trace_id,
 9:   model,
10:   prompt,
11:   completion = NULL,
12:   metadata = NULL
13: )
14: }
15: \arguments{
16: \item{trace_id}{Parent trace ID}
17: 
18: \item{model}{Model name}
19: 
20: \item{prompt}{Prompt text}
21: 
22: \item{completion}{Completion text}
23: 
24: \item{metadata}{Additional metadata as a list}
25: }
26: \value{
27: A list representing a generation event
28: }
29: \description{
30: Creates a generation event for Langfuse.
31: }
32: \keyword{internal}
`````

## File: man/lf_create_observation.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/langfuse.R
 3: \name{lf_create_observation}
 4: \alias{lf_create_observation}
 5: \title{Create an Observation in Langfuse}
 6: \usage{
 7: lf_create_observation(
 8:   trace_id,
 9:   type,
10:   input = NULL,
11:   output = NULL,
12:   metadata = NULL,
13:   langfuse_client
14: )
15: }
16: \arguments{
17: \item{trace_id}{Parent trace ID}
18: 
19: \item{type}{Observation type (e.g., "completion", "prompt", "retrieval")}
20: 
21: \item{input}{Input text or data}
22: 
23: \item{output}{Output text or data}
24: 
25: \item{metadata}{Optional metadata}
26: 
27: \item{langfuse_client}{Langfuse client configuration from \code{lf_client()}}
28: }
29: \value{
30: Observation ID if successful, NULL otherwise
31: }
32: \description{
33: Adds an observation to a trace, such as retrieval results or intermediate calculations.
34: }
35: \examples{
36: \dontrun{
37: # First trace a chat interaction
38: response <- lf_trace_chat(chat, "Tell me about R", lf_client)
39: trace_id <- attr(response, "trace_id")
40: 
41: # Add an observation
42: lf_create_observation(
43:   trace_id = trace_id,
44:   type = "analysis",
45:   input = "User is asking about R",
46:   output = "User seems to be a beginner",
47:   langfuse_client = lf_client
48: )
49: }
50: }
`````

## File: man/lf_create_score_event.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/langfuse.R
 3: \name{lf_create_score_event}
 4: \alias{lf_create_score_event}
 5: \title{Create a Score Event}
 6: \usage{
 7: lf_create_score_event(trace_id, value, comment = NULL)
 8: }
 9: \arguments{
10: \item{trace_id}{Parent trace ID}
11: 
12: \item{value}{Score value (0-1)}
13: 
14: \item{comment}{Optional comment}
15: }
16: \value{
17: A list representing a score event
18: }
19: \description{
20: Creates a score event for Langfuse.
21: }
22: \keyword{internal}
`````

## File: man/lf_create_session.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/langfuse.R
 3: \name{lf_create_session}
 4: \alias{lf_create_session}
 5: \title{Create a Session in Langfuse}
 6: \usage{
 7: lf_create_session(name, user_id = NULL, metadata = NULL, langfuse_client)
 8: }
 9: \arguments{
10: \item{name}{Session name}
11: 
12: \item{user_id}{Optional user ID}
13: 
14: \item{metadata}{Optional metadata}
15: 
16: \item{langfuse_client}{Langfuse client configuration from \code{lf_client()}}
17: }
18: \value{
19: Session ID if successful, NULL otherwise
20: }
21: \description{
22: Creates a new session for grouping related traces together.
23: }
24: \examples{
25: \dontrun{
26: # Create a session
27: session_id <- lf_create_session(
28:   name = "User Learning Session",
29:   user_id = "user-123",
30:   metadata = list(app_version = "1.0.0"),
31:   langfuse_client = lf_client
32: )
33: }
34: }
`````

## File: man/lf_create_trace_event.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/langfuse.R
 3: \name{lf_create_trace_event}
 4: \alias{lf_create_trace_event}
 5: \title{Create a Trace Event}
 6: \usage{
 7: lf_create_trace_event(
 8:   name,
 9:   user_id = NULL,
10:   input = NULL,
11:   output = NULL,
12:   metadata = NULL
13: )
14: }
15: \arguments{
16: \item{name}{Name of the trace}
17: 
18: \item{user_id}{User ID}
19: 
20: \item{input}{Input text}
21: 
22: \item{output}{Output text}
23: 
24: \item{metadata}{Additional metadata as a list}
25: }
26: \value{
27: A list representing a trace event
28: }
29: \description{
30: Creates a trace event for Langfuse.
31: }
32: \keyword{internal}
`````

## File: man/lf_get_prompt.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/langfuse.R
 3: \name{lf_get_prompt}
 4: \alias{lf_get_prompt}
 5: \title{Get a Prompt from Langfuse}
 6: \usage{
 7: lf_get_prompt(prompt_name, version = NULL, label = NULL, langfuse_client)
 8: }
 9: \arguments{
10: \item{prompt_name}{Name of the prompt to retrieve}
11: 
12: \item{version}{Specific version number to retrieve (if NULL, latest version will be fetched)}
13: 
14: \item{label}{Label of the prompt to retrieve (optional)}
15: 
16: \item{langfuse_client}{Langfuse client configuration from \code{lf_client()}}
17: }
18: \value{
19: Prompt object if successful, NULL otherwise
20: }
21: \description{
22: Retrieves a prompt template from Langfuse.
23: }
24: \examples{
25: \dontrun{
26: # Get the latest version of a prompt
27: prompt <- lf_get_prompt(
28:   prompt_name = "r_tutorial_chat",
29:   langfuse_client = lf_client
30: )
31: 
32: # Get a specific version of a prompt
33: prompt <- lf_get_prompt(
34:   prompt_name = "r_tutorial_chat",
35:   version = 2,
36:   langfuse_client = lf_client
37: )
38: 
39: # Get a prompt with a specific label
40: prompt <- lf_get_prompt(
41:   prompt_name = "r_tutorial_chat",
42:   label = "development",
43:   langfuse_client = lf_client
44: )
45: }
46: }
`````

## File: man/lf_ingestion.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/langfuse.R
 3: \name{lf_ingestion}
 4: \alias{lf_ingestion}
 5: \title{Send Data to Langfuse Ingestion Endpoint}
 6: \usage{
 7: lf_ingestion(batch, client)
 8: }
 9: \arguments{
10: \item{batch}{The batch data to send as a list}
11: 
12: \item{client}{A Langfuse client configuration created with \code{lf_client()}}
13: }
14: \value{
15: The response from Langfuse on success, FALSE on failure
16: }
17: \description{
18: This function sends data to the Langfuse \verb{/ingestion} endpoint.
19: }
`````

## File: man/lf_run_experiment.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/langfuse.R
 3: \name{lf_run_experiment}
 4: \alias{lf_run_experiment}
 5: \title{Run an Experiment on a Dataset}
 6: \usage{
 7: lf_run_experiment(
 8:   name,
 9:   dataset_name,
10:   chat_function,
11:   langfuse_client,
12:   max_items = 0,
13:   filter_status = "ACTIVE"
14: )
15: }
16: \arguments{
17: \item{name}{Experiment name}
18: 
19: \item{dataset_name}{Name of the dataset to use}
20: 
21: \item{chat_function}{Function to process each item (should accept input and return output)}
22: 
23: \item{langfuse_client}{Langfuse client configuration from \code{lf_client()}}
24: 
25: \item{max_items}{Maximum number of items to process (0 = all)}
26: 
27: \item{filter_status}{Filter items by status ("ACTIVE" or "ARCHIVED")}
28: }
29: \value{
30: Experiment results as a list
31: }
32: \description{
33: Runs an experiment by processing items from a dataset and recording the results.
34: }
35: \examples{
36: \dontrun{
37: # Run an experiment with a fresh chat instance for each item
38: experiment_results <- lf_run_experiment(
39:   name = "R Tutor Test",
40:   dataset_name = "R Programming Questions",
41:   chat_function = function(input) {
42:     # Create a fresh chat for each item
43:     item_chat <- ellmer::chat_openai(model = "gpt-4o")
44:     # The chat() method returns the text response directly
45:     return(item_chat$chat(input))
46:   },
47:   langfuse_client = lf_client,
48:   max_items = 10
49: )
50: }
51: }
`````

## File: man/lf_trace_chat_session.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/langfuse.R
 3: \name{lf_trace_chat_session}
 4: \alias{lf_trace_chat_session}
 5: \title{Trace a Chat Interaction within a Session}
 6: \usage{
 7: lf_trace_chat_session(
 8:   chat,
 9:   message,
10:   session_id,
11:   langfuse_client,
12:   user_id = NULL,
13:   metadata = NULL
14: )
15: }
16: \arguments{
17: \item{chat}{An ellmer chat object}
18: 
19: \item{message}{User message}
20: 
21: \item{session_id}{Session ID for grouped traces from \code{lf_create_session()}}
22: 
23: \item{langfuse_client}{Langfuse client configuration from \code{lf_client()}}
24: 
25: \item{user_id}{Optional user ID}
26: 
27: \item{metadata}{Optional metadata}
28: }
29: \value{
30: The chat response with trace_id and session_id attributes
31: }
32: \description{
33: Sends a message to an ellmer chat and tracks the interaction with Langfuse
34: within a defined session.
35: }
36: \examples{
37: \dontrun{
38: # Create a langfuse client and session
39: lf_client <- lf_client()
40: session_id <- lf_create_session(name = "Learning Session", langfuse_client = lf_client)
41: 
42: # Create a chat
43: chat <- ellmer::chat_openai(model = "gpt-4")
44: 
45: # Trace chat interactions in the session
46: response1 <- lf_trace_chat_session(
47:   chat = chat,
48:   message = "What are the main features of R?",
49:   session_id = session_id,
50:   langfuse_client = lf_client
51: )
52: 
53: response2 <- lf_trace_chat_session(
54:   chat = chat,
55:   message = "Tell me more about data visualization in R",
56:   session_id = session_id,
57:   langfuse_client = lf_client
58: )
59: }
60: }
`````

## File: man/lf_trace_chat.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/langfuse.R
 3: \name{lf_trace_chat}
 4: \alias{lf_trace_chat}
 5: \title{Trace an Ellmer Chat Interaction}
 6: \usage{
 7: lf_trace_chat(chat, message, langfuse_client, user_id = NULL, metadata = NULL)
 8: }
 9: \arguments{
10: \item{chat}{An ellmer chat object}
11: 
12: \item{message}{User message}
13: 
14: \item{langfuse_client}{Langfuse client configuration from \code{lf_client()}}
15: 
16: \item{user_id}{Optional user ID}
17: 
18: \item{metadata}{Optional metadata}
19: }
20: \value{
21: The chat response with trace_id attribute
22: }
23: \description{
24: Sends a message to an ellmer chat and tracks the interaction with Langfuse.
25: }
26: \examples{
27: \dontrun{
28: # Create a langfuse client
29: lf_client <- lf_client()
30: 
31: # Create a chat
32: chat <- ellmer::chat_openai(model = "gpt-4")
33: 
34: # Trace a chat interaction
35: response <- lf_trace_chat(
36:   chat = chat,
37:   message = "Tell me about R programming",
38:   langfuse_client = lf_client
39: )
40: }
41: }
`````

## File: man/merge_code_blocks.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/extract.R
 3: \name{merge_code_blocks}
 4: \alias{merge_code_blocks}
 5: \title{Merge Code Blocks into a Single String}
 6: \usage{
 7: merge_code_blocks(markdown_text, language = "R", separator = `\\n\\n`)
 8: }
 9: \arguments{
10: \item{markdown_text}{The markdown text containing code blocks.}
11: 
12: \item{language}{The language identifier to extract (default: "R").}
13: 
14: \item{separator}{String used to join blocks (default: \verb{\\n\\n}).}
15: }
16: \value{
17: A single string containing all merged code blocks.
18: }
19: \description{
20: This function extracts code blocks of a specified language from markdown text
21: and merges them into a single string.
22: }
`````

## File: man/mermaid_agent.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/agents.R
 3: \name{mermaid_agent}
 4: \alias{mermaid_agent}
 5: \title{Create a Mermaid Diagram Agent}
 6: \usage{
 7: mermaid_agent()
 8: }
 9: \value{
10: An ellmer chat agent configured for Mermaid diagram generation
11: }
12: \description{
13: Creates an agent specialized for generating Mermaid diagrams.
14: }
`````

## File: man/models.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/models.R
 3: \name{models}
 4: \alias{models}
 5: \alias{get_openai_models}
 6: \alias{get_anthropic_models}
 7: \title{AI Models}
 8: \usage{
 9: get_openai_models(api_key = get_openai_api_key())
10: 
11: get_anthropic_models(api_key = get_anthropic_api_key())
12: }
13: \arguments{
14: \item{api_key}{The API key to use for authentication. Will default to the respective platform's API key.}
15: }
16: \value{
17: Each function returns a character vector of model IDs.
18: }
19: \description{
20: Functions for listing and working with AI models across providers.
21: 
22: Functions:
23: \itemize{
24: \item \code{get_openai_models()}: Get OpenAI models by calling the \verb{/models} endpoint.
25: \item \code{get_anthropic_models()}: Get Anthropic models by calling the \verb{/models} endpoint.
26: }
27: }
`````

## File: man/noclocksai-package.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/noclocksai-package.R
 3: \docType{package}
 4: \name{noclocksai-package}
 5: \alias{noclocksai}
 6: \alias{noclocksai-package}
 7: \title{noclocksai: No Clocks AI}
 8: \description{
 9: \if{html}{\figure{logo.png}{options: style='float: right' alt='logo' width='120'}}
10: 
11: The `noclocksai` package provides a set of tools for working with AI at No Clocks, LLC.
12: }
13: \seealso{
14: Useful links:
15: \itemize{
16:   \item \url{https://github.com/noclocks/noclocksai}
17:   \item Report bugs at \url{https://github.com/noclocks/noclocksai/issues}
18: }
19: 
20: }
21: \author{
22: \strong{Maintainer}: Jimmy Briggs \email{jimmy.briggs@jimbrig.com} (\href{https://orcid.org/0000-0002-7489-8787}{ORCID})
23: 
24: Authors:
25: \itemize{
26:   \item Patrick Howard \email{patrick.howard@noclocks.dev} [reviewer]
27: }
28: 
29: Other contributors:
30: \itemize{
31:   \item No Clocks, LLC \email{team@noclocks.dev} [copyright holder, funder]
32: }
33: 
34: }
35: \keyword{internal}
`````

## File: man/npx.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/npx.R
 3: \name{npx}
 4: \alias{npx}
 5: \title{Run \code{npx} Command}
 6: \usage{
 7: npx(cmd, ...)
 8: }
 9: \arguments{
10: \item{cmd}{The command to run.}
11: 
12: \item{...}{Additional arguments to pass to the command.}
13: }
14: \value{
15: The output of the command.
16: }
17: \description{
18: This function runs a command using \code{npx} and returns the output.
19: }
20: \examples{
21: \dontrun{
22: # get npx help
23: npx("--help")
24: 
25: # create a new react app
26: npx("create-react-app", "my-app")
27: 
28: # run repomix tool
29: npx("repomix", "--help")
30: }
31: }
`````

## File: man/pkg_sys.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/utils.R
 3: \name{pkg_sys}
 4: \alias{pkg_sys}
 5: \alias{pkg_sys_template}
 6: \alias{pkg_sys_prompt}
 7: \alias{pkg_sys_extdata}
 8: \alias{pkg_sys_config}
 9: \alias{pkg_sys_database}
10: \alias{pkg_sys_www}
11: \title{Package System File}
12: \usage{
13: pkg_sys(...)
14: 
15: pkg_sys_template(...)
16: 
17: pkg_sys_prompt(...)
18: 
19: pkg_sys_extdata(...)
20: 
21: pkg_sys_config(...)
22: 
23: pkg_sys_database(...)
24: 
25: pkg_sys_www(...)
26: }
27: \arguments{
28: \item{...}{Additional arguments passed to \code{system.file()}.}
29: }
30: \value{
31: A character string representing the path to the system file.
32: }
33: \description{
34: Get the path to a system file within the package.
35: 
36: Various other \verb{pkg_sys_*} functions are available to help with specific file paths:
37: \itemize{
38: \item \code{pkg_sys_template()}: Get the path to a template file.
39: \item \code{pkg_sys_prompt()}: Get the path to a prompt file.
40: \item \code{pkg_sys_extdata()}: Get the path to an external data file.
41: \item \code{pkg_sys_config()}: Get the path to a configuration file.
42: \item \code{pkg_sys_database()}: Get the path to a database file.
43: \item \code{pkg_sys_www()}: Get the path to a \code{www} (i.e. Shiny App Resource) file.
44: }
45: }
46: \examples{
47: # retrieve the path to the package configuration file
48: pkg_sys("config/config.yml")
49: 
50: # or use the shorthand function dedicated for configs
51: pkg_sys_config("config.yml")
52: }
`````

## File: man/prompts.Rd
`````
  1: % Generated by roxygen2: do not edit by hand
  2: % Please edit documentation in R/prompts.R
  3: \name{prompts}
  4: \alias{prompts}
  5: \alias{prompt_default_sys}
  6: \alias{prompt_r_sys}
  7: \alias{prompt_r_user}
  8: \alias{prompt_mermaid_sys}
  9: \alias{prompt_mermaid_user}
 10: \alias{prompt_pkgdown_sys}
 11: \alias{prompt_pkgdown_user}
 12: \title{Prompts}
 13: \usage{
 14: prompt_default_sys(...)
 15: 
 16: prompt_r_sys()
 17: 
 18: prompt_r_user(code)
 19: 
 20: prompt_mermaid_sys()
 21: 
 22: prompt_mermaid_user(
 23:   context = NULL,
 24:   code = NULL,
 25:   chart_type = NULL,
 26:   chart_styles = NULL,
 27:   ...
 28: )
 29: 
 30: prompt_pkgdown_sys()
 31: 
 32: prompt_pkgdown_user(pkg_name, pkg_funcs, existing_yaml)
 33: }
 34: \arguments{
 35: \item{...}{Additional arguments passed to the template as data.}
 36: 
 37: \item{code}{The R code to be executed for \code{prompt_r_user()}.}
 38: 
 39: \item{context}{The context for the Mermaid diagram for \code{prompt_mermaid_user()}.}
 40: 
 41: \item{pkg_name, pkg_funcs, existing_yaml}{Variables passed to the \code{prompt_pkgdown_user()} function.}
 42: }
 43: \value{
 44: All prompt functions return a character string representing the (interpolated) prompt.
 45: }
 46: \description{
 47: A collection of functions for generating prompts.
 48: 
 49: There are functions for generating system prompts and user prompts.
 50: 
 51: \code{noclocksai} comes with various prompt templates included that can be
 52: found under the package's installed \verb{/prompts/} directory or retrieved
 53: directly via \code{\link[=pkg_sys_prompt]{pkg_sys_prompt()}}.
 54: }
 55: \section{Prompts}{
 56: 
 57: 
 58: Default Prompt:
 59: \itemize{
 60: \item \code{prompt_default_sys()}: Generate the default system prompt for the chat session.
 61: }
 62: 
 63: Execute R Code Prompts:
 64: \itemize{
 65: \item \code{prompt_r_sys()}: Generate the system prompt for executing R code.
 66: \item \code{prompt_r_user()}: Generate the user prompt for executing R code.
 67: }
 68: 
 69: Roxygen Prompts:
 70: \itemize{
 71: \item \code{prompt_roxygen_sys()}: Generate the system prompt for Roxygen documentation.
 72: \item \code{prompt_roxygen_user()}: Generate the user prompt for Roxygen documentation.
 73: }
 74: 
 75: Exploratory Data Analysis (EDA) Prompts:
 76: \itemize{
 77: \item \code{prompt_eda_sys()}: Generate the system prompt for exploratory data analysis.
 78: \item \code{prompt_eda_user()}: Generate the user prompt for exploratory data analysis.
 79: }
 80: 
 81: Regular Expression (regex) Prompts:
 82: \itemize{
 83: \item \code{prompt_regex_sys()}: Generate the system prompt for regular expressions.
 84: \item \code{prompt_regex_user()}: Generate the user prompt for regular expressions.
 85: }
 86: 
 87: Google Maps Prompts:
 88: \itemize{
 89: \item \code{prompt_gmaps_sys()}: Generate the system prompt for Google Maps.
 90: \item \code{prompt_gmaps_user()}: Generate the user prompt for Google Maps.
 91: }
 92: 
 93: Database Prompts:
 94: \itemize{
 95: \item \code{prompt_db_sys()}: Generate the system prompt for database interaction.
 96: \item \code{prompt_db_user()}: Generate the user prompt for database interaction.
 97: }
 98: 
 99: Synthetic Data Prompts:
100: \itemize{
101: \item \code{prompt_synthetic_sys()}: Generate the system prompt for synthetic data generation.
102: \item \code{prompt_synthetic_user()}: Generate the user prompt for synthetic data generation.
103: }
104: 
105: \code{pkgdown} Prompts:
106: \itemize{
107: \item \code{prompt_pkgdown_sys()}: Generate the system prompt for the package documentation.
108: \item \code{prompt_pkgdown_user()}: Generate the user prompt for the package documentation.
109: }
110: 
111: Mermaid Prompts:
112: \itemize{
113: \item \code{prompt_mermaid_sys()}: Generate the system prompt for a Mermaid diagram.
114: \item \code{prompt_mermaid_user()}: Generate the user prompt for a Mermaid diagram.
115: }
116: }
117: 
118: \seealso{
119: \code{\link[ellmer:interpolate]{ellmer::interpolate_file()}}, \code{\link[=pkg_sys_prompt]{pkg_sys_prompt()}}
120: }
`````

## File: man/register_tool.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/tools.R
 3: \name{register_tool}
 4: \alias{register_tool}
 5: \alias{register_tools}
 6: \title{Tool Registration}
 7: \usage{
 8: register_tool(chat, tool, use_cache = TRUE, cache = NULL)
 9: 
10: register_tools(chat, tools)
11: }
12: \arguments{
13: \item{chat}{An \code{\link[ellmer:chat_openai]{ellmer::chat_openai()}} object.}
14: 
15: \item{tool}{An \code{\link[ellmer:tool]{ellmer::tool()}} object.}
16: 
17: \item{tools}{A list of \code{\link[ellmer:tool]{ellmer::tool()}} objects.}
18: }
19: \value{
20: While these functions are used for there side-effects (registering tools to the chat session), they do
21: invisibly return the chat object.
22: }
23: \description{
24: Register custom, function calling tools to the chat session.
25: \itemize{
26: \item \code{register_tool()}: Register a single tool.
27: \item \code{register_tools()}: Register multiple tools.
28: }
29: }
30: \examples{
31: \dontrun{
32: chat <- initialize_chat()
33: register_tool(chat, tool_gmaps_places_search())
34: register_tools(chat, list(tool_gmaps_geocode_address(), tool_hunter_get_email_address()))
35: }
36: }
`````

## File: man/repomix.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/repomix.R
 3: \name{repomix}
 4: \alias{repomix}
 5: \title{Repomix}
 6: \usage{
 7: repomix(path = ".", repo = NULL, output = NULL, ...)
 8: }
 9: \arguments{
10: \item{path}{The path to the directory containing the codebase. Default is the current working directory.}
11: 
12: \item{repo}{The remote repository URL to clone. Default is NULL. If provided, ignores the \code{path} argument.}
13: 
14: \item{output}{The output file name. Default is NULL. If provided, the output file will be saved with this name.}
15: 
16: \item{...}{Additional arguments passed to the \verb{npx repomix} function as arguments.}
17: }
18: \value{
19: The output of the \verb{npx repomix} command.
20: }
21: \description{
22: Repomix is a command-line tool for collecting an entire codebase into a single file for
23: use with AI Chat Agents. It can be used to extract code blocks from various file formats
24: and merge them into a single file.
25: }
`````

## File: man/tools.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/tools.R
 3: \name{tools}
 4: \alias{tools}
 5: \alias{tool_current_time}
 6: \alias{tool_geocode_location}
 7: \alias{tool_get_weather}
 8: \alias{tool_execute_r_code}
 9: \alias{tool_extract_code}
10: \alias{tool_query_db}
11: \alias{tool_gmaps_geocode_address}
12: \alias{tool_gmaps_places_search}
13: \alias{tool_anomaly_detection}
14: \alias{tool_correlate_with_anomalies}
15: \title{Custom Tools}
16: \usage{
17: tool_current_time(tz = NULL)
18: 
19: tool_geocode_location(
20:   use_cache = FALSE,
21:   cache = NULL,
22:   api_key = get_api_key("openweather")
23: )
24: 
25: tool_get_weather(
26:   use_cache = FALSE,
27:   cache = NULL,
28:   api_key = get_api_key("openweather")
29: )
30: 
31: tool_execute_r_code(cache = FALSE)
32: 
33: tool_extract_code(cache = FALSE)
34: 
35: tool_query_db(conn, cache = FALSE)
36: 
37: tool_gmaps_geocode_address(use_cache = TRUE, cache = NULL)
38: 
39: tool_gmaps_places_search(use_cache = TRUE, cache = NULL)
40: 
41: tool_anomaly_detection(data)
42: 
43: tool_correlate_with_anomalies(data)
44: }
45: \arguments{
46: \item{tz}{Timezone to use for the current time. Default is \code{NULL}, which uses the system timezone.}
47: 
48: \item{use_cache}{Logical. If \code{TRUE}, the function will cache the results of the tool call using \code{\link[memoise:memoise]{memoise::memoise()}}.
49: Default is \code{FALSE}.}
50: 
51: \item{cache}{Cache object for memoization. Default is \code{NULL}, which uses the default cache.}
52: 
53: \item{api_key}{API key for the OpenWeather API. Defauls to \code{get_api_key("openweather")}.}
54: 
55: \item{conn}{Database connection object. Default is \code{NULL}, which uses the default connection.}
56: 
57: \item{data}{Data frame to analyze for anomalies. Default is \code{NULL}.}
58: }
59: \value{
60: Each function returns an \code{\link[ellmer:tool]{ellmer::tool()}} definition.
61: }
62: \description{
63: Functions that create custom \code{\link[ellmer:tool]{ellmer::tool()}} definitions.
64: 
65: Tool Functions:
66: \itemize{
67: \item \code{tool_current_time()}: Tool that returns the current time.
68: \item \code{tool_get_weather()}: Tool that retrieves the current weather for a given location.
69: Wraps the \code{\link[=get_weather]{get_weather()}} function.
70: \item \code{tool_extract_code()}: Tool that extracts code blocks from text. Wraps the \code{\link[=extract_code]{extract_code()}} function.
71: \item \code{tool_execute_r_code()}: Tool that executes R code and returns the result.
72: \item \code{tool_query_db()}: Tool that executes a SQL query on the database and returns the result.
73: \item \code{tool_gmaps_geocode_address()}: Tool that geocodes an address using the Google Maps Geocoding API.
74: Wraps the \code{\link[=gmaps_geocode_address]{gmaps_geocode_address()}} function.
75: \item \code{tool_gmaps_places_search()}: Tool that searches for a place using the Google Maps Places API.
76: Wraps the \code{\link[=gmaps_places_search]{gmaps_places_search()}} function.
77: \item \code{tool_anomaly_detection()}: Tool that detects anomalies in a dataset.
78: \item \code{tool_correlate_with_anomalies()}: Tool that analyzes correlations and differences between anomalies and normal data.
79: }
80: }
81: \examples{
82: examples/ex_tools.R
83: }
84: \seealso{
85: \code{\link[ellmer:tool]{ellmer::tool()}}
86: }
`````

## File: man/trim_code.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/extract.R
 3: \name{trim_code}
 4: \alias{trim_code}
 5: \title{Trim Code Block}
 6: \usage{
 7: trim_code(code)
 8: }
 9: \arguments{
10: \item{code}{The code block to trim.}
11: }
12: \value{
13: A trimmed code block.
14: }
15: \description{
16: Removes leading/trailing whitespace and empty lines from a code block.
17: }
`````

## File: man/types.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/types.R
 3: \name{types}
 4: \alias{types}
 5: \alias{type_gmaps_response}
 6: \alias{type_gmaps_geocode_response}
 7: \alias{type_gmaps_places_search_response}
 8: \alias{type_gmaps_place_details_response}
 9: \alias{type_dataset_docs}
10: \title{Custom Type Definitions}
11: \usage{
12: type_gmaps_response()
13: 
14: type_gmaps_geocode_response()
15: 
16: type_gmaps_places_search_response()
17: 
18: type_gmaps_place_details_response()
19: 
20: type_dataset_docs()
21: }
22: \description{
23: Functions for defining and maintaining various custom \link[ellmer:Type]{ellmer::Type} definitions.
24: }
`````

## File: man/write_code_to_file.Rd
`````
 1: % Generated by roxygen2: do not edit by hand
 2: % Please edit documentation in R/extract.R
 3: \name{write_code_to_file}
 4: \alias{write_code_to_file}
 5: \title{Write Extracted Code to a File}
 6: \usage{
 7: write_code_to_file(
 8:   markdown_text,
 9:   file,
10:   language = "R",
11:   format = TRUE,
12:   style = list()
13: )
14: }
15: \arguments{
16: \item{markdown_text}{The markdown text containing code blocks.}
17: 
18: \item{file}{The output file path.}
19: 
20: \item{language}{The language identifier to extract (default: "R").}
21: 
22: \item{format}{Whether to format the code (default: TRUE).}
23: 
24: \item{style}{A list of formatting options.}
25: }
26: \value{
27: Invisibly returns TRUE if successful, FALSE otherwise.
28: }
29: \description{
30: Extracts code blocks, formats them, and writes to a file.
31: }
`````

## File: NAMESPACE
`````
  1: # Generated by roxygen2: do not edit by hand
  2: 
  3: export(cfg_get)
  4: export(cfg_list)
  5: export(check_anthropic_api_key)
  6: export(check_cache)
  7: export(check_chat)
  8: export(check_col_names)
  9: export(check_date)
 10: export(check_db_config)
 11: export(check_db_conn)
 12: export(check_dir)
 13: export(check_inherits)
 14: export(check_installed)
 15: export(check_list)
 16: export(check_named)
 17: export(check_names)
 18: export(check_openai_api_key)
 19: export(check_path)
 20: export(check_r6)
 21: export(check_repo)
 22: export(check_request)
 23: export(check_response)
 24: export(check_row)
 25: export(check_s7)
 26: export(check_tibble)
 27: export(check_tool)
 28: export(check_turn)
 29: export(check_type)
 30: export(create_config_template)
 31: export(create_mermaid_diagram)
 32: export(db_connect)
 33: export(db_get_documents)
 34: export(db_preload_documents)
 35: export(db_store_document)
 36: export(decode_base64)
 37: export(decrypt_config)
 38: export(eda_agent)
 39: export(embed_ollama)
 40: export(embed_openai)
 41: export(encode_base64)
 42: export(encode_data)
 43: export(encode_data_csv)
 44: export(encode_data_json)
 45: export(encode_data_text)
 46: export(encrypt_config)
 47: export(execute_r_code)
 48: export(extract_and_format_code)
 49: export(extract_code)
 50: export(extract_code_blocks)
 51: export(firecrawl_crawl_url)
 52: export(firecrawl_request)
 53: export(firecrawl_scrape_url)
 54: export(format_code)
 55: export(geocode)
 56: export(get_anthropic_api_key)
 57: export(get_anthropic_models)
 58: export(get_api_url)
 59: export(get_db_config)
 60: export(get_gemini_api_key)
 61: export(get_gmaps_api_key)
 62: export(get_llms_config)
 63: export(get_openai_api_key)
 64: export(get_openai_models)
 65: export(get_regex_code_pattern)
 66: export(get_weather)
 67: export(git_agent)
 68: export(gmaps_extract_place_info)
 69: export(gmaps_find_best_match)
 70: export(gmaps_geocode_address)
 71: export(gmaps_places_search)
 72: export(initialize_chat)
 73: export(lf_add_dataset)
 74: export(lf_add_dataset_item)
 75: export(lf_add_feedback)
 76: export(lf_add_prompt)
 77: export(lf_client)
 78: export(lf_create_evaluation)
 79: export(lf_create_observation)
 80: export(lf_create_session)
 81: export(lf_get_prompt)
 82: export(lf_ingestion)
 83: export(lf_run_experiment)
 84: export(lf_trace_chat)
 85: export(lf_trace_chat_session)
 86: export(merge_code_blocks)
 87: export(mermaid_agent)
 88: export(npx)
 89: export(pkg_sys)
 90: export(pkg_sys_config)
 91: export(pkg_sys_database)
 92: export(pkg_sys_extdata)
 93: export(pkg_sys_prompt)
 94: export(pkg_sys_template)
 95: export(pkg_sys_www)
 96: export(prompt_default_sys)
 97: export(prompt_mermaid_sys)
 98: export(prompt_mermaid_user)
 99: export(prompt_pkgdown_sys)
100: export(prompt_pkgdown_user)
101: export(prompt_r_sys)
102: export(prompt_r_user)
103: export(read_cache)
104: export(register_tool)
105: export(register_tools)
106: export(repomix)
107: export(set_anthropic_api_key)
108: export(set_gemini_api_key)
109: export(set_gmaps_api_key)
110: export(set_openai_api_key)
111: export(tool_anomaly_detection)
112: export(tool_correlate_with_anomalies)
113: export(tool_current_time)
114: export(tool_execute_r_code)
115: export(tool_extract_code)
116: export(tool_geocode_location)
117: export(tool_get_weather)
118: export(tool_gmaps_geocode_address)
119: export(tool_gmaps_places_search)
120: export(tool_query_db)
121: export(trim_code)
122: export(type_dataset_docs)
123: export(type_gmaps_geocode_response)
124: export(type_gmaps_place_details_response)
125: export(type_gmaps_places_search_response)
126: export(type_gmaps_response)
127: export(write_cache)
128: export(write_code_to_file)
129: import(rlang)
130: importFrom(DBI,SQL)
131: importFrom(DBI,dbConnect)
132: importFrom(DBI,dbIsValid)
133: importFrom(cachem,cache_mem)
134: importFrom(cli,cli_abort)
135: importFrom(cli,cli_alert_danger)
136: importFrom(cli,cli_alert_info)
137: importFrom(cli,cli_alert_success)
138: importFrom(cli,cli_alert_warning)
139: importFrom(cli,cli_progress_bar)
140: importFrom(cli,cli_progress_done)
141: importFrom(cli,cli_progress_update)
142: importFrom(config,get)
143: importFrom(dplyr,arrange)
144: importFrom(dplyr,bind_rows)
145: importFrom(dplyr,collect)
146: importFrom(dplyr,desc)
147: importFrom(dplyr,filter)
148: importFrom(dplyr,mutate)
149: importFrom(dplyr,select)
150: importFrom(dplyr,tbl)
151: importFrom(ellmer,chat_openai)
152: importFrom(ellmer,interpolate_file)
153: importFrom(ellmer,tool)
154: importFrom(ellmer,type_array)
155: importFrom(ellmer,type_boolean)
156: importFrom(ellmer,type_integer)
157: importFrom(ellmer,type_number)
158: importFrom(ellmer,type_object)
159: importFrom(ellmer,type_string)
160: importFrom(fs,dir_create)
161: importFrom(fs,path)
162: importFrom(fs,path_ext_remove)
163: importFrom(glue,glue)
164: importFrom(googleway,google_geocode)
165: importFrom(googleway,set_key)
166: importFrom(httr2,req_auth_basic)
167: importFrom(httr2,req_auth_bearer_token)
168: importFrom(httr2,req_body_json)
169: importFrom(httr2,req_headers)
170: importFrom(httr2,req_method)
171: importFrom(httr2,req_perform)
172: importFrom(httr2,req_url_path_append)
173: importFrom(httr2,req_url_query)
174: importFrom(httr2,request)
175: importFrom(httr2,resp_body_json)
176: importFrom(httr2,resp_check_status)
177: importFrom(httr2,secret_decrypt_file)
178: importFrom(httr2,secret_encrypt_file)
179: importFrom(httr2,secret_has_key)
180: importFrom(jsonlite,toJSON)
181: importFrom(lubridate,as_date)
182: importFrom(memoise,memoise)
183: importFrom(pool,dbExecute)
184: importFrom(pool,dbGetQuery)
185: importFrom(pool,dbIsValid)
186: importFrom(pool,dbPool)
187: importFrom(processx,run)
188: importFrom(purrr,imap)
189: importFrom(purrr,map)
190: importFrom(purrr,map_dbl)
191: importFrom(purrr,partial)
192: importFrom(purrr,pluck)
193: importFrom(purrr,pluck_exists)
194: importFrom(qs2,qs_read)
195: importFrom(qs2,qs_save)
196: importFrom(rappdirs,user_config_dir)
197: importFrom(readr,write_csv)
198: importFrom(rlang,arg_match)
199: importFrom(rlang,arg_match0)
200: importFrom(rlang,caller_arg)
201: importFrom(rlang,caller_env)
202: importFrom(rlang,flatten_chr)
203: importFrom(rlang,inject)
204: importFrom(rlang,run_on_load)
205: importFrom(snakecase,to_title_case)
206: importFrom(stringr,str_extract)
207: importFrom(stringr,str_remove)
208: importFrom(stringr,str_trim)
209: importFrom(tibble,deframe)
210: importFrom(uuid,UUIDgenerate)
211: importFrom(yaml,as.yaml)
212: importFrom(yaml,yaml.load_file)
`````

## File: R/agents.R
`````r
  1: #  ------------------------------------------------------------------------
  2: #
  3: # Title : AI Agents
  4: #    By : Jimmy Briggs
  5: #  Date : 2025-03-03
  6: #
  7: #  ------------------------------------------------------------------------
  8: 
  9: 
 10: #' Create an EDA Agent
 11: #'
 12: #' @description
 13: #' Creates a collection of specialized agents for exploratory data analysis.
 14: #'
 15: #' @param data The data frame to analyze
 16: #' @param anomaly_threshold Threshold for anomaly detection (default 0.95)
 17: #'
 18: #' @return A list of agents specialized for different EDA tasks
 19: #'
 20: #' @export
 21: eda_agent <- function(data, anomaly_threshold = 0.95) {
 22:   check_data_frame(data)
 23: 
 24:   # Create specialized agents
 25:   anomaly_detector_agent <- ellmer::chat_openai(
 26:     model = "gpt-4o",
 27:     system_prompt = "You are an anomaly detection specialist. Analyze data to identify outliers and unusual patterns."
 28:   )
 29: 
 30:   root_cause_agent <- ellmer::chat_openai(
 31:     model = "gpt-4o",
 32:     system_prompt = "You are a root cause analysis expert. Your job is to determine potential causes for data anomalies."
 33:   )
 34: 
 35:   recommendation_agent <- ellmer::chat_openai(
 36:     model = "gpt-4o",
 37:     system_prompt = "You are a data science recommendation engine. Suggest specific actions to address identified issues."
 38:   )
 39: 
 40:   # Register tools with agents
 41:   anomaly_detector_agent$register_tool(tool_anomaly_detection(data = data))
 42:   root_cause_agent$register_tool(tool_root_cause_analysis(data = data))
 43: 
 44:   # Create a tool for recommendations
 45:   recommendation_tool <- ellmer::tool(
 46:     .name = "recommend_actions",
 47:     .description = "Recommend actions to address data issues",
 48:     .fun = function(column_name, issue_description) {
 49:       # This will be handled by the recommendation agent's LLM capabilities
 50:       paste("Recommendations for", column_name, "issue:", issue_description)
 51:     },
 52:     column_name = ellmer::type_string(
 53:       description = "Column with the issue",
 54:       required = TRUE
 55:     ),
 56:     issue_description = ellmer::type_string(
 57:       description = "Description of the issue",
 58:       required = TRUE
 59:     )
 60:   )
 61: 
 62:   recommendation_agent$register_tool(recommendation_tool)
 63: 
 64:   # Return the agents as a list
 65:   return(list(
 66:     anomaly_detector = anomaly_detector_agent,
 67:     root_cause = root_cause_agent,
 68:     recommendation = recommendation_agent,
 69:     threshold = anomaly_threshold,
 70:     data = data
 71:   ))
 72: }
 73: 
 74: #' Create a Mermaid Diagram Agent
 75: #'
 76: #' @description
 77: #' Creates an agent specialized for generating Mermaid diagrams.
 78: #'
 79: #' @return An ellmer chat agent configured for Mermaid diagram generation
 80: #'
 81: #' @export
 82: mermaid_agent <- function() {
 83:   ellmer::chat_openai(
 84:     model = "gpt-4o",
 85:     system_prompt = prompt_mermaid_sys(),
 86:     echo = "none",
 87:     api_args = list(temperature = 0)
 88:   )
 89: }
 90: 
 91: #' Create a Git Agent
 92: #'
 93: #' @description
 94: #' Creates an agent specialized for Git operations and repository management.
 95: #'
 96: #' @param repo_path Path to the Git repository
 97: #'
 98: #' @return An agent object configured for Git operations
 99: #'
100: #' @export
101: git_agent <- function(repo_path = ".") {
102:   # Validate that the path contains a Git repository
103:   if (!dir.exists(file.path(repo_path, ".git"))) {
104:     cli::cli_abort("The specified path does not appear to be a Git repository.")
105:   }
106: 
107:   # Create Git agent
108:   agent <- Agent$new(
109:     provider = "openai",
110:     model = "gpt-4o",
111:     system_prompt = "You are a Git expert that helps with repository management, commit messages, and Git operations.",
112:     name = "git-assistant"
113:   )
114: 
115:   # Create Git-specific tools
116:   git_status_tool <- ellmer::tool(
117:     .name = "git_status",
118:     .description = "Get the current status of the Git repository",
119:     .fun = function() {
120:       # Run git status
121:       status <- system(paste("cd", repo_path, "&& git status"), intern = TRUE)
122:       paste(status, collapse = "\n")
123:     }
124:   )
125: 
126:   git_log_tool <- ellmer::tool(
127:     .name = "git_log",
128:     .description = "Get the commit history of the Git repository",
129:     .fun = function(n = 10) {
130:       # Run git log
131:       log <- system(
132:         paste0("cd ", repo_path, " && git log --oneline --graph --decorate -n ", n),
133:         intern = TRUE
134:       )
135:       paste(log, collapse = "\n")
136:     },
137:     n = ellmer::type_number(
138:       description = "Number of commits to show",
139:       required = FALSE
140:     )
141:   )
142: 
143:   git_diff_tool <- ellmer::tool(
144:     .name = "git_diff",
145:     .description = "Get the diff of the current changes",
146:     .fun = function(staged = FALSE) {
147:       # Run git diff
148:       diff_cmd <- if (staged) "git diff --staged" else "git diff"
149:       diff <- system(paste("cd", repo_path, "&&", diff_cmd), intern = TRUE)
150:       paste(diff, collapse = "\n")
151:     },
152:     staged = ellmer::type_boolean(
153:       description = "Whether to show staged changes",
154:       required = FALSE
155:     )
156:   )
157: 
158:   # Register tools with agent
159:   agent$register_tool(git_status_tool)
160:   agent$register_tool(git_log_tool)
161:   agent$register_tool(git_diff_tool)
162: 
163:   return(agent)
164: }
`````

## File: R/apis.R
`````r
  1: #  ------------------------------------------------------------------------
  2: #
  3: # Title : APIs
  4: #    By : Jimmy Briggs
  5: #  Date : 2025-03-09
  6: #
  7: #  ------------------------------------------------------------------------
  8: 
  9: 
 10: # topic -----------------------------------------------------------------------------------------------------------
 11: 
 12: #' AI APIs
 13: #'
 14: #' @name apis
 15: #'
 16: #' @description
 17: #' These functions are helpers for working with various AI APIs.
 18: #'
 19: #' - `get_api_url()`: Retrieve the base URL for a given API provider and service.
 20: #'
 21: #' @param provider A character string specifying the API provider.
 22: #' @param name A character string specifying the service name.
 23: #'
 24: #' @returns
 25: #' A character string of the base URL for the specified API service.
 26: NULL
 27: 
 28: # base URLs -------------------------------------------------------------------------------------------------------
 29: 
 30: #' @rdname apis
 31: #' @export
 32: #' @importFrom rlang arg_match0
 33: #' @importFrom purrr pluck
 34: get_api_url <- function(provider, name = NULL) {
 35: 
 36:   provider <- rlang::arg_match0(provider, providers)
 37:   available <- provider_base_urls[[provider]] |> names()
 38: 
 39:   if (is.null(name)) name <- "base"
 40:   name <- rlang::arg_match0(name, available)
 41: 
 42:   provider_base_urls |>
 43:     purrr::pluck(provider, name) |>
 44:     as.character()
 45: 
 46: }
 47: 
 48: 
 49: # geocode ---------------------------------------------------------------------------------------------------------
 50: 
 51: #' Geocode
 52: #'
 53: #' @description
 54: #' Geocode a location using the OpenWeather API.
 55: #'
 56: #' @param location A character string representing the location to geocode.
 57: #' @param api_key A character string representing the OpenWeather API key.
 58: #'
 59: #' @returns
 60: #' A list containing the geocoded location data.
 61: #'
 62: #' @export
 63: #'
 64: #' @importFrom httr2 request req_url_query req_perform resp_check_status resp_body_json
 65: geocode <- function(location, api_key = get_api_key("openweather")) {
 66: 
 67:   base_url <- "http://api.openweathermap.org/geo/1.0/direct"
 68: 
 69:   query_params <- list(
 70:     q = location,
 71:     limit = 1,
 72:     appid = api_key
 73:   )
 74: 
 75:   req <- httr2::request(base_url) |>
 76:     httr2::req_url_query(!!!query_params)
 77: 
 78:   resp <- httr2::req_perform(req)
 79:   httr2::resp_check_status(resp)
 80: 
 81:   httr2::resp_body_json(resp)
 82: 
 83: }
 84: 
 85: # get weather -----------------------------------------------------------------------------------------------------
 86: 
 87: #' Get Weather
 88: #'
 89: #' @description
 90: #' Get the current weather for a given location using the OpenWeather API.
 91: #'
 92: #' @param location A character string representing the location to get the weather for.
 93: #' @param api_key A character string representing the OpenWeather API key.
 94: #'   If not provided, it will be retrieved from the environment variable `OPENWEATHER_API_KEY`.
 95: #'
 96: #' @returns
 97: #' A list containing the current weather data for the specified location.
 98: #'
 99: #' @export
100: get_weather <- function(lat, lon, units = c("standard", "metric", "imperial"), api_key = get_api_key("openweather")) {
101: 
102:   units <- match.arg(units)
103:   if (units == "standard") units <- NULL
104: 
105:   base_url <- "https://api.openweathermap.org/data/2.5/weather"
106: 
107:   query_params <- list(
108:     lat = lat,
109:     lon = lon,
110:     units = units,
111:     appid = api_key
112:   ) |>
113:     purrr::compact()
114: 
115:   req <- httr2::request(base_url) |>
116:     httr2::req_url_query(!!!query_params)
117: 
118:   resp <- httr2::req_perform(req)
119:   httr2::resp_check_status(resp)
120: 
121:   httr2::resp_body_json(resp)
122: }
`````

## File: R/cache.R
`````r
 1: noclocksai_cache_env <- rlang::new_environment()
 2: 
 3: cache_last_chat <- function(chat, ...) {
 4: 
 5:   last_turn_user <- chat$last_turn(role = "user")
 6:   last_turn_assistant <- chat$last_turn(role = "assistant")
 7: 
 8:   obj <- list(
 9:     user = last_turn_user,
10:     assistant = last_turn_assistant,
11:     chat = chat
12:   )
13: 
14:   noclocksai_cache_env[["last_chat"]] <- obj
15: 
16:   invisible(obj)
17: 
18: }
19: 
20: #' Caching Utility Functions
21: #'
22: #' @name cache
23: #'
24: #' @description
25: #' These functions provide a simple caching mechanism for storing and retrieving objects to and from disk.
26: #'
27: #' - `write_cache()`: Save an object to disk using the `qs` format.
28: #' - `read_cache()`: Read an object from disk using the `qs` format.
29: #'
30: #' @param obj The object to be cached.
31: #' @param name The name of the object to be cached. If `NULL`, the name of the object in the environment will be used.
32: #' @param path The directory where the object will be cached. Default is `"cache"`.
33: #' @param overwrite If `TRUE`, overwrite the existing file if it exists. Default is `FALSE`.
34: #' @param ... Additional arguments passed to the `qs2` functions.
35: #'
36: #' @returns
37: #' - `write_cache()`: Invisible object.
38: #' - `read_cache()`: Invisible path to the cached file.
39: #'
40: #' @seealso [qs2::qs_read()] and [qs2::qs_save()]
41: NULL
42: 
43: 
44: #' @rdname cache
45: #' @export
46: #' @importFrom cli cli_alert_success cli_alert_warning cli_alert_danger
47: #' @importFrom qs2 qs_save qs_read
48: #' @importFrom fs dir_create
49: write_cache <- function(
50:   obj,
51:   name = NULL,
52:   path = "cache",
53:   overwrite = FALSE,
54:   ...
55: ) {
56: 
57:   check_dir(path)
58:   if (is.null(name)) name <- deparse(substitute(obj))
59:   qs_file <- file.path(path, paste0(name, ".qs"))
60:   if (file.exists(qs_file) && !overwrite) {
61:     cli::cli_alert_warning("File {.file {qs_file}} already exists. Use {.code overwrite = TRUE} to overwrite.")
62:     return(invisible(NULL))
63:   }
64:   tryCatch({
65:     qs2::qs_save(obj, qs_file, ...)
66:     cli::cli_alert_success("Object {.field {name}} saved to {.file {qs_file}}.")
67:   }, error = function(e) {
68:     cli::cli_alert_danger("Failed to cache object {.field {name}}: {.error {e$message}}")
69:     return(invisible(NULL))
70:   })
71:   invisible(obj)
72: }
73: 
74: #' @rdname cache
75: #' @export
76: #' @importFrom cli cli_alert_success cli_alert_warning cli_alert_danger
77: #' @importFrom qs2 qs_read
78: read_cache <- function(
79:   name,
80:   path = "cache",
81:   ...
82: ) {
83: 
84:   check_dir(path)
85:   qs_file <- file.path(path, paste0(name, ".qs"))
86:   if (!file.exists(qs_file)) {
87:     cli::cli_alert_warning("File {.file {qs_file}} does not exist.")
88:     return(NULL)
89:   }
90:   tryCatch({
91:     obj <- qs2::qs_read(qs_file, ...)
92:     cli::cli_alert_success("Object {.field {name}} read from {.file {qs_file}}.")
93:     return(obj)
94:   }, error = function(e) {
95:     cli::cli_alert_danger("Failed to read object {.field {name}}: {.error {e$message}}")
96:     return(NULL)
97:   })
98:   invisible(qs_file)
99: }
`````

## File: R/chats.R
`````r
 1: #  ------------------------------------------------------------------------
 2: #
 3: # Title : AI Chats
 4: #    By : Jimmy Briggs
 5: #  Date : 2025-03-03
 6: #
 7: #  ------------------------------------------------------------------------
 8: 
 9: #' Initialize AI Chat
10: #'
11: #' @description
12: #' Initialize an AI chat via [ellmer::chat_openai()] and optionally register tools.
13: #'
14: #' @param model The model to use for the chat. Default is `gpt-4o`.
15: #' @param system_prompt The system prompt to use for the chat. Default is `prompt_default_sys()`.
16: #' @param tools A list of tools to register with the chat.
17: #' @param api_key The OpenAI API key to use for the chat. Default is `get_openai_api_key()`.
18: #' @param ... Additional arguments to pass to [ellmer::chat_openai()].
19: #'
20: #' @returns
21: #' An [ellmer::Chat] S7 object.
22: #'
23: #' @export
24: #'
25: #' @seealso [ellmer::chat_openai()]
26: #'
27: #' @importFrom ellmer chat_openai
28: #'
29: #' @examples
30: #' \dontrun{
31: #' chat <- initialize_chat()
32: #' chat$chat("What is the meaning of life?")
33: #' }
34: initialize_chat <- function(
35:     model = "gpt-4o",
36:     system_prompt = prompt_default_sys(),
37:     tools = NULL,
38:     temperature = 0,
39:     api_key = get_openai_api_key(),
40:     ...
41: ) {
42: 
43:   chat <- ellmer::chat_openai(
44:     model = model,
45:     system_prompt = system_prompt,
46:     api_key = api_key,
47:     api_args = list(temperature = temperature),
48:     ...
49:   )
50: 
51:   if (!is.null(tools)) {
52:     register_tools(chat, tools)
53:   }
54: 
55:   return(chat)
56: 
57: }
58: 
59: chat_eda <- function(
60:   data,
61:   chat = NULL,
62:   ...
63: ) {
64: 
65:   check_data_frame(data)
66: 
67:   sys_prompt <- prompt_eda_sys()
68: 
69:   if (is.null(chat)) {
70:     chat <- initialize_chat(system_prompt = prompt_eda_sys())
71:   } else {
72:     check_chat(chat)
73:     old_sys_prompt <- chat$get_system_prompt()
74:     withr::defer(chat$set_system_prompt(old_sys_prompt))
75:     chat$set_system_prompt(prompt_eda_sys())
76:   }
77: 
78:   check_chat(chat)
79: 
80:   prompt <- prompt_eda_user(data)
81: 
82:   chat$chat(prompt, ...)
83: 
84: }
`````

## File: R/checks.R
`````r
  1: #  ------------------------------------------------------------------------
  2: #
  3: # Title : Check Utilities
  4: #    By : Jimmy Briggs
  5: #  Date : 2025-03-03
  6: #
  7: #  ------------------------------------------------------------------------
  8: 
  9: #' Check Functions
 10: #'
 11: #' @name checks
 12: #'
 13: #' @description
 14: #' A collection of functions for checking the validity of function arguments.
 15: #'
 16: #' Below are the `check_` functions grouped by category:
 17: #'
 18: #' ## Classes
 19: #'
 20: #' - `check_inherits()`: Check if an object inherits from a specific class.
 21: #' - `check_s7()`: Check if an object is an S3 object.
 22: #' - `check_r6()`: Check if an object is an R6 object.
 23: #'
 24: #' ## Database
 25: #'
 26: #' - `check_db_conn()`: Check if an object is a valid database connection (DBI or Pool).
 27: #' - `check_db_config()`: Check if an object is a valid database configuration list.
 28: #'
 29: #' ## `ellmer`
 30: #'
 31: #' - `check_chat()`: Check if an object is a [ellmer::Chat] object.
 32: #' - `check_tool()`: Check if an object is an [ellmer::tool()] object.
 33: #' - `check_type()`: Check if an object is an [ellmer::Type] object.
 34: #'
 35: #' ## `tibble`
 36: #'
 37: #' - `check_tibble()`: Check if an object is a [tibble::tibble()] data frame.
 38: #' - `check_row()`: Check if an object is a single-row data frame.
 39: #' - `check_col_names()`: Check if a data frame contains specific column names.
 40: #'
 41: #' ## Lists
 42: #'
 43: #' - `check_list()`: Check if an object is a list.
 44: #' - `check_list_names()`: Check if a list contains specific names.
 45: #'
 46: #' ## Dates
 47: #'
 48: #' - `check_date()`: Check if an object is a valid date object.
 49: #'
 50: #' ## Packages
 51: #'
 52: #' - `check_installed()`: Check if a package is installed.
 53: #'
 54: #' ## API Keys
 55: #'
 56: #' - `check_openai_api_key()`: Check if an object is a valid OpenAI API key.
 57: #' - `check_anthropic_api_key()`: Check if an object is a valid Anthropic API key.
 58: #'
 59: #' @param x,conn,cfg,chat,tool,data,row,req,resp,lst,date,pkg,api_key The object to check.
 60: #' @param class A character string representing the class to check against.
 61: #' @param req_cols A character vector representing the required column names.
 62: #' @param arg,arg,call Internal arguments used for [rlang::args_error_context] features.
 63: #'
 64: #' @importFrom cli cli_abort
 65: #' @importFrom rlang caller_arg caller_env
 66: NULL
 67: 
 68: # classes --------------------------------------------------------------------------------------------------------
 69: 
 70: #' @rdname checks
 71: #' @export
 72: check_inherits <- function(obj, class, arg = rlang::caller_arg(obj), call = rlang::caller_env()) {
 73:   if (!inherits(obj, class)) {
 74:     cli::cli_abort(
 75:       "{.arg {arg}} must inherit from class {.cls {class}}, not {.obj_type_friendly {obj}}.",
 76:       call = call
 77:     )
 78:   }
 79:   invisible(NULL)
 80: }
 81: 
 82: #' @rdname checks
 83: #' @export
 84: check_s7 <- function(obj, arg = rlang::caller_arg(obj), call = rlang::caller_env()) {
 85:   check_inherits(obj, "S7_object", arg = arg, call = call)
 86:   S7::check_is_S7(obj, arg = arg)
 87: }
 88: 
 89: #' @rdname checks
 90: #' @export
 91: check_r6 <- function(obj, arg = rlang::caller_arg(obj), call = rlang::caller_env()) {
 92:   if (R6::is.R6Class(obj)) obj <- obj$new()
 93:   check_inherits(obj, "R6", arg = arg, call = call)
 94:   if (!R6::is.R6(obj)) {
 95:     cli::cli_abort("{.arg {arg}} must be an R6 object.", call = call)
 96:   }
 97: }
 98: 
 99: 
100: # database --------------------------------------------------------------------------------------------------------
101: 
102: #' @rdname checks
103: #' @export
104: #' @importFrom pool dbIsValid
105: #' @importFrom DBI dbIsValid
106: check_db_conn <- function(conn, arg = rlang::caller_arg(conn), call = rlang::caller_env()) {
107: 
108:   is_dbi <- any(grepl("Connection", class(conn)))
109:   is_pool <- inherits(conn, "Pool")
110:   is_rstudio <- inherits(conn, "connConnection")
111: 
112:   if (!is_dbi && !is_pool && !is_rstudio) {
113:     cli::cli_abort("{.arg {arg}} must be a database connection object.", call = call)
114:   }
115: 
116:   if (is_pool) {
117:     if (!pool::dbIsValid(conn)) {
118:       cli::cli_abort("{.arg {arg}} is not a valid database connection.", call = call)
119:     }
120:   }
121: 
122:   if (is_dbi) {
123:     if (!DBI::dbIsValid(conn)) {
124:       cli::cli_abort("{.arg {arg}} is not a valid database connection.", call = call)
125:     }
126:   }
127: 
128:   invisible(conn)
129: 
130: }
131: 
132: #' @rdname checks
133: #' @export
134: check_db_config <- function(cfg, arg = rlang::caller_arg(cfg), call = rlang::caller_env()) {
135:   req_keys <- c("host", "dbname", "user", "password", "port")
136:   check_list(cfg, arg = arg, call = call)
137:   check_names(cfg, req_keys, arg = arg, call = call)
138:   invisible(NULL)
139: }
140: 
141: # ellmer ------------------------------------------------------------------
142: 
143: #' @rdname checks
144: #' @export
145: check_chat <- function(chat, arg = rlang::caller_arg(chat), call = rlang::caller_env()) {
146:   check_inherits(chat, "Chat", arg = arg, call = call)
147:   invisible(NULL)
148: }
149: 
150: #' @rdname checks
151: #' @export
152: check_tool <- function(tool, arg = rlang::caller_arg(tool), call = rlang::caller_env()) {
153:   check_inherits(tool, "ellmer::ToolDef", arg = arg, call = call)
154:   invisible(NULL)
155: }
156: 
157: #' @rdname checks
158: #' @export
159: check_type <- function(type, arg = rlang::caller_arg(type), call = rlang::caller_env()) {
160:   check_s7(type, arg = arg, call = call)
161:   check_inherits(type, "ellmer::Type", arg = arg, call = call)
162: }
163: 
164: #' @rdname checks
165: #' @export
166: check_turn <- function(turn, arg = rlang::caller_arg(turn), call = rlang::caller_env()) {
167:   check_s7(turn, arg = arg, call = call)
168:   check_inherits(turn, "ellmer::Turn", arg = arg, call = call)
169:   invisible(NULL)
170: }
171: 
172: # httr2 -----------------------------------------------------------------------------------------------------------
173: 
174: #' @rdname checks
175: #' @export
176: check_request <- function(req, arg = rlang::caller_arg(req), call = rlang::caller_env()) {
177:   check_inherits(req, "httr2_request", arg = arg, call = call)
178:   invisible(NULL)
179: }
180: 
181: #' @rdname checks
182: #' @export
183: check_response <- function(resp, arg = rlang::caller_arg(resp), call = rlang::caller_env()) {
184:   check_inherits(resp, "httr2_response", arg = arg, call = call)
185:   invisible(NULL)
186: }
187: 
188: # tibble ----------------------------------------------------------------------------------------------------------
189: 
190: #' @rdname checks
191: #' @export
192: check_tibble <- function(data, arg = rlang::caller_arg(data), call = rlang::caller_env()) {
193:   check_inherits(data, "tbl_df", obj_arg = arg, call = call)
194:   invisible(NULL)
195: }
196: 
197: #' @rdname checks
198: #' @export
199: check_row <- function(row, arg = rlang::caller_arg(row), call = rlang::caller_env()) {
200:   check_inherits(row, "data.frame", arg = arg, call = call)
201:   if (nrow(row) != 1) {
202:     cli::cli_abort("{.arg {arg}} must be a single-row data frame.", call = call)
203:   }
204:   invisible(NULL)
205: }
206: 
207: #' @rdname checks
208: #' @export
209: check_col_names <- function(data, req_cols, arg = rlang::caller_arg(data), call = rlang::caller_env()) {
210:   check_inherits(data, "data.frame", arg = arg, call = call)
211:   missing_cols <- setdiff(req_cols, colnames(data))
212:   if (length(missing_cols) > 0) {
213:     cli::cli_abort(
214:       "{.arg {arg}} must contain the following columns: {.field {missing_cols}}.",
215:       call = call
216:     )
217:   }
218: }
219: 
220: 
221: # httr2 -----------------------------------------------------------------------------------------------------------
222: 
223: #' @rdname checks
224: #' @export
225: check_request <- function(req, arg = rlang::caller_arg(req), call = rlang::caller_env()) {
226:   check_inherits(req, "httr2_request", arg = arg, call = call)
227:   invisible(NULL)
228: }
229: 
230: #' @rdname checks
231: #' @export
232: check_response <- function(resp, arg = rlang::caller_arg(resp), call = rlang::caller_env()) {
233:   check_inherits(resp, "httr2_response", arg = arg, call = call)
234:   invisible(NULL)
235: }
236: 
237: 
238: # lists -----------------------------------------------------------------------------------------------------------
239: 
240: #' @rdname checks
241: #' @export
242: check_list <- function(lst, arg = rlang::caller_arg(lst), call = rlang::caller_env()) {
243:   if (!is.list(lst)) {
244:     cli::cli_abort("{.arg {arg}} must be a list.", call = call)
245:   }
246:   invisible(NULL)
247: }
248: 
249: # names -------------------------------------------------------------------
250: 
251: #' @rdname checks
252: #' @export
253: check_named <- function(obj, arg = rlang::caller_arg(obj), call = rlang::caller_env()) {
254:   if (!rlang::is_named(obj)) {
255:     cli::cli_abort("{.arg {arg}} must be named.", call = call)
256:   }
257:   invisible(NULL)
258: }
259: 
260: #' @rdname checks
261: #' @export
262: check_names <- function(obj, req_names, arg = rlang::caller_arg(lst), call = rlang::caller_env()) {
263:   check_named(obj, arg = arg, call = call)
264:   missing_names <- setdiff(req_names, names(obj))
265:   if (length(missing_names) > 0) {
266:     cli::cli_abort(
267:       "{.arg {arg}} must contain the following names: {.field {missing_names}}.",
268:       call = call
269:     )
270:   }
271: }
272: 
273: #' @rdname checks
274: #' @export
275: check_col_names <- function(data, req_cols, arg = rlang::caller_arg(data), call = rlang::caller_env()) {
276:   check_data_frame(data, arg = arg, call = call)
277:   missing_cols <- setdiff(req_cols, colnames(data))
278:   if (length(missing_cols) > 0) {
279:     cli::cli_abort(
280:       "{.arg {arg}} must contain the following columns: {.field {missing_cols}}.",
281:       call = call
282:     )
283:   }
284: }
285: 
286: #' @rdname checks
287: #' @export
288: check_date <- function(date, arg = rlang::caller_arg(date), call = rlang::caller_env()) {
289:   if (!is.Date(date) && !is.POSIXt(date)) {
290:     cli::cli_abort("{.arg {arg}} must be a valid date object.", call = call)
291:   }
292:   invisible(NULL)
293: }
294: 
295: 
296: # paths -----------------------------------------------------------------------------------------------------------
297: 
298: #' @rdname checks
299: #' @export
300: check_path <- function(path, arg = rlang::caller_arg(path), call = rlang::caller_env()) {
301:   if (!file.exists(path)) {
302:     cli::cli_abort("{.arg {arg}} must be a valid file or directory path.", call = call)
303:   }
304:   invisible(NULL)
305: }
306: 
307: #' @rdname checks
308: #' @export
309: check_dir <- function(path, arg = rlang::caller_arg(path), call = rlang::caller_env()) {
310:   if (!dir.exists(path)) {
311:     cli::cli_abort("{.arg {arg}} must be a valid directory path.", call = call)
312:   }
313:   invisible(NULL)
314: }
315: 
316: #' @rdname checks
317: #' @export
318: check_cache <- function(path, arg = rlang::caller_arg(path), call = rlang::caller_env()) {
319:   check_dir(path, arg = arg, call = call)
320:   if (!file.exists(file.path(path, "cache"))) {
321:     cli::cli_abort("{.arg {arg}} must be a valid cache directory.", call = call)
322:   }
323:   invisible(NULL)
324: }
325: 
326: # packages --------------------------------------------------------------------------------------------------------
327: 
328: #' @rdname checks
329: #' @export
330: check_installed <- function(pkg, arg = rlang::caller_arg(pkg), call = rlang::caller_env()) {
331:   if (!rlang::is_installed(pkg)) {
332:     cli::cli_abort("Package {.pkg {arg}} is not installed.", call = call)
333:   }
334:   invisible(NULL)
335: }
336: 
337: # strings ----------------------------------------------------------------------------------------------------------
338: 
339: #' @rdname checks
340: #' @export
341: #' @importFrom cli cli_abort
342: check_repo <- function(repo, arg = rlang::caller_arg(repo), call = rlang::caller_env()) {
343:   if (!grepl("^\\w+/\\w+$", repo)) {
344:     cli::cli_abort("{.arg {arg}} must be in the format 'user/repo'.", call = call)
345:   }
346:   invisible(NULL)
347: }
348: 
349: #' @rdname checks
350: #' @export
351: check_openai_api_key <- function(api_key, arg = rlang::caller_arg(api_key), call = rlang::caller_env()) {
352:   # openai api key should be a string with 132 characters beginning with "sk-proj-"
353:   is_char <- is.character(api_key)
354:   valid_nchar <- nchar(api_key) == 132
355:   valid_prefix <- grepl("^sk-proj-", api_key)
356:   if (!is_char) cli::cli_abort("{.arg {arg}} must be a character string.", call = call)
357:   if (!valid_nchar) cli::cli_abort("{.arg {arg}} must be a valid OpenAI API key with 132 characters.", call = call)
358:   if (!valid_prefix) cli::cli_abort("{.arg {arg}} must be a valid OpenAI API key beginning with 'sk-proj-'.", call = call)
359:   invisible(NULL)
360: }
361: 
362: #' @rdname checks
363: #' @export
364: check_anthropic_api_key <- function(api_key, arg = rlang::caller_arg(api_key), call = rlang::caller_env()) {
365:   # anthropic api key should be a string with 108 characters beginning with "sk-ant-"
366:   is_char <- is.character(api_key)
367:   valid_nchar <- nchar(api_key) == 108
368:   valid_prefix <- grepl("^sk-ant-", api_key)
369:   if (!is_char) cli::cli_abort("{.arg {arg}} must be a character string.", call = call)
370:   if (!valid_nchar) cli::cli_abort("{.arg {arg}} must be a valid Anthropic API key with 108 characters.", call = call)
371:   if (!valid_prefix) cli::cli_abort("{.arg {arg}} must be a valid Anthropic API key beginning with 'sk-ant-'.", call = call)
372:   invisible(NULL)
373: }
`````

## File: R/config.R
`````r
  1: #  ------------------------------------------------------------------------
  2: #
  3: # Title : Configuration
  4: #    By : Jimmy Briggs
  5: #  Date : 2025-03-03
  6: #
  7: #  ------------------------------------------------------------------------
  8: 
  9: 
 10: # topic -----------------------------------------------------------------------------------------------------------
 11: 
 12: #' Configuration
 13: #'
 14: #' @name config
 15: #'
 16: #' @description
 17: #' Functions for managing configuration settings and environment variables.
 18: #'
 19: #' Functions:
 20: #'
 21: #' - `get_db_config()`: Get the database configuration from the configuration file.
 22: #'
 23: #' - `get_llms_config()`: Get the LLM configuration from the configuration file.
 24: #'
 25: #' - `get_tools_config()`: Get the tools configuration from the configuration file.
 26: #'
 27: #' LLM API Keys:
 28: #'
 29: #' - `get_openai_api_key()`: Get the OpenAI API key from the configuration file.
 30: #' - `set_openai_api_key()`: Set the OpenAI API key as an environment variable.
 31: #'
 32: #' - `get_gemini_api_key()`: Get the Gemini API key from the configuration file.
 33: #' - `set_gemini_api_key()`: Set the Gemini API key as an environment variable.
 34: #'
 35: #' - `get_gmaps_api_key()`: Get the Google Maps API key from the configuration file.
 36: #' - `set_gmaps_api_key()`: Set the Google Maps API key as an environment variable.
 37: #'
 38: #' - `get_hunterio_api_key()`: Get the Hunter.io API key from the configuration file.
 39: #' - `set_hunterio_api_key()`: Set the Hunter.io API key as an environment variable.
 40: #'
 41: #' @returns
 42: #' Each function returns the respective API key or sets it as an environment variable.
 43: NULL
 44: 
 45: 
 46: # encryption ------------------------------------------------------------------------------------------------------
 47: 
 48: #' Encrypt/Decrypt Configuration Files
 49: #'
 50: #' @name encrypt_config
 51: #'
 52: #' @description
 53: #' Functions for encrypting and decrypting configuration files.
 54: #'
 55: #' Functions:
 56: #'
 57: #' - `encrypt_config()`: Encrypt a configuration file using a secret key.
 58: #' - `decrypt_config()`: Decrypt an encrypted configuration file using a secret key.
 59: #'
 60: #' @param config_file A character string representing the path to the configuration file. If left
 61: #'   `NULL`, the function will attempt to use the default configuration file via `pkg_sys_config("config.yml")`.
 62: #'
 63: #' @param encrypted_file A character string representing the path to the encrypted configuration file. If left
 64: #'   `NULL`, the function will create a new file with the same name as the original file but with the extension
 65: #'   `.encrypted.yml`.
 66: #'
 67: #' @param decrypted_file A character string representing the path to the decrypted configuration file. If left
 68: #'   `NULL`, the function will create a new `config.yml` in the same directory as the encrypted file.
 69: #'
 70: #' @param overwrite A logical value indicating whether to overwrite an existing encrypted file. Default is `TRUE`.
 71: #'
 72: #' @param key A character string representing the name of the encryption key. Default is `NOCLOCKS_ENCRYPTION_KEY`.
 73: #'
 74: #' @param set_env A logical value indicating whether to set the `R_CONFIG_FILE` environment variable to the decrypted file.
 75: #'
 76: #' @returns
 77: #' - `encrypt_config()`: Returns `0` invisibly.
 78: #' - `decrypt_config()`: Returns the configuration invisibly.
 79: #'
 80: #' @export
 81: #'
 82: #' @importFrom cli cli_abort cli_alert_success cli_alert_warning cli_alert_info
 83: #' @importFrom fs path path_ext_remove
 84: #' @importFrom httr2 secret_encrypt_file secret_decrypt_file secret_has_key
 85: #' @importFrom config get
 86: #'
 87: #' @examples
 88: #' \dontrun{
 89: #' # encrypt the default configuration file
 90: #' encrypt_config()
 91: #'
 92: #' # decrypt the encrypted configuration file
 93: #' decrypt_config()
 94: #' }
 95: encrypt_config <- function(
 96:     config_file = NULL,
 97:     encrypted_file = NULL,
 98:     overwrite = TRUE,
 99:     key = "NOCLOCKS_ENCRYPTION_KEY"
100: ) {
101: 
102:   if (!httr2::secret_has_key(key)) {
103:     cli::cli_abort(
104:       c(
105:         "Encryption key: {.field {key}} not found.\n",
106:         "Please set the encryption key environment variable: {.envvar NOCLOCKS_ENCRYPTION_KEY}."
107:       )
108:     )
109:   }
110: 
111:   cfg_file <- file.path(cfg_file)
112: 
113:   if (!file.exists(cfg_file)) {
114:     cli::cli_abort(
115:       c(
116:         "Configuration file: {.file {cfg_file}} not found.\n",
117:         "Please ensure the file exists before attempting to encrypt it."
118:       )
119:     )
120:   }
121: 
122:   if (is.null(encrypted_file)) {
123:     encrypted_file <- fs::path_ext_remove(cfg_file) |>
124:       paste0(".encrypted.yml") |>
125:       fs::path()
126:   }
127: 
128:   if (file.exists(encrypted_file)) {
129:     if (!overwrite) {
130:       cli::cli_abort(
131:         c(
132:           "Encrypted configuration file: {.file {encrypted_file}} already exists.\n",
133:           "Please set the {.arg overwrite} argument to {.code TRUE} to overwrite the existing file."
134:         )
135:       )
136:     }
137: 
138:     cli::cli_alert_warning(
139:       c(
140:         "Encrypted configuration file: {.file {encrypted_file}} already exists.\n",
141:         "Overwriting the existing file with the encrypted configuration."
142:       )
143:     )
144:   }
145: 
146:   file.copy(cfg_file, encrypted_file, overwrite = TRUE)
147: 
148:   httr2::secret_encrypt_file(path = encrypted_file, key = key)
149:   cli::cli_alert_success("Successfully encrypted the config file: {.file {cfg_file_encrypted}}.")
150:   return(invisible(0))
151: 
152: }
153: 
154: #' @rdname encrypt_config
155: #' @export
156: #' @importFrom cli cli_abort cli_alert_success cli_alert_warning cli_alert_info
157: #' @importFrom fs path path_ext_remove
158: #' @importFrom httr2 secret_decrypt_file secret_has_key
159: #' @importFrom config get
160: decrypt_config <- function(
161:     encrypted_file = NULL,
162:     decrypted_file = NULL,
163:     key = "NOCLOCKS_ENCRYPTION_KEY",
164:     set_env = FALSE
165: ) {
166: 
167:   if (!httr2::secret_has_key(key)) {
168:     cli::cli_abort(
169:       c(
170:         "Encryption key: {.field {key}} not found.",
171:         "Please set the encryption key environment variable: {.envvar NOCLOCKS_ENCRYPTION_KEY}."
172:       )
173:     )
174:   }
175: 
176:   if (is.null(encrypted_file)) {
177:     encrypted_file <- pkg_sys_config("config.encrypted.yml")
178:   }
179: 
180:   if (!file.exists(encrypted_file)) {
181:     cli::cli_abort(
182:       c(
183:         "Encrypted configuration file: {.file {encrypted_file}} not found.",
184:         "Please ensure the file exists before attempting to decrypt it."
185:       )
186:     )
187:   }
188: 
189:   cfg_file_decrypted_temp <- httr2::secret_decrypt_file(
190:     path = encrypted_file,
191:     key = key
192:   )
193: 
194:   withr::defer(file.remove(cfg_file_decrypted_temp))
195: 
196:   cli::cli_alert_success("Successfully decrypted the configuration file: {.file {encrypted_file}}")
197: 
198:   if (file.exists(decrypted_file)) {
199:     cli::cli_alert_warning(
200:       c(
201:         "Configuration file: {.file {decrypted_file}} already exists.",
202:         "Overwriting the existing file with the decrypted configuration."
203:       )
204:     )
205:   }
206: 
207:   file.copy(cfg_file_decrypted_temp, decrypted_file, overwrite = TRUE)
208: 
209:   cli::cli_alert_success("Successfully copied the decrypted configuration file to: {.file {decrypted_file}}")
210: 
211:   if (!set_env) { return(invisible(config::get())) }
212: 
213:   Sys.setenv("R_CONFIG_FILE" = decrypted_file)
214:   cli::cli_alert_info("Set Environment Variable {.envvar R_CONFIG_FILE} to: {.file {decrypted_file}}")
215: 
216:   return(invisible(config::get()))
217: 
218: }
219: 
220: # template --------------------------------------------------------------------------------------------------------
221: 
222: #' Create a Configuration Template
223: #'
224: #' @description
225: #' Create a template configuration file based on an existing configuration file with all values replaced by placeholders.
226: #'
227: #' @inheritParams encrypt_config
228: #' @param template_file A character string representing the path to the template file. If left `NULL`, the function will
229: #'   create a new file with the same name and path as the original file but with the extension `.template.yml`.
230: #'
231: #' @returns
232: #' The function writes the template configuration file to the specified location.
233: #'
234: #' @export
235: #'
236: #' @importFrom cli cli_abort cli_alert_success
237: #' @importFrom fs path path_ext_remove
238: #' @importFrom config get
239: #' @importFrom yaml as.yaml yaml.load_file
240: #' @importFrom purrr imap pluck
241: create_config_template <- function(
242:     config_file = Sys.getenv("R_CONFIG_FILE", unset = pkg_sys_config("config.yml")),
243:     template_file = NULL
244: ) {
245: 
246:   if (!file.exists(config_file)) {
247:     cli::cli_abort(
248:       c(
249:         "Configuration file: {.file {config_file}} not found.\n",
250:         "Please ensure the file exists before attempting to create a template."
251:       )
252:     )
253:   }
254: 
255:   if (is.null(template_file)) {
256:     template_file <- gsub("\\.yml$", ".template.yml", config_file)
257:   }
258: 
259:   # Load the config.yml file
260:   config <- yaml::yaml.load_file(config_file)
261: 
262:   # Helper function to generate placeholders
263:   create_placeholder <- function(name) { paste0("<", toupper(name), ">") }
264: 
265:   # Recursively replace values with placeholders
266:   replace_values <- function(x) {
267:     if (is.list(x)) {
268:       purrr::imap(x, function(value, key) {
269:         browser()
270:         if (is.list(value)) {
271:           replace_values(value)
272:         } else {
273:           create_placeholder(key)
274:         }
275:       })
276:     } else {
277:       create_placeholder(x)
278:     }
279:   }
280: 
281:   # Recursively traverse the config and replace values
282:   config_template <- purrr::imap(config, function(value, key) {
283:     replace_values(value)
284:   })
285: 
286:   # Convert the list back to a YAML formatted string
287:   yaml_content <- yaml::as.yaml(config_template)
288: 
289:   # Ensure placeholders are quoted
290:   yaml_content <- gsub("(<[A-Z_]+>)", '"\\1"', yaml_content)
291: 
292:   # Write the content to the output file
293:   writeLines(yaml_content, con = output_file)
294: }
295: 
296: # configuration ---------------------------------------------------------------------------------------------------
297: 
298: #' Configuration
299: #'
300: #' @name config
301: #'
302: #' @description
303: #' Functions for managing configuration settings and environment variables.
304: #'
305: #' Main Functions:
306: #'
307: #' - `cfg_get()`: Get the configuration settings from a configuration file.
308: #' - `cfg_list()`: List the configuration settings from a configuration file.
309: 
310: #' @rdname config
311: #' @export
312: #' @importFrom config get
313: #' @importFrom cli cli_abort
314: cfg_get <- function(
315:     ...,
316:     file = Sys.getenv("R_CONFIG_FILE", unset = pkg_sys_config("config.yml")),
317:     config = Sys.getenv("R_CONFIG_ACTIVE", unset = "default")
318: ) {
319: 
320:   file <- normalizePath(file)
321:   if (!file.exists(file)) cli::cli_abort("Provided configuration file ({.file {file}}) does not exist.")
322:   cfg <- tryCatch({
323:     config::get(file = file, config = config)
324:   }, error = function(e) {
325:     cli::cli_abort(
326:       c(
327:         "Error reading configuration file: {.file {file}}.\n",
328:         "Error: {.error {e$message}}"
329:       )
330:     )
331:   })
332: 
333:   dots <- list(...) |> purrr::compact()
334: 
335:   if (length(dots) > 0) {
336:     keys <- names(cfg)
337:     if (!(dots[[1]] %in% keys)) {
338:       cli::cli_abort(
339:         c(
340:           "Configuration key: {.field {dots[[1]]}} not found in configuration file: {.file {file}}.\n",
341:           "Please check the configuration file for the correct key."
342:         )
343:       )
344:     }
345:     keys <- names(cfg)
346:     cfg <- cfg[[dots[[1]]]]
347:     if (length(dots) > 1) {
348:       cfg <- purrr::pluck(cfg, !!!dots[-1])
349:     }
350:     cfg
351:   }
352: 
353:   cfg
354: 
355: }
356: 
357: #' @rdname config
358: #' @export
359: cfg_list <- function(
360:     file = Sys.getenv("R_CONFIG_FILE", unset = pkg_sys_config("config.yml")),
361:     config = Sys.getenv("R_CONFIG_ACTIVE", unset = "default")
362: ) {
363:   cfg <- get_config(file = file, config = config)
364:   names(unlist(cfg))
365: }
366: 
367: # database --------------------------------------------------------------------------------------------------------
368: 
369: #' @rdname config
370: #' @export
371: #' @importFrom config get
372: #' @importFrom cli cli_abort
373: #' @importFrom rlang arg_match
374: get_db_config <- function(
375:     key = NULL,
376:     file = Sys.getenv("R_CONFIG_FILE", pkg_sys("config/config.yml")),
377:     config = Sys.getenv("R_CONFIG_ACTIVE", "default")
378: ) {
379:   file <- normalizePath(file, mustWork = FALSE)
380:   if (!file.exists(file)) cli::cli_abort("Provided configuration file ({.file {file}}) does not exist.")
381:   cfg <- tryCatch({
382:     config::get(value = "db", file = file, config = config)
383:   }, error = function(e) {
384:     cli::cli_abort("Failed to load database configuration from {.file {file}}: {.error {e$message}}")
385:   })
386: 
387:   keys <- names(cfg)
388:   if (!is.null(key)) {
389:     key <- rlang::arg_match(key, keys)
390:     return(cfg[[key]])
391:   }
392: 
393:   return(cfg)
394: }
395: 
396: # llms ------------------------------------------------------------------------------------------------------------
397: 
398: #' @rdname config
399: #' @export
400: #' @importFrom config get
401: #' @importFrom cli cli_abort
402: #' @importFrom rlang arg_match
403: get_llms_config <- function(
404:   key = NULL,
405:   file = Sys.getenv("R_CONFIG_FILE", pkg_sys("config/config.yml")),
406:   config = Sys.getenv("R_CONFIG_ACTIVE", "default")
407: ) {
408:   file <- normalizePath(file, mustWork = FALSE)
409:   if (!file.exists(file)) cli::cli_abort("Provided configuration file ({.file {file}}) does not exist.")
410:   cfg <- tryCatch({
411:     config::get(value = "llms", file = file, config = config)
412:   }, error = function(e) {
413:     cli::cli_abort("Failed to load LLM configuration from {.file {file}}: {.error {e$message}}")
414:   })
415: 
416:   keys <- names(cfg)
417:   if (!is.null(key)) {
418:     key <- rlang::arg_match(key, keys)
419:     return(cfg[[key]])
420:   }
421: 
422:   return(cfg)
423: }
424: 
425: 
426: # api keys --------------------------------------------------------------------------------------------------------
427: 
428: get_api_key <- function(name, ...) {
429: 
430:   llms_cfg <- get_llms_config()
431:   tools_cfg <- config::get("tools")
432: 
433:   key_name <- paste0(name, "_api_key")
434: 
435:   if (key_name %in% names(llms_cfg)) {
436:     return(llms_cfg[[key_name]])
437:   }
438: 
439:   if (key_name %in% names(tools_cfg)) {
440:     return(tools_cfg[[key_name]])
441:   }
442: 
443:   cli::cli_abort(
444:     c(
445:       "API key: {.field {key_name}} not found in configuration file: {.file {file}}.\n",
446:       "Please check the configuration file for the correct key."
447:     )
448:   )
449: 
450: }
451: 
452: 
453: 
454: # openai ----------------------------------------------------------------------------------------------------------
455: 
456: #' @rdname config
457: #' @export
458: #' @importFrom config get
459: #' @importFrom cli cli_abort
460: get_openai_api_key <- function() {
461: 
462:   envvar_val <- Sys.getenv("OPENAI_API_KEY")
463:   cfg_val <- get_llms_config("openai_api_key") %||%
464: 
465:   if (envvar_val == "" && cfg_val == "") {
466:     cli::cli_abort(
467:       "OpenAI API key is not set. Please set it using {.code set_openai_api_key()}."
468:     )
469:   }
470: 
471:   if (envvar_val != "" && cfg_val != "") {
472:     if (envvar_val != cfg_val) {
473:       cli::cli_alert_warning(
474:         "OpenAI API key is set as both an environment variable and in the configuration file. Using the environment variable."
475:       )
476:       return(envvar_val)
477:     }
478:   }
479: 
480:   if (envvar_val != "") return(envvar_val)
481:   if (cfg_val != "") {
482:     Sys.setenv("OPENAI_API_KEY" = cfg_val)
483:     cli::cli_alert_info("OpenAI API key set as environment variable: {.envvar OPENAI_API_KEY}")
484:     return(cfg_val)
485:   }
486: 
487:   cli::cli_abort(
488:     "OpenAI API key is not set. Please set it using {.code set_openai_api_key()}."
489:   )
490: 
491: }
492: 
493: #' @rdname config
494: #' @export
495: #' @importFrom cli cli_alert_success
496: set_openai_api_key <- function(key) {
497:   check_openai_api_key(key)
498:   Sys.setenv("OPENAI_API_KEY" = key)
499:   cli::cli_alert_success(
500:     "OpenAI API Key successfull set as environment variable {.envvar OPENAI_API_KEY}."
501:   )
502: }
503: 
504: 
505: # anthropic -------------------------------------------------------------------------------------------------------
506: 
507: #' @rdname config
508: #' @export
509: #' @importFrom config get
510: #' @importFrom cli cli_abort
511: get_anthropic_api_key <- function() {
512: 
513:   envvar_val <- Sys.getenv("ANTHROPIC_API_KEY")
514:   cfg_val <- get_llms_config("anthropic_api_key") %||%
515: 
516:     if (envvar_val == "" && cfg_val == "") {
517:       cli::cli_abort(
518:         "Anthropic API key is not set. Please set it using {.code set_anthropic_api_key()}."
519:       )
520:     }
521: 
522:   if (envvar_val != "" && cfg_val != "") {
523:     if (envvar_val != cfg_val) {
524:       cli::cli_alert_warning(
525:         "Anthropic API key is set as both an environment variable and in the configuration file. Using the environment variable."
526:       )
527:       return(envvar_val)
528:     }
529:   }
530: 
531:   if (envvar_val != "") return(envvar_val)
532:   if (cfg_val != "") {
533:     Sys.setenv("ANTHROPIC_API_KEY" = cfg_val)
534:     cli::cli_alert_info("Anthropic API key set as environment variable: {.envvar ANTHROPIC_API_KEY}")
535:     return(cfg_val)
536:   }
537: 
538:   cli::cli_abort(
539:     "Anthropic API key is not set. Please set it using {.code set_anthropic_api_key()}."
540:   )
541: 
542: }
543: 
544: #' @rdname config
545: #' @export
546: #' @importFrom cli cli_alert_success
547: set_anthropic_api_key <- function(key) {
548:   check_anthropic_api_key(key)
549:   Sys.setenv("ANTHROPIC_API_KEY" = key)
550:   cli::cli_alert_success(
551:     "Anthropic API Key successfull set as environment variable {.envvar ANTHROPIC_API_KEY}."
552:   )
553: }
554: 
555: 
556: # gemini ----------------------------------------------------------------------------------------------------------
557: 
558: #' @rdname config
559: #' @export
560: #' @importFrom config get
561: #' @importFrom cli cli_abort
562: get_gemini_api_key <- function() {
563: 
564:   if (Sys.getenv("GEMINI_API_KEY") != "") {
565:     Sys.setenv("GOOGLE_API_KEY" = Sys.getenv("GEMINI_API_KEY"))
566:     return(Sys.getenv("GEMINI_API_KEY"))
567:   }
568: 
569:   if (Sys.getenv("GOOGLE_API_KEY") != "") {
570:     Sys.setenv("GEMINI_API_KEY" = Sys.getenv("GOOGLE_API_KEY"))
571:     return(Sys.getenv("GOOGLE_API_KEY"))
572:   }
573: 
574:   if (!is.null(config::get("gemini_api_key"))) {
575:     key <- config::get("gemini_api_key")
576:     Sys.setenv("GEMINI_API_KEY" = key)
577:     Sys.setenv("GOOGLE_API_KEY" = key)
578:     return(key)
579:   }
580: 
581:   cli::cli_abort(
582:     "Gemini API key is not set. Please set it using {.code set_gemini_api_key()}."
583:   )
584: 
585: }
586: 
587: #' @rdname config
588: #' @export
589: set_gemini_api_key <- function(key) {
590:   Sys.setenv("GEMINI_API_KEY" = key)
591:   Sys.setenv("GOOGLE_API_KEY" = key)
592:   cli::cli_alert_success(
593:     "Gemini API Key successfull set as environment variable {.envvar GEMINI_API_KEY}."
594:   )
595: }
596: 
597: 
598: # external APIs ---------------------------------------------------------------------------------------------------
599: 
600: #' @rdname config
601: #' @export
602: #' @importFrom config get
603: #' @importFrom cli cli_abort
604: #' @importFrom googleway set_key
605: get_gmaps_api_key <- function() {
606: 
607:   if (Sys.getenv("GMAPS_API_KEY") != "") {
608:     return(Sys.getenv("GMAPS_API_KEY"))
609:   }
610: 
611:   if (!is.null(config::get("gmaps_api_key"))) {
612:     key <- config::get("gmaps_api_key")
613:     Sys.setenv("GMAPS_API_KEY" = key)
614:     googleway::set_key(key)
615:     return(key)
616:   }
617: 
618:   cli::cli_abort(
619:     "Google Maps API key is not set. Please set it using {.code set_gmaps_api_key()}."
620:   )
621: 
622: }
623: 
624: #' @rdname config
625: #' @export
626: #' @importFrom cli cli_alert_success
627: #' @importFrom googleway set_key
628: set_gmaps_api_key <- function(key) {
629:   Sys.setenv("GMAPS_API_KEY" = key)
630:   googleway::set_key(key)
631:   cli::cli_alert_success(
632:     "Google Maps API Key successfull set as environment variable {.envvar GMAPS_API_KEY}."
633:   )
634: }
635: 
636: 
637: 
638: # internal --------------------------------------------------------------------------------------------------------
639: 
640: #' @keywords internal
641: #' @noRd
642: #' @importFrom rappdirs user_config_dir
643: .default_config_path <- function() {
644:   normalizePath(
645:     rappdirs::user_config_dir(
646:       appname = "noclocksai",
647:       appauthor = "noclocks",
648:       expand = TRUE,
649:       os = "unix"
650:     ),
651:     mustWork = FALSE
652:   )
653: }
654: 
655: #' @keywords internal
656: #' @noRd
657: .default_config_file <- function() {
658:   normalizePath(file.path(.default_config_path(), "config.yml"), mustWork = FALSE)
659: }
660: 
661: # onLoad ----------------------------------------------------------------------------------------------------------
662: 
663: #' @noRd
664: #' @keywords internal
665: #' @importFrom rappdirs user_config_dir
666: #' @importFrom cli cli_alert_success cli_alert_warning
667: rlang::on_load(
668:   expr = {
669:     cfg_path <- .default_config_path()
670:     cfg_file <- .default_config_file()
671:     if (!dir.exists(cfg_path)) dir.create(cfg_path, recursive = TRUE)
672:     if (!file.exists(cfg_file)) {
673:       cli::cli_alert_warning("Configuration file: {.file {cfg_file}} does not exist.")
674:       decrypt_config(
675:         encrypted_file = pkg_sys_config("config.encrypted.yml"),
676:         decrypted_file = cfg_file,
677:         set_env = TRUE
678:       )
679:     } else {
680:       Sys.setenv("R_CONFIG_FILE" = cfg_file)
681:     }
682:     cli::cli_alert_success("Configuration file: {.file {cfg_file}} setup successfully.")
683:   }
684: )
`````

## File: R/db.R
`````r
  1: #  ------------------------------------------------------------------------
  2: #
  3: # Title : Database Functions
  4: #    By : Jimmy Briggs
  5: #  Date : 2025-03-03
  6: #
  7: #  ------------------------------------------------------------------------
  8: 
  9: 
 10: # connect ---------------------------------------------------------------------------------------------------------
 11: 
 12: #' Connect to the Database
 13: #'
 14: #' @description
 15: #' Connect to the database using the provided configuration.
 16: #'
 17: #' @param db_config A list containing the database configuration. Must include the following fields:
 18: #'   `dbname`, `host`, `user`, `password`, `port`.
 19: #'
 20: #' @param pool Logical. If `TRUE`, the connection will be pooled using [pool::dbPool()], otherwise will
 21: #'   create a single connection via [DBI::dbConnect()]. Default is `TRUE`.
 22: #'
 23: #' @param ... Additional arguments passed to the connection function, i.e. either [pool::dbPool()] or [DBI::dbConnect()].
 24: #'
 25: #' @returns
 26: #' Database connection object.
 27: #' If `pool = TRUE`, returns a [pool::Pool-class] (R6) object.
 28: #' If `pool = FALSE`, returns a [DBI::DBIConnection-class] (S4) object.
 29: #'
 30: #' @export
 31: #'
 32: #' @importFrom pool dbPool
 33: #' @importFrom DBI dbConnect
 34: db_connect <- function(db_config = get_db_config(), pool = TRUE, ...) {
 35: 
 36:   check_db_config(db_config)
 37: 
 38:   if (pool) {
 39:     tryCatch({
 40:       pool <- pool::dbPool(
 41:         drv = RPostgres::Postgres(),
 42:         dbname = db_config$dbname,
 43:         host = db_config$host,
 44:         port = db_config$port,
 45:         user = db_config$user,
 46:         password = db_config$password,
 47:         ...
 48:       )
 49:       cli::cli_alert_success("Database pooled connection successfully established.")
 50:       return(pool)
 51:     }, error = function(e) {
 52:       cli::cli_alert_danger("Failed to establish database pooled connection: {e$message}.")
 53:       cli::cli_abort(e)
 54:     })
 55:   } else {
 56:     tryCatch({
 57:       conn <- DBI::dbConnect(
 58:         drv = RPostgres::Postgres(),
 59:         dbname = db_config$dbname,
 60:         host = db_config$host,
 61:         port = db_config$port,
 62:         user = db_config$user,
 63:         password = db_config$password,
 64:         ...
 65:       )
 66:       cli::cli_alert_success("Database connection successfully established.")
 67:       return(conn)
 68:     }, error = function(e) {
 69:       cli::cli_alert_danger("Failed to establish database connection: {e$message}.")
 70:       cli::cli_abort(e)
 71:     })
 72:   }
 73: 
 74: }
 75: 
 76: 
 77: # query -----------------------------------------------------------------------------------------------------------
 78: 
 79: db_query <- function(conn, query) {
 80: 
 81:   check_db_conn(conn)
 82:   if (inherits(conn, "Pool")) {
 83:     pool <- conn
 84:     conn <- pool::poolCheckout(conn)
 85:     withr::defer(pool::poolReturn(conn))
 86:   }
 87: 
 88:   tryCatch({
 89:     result <- DBI::dbGetQuery(conn, query)
 90:     return(as.data.frame(result))
 91:   }, error = function(e) {
 92:     cli::cli_alert_danger("Error executing query: {e$message}")
 93:     return(character(0))
 94:   })
 95: 
 96: }
 97: 
 98: db_schema_info <- function(pool, schema = NULL) {
 99: 
100:   check_db_conn(pool)
101: 
102:   conn <- pool::poolCheckout(pool)
103:   withr::defer(pool::poolReturn(conn))
104: 
105:   schema_dm <- dm::dm_from_con(conn, schema = schema, learn_keys = TRUE)
106:   schema_info <- capture.output(print(dm::dm_get_tables(schema_dm)))
107: 
108:   head <- paste0(
109:     "Database Schema Information\n",
110:     "---------------------------\n",
111:     "Schema: ", schema, "\n\n",
112:     "Tables:\n",
113:     "-------\n"
114:   )
115: 
116:   paste0(
117:     head,
118:     paste(schema_info, collapse = "\n")
119:   )
120: 
121: }
122: 
123: # embeddings ------------------------------------------------------------------------------------------------------
124: 
125: #' Store Embedded Document
126: #'
127: #' @description
128: #' This function will insert a new document into the database along with its metadata and embedding.
129: #'
130: #' @param pool Database connection object.
131: #' @param title Title of the document.
132: #' @param content Content of the document.
133: #' @param metadata List of metadata to store with the document.
134: #'
135: #' @returns
136: #' The ID of the document stored.
137: #'
138: #' @export
139: #'
140: #' @importFrom jsonlite toJSON
141: #' @importFrom pool dbGetQuery
142: #' @importFrom cli cli_alert_success cli_alert_danger
143: #'
144: #' @examples
145: #' \dontrun{
146: #' doc_text <- readLines("inst/extdata/documents/Anthropic-Building-Effective-AI-Agents-Comprehensive-Analysis.md") |>
147: #'   paste(collapse = "\n")
148: #' pool <- db_connect()
149: #' db_store_document(
150: #'   pool,
151: #'   title = "Anthropic Research: Building Effective Agents",
152: #'   content = doc_text,
153: #'   metadata = list(source = "Anthropic")
154: #' )
155: #' }
156: db_store_document <- function(pool, title, content, metadata = list()) {
157: 
158:   check_db_conn(pool)
159: 
160:   tryCatch({
161:     content <- as.character(paste(content, collapse = "\n"))
162:     embedding <- embed_openai(text = content)
163:     embedding_str <- paste0("[", paste(embedding, collapse = ","), "]")
164:     metadata_json <- jsonlite::toJSON(metadata, auto_unbox = TRUE)
165:     qry <- paste0(
166:       "INSERT INTO \"noclocks\".\"documents\" (\"title\", \"content\", \"metadata\", \"embedding\") ",
167:       "VALUES ($1, $2, $3, $4) ",
168:       "RETURNING \"id\";"
169:     )
170:     result <- pool::dbGetQuery(pool, qry, list(title, content, metadata_json, embedding_str))
171:     cli::cli_alert_success("Document stored successfully with ID: {.field {result$id}}.")
172:     return(result$id)
173:   }, error = function(e) {
174:     cli::cli_alert_danger("Failed to store document: {e$message}.")
175:     cli::cli_abort(e)
176:   })
177: 
178: }
179: 
180: #' Retrieve Documents
181: #'
182: #' @description
183: #' Retrieve documents from the database based on the provided `query`.
184: #'
185: #' @param pool Database connection pool object.
186: #' @param query The query to search for in the documents.
187: #' @param max_results Maximum number of documents to retrieve.
188: #' @param use_cache Logical. If `TRUE`, will attempt to retrieve documents from the cache first.
189: #'
190: #' @returns
191: #' A data frame containing the retrieved documents.
192: #'
193: #' @export
194: #'
195: #' @importFrom dplyr tbl filter arrange desc collect
196: #' @importFrom DBI SQL
197: #' @importFrom pool dbExecute dbGetQuery
198: #' @importFrom cli cli_alert_success cli_alert_danger cli_abort
199: #'
200: #' @examples
201: #' \dontrun{
202: #' pool <- db_connect()
203: #' db_get_documents(pool, "Anthropic Research", 5)
204: #' }
205: db_get_documents <- function(pool, query, max_results = 10L, use_cache = TRUE) {
206: 
207:   check_db_conn(pool)
208: 
209:   tryCatch({
210: 
211:     if (use_cache) {
212: 
213:       cached_docs <- dplyr::tbl(pool, I("noclocks.query_cache")) |>
214:         dplyr::filter(stringr::str_detect(.data$qry_text, query)) |>
215:         dplyr::arrange(dplyr::desc(.data$frequency)) |>
216:         dplyr::collect()
217: 
218:       if (nrow(cached_docs) > 0 && length(cached_docs$document_ids) > 0) {
219:         doc_ids <- paste(cached_docs$document_ids, collapse = ", ")
220:         docs <- dplyr::tbl(pool, DBI::SQL("noclocks.documents")) |>
221:           dplyr::filter(.data$id %in% doc_ids) |>
222:           dplyr::collect()
223:         qry <- paste0(
224:           "UPDATE \"noclocks\".\"documents\" ",
225:           "SET frequency = frequency + 1, last_accessed = CURRENT_TIMESTAMP ",
226:           "WHERE qry_text = $1"
227:         )
228:         pool::dbExecute(pool, qry, list(query))
229:         cli::cli_alert_success("Retrieved {.field {nrow(docs)}} documents from cache.")
230:         return(docs)
231:       }
232:     }
233: 
234:     query_embedding <- embed_openai(text = query)
235:     embedding_str <- paste0("[", paste(query_embedding, collapse = ","), "]")
236:     qry <- paste0(
237:       "SELECT * FROM \"noclocks\".\"find_similar_documents\"($1, 0.6, $2);"
238:     )
239:     docs <- pool::dbGetQuery(pool, qry, list(embedding_str, max_results))
240:     if (use_cache && nrow(docs) > 0L) {
241:       doc_ids <- docs$id
242:       qry <- paste0("SELECT noclocks.update_query_cache($1, $2, $3)")
243:       pool::dbExecute(pool, qry, list(query, embedding_str, stringr::str_c(doc_ids, collapse = ",")))
244:     }
245:     cli::cli_alert_success("Retrieved {.field {nrow(docs)}} documents.")
246:     return(docs)
247:   }, error = function(e) {
248:     cli::cli_alert_danger("Failed to retrieve documents: {e$message}.")
249:     cli::cli_abort(e)
250:   })
251: 
252: }
253: 
254: #' Pre-Load Documents
255: #'
256: #' @description
257: #' This function pre-loads documents for a "Cache Augmented Generation" (CAG) system, based on provided `topic`.
258: #'
259: #' @param pool Database connection pool object.
260: #' @param topic The topic to find documents for.
261: #' @param max_docs Maximum number of documents to load.
262: #'
263: #' @returns
264: #' A formatted string of documents
265: #'
266: #' @export
267: #'
268: #' @importFrom jsonlite toJSON
269: db_preload_documents <- function(pool, topic, max_docs = 10) {
270: 
271:   check_db_conn(pool)
272: 
273:   docs <- db_get_documents(pool, topic, max_docs)
274: 
275:   if (nrow(docs) == 0) {
276:     return("No relevant documents found.")
277:   }
278: 
279:   # Format documents for context
280:   formatted_docs <- paste(
281:     sapply(1:nrow(docs), function(i) {
282:       metadata_str <- if (!is.null(docs$metadata[[i]])) {
283:         paste0("\nMetadata: ", jsonlite::toJSON(docs$metadata[[i]], auto_unbox = TRUE))
284:       } else {
285:         ""
286:       }
287: 
288:       paste0("Document ", docs$id[i], " - ", docs$title[i], metadata_str,
289:              "\nContent: ", docs$content[i], "\n\n")
290:     }),
291:     collapse = ""
292:   )
293: 
294:   return(formatted_docs)
295: }
`````

## File: R/document.R
`````r
 1: #  ------------------------------------------------------------------------
 2: #
 3: # Title : Document
 4: #    By : Jimmy Briggs
 5: #  Date : 2025-03-20
 6: #
 7: #  ------------------------------------------------------------------------
 8: 
 9: 
10: # document_dataset ------------------------------------------------------------------------------------------------
11: 
12: document_dataset <- function(
13:     data,
14:     include_examples = TRUE,
15:     verbose = FALSE
16: ) {
17: 
18:   check_data_frame(data)
19: 
20:   chat <- initialize_chat(system_prompt = prompt_document_dataset_sys())
21: 
22:   dataset_name <- deparse(substitute(data))
23:   col_names <- names(data)
24:   col_types <- purrr::map_chr(data, typeof)
25: 
26:   data_skim <- skimr::skim(data)
27: 
28:   qry <- prompt_document_dataset_user(data = data)
29:   response <- chat$chat(qry)
30: 
31: }
32: 
33: 
34: generate_roxygen_doc <- function(data,
35:                                  model = "gpt-4o",
36:                                  include_examples = TRUE,
37:                                  verbose = FALSE) {
38: 
39:   # Validate input
40:   if (!is.data.frame(data)) {
41:     stop("Input must be a data.frame or tibble")
42:   }
43: 
44:   # Create a chat object with ellmer
45:   chat <- chat_openai(
46:     model = model,
47:     system_prompt = "You are an expert R programmer specializing in package documentation."
48:   )
49: 
50:   # Generate the prompt
51:   prompt <- prompt_document_dataset_user(data)
52: 
53:   resp <- chat$chat(prompt)
54: 
55:   # extract code
56:   code <- extract_code(resp, "r")
57: 
58:   # return code
59:   return(code)
60: }
`````

## File: R/eda.R
`````r
 1: # EDA -------------------------------------------------------------------------------------------------------------
 2: 
 3: detect_anomalies <- function(data, column_name = NULL) {
 4: 
 5:   check_tibble(data)
 6: 
 7:   # Check if column_name is provided
 8:   if (is.null(column_name)) {
 9:     # Run anomaly detection on all numeric columns
10:     results <- data |>
11:       dplyr::select(tidyselect::where(is.numeric)) |>
12:       purrr::map(~ {
13:         iqr <- stats::IQR(.x, na.rm = TRUE)
14:         q3 <- stats::quantile(.x, 0.75, na.rm = TRUE)
15:         outliers <- which(.x > q3 + (iqr * 1.5))
16:         list(
17:           outliers = outliers,
18:           values = .x[outliers],
19:           severity = length(outliers) / length(.x)
20:         )
21:       }) |>
22:       purrr::keep(~ length(.x$outliers) > 0)
23:     return(results)
24:   } else {
25: 
26:     check_col_names(data, column_name)
27:     values <- data[[column_name]]
28:     if (!is.numeric(values)) {
29:       return(paste("Column", column_name, "is not numeric"))
30:     }
31:     # Simple IQR-based outlier detection
32:     iqr <- stats::IQR(values, na.rm = TRUE)
33:     q3 <- stats::quantile(values, 0.75, na.rm = TRUE)
34:     outliers <- which(values > q3 + (iqr * 1.5))
35:     return(
36:       list(
37:         outliers = outliers,
38:         values = values[outliers],
39:         severity = length(outliers) / length(values)
40:       )
41:     )
42:   }
43: }
44: 
45: correlate_with_anomalies <- function(data, column_name, anomaly_indices) {
46: 
47:   check_tibble(data)
48:   check_col_names(data, column_name)
49: 
50:   # Check correlations with other variables
51:   correlations <- data |>
52:     dplyr::select(tidyselect::where(is.numeric)) |>
53:     purrr::map_dbl(~ stats::cor(.x, data[[column_name]], use = "complete.obs"))
54: 
55:   # Compare distributions
56:   normal_indices <- setdiff(1:nrow(data), anomaly_indices)
57: 
58:   comparison <- data |>
59:     dplyr::select(tidyselect::where(is.numeric)) |>
60:     purrr::map(~ {
61:       if (length(anomaly_indices) > 0) {
62:         list(
63:           anomaly_mean = mean(.x[anomaly_indices], na.rm = TRUE),
64:           normal_mean = mean(.x[normal_indices], na.rm = TRUE),
65:           diff_percent = (mean(.x[anomaly_indices], na.rm = TRUE) /
66:                             mean(.x[normal_indices], na.rm = TRUE) - 1) * 100
67:         )
68:       } else {
69:         list(
70:           anomaly_mean = NA,
71:           normal_mean = mean(.x, na.rm = TRUE),
72:           diff_percent = NA
73:         )
74:       }
75:     })
76: 
77:   return(
78:     list(
79:       correlations = sort(correlations, decreasing = TRUE),
80:       comparison = comparison
81:     )
82:   )
83: }
`````

## File: R/embed.R
`````r
  1: #  ------------------------------------------------------------------------
  2: #
  3: # Title : Embeddings
  4: #    By : Jimmy Briggs
  5: #  Date : 2025-03-03
  6: #
  7: #  ------------------------------------------------------------------------
  8: 
  9: # topic -----------------------------------------------------------------------------------------------------------
 10: 
 11: #' Embeddings
 12: #'
 13: #' @name embeddings
 14: #'
 15: #' @description
 16: #' These functions generate text embeddings using external APIs.
 17: #'
 18: #' Functions:
 19: #'
 20: #' - `embed_openai()`: Generate text embeddings using OpenAI's API.
 21: #' - `embed_ollama()`: Generate text embeddings using Ollama's API.
 22: #'
 23: #' @param text Character string to embed. Can be one of the following:
 24: #'   - A character vector, in which case a matrix of embeddings is returned.
 25: #'   - A `data.frame` with a column named `text`, in which case the `data.frame` is returned with
 26: #'     an additional column added named `embedding`.
 27: #'   - Missing of `NULL`, in which case a function is returned that can be called to get embeddings.
 28: #' @param base_url The base URL for the API. Default depends on the embedding provider.
 29: #' @param model The model to use for the embedding. Default depends on the embedding provider.
 30: #' @param batch_size The batch size to use for the embedding. This will split `text` into batches when embedding.
 31: #' @param api_key The API key to use for the embedding. Default is obtained from the appropriate configuration.
 32: #' @param dims Number of dimensions for the embedding (if supported by the model).
 33: #' @param user User identifier for the embedding request (if supported by the provider).
 34: #'
 35: #' @returns
 36: #' If `text` is a character vector, a matrix of embeddings is returned.
 37: #' If `text` is a `data.frame`, the `data.frame` is returned with an additional column named `embedding`.
 38: #' If `text` is missing or `NULL`, a function is returned that can be called to get embeddings.
 39: #'
 40: #' @examples
 41: #' \dontrun{
 42: #' # Get embeddings for a single string
 43: #' embedding <- embed_openai("This is a test sentence.")
 44: #'
 45: #' # Get embeddings for multiple strings
 46: #' embeddings <- embed_openai(c("First sentence", "Second sentence"))
 47: #'
 48: #' # Add embeddings to a data frame
 49: #' df <- data.frame(text = c("First", "Second", "Third"))
 50: #' df_with_embeddings <- embed_openai(df)
 51: #' }
 52: NULL
 53: 
 54: 
 55: # utils -----------------------------------------------------------------------------------------------------------
 56: 
 57: #' Capture function arguments as a list
 58: #'
 59: #' @description
 60: #' Internal utility to capture arguments for partial application.
 61: #'
 62: #' @return A list of arguments
 63: #'
 64: #' @keywords internal
 65: #' @noRd
 66: capture_args <- function() {
 67:   call <- sys.call(-1)
 68:   dots <- tail(as.list(call), -1)
 69:   names(dots) <- sapply(names(dots), function(x) if (x == "") "" else x)
 70:   dots
 71: }
 72: 
 73: #' Process embeddings in batches
 74: #'
 75: #' @description
 76: #' Internal utility to process embeddings in batches.
 77: #'
 78: #' @param texts Character vector of texts to embed
 79: #' @param batch_size Size of each batch
 80: #' @param embed_fn Function to embed a batch
 81: #'
 82: #' @return Matrix of embeddings
 83: #'
 84: #' @keywords internal
 85: #' @noRd
 86: #' @importFrom cli cli_progress_bar cli_progress_update cli_progress_done
 87: batch_embed <- function(texts, batch_size, embed_fn) {
 88:   n_items <- length(texts)
 89:   batches <- split(texts, ceiling(seq_along(texts) / batch_size))
 90: 
 91:   results <- list()
 92:   pb <- cli::cli_progress_bar(
 93:     total = length(batches),
 94:     format = "Processing embeddings {cli::pb_bar} {cli::pb_percent} | Batch {cli::pb_current}/{cli::pb_total}"
 95:   )
 96: 
 97:   for (i in seq_along(batches)) {
 98:     batch_result <- embed_fn(batches[[i]])
 99:     results[[i]] <- batch_result
100:     cli::cli_progress_update(pb, i)
101:   }
102: 
103:   cli::cli_progress_done(pb)
104: 
105:   # Combine results
106:   if (is.matrix(results[[1]])) {
107:     # For matrices, bind rows
108:     do.call(rbind, results)
109:   } else {
110:     # For vector embeddings (single items per batch), combine list
111:     do.call(c, results)
112:   }
113: }
114: 
115: 
116: # openai ----------------------------------------------------------------------------------------------------------
117: 
118: #' Generate text embeddings using OpenAI's API
119: #'
120: #' @rdname embeddings
121: #' @export
122: #' @importFrom httr2 request req_method req_headers req_auth_bearer_token req_body_json req_perform resp_check_status resp_body_json
123: #' @importFrom cli cli_alert_success cli_abort cli_alert_info
124: #' @importFrom purrr pluck map map_dbl
125: embed_openai <- function(
126:   text,
127:   base_url = get_api_url("openai", "embeddings"),
128:   model = c("text-embedding-3-small", "text-embedding-3-large"),
129:   dims = NULL,
130:   user = NULL,
131:   batch_size = 20L,
132:   api_key = get_openai_api_key()
133: ) {
134:   # Return a partially applied function if text is missing
135:   if (missing(text) || is.null(text)) {
136:     args <- capture_args()
137:     func <- purrr::partial(embed_openai, !!!args)
138:     return(func)
139:   }
140: 
141:   # Handle data frame input
142:   if (is.data.frame(text)) {
143:     if (!"text" %in% names(text)) {
144:       cli::cli_abort("Data frame must contain a column named 'text'.")
145:     }
146: 
147:     text_copy <- text
148:     text_copy[["embedding"]] <- embed_openai(
149:       text = text[["text"]],
150:       base_url = base_url,
151:       model = model,
152:       dims = dims,
153:       user = user,
154:       batch_size = batch_size,
155:       api_key = api_key
156:     )
157:     return(text_copy)
158:   }
159: 
160:   # Match model argument
161:   model <- match.arg(model)
162: 
163:   # Ensure text is a character vector
164:   if (!is.character(text)) {
165:     cli::cli_abort("Text must be a character vector, a data frame with a 'text' column, or NULL.")
166:   }
167: 
168:   # Handle empty inputs
169:   if (length(text) == 0) {
170:     cli::cli_alert_info("Empty text input, returning empty result.")
171:     return(matrix(numeric(0), nrow = 0, ncol = 0))
172:   }
173: 
174:   # Single text case
175:   if (length(text) == 1) {
176:     return(embed_openai_single(
177:       text = text,
178:       base_url = base_url,
179:       model = model,
180:       dims = dims,
181:       user = user,
182:       api_key = api_key
183:     ))
184:   }
185: 
186:   # Multiple texts case - use batching
187:   cli::cli_alert_info("Processing {length(text)} texts in batches of {batch_size}.")
188: 
189:   embeddings <- batch_embed(
190:     texts = text,
191:     batch_size = batch_size,
192:     embed_fn = function(batch) {
193:       # Process each text in the batch individually
194:       batch_embeddings <- lapply(batch, function(t) {
195:         embed_openai_single(
196:           text = t,
197:           base_url = base_url,
198:           model = model,
199:           dims = dims,
200:           user = user,
201:           api_key = api_key
202:         )
203:       })
204: 
205:       # Convert list of vectors to matrix
206:       do.call(rbind, batch_embeddings)
207:     }
208:   )
209: 
210:   # Add row names if the input had names
211:   if (!is.null(names(text))) {
212:     rownames(embeddings) <- names(text)
213:   }
214: 
215:   return(embeddings)
216: }
217: 
218: 
219: #' Generate a single text embedding using OpenAI's API
220: #'
221: #' @param text Single text string to embed
222: #' @param base_url Base URL for the API
223: #' @param model Model to use
224: #' @param dims Dimensions for the embedding (if supported)
225: #' @param user User identifier (if needed)
226: #' @param api_key OpenAI API key
227: #'
228: #' @return Numeric vector of embeddings
229: #'
230: #' @keywords internal
231: #' @noRd
232: embed_openai_single <- function(
233:   text,
234:   base_url,
235:   model,
236:   dims,
237:   user,
238:   api_key
239: ) {
240:   # Create request body
241:   req_body <- list(
242:     "input" = text,
243:     "model" = model
244:   )
245: 
246:   # Add optional parameters if provided
247:   if (!is.null(dims)) req_body$dimensions <- dims
248:   if (!is.null(user)) req_body$user <- user
249: 
250:   # Create and send request
251:   req <- httr2::request(base_url) |>
252:     httr2::req_method("POST") |>
253:     httr2::req_headers("Content-Type" = "application/json") |>
254:     httr2::req_auth_bearer_token(api_key) |>
255:     httr2::req_body_json(req_body)
256: 
257:   # Handle response
258:   tryCatch({
259:     resp <- httr2::req_perform(req)
260:     httr2::resp_check_status(resp)
261:   }, error = function(e) {
262:     cli::cli_abort("Failed to call OpenAI's Embeddings API\n{e$message}")
263:   })
264: 
265:   # Parse response
266:   resp_json <- httr2::resp_body_json(resp)
267:   embedding <- purrr::pluck(resp_json, "data", 1, "embedding")
268: 
269:   # Check response format
270:   if (is.null(embedding)) {
271:     cli::cli_abort("Unexpected API response format. Could not extract embedding.")
272:   }
273: 
274:   # Return embedding as numeric vector
275:   unlist(embedding)
276: }
277: 
278: 
279: # ollama ----------------------------------------------------------------------------------------------------------
280: 
281: #' Generate text embeddings using Ollama's API
282: #'
283: #' @rdname embeddings
284: #' @export
285: #' @importFrom httr2 request req_method req_headers req_body_json req_perform resp_check_status resp_body_json
286: #' @importFrom cli cli_alert_success cli_abort cli_alert_info
287: #' @importFrom purrr pluck map
288: embed_ollama <- function(
289:   text,
290:   base_url = "http://localhost:11434/api/embeddings",
291:   model = "llama3",
292:   batch_size = 10L
293: ) {
294:   # Return a partially applied function if text is missing
295:   if (missing(text) || is.null(text)) {
296:     args <- capture_args()
297:     func <- purrr::partial(embed_ollama, !!!args)
298:     return(func)
299:   }
300: 
301:   # Handle data frame input
302:   if (is.data.frame(text)) {
303:     if (!"text" %in% names(text)) {
304:       cli::cli_abort("Data frame must contain a column named 'text'.")
305:     }
306: 
307:     text_copy <- text
308:     text_copy[["embedding"]] <- embed_ollama(
309:       text = text[["text"]],
310:       base_url = base_url,
311:       model = model,
312:       batch_size = batch_size
313:     )
314:     return(text_copy)
315:   }
316: 
317:   # Ensure text is a character vector
318:   if (!is.character(text)) {
319:     cli::cli_abort("Text must be a character vector, a data frame with a 'text' column, or NULL.")
320:   }
321: 
322:   # Handle empty inputs
323:   if (length(text) == 0) {
324:     cli::cli_alert_info("Empty text input, returning empty result.")
325:     return(matrix(numeric(0), nrow = 0, ncol = 0))
326:   }
327: 
328:   # Single text case
329:   if (length(text) == 1) {
330:     return(embed_ollama_single(
331:       text = text,
332:       base_url = base_url,
333:       model = model
334:     ))
335:   }
336: 
337:   # Multiple texts case - use batching
338:   cli::cli_alert_info("Processing {length(text)} texts in batches of {batch_size}.")
339: 
340:   embeddings <- batch_embed(
341:     texts = text,
342:     batch_size = batch_size,
343:     embed_fn = function(batch) {
344:       # Process each text in the batch individually
345:       batch_embeddings <- lapply(batch, function(t) {
346:         embed_ollama_single(
347:           text = t,
348:           base_url = base_url,
349:           model = model
350:         )
351:       })
352: 
353:       # Convert list of vectors to matrix
354:       do.call(rbind, batch_embeddings)
355:     }
356:   )
357: 
358:   # Add row names if the input had names
359:   if (!is.null(names(text))) {
360:     rownames(embeddings) <- names(text)
361:   }
362: 
363:   return(embeddings)
364: }
365: 
366: 
367: #' Generate a single text embedding using Ollama's API
368: #'
369: #' @param text Single text string to embed
370: #' @param base_url Base URL for the API
371: #' @param model Model to use
372: #'
373: #' @return Numeric vector of embeddings
374: #'
375: #' @keywords internal
376: #' @noRd
377: embed_ollama_single <- function(
378:   text,
379:   base_url,
380:   model
381: ) {
382:   # Create request body
383:   req_body <- list(
384:     "model" = model,
385:     "prompt" = text
386:   )
387: 
388:   # Create and send request
389:   req <- httr2::request(base_url) |>
390:     httr2::req_method("POST") |>
391:     httr2::req_headers("Content-Type" = "application/json") |>
392:     httr2::req_body_json(req_body)
393: 
394:   # Handle response
395:   tryCatch({
396:     resp <- httr2::req_perform(req)
397:     httr2::resp_check_status(resp)
398:   }, error = function(e) {
399:     cli::cli_abort("Failed to call Ollama's Embeddings API\n{e$message}")
400:   })
401: 
402:   # Parse response
403:   resp_json <- httr2::resp_body_json(resp)
404:   embedding <- purrr::pluck(resp_json, "embedding")
405: 
406:   # Check response format
407:   if (is.null(embedding)) {
408:     cli::cli_abort("Unexpected API response format. Could not extract embedding.")
409:   }
410: 
411:   # Return embedding as numeric vector
412:   unlist(embedding)
413: }
`````

## File: R/encode.R
`````r
  1: #  ------------------------------------------------------------------------
  2: #
  3: # Title : Encoding
  4: #    By : Jimmy Briggs
  5: #  Date : 2025-03-13
  6: #
  7: #  ------------------------------------------------------------------------
  8: 
  9: #' Base64 Encoding & Decoding
 10: #'
 11: #' @name encode_base64
 12: #'
 13: #' @description
 14: #' Functions for encoding and decoding data using Base64 encoding.
 15: #'
 16: #' @param data A character vector to encode or decode.
 17: #'
 18: #' @returns
 19: #' - `encode_base64()`: A character vector of Base64 encoded data.
 20: #' - `decode_base64()`: A character vector of decoded data.
 21: #'
 22: #' @export
 23: NULL
 24: 
 25: #' @rdname encode_base64
 26: #' @export
 27: encode_base64 <- function(data) {
 28:   base64enc::base64encode(data)
 29: }
 30: 
 31: #' @rdname encode_base64
 32: #' @export
 33: decode_base64 <- function(data) {
 34:   base64enc::base64decode(data)
 35: }
 36: 
 37: #' Encode Data
 38: #'
 39: #' @name encode_data
 40: #'
 41: #' @description
 42: #' Encode a data frame into a specified format (e.g., JSON, CSV, or text) with optional
 43: #' truncation of rows to a specified maximum number.
 44: #'
 45: #' Its primary purpose is to provide a convenient way to encode data for use with
 46: #' AI Chat Agents.
 47: #'
 48: #' @param data A data frame to encode.
 49: #' @param method A character string specifying the encoding method. Options include "json", "csv", or "text".
 50: #'   The default value is "json".
 51: #' @param max_rows An integer specifying the maximum number of rows to include in the encoded output.
 52: #'   If the number of rows in the data frame exceeds this value, the output will be truncated.
 53: #'   The default value is `100`.
 54: #' @param show_end An integer specifying the number of rows to show at the end of the encoded output.
 55: #'   The default value is `10`.
 56: #'
 57: #' @returns
 58: #' A character string representing the encoded data.
 59: #'
 60: #' @export
 61: #'
 62: #' @importFrom jsonlite toJSON
 63: #' @importFrom readr write_csv
 64: #' @importFrom stringr str_remove str_trim
 65: #' @importFrom cli cli_alert_warning cli_alert_info
 66: #'
 67: #' @examples
 68: #' encode_data(hud_markets, "json", max_rows = 10, show_end = 5) |> cat()
 69: #' encode_data(hud_markets, "csv", max_rows = 10, show_end = 5) |> cat()
 70: #' encode_data(hud_markets, "text", max_rows = 10, show_end = 5) |> cat()
 71: encode_data <- function(data, method = c("json", "csv", "text"), max_rows = 100, show_end = 10) {
 72: 
 73:   check_tibble(data)
 74: 
 75:   if (nrow(data) == 0) {
 76:     cli::cli_alert_warning("Provided {.arg data} is empty. Encoding empty data as text.")
 77:     return(encode_data_text(data))
 78:   }
 79: 
 80:   method <- match.arg(method)
 81:   encoder <- switch(
 82:     method,
 83:     json = encode_data_json,
 84:     csv = encode_data_csv,
 85:     text = encode_data_text
 86:   )
 87: 
 88:   if (method == "text" || (nrow(data) <= max_rows)) { return(encoder(data)) }
 89: 
 90:   head_rows <- data[1:max_rows, ]
 91:   tail_rows <- data[(nrow(data) - show_end + 1):nrow(data), ]
 92: 
 93:   if (method == "json") {
 94:     json_head <- encoder(head_rows, strip_brackets = TRUE)
 95:     json_tail <- encoder(tail_rows, strip_brackets = TRUE)
 96: 
 97:     return(
 98:       paste0(
 99:         "[\n",
100:         paste0("  ", json_head),
101:         ",\n  // ...",
102:         nrow(data) - max_rows,
103:         " rows omitted... //\n",
104:         paste0("  ", json_tail),
105:         "\n]\n"
106:       )
107:     )
108:   }
109: 
110:   if (method == "csv") {
111:     csv_head <- encoder(head_rows)
112:     csv_tail <- encoder(tail_rows, colnames = FALSE)
113: 
114:     return(
115:       paste(
116:         collapse = "\n",
117:         c(
118:           csv_head,
119:           sprintf("... %d rows omitted ...", nrow(data) - max_rows),
120:           csv_tail,
121:           ""
122:         )
123:       )
124:     )
125:   }
126: }
127: 
128: #' @rdname encode_data
129: #' @export
130: #' @importFrom readr write_csv
131: encode_data_csv <- function(data, colnames = TRUE) {
132:   check_tibble(data)
133:   temp_file <- tempfile(fileext = ".csv")
134:   on.exit(unlink(temp_file))
135:   readr::write_csv(data, file = temp_file, col_names = colnames)
136:   paste(readLines(temp_file), collapse = "\n")
137: }
138: 
139: #' @rdname encode_data
140: #' @export
141: #' @importFrom jsonlite toJSON
142: encode_data_json <- function(data, strip_brackets = FALSE) {
143:   check_tibble(data)
144:   hold <- jsonlite::toJSON(data, dataframe = "rows", na = "string", pretty = TRUE, auto_unbox = TRUE)
145:   if (strip_brackets) { return(strip_json_brackets(hold)) }
146:   hold
147: }
148: 
149: #' @rdname encode_data
150: #' @export
151: encode_data_text <- function(data) {
152:   check_tibble(data)
153:   hold <- paste(collapse = "\n", capture.output(print(data)))
154:   lines <- strsplit(hold, "\n")[[1]]
155:   lines <- lines[!grepl("print", lines)]
156:   return(paste(lines, collapse = "\n"))
157: }
158: 
159: #' @keywords internal
160: #' @importFrom stringr str_remove str_trim
161: strip_json_brackets <- function(json) {
162:   json |> stringr::str_remove("^\\[") |> stringr::str_remove("\\]$") |> stringr::str_trim()
163: }
164: 
165: 
166: # expressions -----------------------------------------------------------------------------------------------------
`````

## File: R/execute.R
`````r
 1: #' Execute R Code
 2: #'
 3: #' @description
 4: #' This function executes a given R code string and returns the result.
 5: #'
 6: #' @param code A character string containing the R code to execute.
 7: #'
 8: #' @returns
 9: #' The result of the executed R code.
10: #'
11: #' @export
12: #'
13: #' @examples
14: #' \dontrun{
15: #' execute_r_code("print('Hello, World!')")
16: #' }
17: #'
18: #' @importFrom cli cli_alert_success cli_alert_danger
19: execute_r_code <- function(code) {
20: 
21:   tryCatch({
22:     expr = {
23:       eval(parse(text = code))
24:       cli::cli_alert_success("R Code executed successfully.")
25:     }
26:   }, error = function(e) {
27:     cli::cli_alert_danger("Error executing R code: {e$message}")
28:     return(character(0))
29:   })
30: 
31: }
`````

## File: R/extract.R
`````r
  1: #  ------------------------------------------------------------------------
  2: #
  3: # Title : Extraction Functions
  4: #    By : Jimmy Briggs
  5: #  Date : 2025-03-20
  6: #
  7: #  ------------------------------------------------------------------------
  8: 
  9: 
 10: # extract code ----------------------------------------------------------------------------------------------------
 11: 
 12: #' Extract Code Blocks from Markdown
 13: #'
 14: #' This function extracts code blocks of a specified language from markdown text.
 15: #' It handles both uppercase and lowercase language identifiers (e.g., 'R' and 'r').
 16: #'
 17: #' @param markdown_text The markdown text containing code blocks.
 18: #' @param language The language identifier to extract (default: "R").
 19: #'
 20: #' @return A character vector with each element containing a code block.
 21: #' @export
 22: extract_code_blocks <- function(markdown_text, language = "R") {
 23:   # Normalize language for comparison
 24:   language <- tolower(language)
 25: 
 26:   # Split the text by code block markers
 27:   parts <- strsplit(markdown_text, "```", fixed = TRUE)[[1]]
 28: 
 29:   # If we have fewer than 3 parts, there's no complete code block
 30:   if (length(parts) < 3) {
 31:     return(character(0))
 32:   }
 33: 
 34:   blocks <- character(0)
 35: 
 36:   # Process every other part starting from the second part
 37:   for (i in seq(2, length(parts), 2)) {
 38:     if (i <= length(parts)) {
 39:       part <- parts[i]
 40:       # Get the first line to check the language
 41:       first_line <- strsplit(part, "\n")[[1]][1]
 42:       first_line <- trimws(first_line)
 43: 
 44:       # Check if this part starts with the language identifier (case insensitive)
 45:       if (grepl(paste0("^", language, "$"), tolower(first_line))) {
 46:         # Extract the code content after the language identifier (skip first line)
 47:         code_lines <- strsplit(part, "\n")[[1]][-1]
 48:         code_content <- paste(code_lines, collapse = "\n")
 49:         blocks <- c(blocks, code_content)
 50:       }
 51:     }
 52:   }
 53: 
 54:   return(blocks)
 55: }
 56: 
 57: #' Merge Code Blocks into a Single String
 58: #'
 59: #' This function extracts code blocks of a specified language from markdown text
 60: #' and merges them into a single string.
 61: #'
 62: #' @param markdown_text The markdown text containing code blocks.
 63: #' @param language The language identifier to extract (default: "R").
 64: #' @param separator String used to join blocks (default: `\n\n`).
 65: #'
 66: #' @return A single string containing all merged code blocks.
 67: #' @export
 68: merge_code_blocks <- function(markdown_text, language = "R", separator = `\n\n`) {
 69:   blocks <- extract_code_blocks(markdown_text, language)
 70: 
 71:   if (length(blocks) == 0) {
 72:     return("")
 73:   }
 74: 
 75:   # Join all blocks with the specified separator
 76:   merged_code <- paste(blocks, collapse = separator)
 77:   return(merged_code)
 78: }
 79: 
 80: #' Trim Code Block
 81: #'
 82: #' Removes leading/trailing whitespace and empty lines from a code block.
 83: #'
 84: #' @param code The code block to trim.
 85: #'
 86: #' @return A trimmed code block.
 87: #' @export
 88: trim_code <- function(code) {
 89:   # Trim leading/trailing whitespace from each line
 90:   lines <- strsplit(code, "\n", fixed = TRUE)[[1]]
 91:   lines <- trimws(lines)
 92: 
 93:   # Remove empty lines at the beginning and end
 94:   while (length(lines) > 0 && lines[1] == "") {
 95:     lines <- lines[-1]
 96:   }
 97:   while (length(lines) > 0 && lines[length(lines)] == "") {
 98:     lines <- lines[-length(lines)]
 99:   }
100: 
101:   # Rejoin the lines
102:   return(paste(lines, collapse = "\n"))
103: }
104: 
105: #' Format Code Block
106: #'
107: #' Uses formatR to format a code block with consistent styling.
108: #'
109: #' @param code The code block to format.
110: #' @param keep_comments Whether to keep comments (default: TRUE).
111: #' @param style A list of formatting options to override defaults.
112: #'
113: #' @return A formatted code block.
114: #' @export
115: format_code <- function(code, keep_comments = TRUE, style = list()) {
116:   # Check if formatR is installed
117:   if (!requireNamespace("formatR", quietly = TRUE)) {
118:     warning("formatR package not installed. Returning unformatted code.")
119:     return(code)
120:   }
121: 
122:   # Default formatting options
123:   default_style <- list(
124:     comment = keep_comments,  # keep or remove comments
125:     pipe = TRUE,              # use native pipe |>
126:     arrow = TRUE,             # always use ->
127:     blank = FALSE,            # remove blank lines
128:     indent = 2L,              # indent with 2 spaces
129:     wrap = TRUE,              # wrap lines
130:     width.cutoff = 80L,       # wrap at 80 characters
131:     args.newline = TRUE       # place function args on new line
132:   )
133: 
134:   # Override defaults with any provided style options
135:   style_opts <- modifyList(default_style, style)
136: 
137:   # Apply formatting options
138:   formatted <- tryCatch({
139:     do.call(formatR::tidy_source,
140:             c(list(text = code, output = FALSE), style_opts))$text.tidy
141:   }, error = function(e) {
142:     warning("Error formatting code: ", e$message)
143:     return(code)  # Return original code if formatting fails
144:   })
145: 
146:   # Join lines if formatting was successful
147:   if (is.character(formatted) && length(formatted) > 0) {
148:     formatted <- paste(formatted, collapse = "\n")
149:   } else {
150:     formatted <- code  # Return original if something went wrong
151:   }
152: 
153:   return(formatted)
154: }
155: 
156: #' Extract and Format Code Blocks
157: #'
158: #' Extracts code blocks of a specified language from markdown text,
159: #' formats each block, and merges them.
160: #'
161: #' @param markdown_text The markdown text containing code blocks.
162: #' @param language The language identifier to extract (default: "R").
163: #' @param keep_comments Whether to keep comments when formatting (default: TRUE).
164: #' @param style A list of formatting options for format_code.
165: #' @param separator String used to join blocks (default: `\n\n`).
166: #'
167: #' @returns
168: #' A single string containing all merged and formatted code blocks.
169: #'
170: #' @export
171: extract_and_format_code <- function(markdown_text, language = "R",
172:                                     keep_comments = TRUE,
173:                                     style = list(),
174:                                     separator = `\n\n`) {
175:   blocks <- extract_code_blocks(markdown_text, language)
176: 
177:   if (length(blocks) == 0) {
178:     return("")
179:   }
180: 
181:   # First trim each block
182:   blocks <- sapply(blocks, trim_code)
183: 
184:   # Then format each block
185:   if (requireNamespace("formatR", quietly = TRUE)) {
186:     blocks <- sapply(blocks, function(block) {
187:       format_code(block, keep_comments, style)
188:     })
189:   }
190: 
191:   # Join all blocks with the specified separator
192:   merged_code <- paste(blocks, collapse = separator)
193:   return(merged_code)
194: }
195: 
196: #' Write Extracted Code to a File
197: #'
198: #' Extracts code blocks, formats them, and writes to a file.
199: #'
200: #' @param markdown_text The markdown text containing code blocks.
201: #' @param file The output file path.
202: #' @param language The language identifier to extract (default: "R").
203: #' @param format Whether to format the code (default: TRUE).
204: #' @param style A list of formatting options.
205: #'
206: #' @return Invisibly returns TRUE if successful, FALSE otherwise.
207: #' @export
208: write_code_to_file <- function(markdown_text, file, language = "R",
209:                                format = TRUE, style = list()) {
210:   if (format && requireNamespace("formatR", quietly = TRUE)) {
211:     code <- extract_and_format_code(markdown_text, language, TRUE, style)
212:   } else {
213:     code <- merge_code_blocks(markdown_text, language)
214:   }
215: 
216:   if (code == "") {
217:     warning("No code blocks found for language: ", language)
218:     return(invisible(FALSE))
219:   }
220: 
221:   # Write to file
222:   status <- tryCatch({
223:     writeLines(code, file)
224:     TRUE
225:   }, error = function(e) {
226:     warning("Error writing to file: ", e$message)
227:     FALSE
228:   })
229: 
230:   return(invisible(status))
231: }
232: 
233: 
234: # extract dates ---------------------------------------------------------------------------------------------------
235: 
236: extract_date <- function(text) {
237:   # Regular expression to match dates in YYYY-MM-DD format
238:   pattern <- "\\b\\d{4}-\\d{2}-\\d{2}\\b"
239: 
240:   # Find all matches
241:   matches <- gregexpr(pattern, text)
242:   dates <- regmatches(text, matches)
243: 
244:   # Flatten the list and remove empty matches
245:   dates <- unlist(dates)
246:   dates <- dates[dates != ""]
247: 
248:   return(dates)
249: }
250: 
251: 
252: # extract numbers -------------------------------------------------------------------------------------------------
253: 
254: extract_numbers <- function(text) {
255:   # Regular expression to match numbers (integers and decimals)
256:   pattern <- "\\b\\d+(\\.\\d+)?\\b"
257: 
258:   # Find all matches
259:   matches <- gregexpr(pattern, text)
260:   numbers <- regmatches(text, matches)
261: 
262:   # Flatten the list and remove empty matches
263:   numbers <- unlist(numbers)
264:   numbers <- numbers[numbers != ""]
265: 
266:   return(numbers)
267: }
268: 
269: # extract email addresses ----------------------------------------------------------------------------------------
270: 
271: extract_email <- function(text) {
272:   # Regular expression to match email addresses
273:   pattern <- "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}"
274: 
275:   # Find all matches
276:   matches <- gregexpr(pattern, text)
277:   emails <- regmatches(text, matches)
278: 
279:   # Flatten the list and remove empty matches
280:   emails <- unlist(emails)
281:   emails <- emails[emails != ""]
282: 
283:   return(emails)
284: }
`````

## File: R/firecrawl.R
`````r
  1: #  ------------------------------------------------------------------------
  2: #
  3: # Title : FireCrawl API Wrappers
  4: #    By : Jimmy Briggs
  5: #  Date : 2025-03-20
  6: #
  7: #  ------------------------------------------------------------------------
  8: 
  9: #' FireCrawl API
 10: #'
 11: #' @name firecrawl
 12: #'
 13: #' @description
 14: #' The FireCrawl API provides a way to scrape and crawl web pages.
 15: #'
 16: #' - `firecrawl_request()`: Create a request object for the FireCrawl API.
 17: #' - `firecrawl_scrape_url()`: Scrape a URL using the FireCrawl API.
 18: #' - `firecrawl_crawl_url()`: Crawl a URL using the FireCrawl API.
 19: #'
 20: #' @param endpoint The API endpoint to use. Default is `NULL`.
 21: #' @param api_key The API key to use. Defaults to the value returned by `get_api_key("firecrawl")`.
 22: #' @param url The URL to scrape or crawl.
 23: #' @param ... Additional arguments to pass to the API.
 24: #'
 25: #' @returns
 26: #' - `firecrawl_request()`: A request object for the FireCrawl API.
 27: #' - `firecrawl_scrape_url()`: The scraped content in markdown format.
 28: #' - `firecrawl_crawl_url()`: The response from the FireCrawl API.
 29: NULL
 30: 
 31: #' @rdname firecrawl
 32: #' @export
 33: #' @importFrom httr2 req_auth_bearer_token req_headers req_method request req_url_path_append
 34: firecrawl_request <- function(endpoint = NULL, api_key = get_api_key("firecrawl")) {
 35: 
 36:   base_url <- "https://api.firecrawl.dev/v1/"
 37: 
 38:   req <- httr2::request(base_url) |>
 39:     httr2::req_method("POST") |>
 40:     httr2::req_headers(
 41:       "Content-Type" = "application/json"
 42:     ) |>
 43:     httr2::req_auth_bearer_token(api_key)
 44: 
 45:   if (is.null(endpoint)) return(req)
 46: 
 47:   req |>
 48:     httr2::req_url_path_append(endpoint)
 49: 
 50: }
 51: 
 52: #' @rdname firecrawl
 53: #' @export
 54: #' @importFrom httr2 req_body_json req_perform resp_check_status resp_body_json
 55: #' @importFrom purrr pluck
 56: firecrawl_scrape_url <- function(url, api_key = get_api_key("firecrawl")) {
 57: 
 58:   req_body <- list(
 59:     url = url,
 60:     formats = list("markdown")
 61:   )
 62: 
 63:   req <- firecrawl_request("scrape", api_key) |>
 64:     httr2::req_body_json(req_body)
 65: 
 66:   resp <- httr2::req_perform(req)
 67:   httr2::resp_check_status(resp)
 68: 
 69:   httr2::resp_body_json(resp) |>
 70:     purrr::pluck("data", "markdown")
 71: 
 72: }
 73: 
 74: #' @rdname firecrawl
 75: #' @export
 76: #' @importFrom httr2 req_body_json req_perform resp_check_status resp_body_json
 77: firecrawl_crawl_url <- function(url, ..., api_key = get_api_key("firecrawl")) {
 78: 
 79:   req_body <- list(
 80:     url = url,
 81:     maxDepth = 10L,
 82:     ignoreSitemap = FALSE,
 83:     ignoreQueryParameters = FALSE,
 84:     limit = 10000,
 85:     allowBackwardLinks = FALSE,
 86:     allowExternalLinks = FALSE,
 87:     scrapeOptions = list(
 88:       blockAds = TRUE
 89:     )
 90:   )
 91: 
 92:   req <- firecrawl_request("crawl", api_key) |>
 93:     httr2::req_body_json(req_body)
 94: 
 95:   resp <- httr2::req_perform(req)
 96:   httr2::resp_check_status(resp)
 97: 
 98:   httr2::resp_body_json(resp)
 99: 
100: }
`````

## File: R/gmaps.R
`````r
  1: #  ------------------------------------------------------------------------
  2: #
  3: # Title : Google Maps API Functions
  4: #    By : Jimmy Briggs
  5: #  Date : 2025-02-25
  6: #
  7: #  ------------------------------------------------------------------------
  8: 
  9: # geocode ---------------------------------------------------------------------------------------------------------
 10: 
 11: #' Geocode Address
 12: #'
 13: #' @description
 14: #' Geocode an address using the Google Maps Geocoding API.
 15: #'
 16: #' @param address A character string representing the address to geocode.
 17: #' @param api_key A character string representing the Google Maps API key.
 18: #'   Will default to the result from [get_gmaps_api_key()].
 19: #'
 20: #' @returns
 21: #' A list containing the following elements:
 22: #'
 23: #' - `status`: A character string indicating the status of the API request.
 24: #' - `formatted_address`: A character string representing the formatted address.
 25: #' - `place_id`: A character string representing the place ID.
 26: #' - `place_types`: A character string representing the place types.
 27: #' - `latitude`: A numeric value representing the latitude.
 28: #' - `longitude`: A numeric value representing the longitude.
 29: #'
 30: #' @export
 31: #'
 32: #' @examples examples/ex_gmaps_geocode_address.R
 33: #'
 34: #' @importFrom googleway google_geocode
 35: #' @importFrom purrr pluck
 36: gmaps_geocode_address <- function(address, api_key = get_gmaps_api_key()) {
 37: 
 38:   cli::cli_alert_info("Geocoding address: {.field {address}}.")
 39: 
 40:   googleway::set_key(api_key)
 41: 
 42:   tryCatch({
 43:     resp <- googleway::google_geocode(address = address)
 44:     # gmaps_check_response(resp)
 45:     results <- purrr::pluck(resp, "results")
 46:     formatted_address <- purrr::pluck(results, "formatted_address")
 47:     place_id <- purrr::pluck(results, "place_id")
 48:     place_types <- purrr::pluck(results, "types", 1)
 49:     location <- purrr::pluck(results, "geometry", "location")
 50:     latitude <- purrr::pluck(location, "lat")
 51:     longitude <- purrr::pluck(location, "lng")
 52: 
 53:     return(
 54:       list(
 55:         status = "OK",
 56:         formatted_address = formatted_address,
 57:         place_id = place_id,
 58:         place_types = place_types,
 59:         latitude = latitude,
 60:         longitude = longitude
 61:       )
 62:     )
 63:   }, error = function(e) {
 64:     return(
 65:       list(
 66:         status = "ERROR",
 67:         error = as.character(e$message),
 68:         formatted_address = NA,
 69:         place_id = NA,
 70:         place_types = NA,
 71:         latitude = NA,
 72:         longitude = NA
 73:       )
 74:     )
 75:   })
 76: 
 77: }
 78: 
 79: 
 80: #' Google Maps Places Search
 81: #'
 82: #' @description
 83: #' Search for a company using the Google Maps Places API.
 84: #'
 85: #' @param company_name Character string representing the name of the company.
 86: #' @param company_address Character string representing the address of the company.
 87: #' @param company_phone Character string representing the phone number of the company.
 88: #' @param api_key A character string representing the Google Maps API key.
 89: #'   Defaults to the result from [get_gmaps_api_key()].
 90: #'
 91: #' @returns
 92: #' A list containing the following elements:
 93: #'
 94: #' - `website`: A character string representing the website URL.
 95: #' - `domain`: A character string representing the domain extracted from the website URL.
 96: #' - `display_name`: A character string representing the display name of the place.
 97: #' - `formatted_address`: A character string representing the formatted address of the place.
 98: #' - `phone`: A character string representing the phone number of the place.
 99: #' - `business_status`: A character string representing the business status of the place.
100: #' - `business_type`: A character string representing the business type of the place.
101: #' - `latitude`: A numeric value representing the latitude of the place.
102: #' - `longitude`: A numeric value representing the longitude of the place.
103: #' - `maps_url`: A character string representing the Google Maps URL of the place.
104: #' - `place_id`: A character string representing the place ID of the place.
105: #'
106: #' @export
107: #'
108: #' @importFrom httr2 request req_method req_headers req_body_json req_perform resp_check_status resp_body_json
109: #' @importFrom purrr pluck
110: #' @importFrom snakecase to_title_case
111: #' @importFrom cli cli_alert_info cli_alert_danger
112: #'
113: #' @examples
114: #' \dontrun{
115: #'   gmaps_places_search("Google", "1600 Amphitheatre Parkway, Mountain View, CA")
116: #' }
117: gmaps_places_search <- function(
118:     company_name,
119:     company_address,
120:     company_phone = NULL,
121:     api_key = "AIzaSyA9iicnOPVX6NmifeCQNYtEhIciwdSgaOc"
122: ) {
123: 
124:   cli::cli_alert_info("Searching for company: {.field {company_name}} at address: {.field {company_address}}.")
125: 
126:   base_url <- "https://places.googleapis.com/v1/places:searchText"
127:   req_query_txt <- paste(company_name, company_address, sep = " ")
128:   req_fields <- paste(
129:     "places.id",
130:     "places.displayName,",
131:     "places.formattedAddress,",
132:     "places.websiteUri,",
133:     "places.nationalPhoneNumber,",
134:     "places.internationalPhoneNumber,",
135:     "places.businessStatus,",
136:     "places.types,",
137:     "places.primaryTypeDisplayName,",
138:     "places.shortFormattedAddress,",
139:     "places.location",
140:     collapse = ","
141:   )
142: 
143:   req <- httr2::request(base_url) |>
144:     httr2::req_method("POST") |>
145:     httr2::req_headers(
146:       `Content-Type` = "application/json",
147:       `X-Goog-Api-Key` = api_key,
148:       `X-Goog-FieldMask` = req_fields #"*" #req_fields
149:     ) |>
150:     httr2::req_body_json(
151:       data = list(
152:         textQuery = req_query_txt
153:       )
154:     )
155: 
156:   tryCatch({
157:     resp <- httr2::req_perform(req)
158:     httr2::resp_check_status(resp)
159:     resp_json <- httr2::resp_body_json(resp)
160:     resp_places <- purrr::pluck(resp_json, "places")
161: 
162:     resp_len <- length(resp_places)
163:     cli::cli_alert_info(
164:       "Google Maps Places API returned {.field {resp_len}} results for the search query."
165:     )
166: 
167:     if (resp_len == 0L) {
168:       cli::cli_alert_danger(
169:         "No places found for the search query. Please check the company name and address."
170:       )
171:       return(
172:         list(
173:           website = NA_character_,
174:           domain = NA_character_,
175:           display_name = NA_character_,
176:           formatted_address = NA_character_,
177:           phone = NA_character_,
178:           business_status = NA_character_,
179:           business_type = NA_character_,
180:           latitude = NA_real_,
181:           longitude = NA_real_,
182:           maps_url = NA_character_,
183:           place_id = NA_character_
184:         )
185:       )
186:     }
187: 
188:     if (resp_len == 1L) {
189:       resp_place <- resp_places[[1]]
190:       return(gmaps_extract_place_info(resp_place))
191:     }
192: 
193:     # If multiple places are found, we need to determine the best match
194:     cli::cli_alert_info(
195:       "Multiple places found for the search query. Determining best match."
196:     )
197: 
198:     best_match <- gmaps_find_best_match(
199:       resp_places,
200:       company_name,
201:       company_address,
202:       company_phone
203:     )
204: 
205:     return(best_match)
206: 
207:   }, error = function(e) {
208:     cli::cli_alert_danger(
209:       c(
210:         "Failed to perform request to Google Maps Places API.\n",
211:         "Error: {e$message}"
212:       )
213:     )
214:     return(
215:       list(
216:         website = NA_character_,
217:         domain = NA_character_,
218:         display_name = NA_character_,
219:         formatted_address = NA_character_,
220:         phone = NA_character_,
221:         business_status = NA_character_,
222:         business_type = NA_character_,
223:         latitude = NA_real_,
224:         longitude = NA_real_,
225:         maps_url = NA_character_,
226:         place_id = NA_character_,
227:         error = as.character(e$message)
228:       )
229:     )
230:   })
231: 
232: }
233: 
234: #' Extract Place Information
235: #'
236: #' @description
237: #' This function extracts relevant information from a place object returned by the Google Maps Places API.
238: #'
239: #' @param place A list representing a place object returned by the Google Maps Places API.
240: #'
241: #' @returns
242: #' A list containing the following elements:
243: #'
244: #' - `display_name`: The display name of the place.
245: #' - `formatted_address`: The formatted address of the place.
246: #' - `phone`: The phone number of the place.
247: #' - `business_status`: The business status of the place.
248: #' - `business_primary_type`: The primary type of the business.
249: #' - `business_types`: A vector of business types associated with the place.
250: #' - `latitude`: The latitude of the place.
251: #' - `longitude`: The longitude of the place.
252: #' - `maps_url`: The Google Maps URL of the place.
253: #' - `place_id`: The unique identifier of the place.
254: #' - `website`: The website URL of the place.
255: #' - `domain`: The domain extracted from the website URL.
256: #'
257: #' @export
258: #'
259: #' @importFrom purrr pluck
260: #' @importFrom snakecase to_title_case
261: #' @importFrom cli cli_alert_warning cli_alert_success
262: gmaps_extract_place_info <- function(place) {
263: 
264:   hold <- list(
265:     display_name = purrr::pluck(place, "displayName", "text") %||% NA_character_,
266:     formatted_address = purrr::pluck(place, "formattedAddress") %||% NA_character_,
267:     phone = purrr::pluck(place, "nationalPhoneNumber") %||% NA_character_,
268:     business_status = purrr::pluck(place, "businessStatus") %||% NA_character_,
269:     business_primary_type = purrr::pluck(place, "primaryTypeDisplayName", "text") %||% NA_character_,
270:     business_types = purrr::pluck(place, "types") |> unlist() |> snakecase::to_title_case() %||% c(NA_character_),
271:     latitude = purrr::pluck(place, "location", "latitude") %||% NA_real_,
272:     longitude = purrr::pluck(place, "location", "longitude") %||% NA_real_,
273:     maps_url = purrr::pluck(place, "googleMapsUri") %||% NA_character_,
274:     place_id = purrr::pluck(place, "id") %||% NA_character_,
275:     website = purrr::pluck(place, "websiteUri") %||% NA_character_,
276:     domain = if (!is.null(purrr::pluck(place, "websiteUri"))) {
277:       get_domain_from_url(purrr::pluck(place, "websiteUri"))
278:     } else {
279:       NA_character_
280:     }
281:   )
282: 
283:   fields <- names(hold)
284:   missing_fields <- fields[is.na(hold)]
285:   if (length(missing_fields) > 0) {
286:     cli::cli_alert_warning(
287:       "The following fields are missing or not found: {.field {missing_fields}}."
288:     )
289:   } else {
290:     cli::cli_alert_success(
291:       "All fields successfully extracted from the place information."
292:     )
293:   }
294: 
295:   return(hold)
296: 
297: }
298: 
299: #' Determine the Best Match from Multiple Places
300: #'
301: #' @description
302: #' This function takes a list of places returned from the Google Maps Places API
303: #' and compares them to find the best match based on various criteria.
304: #'
305: #' @details
306: #' The function evaluates each place based on:
307: #'
308: #' - Type of place (e.g., real estate agency, property management company)
309: #' - String similarity of the company name
310: #' - String similarity of the address
311: #' - Phone number area code match
312: #' - Presence of a website
313: #' - Business status (operational or not)
314: #'
315: #' The function returns the place with the highest score, indicating the best match.
316: #'
317: #' @param places List of places returned from the Google Maps Places API.
318: #' @param company_name Character string representing the name of the company.
319: #' @param company_address Character string representing the address of the company.
320: #' @param company_phone Character string representing the phone number of the company.
321: #'
322: #' @returns
323: #' A list containing the following elements:
324: #'
325: #' - `display_name`: The display name of the place.
326: #' - `formatted_address`: The formatted address of the place.
327: #' - `phone`: The phone number of the place.
328: #' - `business_status`: The business status of the place.
329: #' - `business_primary_type`: The primary type of the business.
330: #' - `business_types`: A vector of business types associated with the place.
331: #' - `latitude`: The latitude of the place.
332: #' - `longitude`: The longitude of the place.
333: #' - `maps_url`: The Google Maps URL of the place.
334: #' - `place_id`: The unique identifier of the place.
335: #' - `website`: The website URL of the place.
336: #' - `domain`: The domain extracted from the website URL.
337: #'
338: #' @export
339: #'
340: #' @importFrom purrr pluck pluck_exists
341: #' @importFrom cli cli_alert_info cli_alert_danger
342: gmaps_find_best_match <- function(places, company_name, company_address, company_phone = NULL) {
343: 
344:   scores <- numeric(length(places))
345: 
346:   clean_company_name <- tolower(gsub("[[:punct:]]", "", company_name))
347:   clean_company_address <- tolower(gsub("[[:punct:]]", "", company_address))
348: 
349:   if (!is.null(company_phone)) {
350:     company_phone_area_code <- sub("^\\D*(\\d{3})\\D*.*$", "\\1", company_phone)
351:   } else {
352:     company_phone_area_code <- NULL
353:   }
354: 
355:   for (i in seq_along(places)) {
356: 
357:     browser()
358: 
359:     place <- places[[i]]
360:     score <- 0
361:     max_score <- 30
362: 
363:     real_estate_types <- c(
364:       "real_estate_agency",
365:       "property_management_company",
366:       "corporate_office",
367:       "real_estate_agent"
368:     )
369: 
370:     # check types
371:     if (purrr::pluck_exists(place, "types")) {
372:       types <- purrr::pluck(place, "types")
373:       for (type in types) {
374:         if (type %in% real_estate_types) {
375:           score <- score + 5
376:           break
377:         }
378:       }
379:     }
380: 
381:     # company name string similarity
382:     if (purrr::pluck_exists(place, "displayName", "text") && !is.null(purrr::pluck(place, "displayName", "text"))) {
383:       place_name <- tolower(gsub("[[:punct:]]", "", purrr::pluck(place, "displayName", "text")))
384:       name_similarity <- string_similarity(clean_company_name, place_name)
385:       score <- score + (name_similarity * 10)
386:     }
387: 
388:     # address string similarity
389:     if (purrr::pluck_exists(place, "formattedAddress") && !is.null(purrr::pluck(place, "formattedAddress"))) {
390:       place_address <- tolower(gsub("[[:punct:]]", "", purrr::pluck(place, "formattedAddress")))
391:       address_similarity <- string_similarity(clean_company_address, place_address)
392:       score <- score + (address_similarity * 8)
393:     }
394: 
395:     # phone number area code match
396:     if (!is.null(company_phone_area_code) && purrr::pluck_exists(place, "nationalPhoneNumber")) {
397:       place_phone_area_code <- sub("^\\D*(\\d{3})\\D*.*$", "\\1", purrr::pluck(place, "nationalPhoneNumber"))
398:       if (place_phone_area_code == company_phone_area_code) {
399:         score <- score + 3
400:       }
401:     }
402: 
403:     # website
404:     if (purrr::pluck_exists(place, "websiteUri") && !is.null(purrr::pluck(place, "websiteUri"))) {
405:       place_website <- purrr::pluck(place, "websiteUri")
406:       if (!is.na(place_website) && place_website != "") {
407:         score <- score + 2
408:       }
409:     }
410: 
411:     # business status
412:     if (purrr::pluck_exists(place, "businessStatus") && !is.null(purrr::pluck(place, "businessStatus"))) {
413:       place_business_status <- purrr::pluck(place, "businessStatus")
414:       if (place_business_status == "OPERATIONAL") {
415:         score <- score + 1
416:       }
417:     }
418: 
419:   }
420: 
421:   best_index <- which.max(scores)
422:   best_place <- places[[best_index]]
423: 
424:   match_quality <- scores[best_index] / max_score
425: 
426:   if (match_quality < 0.5) {
427:     cli::cli_alert_danger("Best match found, but match quality is low: {.field {match_quality}}.")
428:   } else {
429:     cli::cli_alert_info("Best match found with good quality: {.field {match_quality}}.")
430:   }
431: 
432:   # return extracted place info
433:   return(gmaps_extract_place_info(best_place))
434: 
435: }
`````

## File: R/import-standalone-obj-type.R
`````r
  1: # Standalone file: do not edit by hand
  2: # Source: https://github.com/r-lib/rlang/blob/HEAD/R/standalone-obj-type.R
  3: # Generated by: usethis::use_standalone("r-lib/rlang", "obj-type")
  4: # ----------------------------------------------------------------------
  5: #
  6: # ---
  7: # repo: r-lib/rlang
  8: # file: standalone-obj-type.R
  9: # last-updated: 2024-02-14
 10: # license: https://unlicense.org
 11: # imports: rlang (>= 1.1.0)
 12: # ---
 13: #
 14: # ## Changelog
 15: #
 16: # 2024-02-14:
 17: # - `obj_type_friendly()` now works for S7 objects.
 18: #
 19: # 2023-05-01:
 20: # - `obj_type_friendly()` now only displays the first class of S3 objects.
 21: #
 22: # 2023-03-30:
 23: # - `stop_input_type()` now handles `I()` input literally in `arg`.
 24: #
 25: # 2022-10-04:
 26: # - `obj_type_friendly(value = TRUE)` now shows numeric scalars
 27: #   literally.
 28: # - `stop_friendly_type()` now takes `show_value`, passed to
 29: #   `obj_type_friendly()` as the `value` argument.
 30: #
 31: # 2022-10-03:
 32: # - Added `allow_na` and `allow_null` arguments.
 33: # - `NULL` is now backticked.
 34: # - Better friendly type for infinities and `NaN`.
 35: #
 36: # 2022-09-16:
 37: # - Unprefixed usage of rlang functions with `rlang::` to
 38: #   avoid onLoad issues when called from rlang (#1482).
 39: #
 40: # 2022-08-11:
 41: # - Prefixed usage of rlang functions with `rlang::`.
 42: #
 43: # 2022-06-22:
 44: # - `friendly_type_of()` is now `obj_type_friendly()`.
 45: # - Added `obj_type_oo()`.
 46: #
 47: # 2021-12-20:
 48: # - Added support for scalar values and empty vectors.
 49: # - Added `stop_input_type()`
 50: #
 51: # 2021-06-30:
 52: # - Added support for missing arguments.
 53: #
 54: # 2021-04-19:
 55: # - Added support for matrices and arrays (#141).
 56: # - Added documentation.
 57: # - Added changelog.
 58: #
 59: # nocov start
 60: 
 61: #' Return English-friendly type
 62: #' @param x Any R object.
 63: #' @param value Whether to describe the value of `x`. Special values
 64: #'   like `NA` or `""` are always described.
 65: #' @param length Whether to mention the length of vectors and lists.
 66: #' @return A string describing the type. Starts with an indefinite
 67: #'   article, e.g. "an integer vector".
 68: #' @noRd
 69: obj_type_friendly <- function(x, value = TRUE) {
 70:   if (is_missing(x)) {
 71:     return("absent")
 72:   }
 73: 
 74:   if (is.object(x)) {
 75:     if (inherits(x, "quosure")) {
 76:       type <- "quosure"
 77:     } else {
 78:       type <- class(x)[[1L]]
 79:     }
 80:     return(sprintf("a <%s> object", type))
 81:   }
 82: 
 83:   if (!is_vector(x)) {
 84:     return(.rlang_as_friendly_type(typeof(x)))
 85:   }
 86: 
 87:   n_dim <- length(dim(x))
 88: 
 89:   if (!n_dim) {
 90:     if (!is_list(x) && length(x) == 1) {
 91:       if (is_na(x)) {
 92:         return(switch(
 93:           typeof(x),
 94:           logical = "`NA`",
 95:           integer = "an integer `NA`",
 96:           double =
 97:             if (is.nan(x)) {
 98:               "`NaN`"
 99:             } else {
100:               "a numeric `NA`"
101:             },
102:           complex = "a complex `NA`",
103:           character = "a character `NA`",
104:           .rlang_stop_unexpected_typeof(x)
105:         ))
106:       }
107: 
108:       show_infinites <- function(x) {
109:         if (x > 0) {
110:           "`Inf`"
111:         } else {
112:           "`-Inf`"
113:         }
114:       }
115:       str_encode <- function(x, width = 30, ...) {
116:         if (nchar(x) > width) {
117:           x <- substr(x, 1, width - 3)
118:           x <- paste0(x, "...")
119:         }
120:         encodeString(x, ...)
121:       }
122: 
123:       if (value) {
124:         if (is.numeric(x) && is.infinite(x)) {
125:           return(show_infinites(x))
126:         }
127: 
128:         if (is.numeric(x) || is.complex(x)) {
129:           number <- as.character(round(x, 2))
130:           what <- if (is.complex(x)) "the complex number" else "the number"
131:           return(paste(what, number))
132:         }
133: 
134:         return(switch(
135:           typeof(x),
136:           logical = if (x) "`TRUE`" else "`FALSE`",
137:           character = {
138:             what <- if (nzchar(x)) "the string" else "the empty string"
139:             paste(what, str_encode(x, quote = "\""))
140:           },
141:           raw = paste("the raw value", as.character(x)),
142:           .rlang_stop_unexpected_typeof(x)
143:         ))
144:       }
145: 
146:       return(switch(
147:         typeof(x),
148:         logical = "a logical value",
149:         integer = "an integer",
150:         double = if (is.infinite(x)) show_infinites(x) else "a number",
151:         complex = "a complex number",
152:         character = if (nzchar(x)) "a string" else "\"\"",
153:         raw = "a raw value",
154:         .rlang_stop_unexpected_typeof(x)
155:       ))
156:     }
157: 
158:     if (length(x) == 0) {
159:       return(switch(
160:         typeof(x),
161:         logical = "an empty logical vector",
162:         integer = "an empty integer vector",
163:         double = "an empty numeric vector",
164:         complex = "an empty complex vector",
165:         character = "an empty character vector",
166:         raw = "an empty raw vector",
167:         list = "an empty list",
168:         .rlang_stop_unexpected_typeof(x)
169:       ))
170:     }
171:   }
172: 
173:   vec_type_friendly(x)
174: }
175: 
176: vec_type_friendly <- function(x, length = FALSE) {
177:   if (!is_vector(x)) {
178:     abort("`x` must be a vector.")
179:   }
180:   type <- typeof(x)
181:   n_dim <- length(dim(x))
182: 
183:   add_length <- function(type) {
184:     if (length && !n_dim) {
185:       paste0(type, sprintf(" of length %s", length(x)))
186:     } else {
187:       type
188:     }
189:   }
190: 
191:   if (type == "list") {
192:     if (n_dim < 2) {
193:       return(add_length("a list"))
194:     } else if (is.data.frame(x)) {
195:       return("a data frame")
196:     } else if (n_dim == 2) {
197:       return("a list matrix")
198:     } else {
199:       return("a list array")
200:     }
201:   }
202: 
203:   type <- switch(
204:     type,
205:     logical = "a logical %s",
206:     integer = "an integer %s",
207:     numeric = ,
208:     double = "a double %s",
209:     complex = "a complex %s",
210:     character = "a character %s",
211:     raw = "a raw %s",
212:     type = paste0("a ", type, " %s")
213:   )
214: 
215:   if (n_dim < 2) {
216:     kind <- "vector"
217:   } else if (n_dim == 2) {
218:     kind <- "matrix"
219:   } else {
220:     kind <- "array"
221:   }
222:   out <- sprintf(type, kind)
223: 
224:   if (n_dim >= 2) {
225:     out
226:   } else {
227:     add_length(out)
228:   }
229: }
230: 
231: .rlang_as_friendly_type <- function(type) {
232:   switch(
233:     type,
234: 
235:     list = "a list",
236: 
237:     NULL = "`NULL`",
238:     environment = "an environment",
239:     externalptr = "a pointer",
240:     weakref = "a weak reference",
241:     S4 = "an S4 object",
242: 
243:     name = ,
244:     symbol = "a symbol",
245:     language = "a call",
246:     pairlist = "a pairlist node",
247:     expression = "an expression vector",
248: 
249:     char = "an internal string",
250:     promise = "an internal promise",
251:     ... = "an internal dots object",
252:     any = "an internal `any` object",
253:     bytecode = "an internal bytecode object",
254: 
255:     primitive = ,
256:     builtin = ,
257:     special = "a primitive function",
258:     closure = "a function",
259: 
260:     type
261:   )
262: }
263: 
264: .rlang_stop_unexpected_typeof <- function(x, call = caller_env()) {
265:   abort(
266:     sprintf("Unexpected type <%s>.", typeof(x)),
267:     call = call
268:   )
269: }
270: 
271: #' Return OO type
272: #' @param x Any R object.
273: #' @return One of `"bare"` (for non-OO objects), `"S3"`, `"S4"`,
274: #'   `"R6"`, or `"S7"`.
275: #' @noRd
276: obj_type_oo <- function(x) {
277:   if (!is.object(x)) {
278:     return("bare")
279:   }
280: 
281:   class <- inherits(x, c("R6", "S7_object"), which = TRUE)
282: 
283:   if (class[[1]]) {
284:     "R6"
285:   } else if (class[[2]]) {
286:     "S7"
287:   } else if (isS4(x)) {
288:     "S4"
289:   } else {
290:     "S3"
291:   }
292: }
293: 
294: #' @param x The object type which does not conform to `what`. Its
295: #'   `obj_type_friendly()` is taken and mentioned in the error message.
296: #' @param what The friendly expected type as a string. Can be a
297: #'   character vector of expected types, in which case the error
298: #'   message mentions all of them in an "or" enumeration.
299: #' @param show_value Passed to `value` argument of `obj_type_friendly()`.
300: #' @param ... Arguments passed to [abort()].
301: #' @inheritParams args_error_context
302: #' @noRd
303: stop_input_type <- function(x,
304:                             what,
305:                             ...,
306:                             allow_na = FALSE,
307:                             allow_null = FALSE,
308:                             show_value = TRUE,
309:                             arg = caller_arg(x),
310:                             call = caller_env()) {
311:   # From standalone-cli.R
312:   cli <- env_get_list(
313:     nms = c("format_arg", "format_code"),
314:     last = topenv(),
315:     default = function(x) sprintf("`%s`", x),
316:     inherit = TRUE
317:   )
318: 
319:   if (allow_na) {
320:     what <- c(what, cli$format_code("NA"))
321:   }
322:   if (allow_null) {
323:     what <- c(what, cli$format_code("NULL"))
324:   }
325:   if (length(what)) {
326:     what <- oxford_comma(what)
327:   }
328:   if (inherits(arg, "AsIs")) {
329:     format_arg <- identity
330:   } else {
331:     format_arg <- cli$format_arg
332:   }
333: 
334:   message <- sprintf(
335:     "%s must be %s, not %s.",
336:     format_arg(arg),
337:     what,
338:     obj_type_friendly(x, value = show_value)
339:   )
340: 
341:   abort(message, ..., call = call, arg = arg)
342: }
343: 
344: oxford_comma <- function(chr, sep = ", ", final = "or") {
345:   n <- length(chr)
346: 
347:   if (n < 2) {
348:     return(chr)
349:   }
350: 
351:   head <- chr[seq_len(n - 1)]
352:   last <- chr[n]
353: 
354:   head <- paste(head, collapse = sep)
355: 
356:   # Write a or b. But a, b, or c.
357:   if (n > 2) {
358:     paste0(head, sep, final, " ", last)
359:   } else {
360:     paste0(head, " ", final, " ", last)
361:   }
362: }
363: 
364: # nocov end
`````

## File: R/import-standalone-types-check.R
`````r
  1: # Standalone file: do not edit by hand
  2: # Source: https://github.com/r-lib/rlang/blob/HEAD/R/standalone-types-check.R
  3: # Generated by: usethis::use_standalone("r-lib/rlang", "types-check")
  4: # ----------------------------------------------------------------------
  5: #
  6: # ---
  7: # repo: r-lib/rlang
  8: # file: standalone-types-check.R
  9: # last-updated: 2023-03-13
 10: # license: https://unlicense.org
 11: # dependencies: standalone-obj-type.R
 12: # imports: rlang (>= 1.1.0)
 13: # ---
 14: #
 15: # ## Changelog
 16: #
 17: # 2024-08-15:
 18: # - `check_character()` gains an `allow_na` argument (@martaalcalde, #1724)
 19: #
 20: # 2023-03-13:
 21: # - Improved error messages of number checkers (@teunbrand)
 22: # - Added `allow_infinite` argument to `check_number_whole()` (@mgirlich).
 23: # - Added `check_data_frame()` (@mgirlich).
 24: #
 25: # 2023-03-07:
 26: # - Added dependency on rlang (>= 1.1.0).
 27: #
 28: # 2023-02-15:
 29: # - Added `check_logical()`.
 30: #
 31: # - `check_bool()`, `check_number_whole()`, and
 32: #   `check_number_decimal()` are now implemented in C.
 33: #
 34: # - For efficiency, `check_number_whole()` and
 35: #   `check_number_decimal()` now take a `NULL` default for `min` and
 36: #   `max`. This makes it possible to bypass unnecessary type-checking
 37: #   and comparisons in the default case of no bounds checks.
 38: #
 39: # 2022-10-07:
 40: # - `check_number_whole()` and `_decimal()` no longer treat
 41: #   non-numeric types such as factors or dates as numbers.  Numeric
 42: #   types are detected with `is.numeric()`.
 43: #
 44: # 2022-10-04:
 45: # - Added `check_name()` that forbids the empty string.
 46: #   `check_string()` allows the empty string by default.
 47: #
 48: # 2022-09-28:
 49: # - Removed `what` arguments.
 50: # - Added `allow_na` and `allow_null` arguments.
 51: # - Added `allow_decimal` and `allow_infinite` arguments.
 52: # - Improved errors with absent arguments.
 53: #
 54: #
 55: # 2022-09-16:
 56: # - Unprefixed usage of rlang functions with `rlang::` to
 57: #   avoid onLoad issues when called from rlang (#1482).
 58: #
 59: # 2022-08-11:
 60: # - Added changelog.
 61: #
 62: # nocov start
 63: 
 64: # Scalars -----------------------------------------------------------------
 65: 
 66: .standalone_types_check_dot_call <- .Call
 67: 
 68: check_bool <- function(x,
 69:                        ...,
 70:                        allow_na = FALSE,
 71:                        allow_null = FALSE,
 72:                        arg = caller_arg(x),
 73:                        call = caller_env()) {
 74:   if (!missing(x) && .standalone_types_check_dot_call(ffi_standalone_is_bool_1.0.7, x, allow_na, allow_null)) {
 75:     return(invisible(NULL))
 76:   }
 77: 
 78:   stop_input_type(
 79:     x,
 80:     c("`TRUE`", "`FALSE`"),
 81:     ...,
 82:     allow_na = allow_na,
 83:     allow_null = allow_null,
 84:     arg = arg,
 85:     call = call
 86:   )
 87: }
 88: 
 89: check_string <- function(x,
 90:                          ...,
 91:                          allow_empty = TRUE,
 92:                          allow_na = FALSE,
 93:                          allow_null = FALSE,
 94:                          arg = caller_arg(x),
 95:                          call = caller_env()) {
 96:   if (!missing(x)) {
 97:     is_string <- .rlang_check_is_string(
 98:       x,
 99:       allow_empty = allow_empty,
100:       allow_na = allow_na,
101:       allow_null = allow_null
102:     )
103:     if (is_string) {
104:       return(invisible(NULL))
105:     }
106:   }
107: 
108:   stop_input_type(
109:     x,
110:     "a single string",
111:     ...,
112:     allow_na = allow_na,
113:     allow_null = allow_null,
114:     arg = arg,
115:     call = call
116:   )
117: }
118: 
119: .rlang_check_is_string <- function(x,
120:                                    allow_empty,
121:                                    allow_na,
122:                                    allow_null) {
123:   if (is_string(x)) {
124:     if (allow_empty || !is_string(x, "")) {
125:       return(TRUE)
126:     }
127:   }
128: 
129:   if (allow_null && is_null(x)) {
130:     return(TRUE)
131:   }
132: 
133:   if (allow_na && (identical(x, NA) || identical(x, na_chr))) {
134:     return(TRUE)
135:   }
136: 
137:   FALSE
138: }
139: 
140: check_name <- function(x,
141:                        ...,
142:                        allow_null = FALSE,
143:                        arg = caller_arg(x),
144:                        call = caller_env()) {
145:   if (!missing(x)) {
146:     is_string <- .rlang_check_is_string(
147:       x,
148:       allow_empty = FALSE,
149:       allow_na = FALSE,
150:       allow_null = allow_null
151:     )
152:     if (is_string) {
153:       return(invisible(NULL))
154:     }
155:   }
156: 
157:   stop_input_type(
158:     x,
159:     "a valid name",
160:     ...,
161:     allow_na = FALSE,
162:     allow_null = allow_null,
163:     arg = arg,
164:     call = call
165:   )
166: }
167: 
168: IS_NUMBER_true <- 0
169: IS_NUMBER_false <- 1
170: IS_NUMBER_oob <- 2
171: 
172: check_number_decimal <- function(x,
173:                                  ...,
174:                                  min = NULL,
175:                                  max = NULL,
176:                                  allow_infinite = TRUE,
177:                                  allow_na = FALSE,
178:                                  allow_null = FALSE,
179:                                  arg = caller_arg(x),
180:                                  call = caller_env()) {
181:   if (missing(x)) {
182:     exit_code <- IS_NUMBER_false
183:   } else if (0 == (exit_code <- .standalone_types_check_dot_call(
184:     ffi_standalone_check_number_1.0.7,
185:     x,
186:     allow_decimal = TRUE,
187:     min,
188:     max,
189:     allow_infinite,
190:     allow_na,
191:     allow_null
192:   ))) {
193:     return(invisible(NULL))
194:   }
195: 
196:   .stop_not_number(
197:     x,
198:     ...,
199:     exit_code = exit_code,
200:     allow_decimal = TRUE,
201:     min = min,
202:     max = max,
203:     allow_na = allow_na,
204:     allow_null = allow_null,
205:     arg = arg,
206:     call = call
207:   )
208: }
209: 
210: check_number_whole <- function(x,
211:                                ...,
212:                                min = NULL,
213:                                max = NULL,
214:                                allow_infinite = FALSE,
215:                                allow_na = FALSE,
216:                                allow_null = FALSE,
217:                                arg = caller_arg(x),
218:                                call = caller_env()) {
219:   if (missing(x)) {
220:     exit_code <- IS_NUMBER_false
221:   } else if (0 == (exit_code <- .standalone_types_check_dot_call(
222:     ffi_standalone_check_number_1.0.7,
223:     x,
224:     allow_decimal = FALSE,
225:     min,
226:     max,
227:     allow_infinite,
228:     allow_na,
229:     allow_null
230:   ))) {
231:     return(invisible(NULL))
232:   }
233: 
234:   .stop_not_number(
235:     x,
236:     ...,
237:     exit_code = exit_code,
238:     allow_decimal = FALSE,
239:     min = min,
240:     max = max,
241:     allow_na = allow_na,
242:     allow_null = allow_null,
243:     arg = arg,
244:     call = call
245:   )
246: }
247: 
248: .stop_not_number <- function(x,
249:                              ...,
250:                              exit_code,
251:                              allow_decimal,
252:                              min,
253:                              max,
254:                              allow_na,
255:                              allow_null,
256:                              arg,
257:                              call) {
258:   if (allow_decimal) {
259:     what <- "a number"
260:   } else {
261:     what <- "a whole number"
262:   }
263: 
264:   if (exit_code == IS_NUMBER_oob) {
265:     min <- min %||% -Inf
266:     max <- max %||% Inf
267: 
268:     if (min > -Inf && max < Inf) {
269:       what <- sprintf("%s between %s and %s", what, min, max)
270:     } else if (x < min) {
271:       what <- sprintf("%s larger than or equal to %s", what, min)
272:     } else if (x > max) {
273:       what <- sprintf("%s smaller than or equal to %s", what, max)
274:     } else {
275:       abort("Unexpected state in OOB check", .internal = TRUE)
276:     }
277:   }
278: 
279:   stop_input_type(
280:     x,
281:     what,
282:     ...,
283:     allow_na = allow_na,
284:     allow_null = allow_null,
285:     arg = arg,
286:     call = call
287:   )
288: }
289: 
290: check_symbol <- function(x,
291:                          ...,
292:                          allow_null = FALSE,
293:                          arg = caller_arg(x),
294:                          call = caller_env()) {
295:   if (!missing(x)) {
296:     if (is_symbol(x)) {
297:       return(invisible(NULL))
298:     }
299:     if (allow_null && is_null(x)) {
300:       return(invisible(NULL))
301:     }
302:   }
303: 
304:   stop_input_type(
305:     x,
306:     "a symbol",
307:     ...,
308:     allow_na = FALSE,
309:     allow_null = allow_null,
310:     arg = arg,
311:     call = call
312:   )
313: }
314: 
315: check_arg <- function(x,
316:                       ...,
317:                       allow_null = FALSE,
318:                       arg = caller_arg(x),
319:                       call = caller_env()) {
320:   if (!missing(x)) {
321:     if (is_symbol(x)) {
322:       return(invisible(NULL))
323:     }
324:     if (allow_null && is_null(x)) {
325:       return(invisible(NULL))
326:     }
327:   }
328: 
329:   stop_input_type(
330:     x,
331:     "an argument name",
332:     ...,
333:     allow_na = FALSE,
334:     allow_null = allow_null,
335:     arg = arg,
336:     call = call
337:   )
338: }
339: 
340: check_call <- function(x,
341:                        ...,
342:                        allow_null = FALSE,
343:                        arg = caller_arg(x),
344:                        call = caller_env()) {
345:   if (!missing(x)) {
346:     if (is_call(x)) {
347:       return(invisible(NULL))
348:     }
349:     if (allow_null && is_null(x)) {
350:       return(invisible(NULL))
351:     }
352:   }
353: 
354:   stop_input_type(
355:     x,
356:     "a defused call",
357:     ...,
358:     allow_na = FALSE,
359:     allow_null = allow_null,
360:     arg = arg,
361:     call = call
362:   )
363: }
364: 
365: check_environment <- function(x,
366:                               ...,
367:                               allow_null = FALSE,
368:                               arg = caller_arg(x),
369:                               call = caller_env()) {
370:   if (!missing(x)) {
371:     if (is_environment(x)) {
372:       return(invisible(NULL))
373:     }
374:     if (allow_null && is_null(x)) {
375:       return(invisible(NULL))
376:     }
377:   }
378: 
379:   stop_input_type(
380:     x,
381:     "an environment",
382:     ...,
383:     allow_na = FALSE,
384:     allow_null = allow_null,
385:     arg = arg,
386:     call = call
387:   )
388: }
389: 
390: check_function <- function(x,
391:                            ...,
392:                            allow_null = FALSE,
393:                            arg = caller_arg(x),
394:                            call = caller_env()) {
395:   if (!missing(x)) {
396:     if (is_function(x)) {
397:       return(invisible(NULL))
398:     }
399:     if (allow_null && is_null(x)) {
400:       return(invisible(NULL))
401:     }
402:   }
403: 
404:   stop_input_type(
405:     x,
406:     "a function",
407:     ...,
408:     allow_na = FALSE,
409:     allow_null = allow_null,
410:     arg = arg,
411:     call = call
412:   )
413: }
414: 
415: check_closure <- function(x,
416:                           ...,
417:                           allow_null = FALSE,
418:                           arg = caller_arg(x),
419:                           call = caller_env()) {
420:   if (!missing(x)) {
421:     if (is_closure(x)) {
422:       return(invisible(NULL))
423:     }
424:     if (allow_null && is_null(x)) {
425:       return(invisible(NULL))
426:     }
427:   }
428: 
429:   stop_input_type(
430:     x,
431:     "an R function",
432:     ...,
433:     allow_na = FALSE,
434:     allow_null = allow_null,
435:     arg = arg,
436:     call = call
437:   )
438: }
439: 
440: check_formula <- function(x,
441:                           ...,
442:                           allow_null = FALSE,
443:                           arg = caller_arg(x),
444:                           call = caller_env()) {
445:   if (!missing(x)) {
446:     if (is_formula(x)) {
447:       return(invisible(NULL))
448:     }
449:     if (allow_null && is_null(x)) {
450:       return(invisible(NULL))
451:     }
452:   }
453: 
454:   stop_input_type(
455:     x,
456:     "a formula",
457:     ...,
458:     allow_na = FALSE,
459:     allow_null = allow_null,
460:     arg = arg,
461:     call = call
462:   )
463: }
464: 
465: 
466: # Vectors -----------------------------------------------------------------
467: 
468: # TODO: Figure out what to do with logical `NA` and `allow_na = TRUE`
469: 
470: check_character <- function(x,
471:                             ...,
472:                             allow_na = TRUE,
473:                             allow_null = FALSE,
474:                             arg = caller_arg(x),
475:                             call = caller_env()) {
476: 
477:   if (!missing(x)) {
478:     if (is_character(x)) {
479:       if (!allow_na && any(is.na(x))) {
480:         abort(
481:           sprintf("`%s` can't contain NA values.", arg),
482:           arg = arg,
483:           call = call
484:         )
485:       }
486: 
487:       return(invisible(NULL))
488:     }
489: 
490:     if (allow_null && is_null(x)) {
491:       return(invisible(NULL))
492:     }
493:   }
494: 
495:   stop_input_type(
496:     x,
497:     "a character vector",
498:     ...,
499:     allow_null = allow_null,
500:     arg = arg,
501:     call = call
502:   )
503: }
504: 
505: check_logical <- function(x,
506:                           ...,
507:                           allow_null = FALSE,
508:                           arg = caller_arg(x),
509:                           call = caller_env()) {
510:   if (!missing(x)) {
511:     if (is_logical(x)) {
512:       return(invisible(NULL))
513:     }
514:     if (allow_null && is_null(x)) {
515:       return(invisible(NULL))
516:     }
517:   }
518: 
519:   stop_input_type(
520:     x,
521:     "a logical vector",
522:     ...,
523:     allow_na = FALSE,
524:     allow_null = allow_null,
525:     arg = arg,
526:     call = call
527:   )
528: }
529: 
530: check_data_frame <- function(x,
531:                              ...,
532:                              allow_null = FALSE,
533:                              arg = caller_arg(x),
534:                              call = caller_env()) {
535:   if (!missing(x)) {
536:     if (is.data.frame(x)) {
537:       return(invisible(NULL))
538:     }
539:     if (allow_null && is_null(x)) {
540:       return(invisible(NULL))
541:     }
542:   }
543: 
544:   stop_input_type(
545:     x,
546:     "a data frame",
547:     ...,
548:     allow_null = allow_null,
549:     arg = arg,
550:     call = call
551:   )
552: }
553: 
554: # nocov end
`````

## File: R/langfuse.R
`````r
   1: #  ------------------------------------------------------------------------
   2: #
   3: # Title : Langfuse Integrations
   4: #    By : Jimmy Briggs
   5: #  Date : 2025-03-12
   6: #
   7: #  ------------------------------------------------------------------------
   8: 
   9: #' Langfuse API Client
  10: #'
  11: #' @name langfuse
  12: #'
  13: #' @description
  14: #' A collection of functions for tracking and evaluating LLM interactions
  15: #' using Langfuse.
  16: #'
  17: #' Below are the functions grouped by category:
  18: #'
  19: #' ## Core Client Functions
  20: #'
  21: #' - `lf_client()`: Create a Langfuse API client configuration.
  22: #' - `lf_ingestion()`: Send data to the Langfuse ingestion endpoint.
  23: #'
  24: #' ## Chat Tracing
  25: #'
  26: #' - `lf_trace_chat()`: Trace an individual ellmer chat interaction.
  27: #' - `lf_trace_chat_session()`: Trace a chat interaction within a session.
  28: #' - `lf_add_feedback()`: Add user feedback for a traced chat interaction.
  29: #'
  30: #' ## Session Management
  31: #'
  32: #' - `lf_create_session()`: Create a new session for grouped interactions.
  33: #' - `lf_create_observation()`: Add an observation to a trace.
  34: #' - `lf_create_evaluation()`: Add an evaluation score to a trace.
  35: #'
  36: #' ## Prompt Management
  37: #'
  38: #' - `lf_add_prompt()`: Add a prompt template to Langfuse.
  39: #' - `lf_get_prompt()`: Retrieve a prompt template from Langfuse.
  40: #'
  41: #' ## Dataset & Experimentation
  42: #'
  43: #' - `lf_add_dataset()`: Create a new dataset for testing.
  44: #' - `lf_add_dataset_item()`: Add an item to a dataset.
  45: #' - `lf_run_experiment()`: Run an experiment using a dataset.
  46: #'
  47: #' @importFrom cli cli_alert_warning cli_alert_danger
  48: #' @importFrom httr2 request req_url_path_append req_method req_headers req_auth_basic
  49: #' @importFrom httr2 req_body_json req_perform resp_check_status resp_body_json
  50: #' @importFrom uuid UUIDgenerate
  51: NULL
  52: 
  53: #' Create a Langfuse API Client
  54: #'
  55: #' @description
  56: #' This function creates a Langfuse API client configuration.
  57: #'
  58: #' @param secret_key Langfuse API Secret Key. Defaults to `LANGFUSE_SECRET_KEY` environment variable.
  59: #' @param public_key Langfuse API Public Key. Defaults to `LANGFUSE_PUBLIC_KEY` environment variable.
  60: #' @param host Langfuse API Host URL. Defaults to `LANGFUSE_HOST` environment variable.
  61: #'   If not set, defaults to `https://us.cloud.langfuse.com` (US region).
  62: #' @param enabled Whether tracing is enabled. Defaults to `TRUE`.
  63: #'
  64: #' @return A list containing the Langfuse client configuration.
  65: #'
  66: #' @export
  67: #'
  68: #' @examples
  69: #' # Create client with environment variables
  70: #' client <- lf_client()
  71: #'
  72: #' # Create client with explicit keys
  73: #' client <- lf_client(
  74: #'   secret_key = "your_secret_key",
  75: #'   public_key = "your_public_key"
  76: #' )
  77: lf_client <- function(
  78:     secret_key = Sys.getenv("LANGFUSE_SECRET_KEY"),
  79:     public_key = Sys.getenv("LANGFUSE_PUBLIC_KEY"),
  80:     host = Sys.getenv("LANGFUSE_HOST", "https://us.cloud.langfuse.com"),
  81:     enabled = TRUE
  82: ) {
  83: 
  84:   if (nzchar(secret_key) && nzchar(public_key)) {
  85:     enabled <- enabled
  86:   } else {
  87:     enabled <- FALSE
  88:     cli::cli_alert_warning("Langfuse credentials missing. Tracing disabled.")
  89:   }
  90: 
  91:   list(
  92:     secret_key = secret_key,
  93:     public_key = public_key,
  94:     host = host,
  95:     enabled = enabled
  96:   )
  97: }
  98: 
  99: #' Send Data to Langfuse Ingestion Endpoint
 100: #'
 101: #' @description
 102: #' This function sends data to the Langfuse `/ingestion` endpoint.
 103: #'
 104: #' @param batch The batch data to send as a list
 105: #' @param client A Langfuse client configuration created with `lf_client()`
 106: #'
 107: #' @return The response from Langfuse on success, FALSE on failure
 108: #'
 109: #' @export
 110: #'
 111: lf_ingestion <- function(batch, client) {
 112:   if (is.null(client) || !isTRUE(client$enabled)) {
 113:     return(FALSE)
 114:   }
 115: 
 116:   req <- httr2::request(client$host) |>
 117:     httr2::req_url_path_append("api", "public", "ingestion") |>
 118:     httr2::req_method("POST") |>
 119:     httr2::req_headers("Content-Type" = "application/json") |>
 120:     httr2::req_auth_basic(username = client$public_key, password = client$secret_key) |>
 121:     httr2::req_body_json(list(batch = batch))
 122: 
 123:   tryCatch({
 124:     resp <- httr2::req_perform(req)
 125:     httr2::resp_check_status(resp)
 126:     httr2::resp_body_json(resp)
 127:   }, error = function(e) {
 128:     cli::cli_alert_danger("Failed to ingest data: {conditionMessage(e)}")
 129:     return(FALSE)
 130:   })
 131: }
 132: 
 133: #' Create a Trace Event
 134: #'
 135: #' @description
 136: #' Creates a trace event for Langfuse.
 137: #'
 138: #' @param name Name of the trace
 139: #' @param user_id User ID
 140: #' @param input Input text
 141: #' @param output Output text
 142: #' @param metadata Additional metadata as a list
 143: #'
 144: #' @return A list representing a trace event
 145: #'
 146: #' @keywords internal
 147: lf_create_trace_event <- function(name, user_id = NULL, input = NULL, output = NULL, metadata = NULL) {
 148:   id <- uuid::UUIDgenerate()
 149:   timestamp <- format(Sys.time(), "%Y-%m-%dT%H:%M:%OS6Z")
 150: 
 151:   event <- list(
 152:     id = id,
 153:     timestamp = timestamp,
 154:     type = "trace-create",
 155:     body = list(
 156:       id = id,
 157:       timestamp = timestamp,
 158:       name = name,
 159:       environment = "production"
 160:     )
 161:   )
 162: 
 163:   if (!is.null(user_id)) event$body$userId <- user_id
 164:   if (!is.null(input)) event$body$input <- input
 165:   if (!is.null(output)) event$body$output <- output
 166:   if (!is.null(metadata)) event$body$metadata <- metadata
 167: 
 168:   return(event)
 169: }
 170: 
 171: #' Create a Generation Event
 172: #'
 173: #' @description
 174: #' Creates a generation event for Langfuse.
 175: #'
 176: #' @param trace_id Parent trace ID
 177: #' @param model Model name
 178: #' @param prompt Prompt text
 179: #' @param completion Completion text
 180: #' @param metadata Additional metadata as a list
 181: #'
 182: #' @return A list representing a generation event
 183: #'
 184: #' @keywords internal
 185: lf_create_generation_event <- function(trace_id, model, prompt, completion = NULL, metadata = NULL) {
 186:   id <- uuid::UUIDgenerate()
 187:   timestamp <- format(Sys.time(), "%Y-%m-%dT%H:%M:%OS6Z")
 188: 
 189:   event <- list(
 190:     id = id,
 191:     timestamp = timestamp,
 192:     type = "generation-create",
 193:     body = list(
 194:       id = id,
 195:       traceId = trace_id,
 196:       startTime = timestamp,
 197:       model = model,
 198:       prompt = list(
 199:         role = "user",
 200:         content = prompt
 201:       ),
 202:       metadata = metadata %||% list()
 203:     )
 204:   )
 205: 
 206:   if (!is.null(completion)) {
 207:     event$body$completion <- completion
 208:     event$body$endTime <- timestamp
 209:   }
 210: 
 211:   return(event)
 212: }
 213: 
 214: #' Create a Score Event
 215: #'
 216: #' @description
 217: #' Creates a score event for Langfuse.
 218: #'
 219: #' @param trace_id Parent trace ID
 220: #' @param value Score value (0-1)
 221: #' @param comment Optional comment
 222: #'
 223: #' @return A list representing a score event
 224: #'
 225: #' @keywords internal
 226: lf_create_score_event <- function(trace_id, value, comment = NULL) {
 227:   id <- uuid::UUIDgenerate()
 228:   timestamp <- format(Sys.time(), "%Y-%m-%dT%H:%M:%OS6Z")
 229: 
 230:   event <- list(
 231:     id = id,
 232:     timestamp = timestamp,
 233:     type = "score-create",
 234:     body = list(
 235:       id = id,
 236:       traceId = trace_id,
 237:       name = "user_feedback",
 238:       value = value
 239:     )
 240:   )
 241: 
 242:   if (!is.null(comment)) event$body$comment <- comment
 243: 
 244:   return(event)
 245: }
 246: 
 247: #' Trace an Ellmer Chat Interaction
 248: #'
 249: #' @description
 250: #' Sends a message to an ellmer chat and tracks the interaction with Langfuse.
 251: #'
 252: #' @param chat An ellmer chat object
 253: #' @param message User message
 254: #' @param langfuse_client Langfuse client configuration from `lf_client()`
 255: #' @param user_id Optional user ID
 256: #' @param metadata Optional metadata
 257: #'
 258: #' @return The chat response with trace_id attribute
 259: #'
 260: #' @export
 261: #'
 262: #' @examples
 263: #' \dontrun{
 264: #' # Create a langfuse client
 265: #' lf_client <- lf_client()
 266: #'
 267: #' # Create a chat
 268: #' chat <- ellmer::chat_openai(model = "gpt-4")
 269: #'
 270: #' # Trace a chat interaction
 271: #' response <- lf_trace_chat(
 272: #'   chat = chat,
 273: #'   message = "Tell me about R programming",
 274: #'   langfuse_client = lf_client
 275: #' )
 276: #' }
 277: lf_trace_chat <- function(chat, message, langfuse_client, user_id = NULL, metadata = NULL) {
 278:   if (is.null(langfuse_client) || !isTRUE(langfuse_client$enabled)) {
 279:     return(chat$chat(message))
 280:   }
 281: 
 282:   # Create trace
 283:   trace_event <- lf_create_trace_event(
 284:     name = "chat_interaction",
 285:     user_id = user_id,
 286:     input = message,
 287:     metadata = metadata
 288:   )
 289: 
 290:   # Get trace ID
 291:   trace_id <- trace_event$body$id
 292: 
 293:   # Start timing
 294:   start_time <- Sys.time()
 295: 
 296:   # Start generation
 297:   gen_event <- lf_create_generation_event(
 298:     trace_id = trace_id,
 299:     model = chat$get_model(),
 300:     prompt = message,
 301:     metadata = list(
 302:       provider = class(chat$provider)[1],
 303:       start_time = format(start_time, "%Y-%m-%dT%H:%M:%OS6Z")
 304:     )
 305:   )
 306: 
 307:   # Send events to Langfuse
 308:   lf_ingestion(list(trace_event, gen_event), langfuse_client)
 309: 
 310:   # Call the chat function
 311:   result <- tryCatch({
 312:     chat$chat(message)
 313:   }, error = function(e) {
 314:     # Log error
 315:     error_gen_event <- lf_create_generation_event(
 316:       trace_id = trace_id,
 317:       model = chat$get_model(),
 318:       prompt = message,
 319:       metadata = list(
 320:         error = conditionMessage(e),
 321:         duration_ms = as.numeric(difftime(Sys.time(), start_time, units = "secs")) * 1000
 322:       )
 323:     )
 324:     lf_ingestion(list(error_gen_event), langfuse_client)
 325:     stop(e)
 326:   })
 327: 
 328:   # End timing
 329:   end_time <- Sys.time()
 330:   duration_ms <- as.numeric(difftime(end_time, start_time, units = "secs")) * 1000
 331: 
 332:   # Get the completion text
 333:   completion <- chat$last_turn()@text
 334: 
 335:   # Send completion
 336:   completion_gen_event <- lf_create_generation_event(
 337:     trace_id = trace_id,
 338:     model = chat$get_model(),
 339:     prompt = message,
 340:     completion = completion,
 341:     metadata = list(
 342:       duration_ms = duration_ms
 343:     )
 344:   )
 345: 
 346:   # Update trace with output
 347:   update_trace_event <- list(
 348:     id = uuid::UUIDgenerate(),
 349:     timestamp = format(end_time, "%Y-%m-%dT%H:%M:%OS6Z"),
 350:     type = "trace-update",
 351:     body = list(
 352:       id = trace_id,
 353:       output = completion
 354:     )
 355:   )
 356: 
 357:   # Send events to Langfuse
 358:   lf_ingestion(list(completion_gen_event, update_trace_event), langfuse_client)
 359: 
 360:   # Store trace ID as an attribute
 361:   attr(result, "trace_id") <- trace_id
 362: 
 363:   return(result)
 364: }
 365: 
 366: #' Add Feedback for a Chat Interaction
 367: #'
 368: #' @description
 369: #' Adds user feedback for a traced chat interaction.
 370: #'
 371: #' @param result The result returned from `lf_trace_chat()`
 372: #' @param score Score value (0-1)
 373: #' @param comment Optional comment
 374: #' @param langfuse_client Langfuse client configuration from `lf_client()`
 375: #'
 376: #' @return Invisibly returns whether the feedback was sent
 377: #'
 378: #' @export
 379: #'
 380: #' @examples
 381: #' \dontrun{
 382: #' # First trace a chat interaction
 383: #' response <- lf_trace_chat(chat, "Tell me about R", lf_client)
 384: #'
 385: #' # Then add feedback
 386: #' lf_add_feedback(
 387: #'   result = response,
 388: #'   score = 0.95,
 389: #'   comment = "Very helpful response",
 390: #'   langfuse_client = lf_client
 391: #' )
 392: #' }
 393: lf_add_feedback <- function(result, score, comment = NULL, langfuse_client) {
 394:   if (is.null(langfuse_client) || !isTRUE(langfuse_client$enabled)) {
 395:     return(invisible(FALSE))
 396:   }
 397: 
 398:   trace_id <- attr(result, "trace_id")
 399:   if (is.null(trace_id)) {
 400:     cli::cli_alert_warning("No trace ID found. Was this result created with lf_trace_chat()?")
 401:     return(invisible(FALSE))
 402:   }
 403: 
 404:   # Validate score
 405:   if (!is.numeric(score) || score < 0 || score > 1) {
 406:     cli::cli_alert_danger("Score must be a numeric value between 0 and 1")
 407:     return(invisible(FALSE))
 408:   }
 409: 
 410:   # Create score event
 411:   score_event <- lf_create_score_event(
 412:     trace_id = trace_id,
 413:     value = score,
 414:     comment = comment
 415:   )
 416: 
 417:   # Send to Langfuse
 418:   result <- lf_ingestion(list(score_event), langfuse_client)
 419: 
 420:   return(invisible(!isFALSE(result)))
 421: }
 422: 
 423: #' Create a Session in Langfuse
 424: #'
 425: #' @description
 426: #' Creates a new session for grouping related traces together.
 427: #'
 428: #' @param name Session name
 429: #' @param user_id Optional user ID
 430: #' @param metadata Optional metadata
 431: #' @param langfuse_client Langfuse client configuration from `lf_client()`
 432: #'
 433: #' @return Session ID if successful, NULL otherwise
 434: #'
 435: #' @export
 436: #'
 437: #' @examples
 438: #' \dontrun{
 439: #' # Create a session
 440: #' session_id <- lf_create_session(
 441: #'   name = "User Learning Session",
 442: #'   user_id = "user-123",
 443: #'   metadata = list(app_version = "1.0.0"),
 444: #'   langfuse_client = lf_client
 445: #' )
 446: #' }
 447: lf_create_session <- function(name, user_id = NULL, metadata = NULL, langfuse_client) {
 448:   if (is.null(langfuse_client) || !isTRUE(langfuse_client$enabled)) {
 449:     return(NULL)
 450:   }
 451: 
 452:   session_id <- uuid::UUIDgenerate()
 453:   timestamp <- format(Sys.time(), "%Y-%m-%dT%H:%M:%OS6Z")
 454: 
 455:   event <- list(
 456:     id = uuid::UUIDgenerate(),
 457:     timestamp = timestamp,
 458:     type = "session-create",
 459:     body = list(
 460:       id = session_id,
 461:       name = name,
 462:       timestamp = timestamp
 463:     )
 464:   )
 465: 
 466:   if (!is.null(user_id)) event$body$userId <- user_id
 467:   if (!is.null(metadata)) event$body$metadata <- metadata
 468: 
 469:   result <- lf_ingestion(list(event), langfuse_client)
 470: 
 471:   if (!isFALSE(result)) {
 472:     return(session_id)
 473:   } else {
 474:     return(NULL)
 475:   }
 476: }
 477: 
 478: #' Create an Observation in Langfuse
 479: #'
 480: #' @description
 481: #' Adds an observation to a trace, such as retrieval results or intermediate calculations.
 482: #'
 483: #' @param trace_id Parent trace ID
 484: #' @param type Observation type (e.g., "completion", "prompt", "retrieval")
 485: #' @param input Input text or data
 486: #' @param output Output text or data
 487: #' @param metadata Optional metadata
 488: #' @param langfuse_client Langfuse client configuration from `lf_client()`
 489: #'
 490: #' @return Observation ID if successful, NULL otherwise
 491: #'
 492: #' @export
 493: #'
 494: #' @examples
 495: #' \dontrun{
 496: #' # First trace a chat interaction
 497: #' response <- lf_trace_chat(chat, "Tell me about R", lf_client)
 498: #' trace_id <- attr(response, "trace_id")
 499: #'
 500: #' # Add an observation
 501: #' lf_create_observation(
 502: #'   trace_id = trace_id,
 503: #'   type = "analysis",
 504: #'   input = "User is asking about R",
 505: #'   output = "User seems to be a beginner",
 506: #'   langfuse_client = lf_client
 507: #' )
 508: #' }
 509: lf_create_observation <- function(trace_id, type, input = NULL, output = NULL, metadata = NULL, langfuse_client) {
 510:   if (is.null(langfuse_client) || !isTRUE(langfuse_client$enabled)) {
 511:     return(NULL)
 512:   }
 513: 
 514:   observation_id <- uuid::UUIDgenerate()
 515:   timestamp <- format(Sys.time(), "%Y-%m-%dT%H:%M:%OS6Z")
 516: 
 517:   event <- list(
 518:     id = uuid::UUIDgenerate(),
 519:     timestamp = timestamp,
 520:     type = "observation-create",
 521:     body = list(
 522:       id = observation_id,
 523:       traceId = trace_id,
 524:       type = type,
 525:       timestamp = timestamp
 526:     )
 527:   )
 528: 
 529:   if (!is.null(input)) event$body$input <- input
 530:   if (!is.null(output)) event$body$output <- output
 531:   if (!is.null(metadata)) event$body$metadata <- metadata
 532: 
 533:   result <- lf_ingestion(list(event), langfuse_client)
 534: 
 535:   if (!isFALSE(result)) {
 536:     return(observation_id)
 537:   } else {
 538:     return(NULL)
 539:   }
 540: }
 541: 
 542: #' Create an Evaluation in Langfuse
 543: #'
 544: #' @description
 545: #' Adds a quality evaluation score to a trace.
 546: #'
 547: #' @param trace_id Parent trace ID
 548: #' @param name Evaluation name
 549: #' @param value Numeric score value (0-1)
 550: #' @param comment Optional comment
 551: #' @param metadata Optional metadata
 552: #' @param langfuse_client Langfuse client configuration from `lf_client()`
 553: #'
 554: #' @return Evaluation ID if successful, NULL otherwise
 555: #'
 556: #' @export
 557: #'
 558: #' @examples
 559: #' \dontrun{
 560: #' # First trace a chat interaction
 561: #' response <- lf_trace_chat(chat, "Tell me about R", lf_client)
 562: #' trace_id <- attr(response, "trace_id")
 563: #'
 564: #' # Add an evaluation
 565: #' lf_create_evaluation(
 566: #'   trace_id = trace_id,
 567: #'   name = "response_quality",
 568: #'   value = 0.95,
 569: #'   comment = "Excellent explanation",
 570: #'   langfuse_client = lf_client
 571: #' )
 572: #' }
 573: lf_create_evaluation <- function(trace_id, name, value, comment = NULL, metadata = NULL, langfuse_client) {
 574:   if (is.null(langfuse_client) || !isTRUE(langfuse_client$enabled)) {
 575:     return(NULL)
 576:   }
 577: 
 578:   eval_id <- uuid::UUIDgenerate()
 579:   timestamp <- format(Sys.time(), "%Y-%m-%dT%H:%M:%OS6Z")
 580: 
 581:   event <- list(
 582:     id = uuid::UUIDgenerate(),
 583:     timestamp = timestamp,
 584:     type = "score-create",
 585:     body = list(
 586:       id = eval_id,
 587:       traceId = trace_id,
 588:       name = name,
 589:       value = value,
 590:       timestamp = timestamp
 591:     )
 592:   )
 593: 
 594:   if (!is.null(comment)) event$body$comment <- comment
 595:   if (!is.null(metadata)) event$body$metadata <- metadata
 596: 
 597:   result <- lf_ingestion(list(event), langfuse_client)
 598: 
 599:   if (!isFALSE(result)) {
 600:     return(eval_id)
 601:   } else {
 602:     return(NULL)
 603:   }
 604: }
 605: 
 606: #' Add a Prompt to Langfuse
 607: #'
 608: #' @description
 609: #' Adds a prompt template to Langfuse for version control and reuse.
 610: #'
 611: #' @param name Prompt name
 612: #' @param prompt Prompt text or array of message objects (depends on type)
 613: #' @param type Prompt type, either "text" or "chat"
 614: #' @param config Optional configuration parameters (model, temperature, etc.)
 615: #' @param labels Optional list of labels for organizing prompts
 616: #' @param tags Optional list of tags for categorizing prompts
 617: #' @param commit_message Optional message describing changes (for versioning)
 618: #' @param langfuse_client Langfuse client configuration from `lf_client()`
 619: #'
 620: #' @return Prompt ID if successful, NULL otherwise
 621: #'
 622: #' @export
 623: #'
 624: #' @examples
 625: #' \dontrun{
 626: #' # Add a text prompt template
 627: #' prompt_id <- lf_add_prompt(
 628: #'   name = "r_tutorial_text",
 629: #'   prompt = "You are a helpful R programming tutor. Explain {{topic}} with examples.",
 630: #'   type = "text",
 631: #'   langfuse_client = lf_client
 632: #' )
 633: #'
 634: #' # Add a chat prompt template
 635: #' prompt_id <- lf_add_prompt(
 636: #'   name = "r_tutorial_chat",
 637: #'   prompt = list(
 638: #'     list(role = "system", content = "You are a helpful R programming tutor."),
 639: #'     list(role = "user", content = "Explain {{topic}} in simple terms with examples.")
 640: #'   ),
 641: #'   type = "chat",
 642: #'   config = list(model = "gpt-4", temperature = 0.7),
 643: #'   labels = c("tutorial", "r-programming"),
 644: #'   langfuse_client = lf_client
 645: #' )
 646: #' }
 647: lf_add_prompt <- function(name, prompt, type = c("chat", "text"), config = NULL,
 648:                           labels = NULL, tags = NULL, commit_message = NULL,
 649:                           langfuse_client) {
 650:   if (is.null(langfuse_client) || !isTRUE(langfuse_client$enabled)) {
 651:     return(NULL)
 652:   }
 653: 
 654:   type <- match.arg(type)
 655: 
 656:   # Prepare the request body
 657:   body <- list(
 658:     name = name,
 659:     type = type
 660:   )
 661: 
 662:   # Handle the prompt format based on type
 663:   if (type == "text") {
 664:     # For text prompts, ensure it's a simple string
 665:     if (!is.character(prompt) || length(prompt) != 1) {
 666:       cli::cli_alert_danger("For text prompts, 'prompt' must be a single character string")
 667:       return(NULL)
 668:     }
 669:     body$prompt = prompt
 670:   } else if (type == "chat") {
 671:     # For chat prompts, ensure it's an array of messages with role/content
 672:     if (is.character(prompt) && length(prompt) == 1) {
 673:       # Convert simple string to a chat format with user role
 674:       body$prompt = list(list(role = "user", content = prompt))
 675:     } else if (is.list(prompt)) {
 676:       # Validate the list structure
 677:       valid <- all(sapply(prompt, function(msg) {
 678:         is.list(msg) && !is.null(msg$role) && !is.null(msg$content)
 679:       }))
 680: 
 681:       if (!valid) {
 682:         cli::cli_alert_danger("Chat prompts must be a list of objects with 'role' and 'content' fields")
 683:         return(NULL)
 684:       }
 685:       body$prompt = prompt
 686:     } else {
 687:       cli::cli_alert_danger("Invalid prompt format for chat type")
 688:       return(NULL)
 689:     }
 690:   }
 691: 
 692:   # Add optional parameters if provided
 693:   if (!is.null(config)) body$config <- config
 694:   if (!is.null(labels)) body$labels <- as.list(labels)
 695:   if (!is.null(tags)) body$tags <- as.list(tags)
 696:   if (!is.null(commit_message)) body$commitMessage <- commit_message
 697: 
 698:   # Create the API request
 699:   req <- httr2::request(langfuse_client$host) |>
 700:     httr2::req_url_path_append("api", "public", "v2", "prompts") |>
 701:     httr2::req_method("POST") |>
 702:     httr2::req_headers("Content-Type" = "application/json") |>
 703:     httr2::req_auth_basic(username = langfuse_client$public_key, password = langfuse_client$secret_key) |>
 704:     httr2::req_body_json(body)
 705: 
 706:   tryCatch({
 707:     resp <- httr2::req_perform(req)
 708:     httr2::resp_check_status(resp)
 709:     result <- httr2::resp_body_json(resp)
 710:     return(result$id)
 711:   }, error = function(e) {
 712:     cli::cli_alert_danger("Failed to create prompt: {conditionMessage(e)}")
 713:     return(NULL)
 714:   })
 715: }
 716: 
 717: #' Get a Prompt from Langfuse
 718: #'
 719: #' @description
 720: #' Retrieves a prompt template from Langfuse.
 721: #'
 722: #' @param prompt_name Name of the prompt to retrieve
 723: #' @param version Specific version number to retrieve (if NULL, latest version will be fetched)
 724: #' @param label Label of the prompt to retrieve (optional)
 725: #' @param langfuse_client Langfuse client configuration from `lf_client()`
 726: #'
 727: #' @return Prompt object if successful, NULL otherwise
 728: #'
 729: #' @export
 730: #'
 731: #' @examples
 732: #' \dontrun{
 733: #' # Get the latest version of a prompt
 734: #' prompt <- lf_get_prompt(
 735: #'   prompt_name = "r_tutorial_chat",
 736: #'   langfuse_client = lf_client
 737: #' )
 738: #'
 739: #' # Get a specific version of a prompt
 740: #' prompt <- lf_get_prompt(
 741: #'   prompt_name = "r_tutorial_chat",
 742: #'   version = 2,
 743: #'   langfuse_client = lf_client
 744: #' )
 745: #'
 746: #' # Get a prompt with a specific label
 747: #' prompt <- lf_get_prompt(
 748: #'   prompt_name = "r_tutorial_chat",
 749: #'   label = "development",
 750: #'   langfuse_client = lf_client
 751: #' )
 752: #' }
 753: lf_get_prompt <- function(prompt_name, version = NULL, label = NULL, langfuse_client) {
 754:   if (is.null(langfuse_client) || !isTRUE(langfuse_client$enabled)) {
 755:     return(NULL)
 756:   }
 757: 
 758:   # Validate prompt name
 759:   if (is.null(prompt_name) || !is.character(prompt_name) || nchar(prompt_name) == 0) {
 760:     cli::cli_alert_danger("'prompt_name' must be a non-empty string")
 761:     return(NULL)
 762:   }
 763: 
 764:   # If version is not provided, try to get a list of versions first
 765:   if (is.null(version) && is.null(label)) {
 766:     # Get all prompt versions
 767:     versions_req <- httr2::request(langfuse_client$host) |>
 768:       httr2::req_url_path_append("api", "public", "v2", "prompts", prompt_name, "versions") |>
 769:       httr2::req_method("GET") |>
 770:       httr2::req_auth_basic(username = langfuse_client$public_key, password = langfuse_client$secret_key)
 771: 
 772:     versions_result <- tryCatch({
 773:       resp <- httr2::req_perform(versions_req)
 774:       httr2::resp_check_status(resp)
 775:       httr2::resp_body_json(resp)
 776:     }, error = function(e) {
 777:       cli::cli_alert_warning("Failed to get prompt versions: {conditionMessage(e)}")
 778:       return(NULL)
 779:     })
 780: 
 781:     # If we got versions, use the latest one
 782:     if (!is.null(versions_result) && length(versions_result) > 0) {
 783:       # Sort by version number (descending)
 784:       version_numbers <- sapply(versions_result, function(v) as.integer(v$version))
 785:       latest_version <- max(version_numbers)
 786:       cli::cli_alert_info("Using latest version: {latest_version}")
 787:       version <- latest_version
 788:     } else {
 789:       # Default to version 1 if we couldn't get a list of versions
 790:       cli::cli_alert_info("Could not determine latest version, defaulting to version 1")
 791:       version <- 1
 792:     }
 793:   }
 794: 
 795:   # Build the request for a specific version or label
 796:   req <- httr2::request(langfuse_client$host) |>
 797:     httr2::req_url_path_append("api", "public", "v2", "prompts", prompt_name) |>
 798:     httr2::req_method("GET") |>
 799:     httr2::req_auth_basic(username = langfuse_client$public_key, password = langfuse_client$secret_key)
 800: 
 801:   # Add optional query parameters
 802:   if (!is.null(version)) {
 803:     req <- httr2::req_url_query(req, version = as.integer(version))
 804:   }
 805: 
 806:   if (!is.null(label)) {
 807:     req <- httr2::req_url_query(req, label = label)
 808:   }
 809: 
 810:   tryCatch({
 811:     resp <- httr2::req_perform(req)
 812:     httr2::resp_check_status(resp)
 813:     result <- httr2::resp_body_json(resp)
 814:     return(result)
 815:   }, error = function(e) {
 816:     cli::cli_alert_danger("Failed to get prompt: {conditionMessage(e)}")
 817:     return(NULL)
 818:   })
 819: }
 820: 
 821: #' Add a Dataset to Langfuse
 822: #'
 823: #' @description
 824: #' Creates a new dataset for testing and evaluation.
 825: #'
 826: #' @param name Dataset name
 827: #' @param description Dataset description (optional)
 828: #' @param metadata Additional metadata as a list (optional)
 829: #' @param langfuse_client Langfuse client configuration from `lf_client()`
 830: #'
 831: #' @return Dataset ID if successful, NULL otherwise
 832: #'
 833: #' @export
 834: #'
 835: #' @examples
 836: #' \dontrun{
 837: #' # Create a dataset
 838: #' dataset_id <- lf_add_dataset(
 839: #'   name = "R Programming Questions",
 840: #'   description = "Common questions about R programming for testing",
 841: #'   langfuse_client = lf_client
 842: #' )
 843: #' }
 844: lf_add_dataset <- function(name, description = NULL, metadata = NULL, langfuse_client) {
 845:   if (is.null(langfuse_client) || !isTRUE(langfuse_client$enabled)) {
 846:     return(NULL)
 847:   }
 848: 
 849:   # Build request body
 850:   body <- list(name = name)
 851:   if (!is.null(description)) body$description <- description
 852:   if (!is.null(metadata)) body$metadata <- metadata
 853: 
 854:   req <- httr2::request(langfuse_client$host) |>
 855:     httr2::req_url_path_append("api", "public", "v2", "datasets") |>
 856:     httr2::req_method("POST") |>
 857:     httr2::req_headers("Content-Type" = "application/json") |>
 858:     httr2::req_auth_basic(username = langfuse_client$public_key, password = langfuse_client$secret_key) |>
 859:     httr2::req_body_json(body)
 860: 
 861:   tryCatch({
 862:     resp <- httr2::req_perform(req)
 863:     httr2::resp_check_status(resp)
 864:     result <- httr2::resp_body_json(resp)
 865:     return(result$id)
 866:   }, error = function(e) {
 867:     cli::cli_alert_danger("Failed to create dataset: {conditionMessage(e)}")
 868:     return(NULL)
 869:   })
 870: }
 871: 
 872: #' Add an Item to a Dataset
 873: #'
 874: #' @description
 875: #' Adds a test item to a Langfuse dataset.
 876: #'
 877: #' @param dataset_name Name of the dataset
 878: #' @param input Input text or data
 879: #' @param expected_output Expected output (optional)
 880: #' @param metadata Optional metadata as a list
 881: #' @param source_trace_id Optional trace ID that this item is based on
 882: #' @param source_observation_id Optional observation ID that this item is based on
 883: #' @param id Optional custom ID for the dataset item (must be unique)
 884: #' @param status Item status ("ACTIVE" or "ARCHIVED", defaults to "ACTIVE")
 885: #' @param langfuse_client Langfuse client configuration from `lf_client()`
 886: #'
 887: #' @return Item ID if successful, NULL otherwise
 888: #'
 889: #' @export
 890: #'
 891: #' @examples
 892: #' \dontrun{
 893: #' # Add an item to a dataset
 894: #' lf_add_dataset_item(
 895: #'   dataset_name = "R Programming Questions",
 896: #'   input = "What are the differences between a list and a data frame in R?",
 897: #'   expected_output = "A detailed comparison of lists and data frames",
 898: #'   metadata = list(category = "data_structures"),
 899: #'   langfuse_client = lf_client
 900: #' )
 901: #'
 902: #' # Add an item with a custom ID
 903: #' lf_add_dataset_item(
 904: #'   dataset_name = "R Programming Questions",
 905: #'   input = "How do you create a ggplot2 visualization?",
 906: #'   id = "ggplot2-question",
 907: #'   langfuse_client = lf_client
 908: #' )
 909: #' }
 910: lf_add_dataset_item <- function(dataset_name, input, expected_output = NULL,
 911:                                 metadata = NULL, source_trace_id = NULL,
 912:                                 source_observation_id = NULL, id = NULL,
 913:                                 status = "ACTIVE", langfuse_client) {
 914:   if (is.null(langfuse_client) || !isTRUE(langfuse_client$enabled)) {
 915:     return(NULL)
 916:   }
 917: 
 918:   # Validate required parameters
 919:   if (is.null(dataset_name) || !is.character(dataset_name) || nchar(dataset_name) == 0) {
 920:     cli::cli_alert_danger("'dataset_name' must be a non-empty string")
 921:     return(NULL)
 922:   }
 923: 
 924:   # Build the request body
 925:   body <- list(
 926:     datasetName = dataset_name,
 927:     input = input,
 928:     status = status
 929:   )
 930: 
 931:   # Add optional fields
 932:   if (!is.null(expected_output)) body$expectedOutput <- expected_output
 933:   if (!is.null(metadata)) body$metadata <- metadata
 934:   if (!is.null(source_trace_id)) body$sourceTraceId <- source_trace_id
 935:   if (!is.null(source_observation_id)) body$sourceObservationId <- source_observation_id
 936:   if (!is.null(id)) body$id <- id
 937: 
 938:   req <- httr2::request(langfuse_client$host) |>
 939:     httr2::req_url_path_append("api", "public", "dataset-items") |>
 940:     httr2::req_method("POST") |>
 941:     httr2::req_headers("Content-Type" = "application/json") |>
 942:     httr2::req_auth_basic(username = langfuse_client$public_key, password = langfuse_client$secret_key) |>
 943:     httr2::req_body_json(body)
 944: 
 945:   tryCatch({
 946:     resp <- httr2::req_perform(req)
 947:     httr2::resp_check_status(resp)
 948:     result <- httr2::resp_body_json(resp)
 949:     return(result$id)
 950:   }, error = function(e) {
 951:     cli::cli_alert_danger("Failed to add dataset item: {conditionMessage(e)}")
 952:     return(NULL)
 953:   })
 954: }
 955: 
 956: #' Run an Experiment on a Dataset
 957: #'
 958: #' @description
 959: #' Runs an experiment by processing items from a dataset and recording the results.
 960: #'
 961: #' @param name Experiment name
 962: #' @param dataset_name Name of the dataset to use
 963: #' @param chat_function Function to process each item (should accept input and return output)
 964: #' @param langfuse_client Langfuse client configuration from `lf_client()`
 965: #' @param max_items Maximum number of items to process (0 = all)
 966: #' @param filter_status Filter items by status ("ACTIVE" or "ARCHIVED")
 967: #'
 968: #' @return Experiment results as a list
 969: #'
 970: #' @export
 971: #'
 972: #' @examples
 973: #' \dontrun{
 974: #' # Run an experiment with a fresh chat instance for each item
 975: #' experiment_results <- lf_run_experiment(
 976: #'   name = "R Tutor Test",
 977: #'   dataset_name = "R Programming Questions",
 978: #'   chat_function = function(input) {
 979: #'     # Create a fresh chat for each item
 980: #'     item_chat <- ellmer::chat_openai(model = "gpt-4o")
 981: #'     # The chat() method returns the text response directly
 982: #'     return(item_chat$chat(input))
 983: #'   },
 984: #'   langfuse_client = lf_client,
 985: #'   max_items = 10
 986: #' )
 987: #' }
 988: lf_run_experiment <- function(name, dataset_name, chat_function, langfuse_client,
 989:                               max_items = 0, filter_status = "ACTIVE") {
 990:   if (is.null(langfuse_client) || !isTRUE(langfuse_client$enabled)) {
 991:     cli::cli_alert_warning("Langfuse client not configured or disabled")
 992:     return(NULL)
 993:   }
 994: 
 995:   # Get dataset items
 996:   req <- httr2::request(langfuse_client$host) |>
 997:     httr2::req_url_path_append("api", "public", "dataset-items") |>
 998:     httr2::req_method("GET") |>
 999:     httr2::req_auth_basic(username = langfuse_client$public_key, password = langfuse_client$secret_key) |>
1000:     httr2::req_url_query(datasetName = dataset_name)
1001: 
1002:   # Add status filter if provided
1003:   if (!is.null(filter_status)) {
1004:     req <- httr2::req_url_query(req, status = filter_status)
1005:   }
1006: 
1007:   items_response <- tryCatch({
1008:     resp <- httr2::req_perform(req)
1009:     httr2::resp_check_status(resp)
1010:     httr2::resp_body_json(resp)
1011:   }, error = function(e) {
1012:     cli::cli_alert_danger("Failed to get dataset items: {conditionMessage(e)}")
1013:     return(NULL)
1014:   })
1015: 
1016:   # Handle different possible response formats from the API
1017:   items <- NULL
1018:   if (is.null(items_response)) {
1019:     items <- NULL
1020:   } else if (is.list(items_response) && length(items_response) > 0) {
1021:     if ("items" %in% names(items_response) && is.list(items_response$items)) {
1022:       # If response has an "items" field that's a list, use that
1023:       items <- items_response$items
1024:     } else {
1025:       # Otherwise assume the response itself is the list of items
1026:       items <- items_response
1027:     }
1028:   }
1029: 
1030:   if (is.null(items) || length(items) == 0) {
1031:     cli::cli_alert_warning("No items found in dataset")
1032:     return(NULL)
1033:   }
1034: 
1035:   # Limit items if requested
1036:   if (max_items > 0 && max_items < length(items)) {
1037:     items <- items[1:max_items]
1038:   }
1039: 
1040:   # Create experiment session
1041:   session_id <- lf_create_session(
1042:     name = paste0("Experiment: ", name),
1043:     metadata = list(
1044:       dataset_name = dataset_name,
1045:       item_count = length(items)
1046:     ),
1047:     langfuse_client = langfuse_client
1048:   )
1049: 
1050:   # Process each item
1051:   results <- lapply(items, function(item) {
1052:     # Extract and validate item ID
1053:     item_id <- "unknown"
1054:     if (!is.null(item$id) && is.character(item$id) && nchar(item$id) > 0) {
1055:       item_id <- item$id
1056:     }
1057: 
1058:     # Make sure we have a valid input
1059:     if (is.null(item$input) || !is.character(item$input) || nchar(item$input) == 0) {
1060:       cli::cli_alert_warning("Item {item_id} has no valid input, skipping")
1061:       return(list(
1062:         item_id = item_id,
1063:         error = "No valid input found",
1064:         skipped = TRUE
1065:       ))
1066:     }
1067: 
1068:     cli::cli_alert_info("Processing item {item_id}")
1069: 
1070:     # Create a trace for this item
1071:     trace_event <- lf_create_trace_event(
1072:       name = paste0("experiment_item_", item_id),
1073:       metadata = list(
1074:         dataset_name = dataset_name,
1075:         item_id = item_id,
1076:         session_id = session_id,
1077:         experiment_name = name
1078:       )
1079:     )
1080:     trace_id <- trace_event$body$id
1081: 
1082:     # Send the trace event
1083:     lf_ingestion(list(trace_event), langfuse_client)
1084: 
1085:     # Process the item using the provided function
1086:     start_time <- Sys.time()
1087:     output <- NULL
1088:     error <- NULL
1089: 
1090:     # Use tryCatch to properly capture any errors
1091:     tryCatch({
1092:       output <- chat_function(item$input)
1093: 
1094:       # Ensure output is a character string
1095:       if (!is.character(output)) {
1096:         output <- as.character(output)
1097:       }
1098:     }, error = function(e) {
1099:       error <- conditionMessage(e)
1100:       cli::cli_alert_danger("Error processing item {item_id}: {error}")
1101:     })
1102: 
1103:     end_time <- Sys.time()
1104:     duration_ms <- as.numeric(difftime(end_time, start_time, units = "secs")) * 1000
1105: 
1106:     # Create appropriate events based on success or failure
1107:     if (is.null(error)) {
1108:       # Create a generation event with the successful output
1109:       gen_event <- lf_create_generation_event(
1110:         trace_id = trace_id,
1111:         model = "experiment",
1112:         prompt = item$input,
1113:         completion = output,
1114:         metadata = list(
1115:           duration_ms = duration_ms
1116:         )
1117:       )
1118: 
1119:       # Update trace with output
1120:       update_trace_event <- list(
1121:         id = uuid::UUIDgenerate(),
1122:         timestamp = format(end_time, "%Y-%m-%dT%H:%M:%OS6Z"),
1123:         type = "trace-update",
1124:         body = list(
1125:           id = trace_id,
1126:           output = output
1127:         )
1128:       )
1129: 
1130:       # Send events to Langfuse
1131:       lf_ingestion(list(gen_event, update_trace_event), langfuse_client)
1132: 
1133:       # If expected output exists, create an evaluation
1134:       if (!is.null(item$expectedOutput)) {
1135:         # Here you could add an automated evaluation
1136:       }
1137:     } else {
1138:       # Log the error to Langfuse
1139:       error_gen_event <- lf_create_generation_event(
1140:         trace_id = trace_id,
1141:         model = "experiment",
1142:         prompt = item$input,
1143:         metadata = list(
1144:           error = error,
1145:           duration_ms = duration_ms
1146:         )
1147:       )
1148: 
1149:       # Update trace with error info
1150:       error_trace_event <- list(
1151:         id = uuid::UUIDgenerate(),
1152:         timestamp = format(end_time, "%Y-%m-%dT%H:%M:%OS6Z"),
1153:         type = "trace-update",
1154:         body = list(
1155:           id = trace_id,
1156:           output = paste("Error:", error),
1157:           status = "error"
1158:         )
1159:       )
1160: 
1161:       lf_ingestion(list(error_gen_event, error_trace_event), langfuse_client)
1162:     }
1163: 
1164:     return(list(
1165:       item_id = item_id,
1166:       input = item$input,
1167:       output = output,
1168:       error = error,
1169:       trace_id = trace_id,
1170:       duration_ms = duration_ms
1171:     ))
1172:   })
1173: 
1174:   return(list(
1175:     experiment_name = name,
1176:     dataset_name = dataset_name,
1177:     session_id = session_id,
1178:     results = results
1179:   ))
1180: }
1181: 
1182: #' Trace a Chat Interaction within a Session
1183: #'
1184: #' @description
1185: #' Sends a message to an ellmer chat and tracks the interaction with Langfuse
1186: #' within a defined session.
1187: #'
1188: #' @param chat An ellmer chat object
1189: #' @param message User message
1190: #' @param session_id Session ID for grouped traces from `lf_create_session()`
1191: #' @param langfuse_client Langfuse client configuration from `lf_client()`
1192: #' @param user_id Optional user ID
1193: #' @param metadata Optional metadata
1194: #'
1195: #' @return The chat response with trace_id and session_id attributes
1196: #'
1197: #' @export
1198: #'
1199: #' @examples
1200: #' \dontrun{
1201: #' # Create a langfuse client and session
1202: #' lf_client <- lf_client()
1203: #' session_id <- lf_create_session(name = "Learning Session", langfuse_client = lf_client)
1204: #'
1205: #' # Create a chat
1206: #' chat <- ellmer::chat_openai(model = "gpt-4")
1207: #'
1208: #' # Trace chat interactions in the session
1209: #' response1 <- lf_trace_chat_session(
1210: #'   chat = chat,
1211: #'   message = "What are the main features of R?",
1212: #'   session_id = session_id,
1213: #'   langfuse_client = lf_client
1214: #' )
1215: #'
1216: #' response2 <- lf_trace_chat_session(
1217: #'   chat = chat,
1218: #'   message = "Tell me more about data visualization in R",
1219: #'   session_id = session_id,
1220: #'   langfuse_client = lf_client
1221: #' )
1222: #' }
1223: lf_trace_chat_session <- function(chat, message, session_id, langfuse_client, user_id = NULL, metadata = NULL) {
1224:   if (is.null(langfuse_client) || !isTRUE(langfuse_client$enabled)) {
1225:     return(chat$chat(message))
1226:   }
1227: 
1228:   # Create trace with session ID
1229:   trace_event <- lf_create_trace_event(
1230:     name = "chat_interaction",
1231:     user_id = user_id,
1232:     input = message,
1233:     metadata = metadata
1234:   )
1235: 
1236:   # Add session ID to trace
1237:   trace_event$body$sessionId <- session_id
1238: 
1239:   # Get trace ID
1240:   trace_id <- trace_event$body$id
1241: 
1242:   # Start timing
1243:   start_time <- Sys.time()
1244: 
1245:   # Start generation
1246:   gen_event <- lf_create_generation_event(
1247:     trace_id = trace_id,
1248:     model = chat$get_model(),
1249:     prompt = message,
1250:     metadata = list(
1251:       provider = class(chat$provider)[1],
1252:       start_time = format(start_time, "%Y-%m-%dT%H:%M:%OS6Z")
1253:     )
1254:   )
1255: 
1256:   # Send events to Langfuse
1257:   lf_ingestion(list(trace_event, gen_event), langfuse_client)
1258: 
1259:   # Call the chat function
1260:   result <- tryCatch({
1261:     chat$chat(message)
1262:   }, error = function(e) {
1263:     # Log error
1264:     error_gen_event <- lf_create_generation_event(
1265:       trace_id = trace_id,
1266:       model = chat$get_model(),
1267:       prompt = message,
1268:       metadata = list(
1269:         error = conditionMessage(e),
1270:         duration_ms = as.numeric(difftime(Sys.time(), start_time, units = "secs")) * 1000
1271:       )
1272:     )
1273:     lf_ingestion(list(error_gen_event), langfuse_client)
1274:     stop(e)
1275:   })
1276: 
1277:   # End timing
1278:   end_time <- Sys.time()
1279:   duration_ms <- as.numeric(difftime(end_time, start_time, units = "secs")) * 1000
1280: 
1281:   # Get the completion text
1282:   completion <- chat$last_turn()@text
1283: 
1284:   # Send completion
1285:   completion_gen_event <- lf_create_generation_event(
1286:     trace_id = trace_id,
1287:     model = chat$get_model(),
1288:     prompt = message,
1289:     completion = completion,
1290:     metadata = list(
1291:       duration_ms = duration_ms
1292:     )
1293:   )
1294: 
1295:   # Update trace with output
1296:   update_trace_event <- list(
1297:     id = uuid::UUIDgenerate(),
1298:     timestamp = format(end_time, "%Y-%m-%dT%H:%M:%OS6Z"),
1299:     type = "trace-update",
1300:     body = list(
1301:       id = trace_id,
1302:       output = completion
1303:     )
1304:   )
1305: 
1306:   # Send events to Langfuse
1307:   lf_ingestion(list(completion_gen_event, update_trace_event), langfuse_client)
1308: 
1309:   # Store trace ID and session ID as attributes
1310:   attr(result, "trace_id") <- trace_id
1311:   attr(result, "session_id") <- session_id
1312: 
1313:   return(result)
1314: }
`````

## File: R/mermaid.R
`````r
 1: #  ------------------------------------------------------------------------
 2: #
 3: # Title : Mermaid Diagrams
 4: #    By : Jimmy Briggs
 5: #  Date : 2025-03-14
 6: #
 7: #  ------------------------------------------------------------------------
 8: 
 9: #' Generate Mermaid Diagrams
10: #'
11: #' @description
12: #' Generate a mermaid diagram using the dedicated [mermaid_agent()] based on a prompt or code.
13: #'
14: #' @param chat_agent An optional chat agent object. If not provided, a default agent will be created.
15: #' @param prompt A prompt to generate the diagram. If not provided, a default prompt will be used.
16: #' @param ... Additional arguments passed to [prompt_mermaid_user()]. (e.g. `context`, `code`, `chart_type`, `chart_styles`).
17: #'
18: #' @returns
19: #' A character string containing the mermaid code block.
20: #'
21: #' @export
22: #'
23: #' @examples
24: #' \dontrun{
25: #' # generate a diagram based off of code
26: #' example <- "
27: #'   starwars |>
28: #'     group_by(species) |>
29: #'     summarise(
30: #'       n = n(),
31: #'       mass = mean(mass, na.rm = TRUE)
32: #'     ) |>
33: #'     filter(
34: #'       n > 1,
35: #'       mass > 50
36: #'     )
37: #' "
38: #' create_mermaid_diagram(code = example)
39: #'
40: #' # generate a diagram based off of a prompt
41: #' prompt <- prompt_mermaid_user("Create a flowchart representing the process of photosynthesis.")
42: #' create_mermaid_diagram(prompt = prompt)
43: #'
44: #' # specify chart type and styles
45: #' create_mermaid_diagram(prompt = prompt, chart_type = "flowchart", chart_styles = "Make the chart colorful.")
46: #' }
47: create_mermaid_diagram <- function(
48:   chat_agent = NULL,
49:   prompt = NULL,
50:   ...
51: ) {
52: 
53:   # chat_agent
54:   if (is.null(chat_agent)) chat_agent <- mermaid_agent()
55:   check_chat(chat_agent)
56: 
57:   # prompt
58:   if (is.null(prompt)) prompt <- prompt_mermaid_user(...)
59: 
60:   # response
61:   resp <- chat_agent$chat(prompt)
62: 
63:   # code
64:   mermaid_code <- extract_code(resp, lang = "mermaid")
65: 
66:   # print
67:   cat(mermaid_code)
68: 
69:   # return
70:   return(mermaid_code)
71: 
72: }
`````

## File: R/models.R
`````r
 1: #  ------------------------------------------------------------------------
 2: #
 3: # Title : Models
 4: #    By : Jimmy Briggs
 5: #  Date : 2025-03-06
 6: #
 7: #  ------------------------------------------------------------------------
 8: 
 9: #' AI Models
10: #'
11: #' @name models
12: #'
13: #' @description
14: #' Functions for listing and working with AI models across providers.
15: #'
16: #' Functions:
17: #'
18: #' - `get_openai_models()`: Get OpenAI models by calling the `/models` endpoint.
19: #'
20: #' - `get_anthropic_models()`: Get Anthropic models by calling the `/models` endpoint.
21: #'
22: #' @param api_key The API key to use for authentication. Will default to the respective platform's API key.
23: #'
24: #' @returns
25: #' Each function returns a character vector of model IDs.
26: NULL
27: 
28: # openai ----------------------------------------------------------------------------------------------------------
29: 
30: #' @rdname models
31: #' @export
32: #' @importFrom httr2 request req_auth_bearer_token req_perform resp_check_status resp_body_json
33: #' @importFrom dplyr bind_rows arrange desc select
34: #' @importFrom purrr pluck
35: get_openai_models <- function(api_key = get_openai_api_key()) {
36: 
37:   base_url <- get_api_url("openai", "models")
38: 
39:   req <- httr2::request(base_url) |>
40:     httr2::req_auth_bearer_token(api_key)
41: 
42:   resp <- httr2::req_perform(req)
43: 
44:   httr2::resp_check_status(resp)
45: 
46:   resp_json <- httr2::resp_body_json(resp)
47: 
48:   resp_data <- resp_json |>
49:     purrr::pluck("data") |>
50:     dplyr::bind_rows() |>
51:     dplyr::arrange(dplyr::desc(.data$created))
52: 
53:   resp_data |> purrr::pluck("id")
54: 
55: }
56: 
57: #' @rdname models
58: #' @export
59: #' @importFrom httr2 request req_headers req_perform resp_check_status resp_body_json
60: #' @importFrom dplyr bind_rows arrange desc select mutate arrange
61: #' @importFrom lubridate as_date
62: #' @importFrom tibble deframe
63: get_anthropic_models <- function(api_key = get_anthropic_api_key()) {
64: 
65:   base_url <- get_api_url("anthropic", "models")
66: 
67:   req <- httr2::request(base_url) |>
68:     httr2::req_headers(
69:       `X-API-KEY` = api_key,
70:       `Anthropic-Version` = "2023-06-01"
71:     )
72: 
73:   resp <- httr2::req_perform(req)
74:   httr2::resp_check_status(resp)
75: 
76:   resp_json <- httr2::resp_body_json(resp)
77: 
78:   resp_data <- resp_json |>
79:     purrr::pluck("data") |>
80:     dplyr::bind_rows() |>
81:     dplyr::mutate(created_at = lubridate::as_date(.data$created_at)) |>
82:     dplyr::arrange(dplyr::desc(.data$created_at))
83: 
84:   resp_data |>
85:     dplyr::select("id", "display_name") |>
86:     tibble::deframe()
87: 
88: }
`````

## File: R/noclocksai-package.R
`````r
 1: #  ------------------------------------------------------------------------
 2: #
 3: # Title : Pacakge
 4: #    By : Jimmy Briggs
 5: #  Date : 2025-03-14
 6: #
 7: #  ------------------------------------------------------------------------
 8: 
 9: # docs --------------------------------------------------------------------
10: 
11: #' @keywords internal
12: "_PACKAGE"
13: 
14: ## usethis namespace: start
15: #' @import rlang
16: ## usethis namespace: end
17: NULL
18: 
19: 
20: # globals ---------------------------------------------------------------------------------------------------------
21: 
22: utils::globalVariables(
23:   c(
24: 
25:   )
26: )
27: 
28: # env ---------------------------------------------------------------------
29: 
30: .pkg_env <- rlang::new_environment()
31: .pkg_env$pkg_name <- "noclocksai"
32: .pkg_env$pkg_version <- utils::packageVersion("noclocksai")
33: # .pkg_env$pkg_config_file <- noclocksai:::cfg
`````

## File: R/npx.R
`````r
 1: #  ------------------------------------------------------------------------
 2: #
 3: # Title : Commands
 4: #    By : Jimmy Briggs
 5: #  Date : 2025-03-20
 6: #
 7: #  ------------------------------------------------------------------------
 8: 
 9: 
10: # npm/npx ---------------------------------------------------------------------------------------------------------
11: 
12: #' Run `npx` Command
13: #'
14: #' @description
15: #' This function runs a command using `npx` and returns the output.
16: #'
17: #' @param cmd The command to run.
18: #' @param ... Additional arguments to pass to the command.
19: #'
20: #' @returns
21: #' The output of the command.
22: #'
23: #' @export
24: #'
25: #' @importFrom processx run
26: #' @importFrom cli cli_abort
27: #'
28: #' @examples
29: #' \dontrun{
30: #' # get npx help
31: #' npx("--help")
32: #'
33: #' # create a new react app
34: #' npx("create-react-app", "my-app")
35: #'
36: #' # run repomix tool
37: #' npx("repomix", "--help")
38: #' }
39: npx <- function(cmd, ...) {
40: 
41:   npx <- Sys.which("npx")
42: 
43:   if (npx == "") {
44:     cli::cli_abort("{.code npm} is not installed or not found in the system {.envvar PATH}.")
45:   }
46: 
47:   args <- c(cmd, ...)
48: 
49:   process <- processx::run(
50:     command = npx,
51:     args = args,
52:     echo = TRUE,
53:     echo_cmd = TRUE,
54:     error_on_status = TRUE,
55:     spinner = TRUE,
56:     timeout = 60,
57:     windows_hide_window = TRUE,
58:     windows_verbatim_args = TRUE
59:   )
60: 
61: }
`````

## File: R/parallel.R
`````r
 1: #  ------------------------------------------------------------------------
 2: #
 3: # Title : Parallel Processing
 4: #    By : Jimmy Briggs
 5: #  Date : 2025-03-12
 6: #
 7: #  ------------------------------------------------------------------------
 8: 
 9: setup_parallel_processing <- function(workers = NULL, strategy = future::multisession) {
10: 
11:   if (is.null(workers)) workers <- max(1, parallel::detectCores() - 1)
12: 
13:   plan <- future::plan(strategy, workers = workers)
14: 
15:   cli::cli_alert_success(
16:     "Parallel processing initialized with {.field {workers}} workers."
17:   )
18: 
19:   invisible(plan)
20: 
21: }
`````

## File: R/pkgdown.R
`````r
 1: generate_pkgdown_reference <- function(
 2:     pkg_path = ".",
 3:     output_file = "_pkgdown.yml",
 4:     model = "gpt-4o",
 5:     update_existing = TRUE,
 6:     api_key = get_openai_api_key()
 7: ) {
 8: 
 9:   pkg_name <- basename(normalizePath(pkg_path))
10:   pkg_namespace <- tryCatch({
11:     pkgload::load_all(pkg_path, quiet = TRUE)
12:     getNamespace(pkg_name)
13:   }, error = function(e) {
14:     cli::cli_abort("Unable to load the package namespace: {e$message}")
15:   })
16: 
17:   # get exported functions
18:   exported_functions <- getNamespaceExports(pkg_namespace)
19: 
20:   # get function docs
21:   function_docs <- purrr::map(
22:     exported_functions,
23:     function(func) {
24:       tryCatch({
25:         help_text <- utils::capture.output(utils::help(func, package = as.character(pkg_name)))
26:         paste(help_text, collapse = "\n")
27:       }, error = function(e) {
28:         cli::cli_alert_warning("Unable to get help for function: {func}")
29:         paste(func, ": No documentation available")
30:       })
31:     }
32:   ) |>
33:     rlang::set_names(exported_functions)
34: 
35:   pkgdown_path <- file.path(pkg_path, "_pkgdown.yml")
36:   existing_yaml <- NULL
37:   if (file.exists(pkgdown_path) && update_existing) {
38:     existing_yaml <- yaml::read_yaml(pkgdown_path)
39:   }
40: 
41:   pkg_funcs_txt <- paste(
42:     "- ",
43:     exported_functions,
44:     ": ",
45:     function_docs,
46:     sep = ""
47:   ) |>
48:     paste(collapse = "\n")
49: 
50:   existing_yaml_txt <- yaml::as.yaml(existing_yaml)
51: 
52:   sys_prompt <- prompt_pkgdown_sys()
53:   user_prompt <- prompt_pkgdown_user(pkg_name, pkg_funcs_txt, existing_yaml_txt)
54: 
55:   chat <- ellmer::chat_openai(
56:     model = model,
57:     system_prompt = sys_prompt
58:   )
59: 
60:   resp <- chat$chat(user_prompt)
61:   resp_yaml <- extract_code(resp, "yaml")
62: 
63:   if (is.null(resp_yaml)) { return(NULL) }
64: 
65:   # get existing yaml, remove reference section if it exists, and add new yaml reference section
66:   new_yaml <- yaml::as.yaml(
67:     yaml::yaml.load(existing_yaml_txt)[!names(yaml::yaml.load(existing_yaml_txt)) %in% "reference"]
68:   ) |>
69:     paste(collapse = "\n") |>
70:     paste(resp_yaml, collapse = "\n")
71: 
72:   # write new yaml to file
73:   fileConn <- file(pkgdown_path)
74:   writeLines(new_yaml, fileConn)
75:   close(fileConn)
76: 
77:   cli::cli_alert_success("Successfully updated {.path {pkgdown_path}} with new reference section.")
78: 
79: }
`````

## File: R/prompts.R
`````r
  1: #  ------------------------------------------------------------------------
  2: #
  3: # Title : Prompts
  4: #    By : Jimmy Briggs
  5: #  Date : 2025-02-28
  6: #
  7: #  ------------------------------------------------------------------------
  8: 
  9: #' Prompts
 10: #'
 11: #' @name prompts
 12: #'
 13: #' @description
 14: #' A collection of functions for generating prompts.
 15: #'
 16: #' There are functions for generating system prompts and user prompts.
 17: #'
 18: #' `noclocksai` comes with various prompt templates included that can be
 19: #' found under the package's installed `/prompts/` directory or retrieved
 20: #' directly via [pkg_sys_prompt()].
 21: #'
 22: #' @section Prompts:
 23: #'
 24: #' Default Prompt:
 25: #'
 26: #' - `prompt_default_sys()`: Generate the default system prompt for the chat session.
 27: #'
 28: #' Execute R Code Prompts:
 29: #'
 30: #' - `prompt_r_sys()`: Generate the system prompt for executing R code.
 31: #' - `prompt_r_user()`: Generate the user prompt for executing R code.
 32: #'
 33: #' Roxygen Prompts:
 34: #'
 35: #' - `prompt_roxygen_sys()`: Generate the system prompt for Roxygen documentation.
 36: #' - `prompt_roxygen_user()`: Generate the user prompt for Roxygen documentation.
 37: #'
 38: #' Exploratory Data Analysis (EDA) Prompts:
 39: #'
 40: #' - `prompt_eda_sys()`: Generate the system prompt for exploratory data analysis.
 41: #' - `prompt_eda_user()`: Generate the user prompt for exploratory data analysis.
 42: #'
 43: #' Regular Expression (regex) Prompts:
 44: #'
 45: #' - `prompt_regex_sys()`: Generate the system prompt for regular expressions.
 46: #' - `prompt_regex_user()`: Generate the user prompt for regular expressions.
 47: #'
 48: #' Google Maps Prompts:
 49: #'
 50: #' - `prompt_gmaps_sys()`: Generate the system prompt for Google Maps.
 51: #' - `prompt_gmaps_user()`: Generate the user prompt for Google Maps.
 52: #'
 53: #' Database Prompts:
 54: #'
 55: #' - `prompt_db_sys()`: Generate the system prompt for database interaction.
 56: #' - `prompt_db_user()`: Generate the user prompt for database interaction.
 57: #'
 58: #' Synthetic Data Prompts:
 59: #'
 60: #' - `prompt_synthetic_sys()`: Generate the system prompt for synthetic data generation.
 61: #' - `prompt_synthetic_user()`: Generate the user prompt for synthetic data generation.
 62: #'
 63: #' `pkgdown` Prompts:
 64: #'
 65: #' - `prompt_pkgdown_sys()`: Generate the system prompt for the package documentation.
 66: #' - `prompt_pkgdown_user()`: Generate the user prompt for the package documentation.
 67: #'
 68: #' Mermaid Prompts:
 69: #'
 70: #' - `prompt_mermaid_sys()`: Generate the system prompt for a Mermaid diagram.
 71: #' - `prompt_mermaid_user()`: Generate the user prompt for a Mermaid diagram.
 72: #'
 73: #' @param ... Additional arguments passed to the template as data.
 74: #' @param pkg_name,pkg_funcs,existing_yaml Variables passed to the `prompt_pkgdown_user()` function.
 75: #' @param code The R code to be executed for `prompt_r_user()`.
 76: #' @param context The context for the Mermaid diagram for `prompt_mermaid_user()`.
 77: #'
 78: #' @returns
 79: #' All prompt functions return a character string representing the (interpolated) prompt.
 80: #'
 81: #' @seealso [ellmer::interpolate_file()], [pkg_sys_prompt()]
 82: NULL
 83: 
 84: #' @rdname prompts
 85: #' @export
 86: #' @importFrom ellmer interpolate_file
 87: prompt_default_sys <- function(...) {
 88:   ellmer::interpolate_file(path = pkg_sys("prompts/default/system.prompt.md"))
 89: }
 90: 
 91: #' @rdname prompts
 92: #' @export
 93: #' @importFrom ellmer interpolate_file
 94: prompt_r_sys <- function() {
 95:   ellmer::interpolate_file(path = pkg_sys("prompts/execute_r_code/system.prompt.md"))
 96: }
 97: 
 98: #' @rdname prompts
 99: #' @export
100: #' @importFrom ellmer interpolate_file
101: prompt_r_user <- function(code) {
102:   ellmer::interpolate_file(path = pkg_sys("prompts/execute_r_code/user.prompt.md"), code = code)
103: }
104: 
105: #' @rdname prompts
106: #' @export
107: #' @importFrom ellmer interpolate_file
108: prompt_mermaid_sys <- function() {
109:   ellmer::interpolate_file(path = pkg_sys("prompts/mermaid/system.prompt.md"))
110: }
111: 
112: #' @rdname prompts
113: #' @export
114: #' @importFrom ellmer interpolate_file
115: #' @importFrom rlang flatten_chr
116: prompt_mermaid_user <- function(context = NULL, code = NULL, chart_type = NULL, chart_styles = NULL, ...) {
117: 
118:   if (is.null(context) && is.null(code)) {
119:     cli::cli_abort("One of {.arg context} or {.arg code} must be provided.")
120:   }
121: 
122:   if (!is.null(context)) {
123:     context <- paste(context, collapse = "\n")
124:   }
125: 
126:   if (!is.null(code)) {
127:     code <- paste(code, collapse = "\n")
128:   }
129: 
130:   dots <- list(...)
131: 
132:   if (length(dots) > 0) {
133:     additional_context <- dots |> rlang::flatten_chr() |> paste(collapse = ", ")
134:   } else {
135:     additional_context <- NULL
136:   }
137: 
138:   # convert NULLs to NAs
139:   context <- ifelse(is.null(context), NA_character_, context)
140:   code <- ifelse(is.null(code), NA_character_, code)
141:   chart_type <- ifelse(is.null(chart_type), NA_character_, chart_type)
142:   chart_styles <- ifelse(is.null(chart_styles), NA_character_, chart_styles)
143:   additional_context <- ifelse(is.null(additional_context), NA_character_, additional_context)
144: 
145:   ellmer::interpolate_file(
146:     path = pkg_sys("prompts/mermaid/user.prompt.md"),
147:     context = context,
148:     code = code,
149:     chart_type = chart_type,
150:     chart_styles = chart_styles,
151:     additional_context = additional_context
152:   )
153: 
154: }
155: 
156: prompt_enhance_markdown_user <- function(markdown) {
157: 
158:   ellmer::interpolate_file(
159:     path = pkg_sys("prompts/enhance_markdown/user.prompt.md"),
160:     markdown = markdown
161:   )
162: 
163: }
164: 
165: #' @rdname prompts
166: #' @export
167: #' @importFrom ellmer interpolate_file
168: prompt_pkgdown_sys <- function() {
169:   ellmer::interpolate_file(path = pkg_sys("prompts/pkgdown.system.prompt.md"))
170: }
171: 
172: #' @rdname prompts
173: #' @export
174: #' @importFrom ellmer interpolate_file
175: prompt_pkgdown_user <- function(pkg_name, pkg_funcs, existing_yaml) {
176:   ellmer::interpolate_file(
177:     path = pkg_sys("prompts/pkgdown.user.prompt.md"),
178:     pkg_name = pkg_name,
179:     pkg_funcs = pkg_funcs,
180:     existing_yaml = existing_yaml
181:   )
182: }
183: 
184: prompt_document_dataset_sys <- function() {
185:   ellmer::interpolate_file(path = pkg_sys("prompts/document_dataset/system.prompt.md"))
186: }
187: 
188: prompt_document_dataset_user <- function(data) {
189:   check_data_frame(data)
190:   ellmer::interpolate_file(path = pkg_sys("prompts/document_dataset/user.prompt.md"), data = data)
191: }
192: 
193: prompt_eda_sys <- function() {
194:   ellmer::interpolate_file(path = pkg_sys("prompts/eda/system.prompt.md"))
195: }
196: 
197: prompt_eda_user <- function(data) {
198:   check_data_frame(data)
199:   ellmer::interpolate_file(path = pkg_sys("prompts/eda/user.prompt.md"), data = data)
200: }
`````

## File: R/repomix.R
`````r
 1: #' Repomix
 2: #'
 3: #' @description
 4: #' Repomix is a command-line tool for collecting an entire codebase into a single file for
 5: #' use with AI Chat Agents. It can be used to extract code blocks from various file formats
 6: #' and merge them into a single file.
 7: #'
 8: #' @param path The path to the directory containing the codebase. Default is the current working directory.
 9: #' @param repo The remote repository URL to clone. Default is NULL. If provided, ignores the `path` argument.
10: #' @param output The output file name. Default is NULL. If provided, the output file will be saved with this name.
11: #' @param ... Additional arguments passed to the `npx repomix` function as arguments.
12: #'
13: #' @returns
14: #' The output of the `npx repomix` command.
15: #'
16: #' @export
17: repomix <- function(path = ".", repo = NULL, output = NULL, ...) {
18: 
19:   args <- c()
20: 
21:   if (!is.null(repo)) {
22:     check_repo(repo)
23:     args <- c(args, "--remote", repo)
24:   }
25: 
26:   if (!is.null(output)) {
27:     args <- c(args, "--output", output)
28:   }
29: 
30:   args <- c(args, ...)
31: 
32:   npx("repomix", args)
33: 
34: }
`````

## File: R/templates.R
`````r
 1: #  ------------------------------------------------------------------------
 2: #
 3: # Title : Templates
 4: #    By : Jimmy Briggs
 5: #  Date : 2025-02-28
 6: #
 7: #  ------------------------------------------------------------------------
 8: 
 9: render_template <- function(template_name, data) {
10: 
11:   template_path <- system.file(
12:     paste0("prompts/", template_name, "user.prompt.md"),
13:     package = "noclocksai"
14:   )
15: 
16:   template <- paste(
17:     readLines(
18:       template_path,
19:       encoding = "UTF-8",
20:       warn = FALSE
21:     ),
22:     collapse = "\n"
23:   )
24: 
25:   # determine if the template has any variables
26:   template_variables <- extract_template_variables(template)
27: 
28:   if (length(template_variables$variables) > 0) {
29:     for (variable in template_variables$variables) {
30:       if (!exists(variable, where = data)) {
31:         if (!exists(paste0("has_", variable), where = data)) {
32:           data[[paste0("has_", variable)]] <- FALSE
33:         }
34:       }
35:     }
36:   }
37: 
38:   whisker::whisker.render(
39:     template,
40:     data
41:   )
42: 
43: }
44: 
45: extract_template_variables <- function(template) {
46: 
47:   variables <- stringr::str_extract_all(template, "\\{\\{([a-z_]+)\\}\\}") |>
48:     purrr::map(stringr::str_replace_all, pattern = "\\{\\{", replacement = "") |>
49:     purrr::map(stringr::str_replace_all, pattern = "\\}\\}", replacement = "") |>
50:     unlist() |>
51:     unique()
52: 
53:   has_variables <- stringr::str_extract_all(template, "\\{\\{#([a-z_]+)\\}\\}") |>
54:     purrr::map(stringr::str_replace_all, pattern = "\\{\\{#", replacement = "") |>
55:     purrr::map(stringr::str_replace_all, pattern = "\\}\\}", replacement = "") |>
56:     unlist() |>
57:     unique()
58: 
59:   list(
60:     variables = variables,
61:     has_variables = has_variables
62:   )
63: 
64: }
`````

## File: R/tools.R
`````r
  1: #  ------------------------------------------------------------------------
  2: #
  3: # Title : Custom Tools
  4: #    By : Jimmy Briggs
  5: #  Date : 2025-03-09
  6: #
  7: #  ------------------------------------------------------------------------
  8: 
  9: 
 10: # registration ----------------------------------------------------------------------------------------------------
 11: 
 12: #' Tool Registration
 13: #'
 14: #' @description
 15: #' Register custom, function calling tools to the chat session.
 16: #'
 17: #' - `register_tool()`: Register a single tool.
 18: #' - `register_tools()`: Register multiple tools.
 19: #'
 20: #' @param chat An [ellmer::chat_openai()] object.
 21: #' @param tool An [ellmer::tool()] object.
 22: #' @param tools A list of [ellmer::tool()] objects.
 23: #'
 24: #' @returns
 25: #' While these functions are used for there side-effects (registering tools to the chat session), they do
 26: #' invisibly return the chat object.
 27: #'
 28: #' @export
 29: #'
 30: #' @importFrom cli cli_alert_success
 31: #'
 32: #' @examples
 33: #' \dontrun{
 34: #' chat <- initialize_chat()
 35: #' register_tool(chat, tool_gmaps_places_search())
 36: #' register_tools(chat, list(tool_gmaps_geocode_address(), tool_hunter_get_email_address()))
 37: #' }
 38: register_tool <- function(chat, tool, use_cache = TRUE, cache = NULL) {
 39:   check_chat(chat)
 40:   check_tool(tool)
 41:   chat$register_tool(tool)
 42:   cli::cli_alert_success("Successfully registered tool: {.field {tool@name}}")
 43:   invisible(chat)
 44: }
 45: 
 46: #' @rdname register_tool
 47: #' @export
 48: #' @importFrom cli cli_alert_success
 49: register_tools <- function(chat, tools) {
 50:   check_chat(chat)
 51:   for (tool in tools) {
 52:     check_tool(tool)
 53:     register_tool(chat, tool)
 54:   }
 55:   cli::cli_alert_success("Successfully registered {.field {length(tools)}} tools.")
 56:   invisible(chat)
 57: }
 58: 
 59: # tools -----------------------------------------------------------------------------------------------------------
 60: 
 61: #' Custom Tools
 62: #'
 63: #' @name tools
 64: #'
 65: #' @description
 66: #' Functions that create custom [ellmer::tool()] definitions.
 67: #'
 68: #' Tool Functions:
 69: #'
 70: #' - `tool_current_time()`: Tool that returns the current time.
 71: #' - `tool_get_weather()`: Tool that retrieves the current weather for a given location.
 72: #'   Wraps the [get_weather()] function.
 73: #' - `tool_extract_code()`: Tool that extracts code blocks from text. Wraps the [extract_code()] function.
 74: #' - `tool_execute_r_code()`: Tool that executes R code and returns the result.
 75: #' - `tool_query_db()`: Tool that executes a SQL query on the database and returns the result.
 76: #' - `tool_gmaps_geocode_address()`: Tool that geocodes an address using the Google Maps Geocoding API.
 77: #'   Wraps the [gmaps_geocode_address()] function.
 78: #' - `tool_gmaps_places_search()`: Tool that searches for a place using the Google Maps Places API.
 79: #'   Wraps the [gmaps_places_search()] function.
 80: #' - `tool_anomaly_detection()`: Tool that detects anomalies in a dataset.
 81: #' - `tool_correlate_with_anomalies()`: Tool that analyzes correlations and differences between anomalies and normal data.
 82: #'
 83: #' @param tz Timezone to use for the current time. Default is `NULL`, which uses the system timezone.
 84: #' @param use_cache Logical. If `TRUE`, the function will cache the results of the tool call using [memoise::memoise()].
 85: #'   Default is `FALSE`.
 86: #' @param api_key API key for the OpenWeather API. Defauls to `get_api_key("openweather")`.
 87: #' @param cache Cache object for memoization. Default is `NULL`, which uses the default cache.
 88: #' @param conn Database connection object. Default is `NULL`, which uses the default connection.
 89: #' @param data Data frame to analyze for anomalies. Default is `NULL`.
 90: #'
 91: #' @returns
 92: #' Each function returns an [ellmer::tool()] definition.
 93: #'
 94: #' @seealso [ellmer::tool()]
 95: #'
 96: #' @examples examples/ex_tools.R
 97: NULL
 98: 
 99: 
100: # time ------------------------------------------------------------------------------------------------------------
101: 
102: #' @rdname tools
103: #' @export
104: #' @importFrom ellmer tool type_string
105: tool_current_time <- function(tz = NULL) {
106: 
107:   func <- function(tz = tz) {
108:     if (is.null(tz)) tz <- Sys.timezone()
109:     format(Sys.time(), tz = tz, usetz = TRUE)
110:   }
111: 
112:   ellmer::tool(
113:     .name = "get_current_time",
114:     .description = "Get the current time. If no timezone is provided, the system timezone should be used.",
115:     .fun = func,
116:     tz = ellmer::type_string("Timezone to use for the current time.", required = FALSE)
117:   )
118: 
119: }
120: 
121: 
122: # geo -------------------------------------------------------------------------------------------------------------
123: 
124: #' @rdname tools
125: #' @export
126: #' @importFrom ellmer tool
127: tool_geocode_location <- function(use_cache = FALSE, cache = NULL, api_key = get_api_key("openweather")) {
128: 
129:   func <- purrr::partial(geocode, api_key = api_key)
130: 
131:   if (use_cache) {
132:     if (is.null(cache)) cache <- cachem::cache_mem(max_size = 1024 * 1024^2)
133:     func <- memoise::memoise(f = func, cache = cache, omit_args = c("api_key"))
134:   }
135: 
136:   ellmer::tool(
137:     .name = "geocode_location",
138:     .description = "Get the latitude and longitude for a given location.",
139:     .fun = func,
140:     location = ellmer::type_string(description = "Location to geocode.", required = TRUE)
141:   )
142: 
143: }
144: 
145: # weather ---------------------------------------------------------------------------------------------------------
146: 
147: #' @rdname tools
148: #' @export
149: #' @importFrom ellmer tool
150: tool_get_weather <- function(use_cache = FALSE, cache = NULL, api_key = get_api_key("openweather")) {
151: 
152:   func <- purrr::partial(get_weather, api_key = api_key)
153: 
154:   if (use_cache) {
155:     if (is.null(cache)) cache <- cachem::cache_mem(max_size = 1024 * 1024^2)
156:     func <- memoise::memoise(f = func, cache = cache, omit_args = c("api_key"))
157:   }
158: 
159:   ellmer::tool(
160:     .name = "get_weather",
161:     .description = paste0(
162:       "Get the current weather for a given location's coordinates. ",
163:       "If the lat/lon are not provided by the user, use the geocode_location tool to get the ",
164:       "coordinates if its registered."
165:     ),
166:     .fun = func,
167:     lat = ellmer::type_number(description = "Latitude of the location.", required = TRUE),
168:     lon = ellmer::type_number(description = "Longitude of the location.", required = TRUE),
169:     units = ellmer::type_string(
170:       description = "Units for the weather data. Can be 'standard', 'metric', or 'imperial'.",
171:       required = FALSE
172:     )
173:   )
174: 
175: }
176: 
177: 
178: # code ------------------------------------------------------------------------------------------------------------
179: 
180: #' @rdname tools
181: #' @export
182: #' @importFrom ellmer tool
183: #' @importFrom purrr partial
184: #' @importFrom memoise memoise
185: tool_execute_r_code <- function(cache = FALSE) {
186: 
187:   func <- execute_r_code
188:   if (cache) func <- memoise::memoise(func)
189: 
190:   ellmer::tool(
191:     .name = "execute_r_code",
192:     .description = "Executes R code and returns the result.",
193:     .fun = func,
194:     code = ellmer::type_string("R code to execute.", required = TRUE)
195:   )
196: 
197: }
198: 
199: #' @rdname tools
200: #' @export
201: #' @importFrom ellmer tool
202: #' @importFrom purrr partial
203: #' @importFrom memoise memoise
204: #' @importFrom rlang inject
205: tool_extract_code <- function(cache = FALSE) {
206: 
207:   func <- purrr::partial(extract_code, print = FALSE)
208:   if (cache) func <- memoise::memoise(func)
209: 
210:   rlang::inject(
211:     ellmer::tool(
212:       .fun = func,
213:       .description = "Extracts code blocks from text",
214:       .name = "extract_code",
215:       !!!.extract_code_types
216:     )
217:   )
218: 
219: }
220: 
221: # database --------------------------------------------------------------------------------------------------------
222: 
223: #' @rdname tools
224: #' @export
225: #' @importFrom ellmer tool type_string
226: #' @importFrom purrr partial
227: #' @importFrom memoise memoise
228: tool_query_db <- function(conn, cache = FALSE) {
229: 
230:   check_db_conn(conn)
231:   func <- purrr::partial(query_db, conn = conn)
232:   if (cache) func <- memoise::memoise(func)
233: 
234:   ellmer::tool(
235:     .name = "query_db",
236:     .description = "Executes a SQL query on the database and returns the result.",
237:     .fun = func,
238:     query = ellmer::type_string("SQL query to execute.", required = TRUE)
239:   )
240: 
241: }
242: 
243: # google maps -----------------------------------------------------------------------------------------------------
244: 
245: #' @rdname tools
246: #' @export
247: #' @importFrom ellmer tool
248: #' @importFrom purrr partial
249: #' @importFrom memoise memoise
250: tool_gmaps_geocode_address <- function(use_cache = TRUE, cache = NULL) {
251: 
252:   func <- purrr::partial(gmaps_geocode_address, api_key = get_gmaps_api_key())
253:   if (use_cache) {
254:     if (is.null(cache)) cache <- cachem::cache_mem(max_size = 1024 * 1024^2)
255:     func <- memoise::memoise(f = func, cache = cache, omit_args = c("api_key"))
256:   }
257: 
258:   rlang::inject(
259:     ellmer::tool(
260:       .name = "gmaps_geocode_address",
261:       .description = paste0(
262:         "Geocode an address using the Google Maps Geocoding API.\n",
263:         "This tool returns the formatted address, latitude, longitude, place ID, and place types."
264:       ),
265:       .fun = func,
266:       !!!.gmaps_geocode_address_types
267:     )
268:   )
269: 
270: }
271: 
272: #' @rdname tools
273: #' @export
274: #' @importFrom ellmer tool
275: #' @importFrom purrr partial
276: #' @importFrom memoise memoise
277: #' @importFrom cachem cache_mem
278: tool_gmaps_places_search <- function(use_cache = TRUE, cache = NULL) {
279: 
280:   func <- purrr::partial(gmaps_places_search, api_key = get_gmaps_api_key())
281: 
282:   if (use_cache) {
283:     if (is.null(cache)) cache <- cachem::cache_mem(max_size = 1024 * 1024^2)
284:     func <- memoise::memoise(f = func, cache = cache, omit_args = c("api_key"))
285:   }
286: 
287:   rlang::inject(
288:     ellmer::tool(
289:       .name = "gmaps_places_search",
290:       .description = paste0(
291:         "Search via the Google Maps Places (New) API to find information about a place.\n",
292:         "This tool queries the Places Text Search API using a query and address.\n",
293:         "The response back will be a parsed list of the results."
294:       ),
295:       .fun = func,
296:       !!!.gmaps_places_search_types
297:     )
298:   )
299: 
300: }
301: 
302: # analysis / EDA --------------------------------------------------------------------------------------------------
303: 
304: #' @rdname tools
305: #' @export
306: #' @importFrom ellmer tool type_string
307: #' @importFrom purrr partial
308: tool_anomaly_detection <- function(data) {
309: 
310:   check_tibble(data)
311: 
312:   func <- purrr::partial(detect_anomalies, data = data)
313: 
314:   ellmer::tool(
315:     .name = "detect_anomalies",
316:     .description = "Detects anomalies in the dataset using IQR method",
317:     .fun = func,
318:     column_name = type_string("Optional column name to analyze", required = FALSE)
319:   )
320: }
321: 
322: #' @rdname tools
323: #' @export
324: #' @importFrom ellmer tool type_string type_array type_integer
325: tool_correlate_with_anomalies <- function(data) {
326: 
327:   func <- purrr::partial(correlate_with_anomalies, data = data)
328: 
329:   ellmer::tool(
330:     .name = "correlate_with_anomalies",
331:     .description = "Analyzes correlations and differences between anomalies and normal data",
332:     column_name = ellmer::type_string("Column name with anomalies"),
333:     anomaly_indices = ellmer::type_array(
334:       items = ellmer::type_integer(
335:         description = "Indices of anomalous rows",
336:         required = TRUE
337:       )
338:     )
339:   )
340: }
`````

## File: R/types.R
`````r
  1: #  ------------------------------------------------------------------------
  2: #
  3: # Title : Custom Type Definitions
  4: #    By : Jimmy Briggs
  5: #  Date : 2025-03-09
  6: #
  7: #  ------------------------------------------------------------------------
  8: 
  9: #' Custom Type Definitions
 10: #'
 11: #' @name types
 12: #'
 13: #' @description
 14: #' Functions for defining and maintaining various custom [ellmer::Type] definitions.
 15: NULL
 16: 
 17: #' @rdname types
 18: #' @export
 19: #' @importFrom ellmer type_string type_object type_array type_number type_boolean
 20: type_gmaps_response <- function() {
 21: 
 22:   ellmer::type_object(
 23:     status = ellmer::type_string(description = "API Response Status Message", required = TRUE),
 24:     error_message = ellmer::type_string(description = "API Response Error Message", required = FALSE)
 25:   )
 26: 
 27: }
 28: 
 29: #' @rdname types
 30: #' @export
 31: #' @importFrom ellmer type_string type_object type_array type_number type_boolean
 32: type_gmaps_geocode_response <- function() {
 33: 
 34:   ellmer::type_object(
 35:     status = ellmer::type_string(description = "API Response Status Message", required = TRUE),
 36:     error_message = ellmer::type_string(description = "API Response Error Message", required = FALSE),
 37:     results = ellmer::type_array(
 38:       description = "Google Maps Geocode API Response",
 39:       required = TRUE,
 40:       items = ellmer::type_object(
 41:         .description = "Geocode Result",
 42:         .required = TRUE,
 43:         place_id = ellmer::type_string(description = "Google Maps Place ID", required = TRUE),
 44:         formatted_address = ellmer::type_string(description = "Formatted Address", required = TRUE),
 45:         geometry = ellmer::type_object(
 46:           .description = "Geographic Coordinates",
 47:           .required = TRUE,
 48:           location = ellmer::type_object(
 49:             .description = "Geographic Location",
 50:             .required = TRUE,
 51:             lat = ellmer::type_number(description = "Latitude", required = TRUE),
 52:             lng = ellmer::type_number(description = "Longitude", required = TRUE)
 53:           )
 54:         ),
 55:         address_components = ellmer::type_array(
 56:           .description = "Address Components",
 57:           .required = TRUE,
 58:           items = ellmer::type_object(
 59:             .description = "Address Component",
 60:             .required = TRUE,
 61:             long_name = ellmer::type_string(description = "Long Name", required = TRUE),
 62:             short_name = ellmer::type_string(description = "Short Name", required = TRUE),
 63:             types = ellmer::type_array(
 64:               .description = "Address Component Types",
 65:               .required = TRUE,
 66:               items = ellmer::type_string(description = "Address Component Type", required = TRUE)
 67:             )
 68:           )
 69:         )
 70:       )
 71:     )
 72:   )
 73: 
 74: }
 75: 
 76: #' @rdname types
 77: #' @export
 78: #' @importFrom ellmer type_string type_object type_array type_number type_boolean
 79: type_gmaps_places_search_response <- function() {
 80:   ellmer::type_object(
 81:     status = ellmer::type_string(description = "API Response Status Message", required = TRUE),
 82:     error_message = ellmer::type_string(description = "API Response Error Message", required = FALSE),
 83:     results = ellmer::type_array(
 84:       description = "Places Search Results",
 85:       required = TRUE,
 86:       items = ellmer::type_object(
 87:         .description = "Place Search Result",
 88:         .required = TRUE,
 89:         name = ellmer::type_string(description = "Place Name", required = TRUE),
 90:         place_id = ellmer::type_string(description = "Google Maps Place ID", required = TRUE),
 91:         formatted_address = ellmer::type_string(description = "Formatted Address", required = TRUE),
 92:         geometry = ellmer::type_object(
 93:           .description = "Geographic Coordinates",
 94:           .required = TRUE,
 95:           location = ellmer::type_object(
 96:             .description = "Geographic Location",
 97:             .required = TRUE,
 98:             lat = ellmer::type_number(description = "Latitude", required = TRUE),
 99:             lng = ellmer::type_number(description = "Longitude", required = TRUE)
100:           )
101:         ),
102:         rating = ellmer::type_number(description = "Place Rating", required = FALSE),
103:         types = ellmer::type_array(
104:           description = "Place Types",
105:           required = TRUE,
106:           items = ellmer::type_string(description = "Place Type", required = TRUE)
107:         )
108:       )
109:     )
110:   )
111: }
112: 
113: #' @rdname types
114: #' @export
115: #' @importFrom ellmer type_string type_object type_array type_number type_boolean
116: type_gmaps_place_details_response <- function() {
117:   ellmer::type_object(
118:     .description = "Google Maps Place Details API Response",
119:     .required = TRUE,
120:     status = ellmer::type_string(description = "API Response Status Message", required = TRUE),
121:     error_message = ellmer::type_string(description = "API Response Error Message", required = FALSE),
122:     result = ellmer::type_object(
123:       .description = "Place Details Result",
124:       .required = TRUE,
125:       name = ellmer::type_string(description = "Place Name", required = TRUE),
126:       place_id = ellmer::type_string(description = "Google Maps Place ID", required = TRUE),
127:       formatted_address = ellmer::type_string(description = "Formatted Address", required = TRUE),
128:       formatted_phone_number = ellmer::type_string(description = "Formatted Phone Number", required = FALSE),
129:       website = ellmer::type_string(description = "Website URL", required = FALSE),
130:       rating = ellmer::type_number(description = "Place Rating", required = FALSE),
131:       reviews = ellmer::type_array(
132:         description = "Place Reviews",
133:         required = FALSE,
134:         items = ellmer::type_object(
135:           .description = "Review",
136:           .required = TRUE,
137:           author_name = ellmer::type_string(description = "Author Name", required = TRUE),
138:           rating = ellmer::type_number(description = "Review Rating", required = TRUE),
139:           text = ellmer::type_string(description = "Review Text", required = TRUE),
140:           time = ellmer::type_number(description = "Review Timestamp", required = TRUE)
141:         )
142:       ),
143:       opening_hours = ellmer::type_object(
144:         .description = "Opening Hours",
145:         .required = FALSE,
146:         weekday_text = ellmer::type_array(
147:           description = "Weekday Text",
148:           required = TRUE,
149:           items = ellmer::type_string(description = "Day Hours Text", required = TRUE)
150:         ),
151:         open_now = ellmer::type_boolean(description = "Currently Open Status", required = TRUE)
152:       ),
153:       geometry = ellmer::type_object(
154:         .description = "Geographic Coordinates",
155:         .required = TRUE,
156:         location = ellmer::type_object(
157:           .description = "Geographic Location",
158:           .required = TRUE,
159:           lat = ellmer::type_number(description = "Latitude", required = TRUE),
160:           lng = ellmer::type_number(description = "Longitude", required = TRUE)
161:         )
162:       )
163:     )
164:   )
165: }
166: 
167: #' @rdname types
168: #' @export
169: #' @importFrom ellmer type_string type_object type_array type_number type_boolean
170: type_dataset_docs <- function() {
171: 
172:   ellmer::type_object(
173:     .description = "A roxygen2 skeleton for a dataset",
174:     .required = TRUE,
175:     title = ellmer::type_string(description = "Title of the dataset", required = TRUE),
176:     description = ellmer::type_string(description = "Description of the dataset", required = TRUE),
177:     format = ellmer::type_string(description = "Format of the dataset", required = TRUE),
178:     source = ellmer::type_string(description = "Source of the dataset", required = FALSE),
179:     url = ellmer::type_string(description = "URL of the dataset", required = FALSE),
180:     column_docs = ellmer::type_array(
181:       description = "Column documentation",
182:       required = TRUE,
183:       items = ellmer::type_object(
184:         .description = "Column documentation",
185:         .required = TRUE,
186:         name = ellmer::type_string(description = "Name of the column", required = TRUE),
187:         type = ellmer::type_string(description = "Type of the column", required = TRUE),
188:         description = ellmer::type_string(description = "Description of the column", required = TRUE)
189:       )
190:     ),
191:     examples = ellmer::type_array(
192:       description = "Examples of the dataset",
193:       required = FALSE,
194:       items = ellmer::type_string(description = "Example of the dataset", required = TRUE)
195:     )
196:   )
197: 
198: }
199: 
200: # internal custom types -------------------------------------------------------------------------------------------
201: 
202: #' @keywords internal
203: #' @noRd
204: #' @importFrom ellmer type_string type_object type_array type_number type_boolean
205: .extract_code_types <- list(
206:   text = ellmer::type_string("Text containing code block(s).", required = TRUE),
207:   lang = ellmer::type_string("Language of code block to extract (i.e. 'r', 'python', 'sql', etc.).", required = FALSE)
208: )
209: 
210: #' @keywords internal
211: #' @noRd
212: #' @importFrom ellmer type_string
213: .gmaps_geocode_address_types <- list(
214:   address = ellmer::type_string("The address to geocode.", required = TRUE)
215: )
216: 
217: #' @keywords internal
218: #' @noRd
219: #' @importFrom ellmer type_string type_number
220: .gmaps_places_search_types <- list(
221:   query = ellmer::type_string("The search query to find places.", required = TRUE),
222:   address = ellmer::type_string("The address to search for places near.", required = FALSE),
223:   radius = ellmer::type_number("The radius in meters to search for places near the address.", required = FALSE)
224: )
`````

## File: R/utils.R
`````r
  1: #  ------------------------------------------------------------------------
  2: #
  3: # Title : General Utilities
  4: #    By : Jimmy Briggs
  5: #  Date : 2025-02-25
  6: #
  7: #  ------------------------------------------------------------------------
  8: 
  9: 
 10: 
 11: # environment -----------------------------------------------------------------------------------------------------
 12: 
 13: env_is_testing <- function() {
 14:   Sys.getenv("TESTTHAT") == "true"
 15: }
 16: 
 17: env_is_rstudio <- function() {
 18:   Sys.getenv("RSTUDIO") == "true"
 19: }
 20: 
 21: env_is_positron <- function() {
 22:   Sys.getenv("POSITRON") == "true"
 23: }
 24: 
 25: env_is_github <- function() {
 26:   Sys.getenv("GITHUB_ACTIONS") == "true"
 27: }
 28: 
 29: env_is_vscode <- function() {
 30:   Sys.getenv("VSCODE_IPYNB_PATH") != ""
 31: }
 32: 
 33: 
 34: `%||%` <- function(x, y) if (is.null(x)) y else x
 35: 
 36: 
 37: # lists -----------------------------------------------------------------------------------------------------------
 38: 
 39: view_list <- function(list, ...) {
 40: 
 41:   listviewer::jsonedit(list, ...)
 42: 
 43: }
 44: 
 45: 
 46: # R code evaluation -----------------------------------------------------------------------------------------------
 47: 
 48: 
 49: 
 50: evaluate_r_code <- function(code, on_console_out, on_console_err, on_plot, on_dataframe) {
 51: 
 52:   cli::cli_alert_info("Running R Code...\n")
 53:   cli::cli_alert_info("Code: {cat(code, '\n', sep = '')}")
 54: 
 55:   evaluate::evaluate(
 56:     code,
 57:     envir = globalenv(),
 58:     stop_on_error = 1L,
 59:     output_handler = evaluate::new_output_handler(
 60:       text = function(value) {
 61:         on_console_out(as_str(value))
 62:       },
 63:       graphics = function(recorded_plot) {
 64:         plot <- recorded_plot_to_png(recorded_plot)
 65:         on_plot(plot$mime, plot$content)
 66:       },
 67:       message = function(cond) {
 68:         on_console_out(as_str(conditionMessage(cond), "\n"))
 69:       },
 70:       warning = function(cond) {
 71:         on_console_out(as_str("Warning: ", conditionMessage(cond), "\n"))
 72:       },
 73:       error = function(cond) {
 74:         on_console_out(as_str("Error: ", conditionMessage(cond), "\n"))
 75:       },
 76:       value = function(value) {
 77:         if (is.data.frame(value)) {
 78:           on_dataframe(value)
 79:         } else {
 80:           printed_str <- as_str(capture.output(print(value)))
 81:           if (nchar(printed_str) > 0 && !grepl("\n$", printed_str)) {
 82:             printed_str <- paste0(printed_str, "\n")
 83:           }
 84:           on_console_out(printed_str)
 85:         }
 86:       }
 87:     )
 88:   )
 89:   invisible()
 90: }
 91: 
 92: #' Save a recorded plot to base64 encoded PNG
 93: #'
 94: #' @param recorded_plot Recorded plot to save
 95: #' @param ... Additional arguments passed to [png()]
 96: #' @noRd
 97: recorded_plot_to_png <- function(recorded_plot, ...) {
 98:   plot_file <- tempfile(fileext = ".png")
 99:   on.exit(if (plot_file != "" && file.exists(plot_file)) unlink(plot_file))
100: 
101:   png(plot_file, ...)
102:   tryCatch(
103:     {
104:       replayPlot(recorded_plot)
105:     },
106:     finally = {
107:       dev.off()
108:     }
109:   )
110: 
111:   # Convert the plot to base64
112:   plot_data <- base64enc::base64encode(plot_file)
113:   list(mime = "image/png", content = plot_data)
114: }
115: 
116: 
117: # encoding --------------------------------------------------------------------------------------------------------
118: 
119: encode_df <- function(df, max_rows = 100, show_end = 10) {
120:   if (nrow(df) == 0) {
121:     return(paste(collapse = "\n", capture.output(print(tibble::as.tibble(df)))))
122:   }
123:   if (nrow(df) <= max_rows) {
124:     return(df_to_json(df))
125:   }
126:   head_rows <- df[1:max_rows, ]
127:   tail_rows <- df[(nrow(df) - show_end + 1):nrow(df), ]
128:   paste(collapse = "\n", c(
129:     df_to_json(head_rows),
130:     sprintf("... %d rows omitted ...", nrow(df) - max_rows),
131:     df_to_json(tail_rows))
132:   )
133: }
134: 
135: df_to_json <- function(df) {
136:   jsonlite::toJSON(df, dataframe = "rows", na = "string")
137: }
138: 
139: # pkg_sys ---------------------------------------------------------------------------------------------------------
140: 
141: #' Package System File
142: #'
143: #' @rdname pkg_sys
144: #'
145: #' @description
146: #' Get the path to a system file within the package.
147: #'
148: #' Various other `pkg_sys_*` functions are available to help with specific file paths:
149: #'
150: #' - `pkg_sys_template()`: Get the path to a template file.
151: #' - `pkg_sys_prompt()`: Get the path to a prompt file.
152: #' - `pkg_sys_extdata()`: Get the path to an external data file.
153: #' - `pkg_sys_config()`: Get the path to a configuration file.
154: #' - `pkg_sys_database()`: Get the path to a database file.
155: #' - `pkg_sys_www()`: Get the path to a `www` (i.e. Shiny App Resource) file.
156: #'
157: #' @param ... Additional arguments passed to `system.file()`.
158: #'
159: #' @returns
160: #' A character string representing the path to the system file.
161: #'
162: #' @export
163: #'
164: #' @importFrom fs path
165: #'
166: #' @examples
167: #' # retrieve the path to the package configuration file
168: #' pkg_sys("config/config.yml")
169: #'
170: #' # or use the shorthand function dedicated for configs
171: #' pkg_sys_config("config.yml")
172: pkg_sys <- function(...) {
173:   system.file(..., package = "noclocksai")
174: }
175: 
176: #' @rdname pkg_sys
177: #' @export
178: pkg_sys_template <- function(...) {
179:   pkg_sys(fs::path("templates", ...))
180: }
181: 
182: #' @rdname pkg_sys
183: #' @export
184: pkg_sys_prompt <- function(...) {
185:   pkg_sys(fs::path("prompts", ...))
186: }
187: 
188: #' @rdname pkg_sys
189: #' @export
190: pkg_sys_extdata <- function(...) {
191:   pkg_sys(fs::path("extdata", ...))
192: }
193: 
194: #' @rdname pkg_sys
195: #' @export
196: pkg_sys_config <- function(...) {
197:   pkg_sys(fs::path("config", ...))
198: }
199: 
200: #' @rdname pkg_sys
201: #' @export
202: pkg_sys_database <- function(...) {
203:   pkg_sys(fs::path("db", ...))
204: }
205: 
206: #' @rdname pkg_sys
207: #' @export
208: pkg_sys_www <- function(...) {
209:   pkg_sys(fs::path("www", ...))
210: }
211: 
212: # regex patterns / extraction -------------------------------------------------------------------------------------
213: 
214: #' Get Regex Code Pattern
215: #'
216: #' @description
217: #' Get a regular expression pattern for extracting code blocks from a markdown string.
218: #'
219: #' For example, to extract R code from a string, you need a pattern to match the following:
220: #'
221: #' ````
222: #' ```R
223: #' # some R code
224: #' ```
225: #' ````
226: #'
227: #' This function returns a pattern that can be used to extract the code block from the string.
228: #'
229: #' In the above example with R code the pattern would be: `(?s)(?<=```(r|R)\n).*?(?=```)`.
230: #'
231: #' @param lang The language of the code block to extract. If left `NULL`, the pattern will match any language
232: #'   using a wildcard `.*?` to match the language name.
233: #'
234: #' @returns
235: #' A regular expression pattern for extracting code blocks from a markdown string.
236: #'
237: #' @export
238: #'
239: #' @importFrom glue glue
240: #'
241: #' @examples examples/ex_get_regex_code_pattern.R
242: get_regex_code_pattern <- function(lang = NULL) {
243: 
244:   if (is.null(lang)) return("(?s)(?<=```).*?(?=```)")
245: 
246:   lang_match <- paste0("(", tolower(lang), "|", toupper(lang), ")")
247: 
248:   glue::glue("(?s)(?<=```{lang_match}\\n).*?(?=```)")
249: }
250: 
251: #' Extract Code
252: #'
253: #' @description
254: #' Extract code blocks from a markdown string.
255: #'
256: #' This function extracts code blocks from a markdown string using a regular expression pattern.
257: #'
258: #' @param text A character string representing the text to extract code blocks from.
259: #'
260: #' @param lang The language of the code block to extract. If left `NULL`, the pattern will attempt to
261: #'   match any language.
262: #'
263: #' @param print Logical. If `TRUE`, the extracted code block content will be printed to the console.
264: #'   Defaults to `FALSE`.
265: #'
266: #' @returns
267: #' A character string representing the extracted code block content.
268: #'
269: #' @export
270: #'
271: #' @seealso [get_regex_code_pattern()] for more information on the regular expression pattern used to extract code blocks.
272: #'
273: #' @importFrom stringr str_extract
274: #' @importFrom cli cli_abort
275: #'
276: #' @examples examples/ex_extract_code.R
277: extract_code <- function(text, lang = NULL, print = FALSE) {
278: 
279:   pattern <- get_regex_code_pattern(lang)
280:   content <- stringr::str_extract(text, pattern)
281: 
282:   if (length(content) == 0) {
283:     cli::cli_abort("No code block content found in provided {.arg resp} argument.")
284:   }
285: 
286:   if (print) cat(content, sep = "\n")
287: 
288:   content
289: }
`````

## File: R/zzz.R
`````r
 1: #  ------------------------------------------------------------------------
 2: #
 3: # Title : Package onLoad
 4: #    By : Jimmy Briggs
 5: #  Date : 2025-03-14
 6: #
 7: #  ------------------------------------------------------------------------
 8: 
 9: # onLoad ------------------------------------------------------------------
10: 
11: #' @keywords internal
12: #' @noRd
13: #' @importFrom rlang run_on_load
14: .onLoad <- function(libname, pkgname) {
15:   rlang::run_on_load()
16: }
17: 
18: # onAttach ----------------------------------------------------------------
19: 
20: #' @keywords internal
21: #' @noRd
22: .onAttach <- function(libname, pkgname) {
23:   packageStartupMessage("Welcome to the No Clocks AI package (https://github.com/noclocks/noclocksai/)!")
24: }
`````

## File: README.md
`````markdown
  1: # noclocksai <img src="man/figures/logo.png" align="right" height="120" alt="" />
  2: 
  3: <!-- badges: start -->
  4: [![Test Coverage](https://github.com/noclocks/noclocksai/actions/workflows/coverage.yml/badge.svg)](https://github.com/noclocks/noclocksai/actions/workflows/coverage.yml)
  5: [![R-CMD-Check](https://github.com/noclocks/noclocksai/actions/workflows/rcmdcheck.yml/badge.svg)](https://github.com/noclocks/noclocksai/actions/workflows/rcmdcheck.yml)
  6: [![Automate Changelog](https://github.com/noclocks/noclocksai/actions/workflows/changelog.yml/badge.svg)](https://github.com/noclocks/noclocksai/actions/workflows/changelog.yml)
  7: <!-- badges: end -->
  8: 
  9: ## Overview
 10: 
 11: The `noclocksai` package provides a comprehensive toolkit for working with AI services at No Clocks, LLC. It simplifies interactions with various AI models, provides utilities for embedding, database operations, and includes a flexible agent framework for creating AI assistants.
 12: 
 13: ## Key Features
 14: 
 15: - **Agent Framework**: Create and manage AI agents with memory, tools, and vector store capabilities
 16: - **Chat Interfaces**: Simplified interactions with popular AI providers (OpenAI, Claude, Gemini)
 17: - **Embeddings**: Generate and manage vector embeddings for RAG applications
 18: - **Database Integration**: Store and retrieve embeddings and documents
 19: - **API Connectors**: Wrappers for OpenAI, Google Maps, Geocoding, FireCrawl, and more
 20: - **Utility Functions**: Tools for caching, logging, data extraction, and markdown processing
 21: - **Mermaid Diagrams**: Generate mermaid.js diagrams with natural language
 22: - **Configuration Management**: Secure API key and environment management
 23: 
 24: ## AI & Agentic Capabilities
 25: 
 26: ### LLM Provider Integrations
 27: 
 28: - **OpenAI**: GPT-4o, GPT-4, and other models
 29: - **Anthropic**: Claude models
 30: - **Google**: Gemini models
 31: - **Ollama**: Local model hosting
 32: - **Groq**: High-performance inference
 33: 
 34: ### AI Agents
 35: 
 36: - **Base Agent**: R6 class with memory, tools, and vector store capabilities
 37: - **Specialized Agents**:
 38:   - **EDA Agent**: For exploratory data analysis and anomaly detection
 39:   - **Mermaid Agent**: For generating diagrams from natural language
 40:   - **Git Agent**: For repository management and commit messages
 41: 
 42: ### Included Prompt Templates
 43: 
 44: - **Code Analysis**: For analyzing and explaining code
 45: - **Document Processing**: For document summarization and analysis
 46: - **Exploratory Data Analysis**: For statistical analysis
 47: - **Markdown Enhancement**: For improving markdown documents
 48: - **Git Commits**: For generating commit messages
 49: - **Synthetic Data**: For generating sample data
 50: - **SQL to Text**: For explaining SQL queries
 51: - **Execute R Code**: For safe code execution
 52: - **Anomaly Detection**: For identifying outliers in data
 53: 
 54: ### AI Tools
 55: 
 56: - **Code Tools**: Extract, format, and execute code
 57: - **Data Analysis**: Anomaly detection, correlation analysis
 58: - **Geospatial**: Google Maps integration, geocoding, weather data
 59: - **Database**: Query execution with LLM assistance
 60: - **Time & Date**: Timezone-aware functions
 61: 
 62: ### External API Integrations
 63: 
 64: - **OpenWeather**: Weather data retrieval by coordinates or location
 65: - **Google Maps**: Geocoding, place search, and location data
 66: - **FireCrawl**: Web scraping and crawling capabilities
 67: - **Langfuse**: Comprehensive LLM observability and analytics
 68:   - Trace chat sessions
 69:   - Record user feedback
 70:   - Manage prompt templates
 71:   - Create evaluation datasets
 72:   - Run experiments
 73: 
 74: ### Type System
 75: 
 76: The package includes a robust type system for parameter validation:
 77: 
 78: - **Primitive Types**: String, number, integer, boolean, array, object
 79: - **Complex Types**: For specialized data formats
 80:   - `type_gmaps_geocode_response`: Google Maps geocoding responses
 81:   - `type_gmaps_places_search_response`: Places API responses
 82:   - `type_dataset_docs`: Document dataset format
 83: 
 84: ## Installation
 85: 
 86: You can install the development version of noclocksai from GitHub:
 87: 
 88: ```R
 89: pak::pak("noclocks/noclocksai")
 90: ```
 91: 
 92: ### System Requirements
 93: 
 94: This package requires:
 95: - R 4.1 or later
 96: - Node.js with npm/npx (for certain features)
 97: - Database connections (for vector stores)
 98: 
 99: ## Basic Usage
100: 
101: ### Creating a Chat Agent
102: 
103: ```r
104: library(noclocksai)
105: 
106: # Initialize a simple chat
107: chat <- initialize_chat(
108:   model = "gpt-4o",
109:   system_prompt = "You are a helpful AI assistant."
110: )
111: 
112: # Chat with the agent
113: chat$chat("What is the R programming language?")
114: ```
115: 
116: ### Using Geocoding and Weather APIs
117: 
118: Below is an example of registering some tools for the chat agent to use:
119: 
120: ```r
121: register_tools(
122:   chat,
123:   tools = list(
124:     tool_current_time(),
125:     tool_geocode_location(),
126:     tool_get_weather()
127:   )
128: )
129: # ✔ Successfully registered tool: get_current_time
130: # ✔ Successfully registered tool: geocode_location
131: # ✔ Successfully registered tool: get_weather
132: # ✔ Successfully registered 3 tools.
133: ```
134: 
135: Now you can ask the agent about the current time or weather:
136: 
137: ```r
138: # chat with tools
139: chat$chat("What is the current time?")
140: # [1] "The current time is 21:06:05 EDT on March 21, 2025."
141: chat$chat("What is the weather in Atlanta?")
142: # [1] "The current weather in Atlanta is clear with a temperature of 11.75°C. The wind is blowing at 2.75 m/s from the west, and the humidity is 34%."
143: ```
144: 
145: ### Creating Mermaid Diagrams
146: 
147: ```r
148: # initialize agent
149: mermaid_agent <- initialize_chat(system_prompt = prompt_mermaid_sys())
150: 
151: # example code for a diagram
152: example <- "starwars |>
153:   group_by(species) |>
154:   summarise(
155:     n = n(),
156:     mass = mean(mass, na.rm = TRUE)
157:   ) |>
158:   filter(
159:     n > 1,
160:     mass > 50
161:   )"
162: 
163: # prompt for mermaid diagram
164: resp <- create_mermaid_diagram(
165:   mermaid_agent,
166:   prompt_mermaid_user(code = example)
167: )
168: resp
169: #```mermaid
170: #graph TD
171: #    A[starwars dataset] --> B[Group by species]
172: #    B --> C[Summarise]
173: #    C -->|Calculate n = count of species| D
174: #    C -->|Calculate mass = mean mass of species| D
175: #    D --> E[Filter]
176: #    E -->|n > 1| F[Filtered Data]
177: #    E -->|mass > 50| F[Filtered Data]
178: #```
179: 
180: # extract code & render diagram
181: extract_code(resp, "mermaid") |> Diagrammer::Diagrammer()
182: ```
183: 
184: <center>
185: 
186: ![mermaid-diagram-example](man/figures/mermaid.png)
187: 
188: 
189: </center>
190: 
191: 
192: ### Extracting Code from Text
193: 
194: ```r
195: text <- "Here's an example:
196: ```r
197: library(dplyr)
198: mtcars |>
199:   group_by(cyl) |>
200:   summarise(avg_mpg = mean(mpg))
201: ```"
202: 
203: # Extract the R code
204: code <- extract_code(text, lang = "r")
205: ```
206: 
207: ### Working with PostgreSQL Databases
208: 
209: ```r
210: # Connect to a PostgreSQL database
211: conn <- db_connect(list(
212:   driver = "PostgreSQL",
213:   host = "localhost",
214:   dbname = "my_database",
215:   user = "postgres",
216:   password = "password",
217:   port = 5432
218: ))
219: 
220: # Query the database and store documents for vector search
221: db_store_document(
222:   conn,
223:   title = "Sample Document",
224:   content = "This is a sample document for vector search.",
225:   metadata = list(author = "Jane Doe", date = Sys.Date())
226: )
227: 
228: # Retrieve documents using semantic search
229: results <- db_get_documents(conn, "sample vector search")
230: ```
231: 
232: ### Complex Workflow Example
233: 
234: The following example shows how to create an agent that uses multiple tools:
235: 
236: ```r
237: # Create an agent with vector store capabilities
238: agent <- Agent$new(
239:   provider = "openai",
240:   model = "gpt-4o",
241:   system_prompt = "You are an assistant that helps analyze real estate data.",
242:   name = "real-estate-assistant"
243: )
244: 
245: # Register external API tools with the agent
246: agent$register_tool(tool_geocode_location())
247: agent$register_tool(tool_get_weather())
248: agent$register_tool(tool_gmaps_places_search())
249: 
250: # Connect the agent to a database for document storage
251: agent$db_connect(db_config = list(
252:   driver = "PostgreSQL",
253:   host = "34.75.86.90",
254:   dbname = "gmh_leasing_dev",
255:   user = "postgres",
256:   password = "password",
257:   port = 5432
258: ))
259: 
260: # Add a resource to the agent
261: agent$add_resource(
262:   name = "market_data",
263:   content = read.csv("market_data.csv"),
264:   type = "dataframe"
265: )
266: 
267: # Ask the agent a question that requires using multiple tools
268: response <- agent$chat(
269:   "What are the current market conditions for apartment rentals in New York City,
270:   and how might the current weather impact showings this weekend?"
271: )
272: 
273: # Save the agent state for later use
274: agent$save_state("agent_state.rds")
275: ```
276: 
277: ## Documentation
278: 
279: For more detailed information, see the package vignettes:
280: 
281: ```r
282: # List available vignettes
283: vignette(package = "noclocksai")
284: 
285: # View a specific vignette
286: vignette("noclocksai", package = "noclocksai")
287: ```
288: 
289: ## License
290: 
291: This package is licensed under a proprietary license - see the [LICENSE](LICENSE) file for details.
292: 
293: ## Contributing
294: 
295: This package is primarily maintained by [No Clocks, LLC](https://noclocks.dev). Please file issues for bugs or feature requests.
`````

## File: vignettes/examples.Rmd
`````
  1: ---
  2: title: "Examples"
  3: output: rmarkdown::html_vignette
  4: vignette: >
  5:   %\VignetteIndexEntry{Examples}
  6:   %\VignetteEngine{knitr::rmarkdown}
  7:   %\VignetteEncoding{UTF-8}
  8: ---
  9: 
 10: ```{r setup, include = FALSE}
 11: knitr::opts_chunk$set(
 12:   collapse = TRUE,
 13:   comment = "#>",
 14:   collapse = TRUE,
 15:   warning = FALSE,
 16:   message = FALSE,
 17:   error = FALSE,
 18:   out.width = "100%"
 19: )
 20: 
 21: # library(noclocksai)
 22: pkgload::load_all()
 23: 
 24: library(ellmer)
 25: library(DiagrammeR)
 26: ```
 27: 
 28: ```{r load_cached_resources, echo=FALSE, include=FALSE}
 29: mermaid_vignette_resources <- qs2::qs_read(pkg_sys_extdata("vignettes/mermaid_vignette_resources.qs"))
 30: mermaid_code <- mermaid_vignette_resources$mermaid_code
 31: resp <- mermaid_vignette_resources$resp
 32: mermaid_workflow_code <- mermaid_vignette_resources$mermaid_workflow_code
 33: resp_workflow <- mermaid_vignette_resources$resp_workflow
 34: ```
 35: 
 36: ## Example: Mermaid.js Diagram Generation
 37: 
 38: This example demonstrates how to use `noclocksai`'s features that build on top of the `ellmer`
 39: package to generate a [Mermaid.js](https://mermaid-js.github.io/mermaid/#/) diagram based on a provided R code snippet. 
 40: The `ellmer` package provides a simple interface to interact with the OpenAI API, allowing you to generate
 41: the diagrams based on user-provided context or code snippets.
 42: 
 43: `noclocksai` comes with a set of pre-defined prompts for generating Mermaid.js diagrams, making it easy to
 44: generate diagrams without having to write the prompts from scratch.
 45: 
 46: In this example the following steps will be taken:
 47: 
 48: 1. Initialize a chat with OpenAI using the Mermaid.js system prompt.
 49: 2. Pass an example R code snippet to the chat.
 50: 3. Extract the generated Mermaid.js diagram code block from the response.
 51: 4. Render the Mermaid.js diagram using the extracted code block.
 52: 
 53: ### Prompts
 54: 
 55: The `noclocksai` package provides two prompts for generating Mermaid.js diagrams. These prompts can be found in the package's `prompts/mermaid/` installed directory and retrieved via the `noclocksai::pkg_sys_prompt()` utility function or directly called using the `prompt_mermaid_sys()` and `prompt_mermaid_user()` functions.
 56: 
 57: Expand the following sections to view the Mermaid.js system and user prompts, respectively.
 58: 
 59: <br>
 60: 
 61: <details><summary>View [Mermaid.js System Prompt](../inst/prompts/mermaid/system.prompt.md)</summary><p>
 62: 
 63: ````markdown
 64: 
 65: ```{r child="../inst/prompts/mermaid/system.prompt.md"}
 66: ```
 67: 
 68: ````
 69: 
 70: </p></details>
 71: 
 72: <br>
 73: 
 74: <details><summary>View [Mermaid.js User Prompt](../inst/prompts/mermaid/user.prompt.md)</summary><p>
 75: 
 76: ````markdown
 77: 
 78: ```{r child="../inst/prompts/mermaid/user.prompt.md"}
 79: ```
 80: 
 81: ````
 82: 
 83: </p></details>
 84: 
 85: ### Diagram Generation Workflow
 86: 
 87: The following code demonstrates how to generate a Mermaid.js diagram based on a provided R code snippet
 88: using the `noclocksai` package:
 89: 
 90: ```{r mermaid_diagram_generation_chat, eval=FALSE}
 91: # initialize a chat with OpenAI using the mermaid.js system prompt
 92: chat <- ellmer::chat_openai(
 93:   system_prompt = prompt_mermaid_sys(),
 94:   echo = TRUE,
 95:   api_args = list(temperature = 0)
 96: )
 97: 
 98: # example code to pass to chat
 99: example <- "starwars |>
100:   group_by(species) |>
101:   summarise(
102:     n = n(),
103:     mass = mean(mass, na.rm = TRUE)
104:   ) |>
105:   filter(
106:     n > 1,
107:     mass > 50
108:   )"
109: 
110: # send the example code to the chat
111: resp <- chat$chat(prompt_mermaid_user(context = example))
112: ```
113: 
114: The response from the chat will contain the generated Mermaid.js diagram code block:
115: 
116: ```{r mermaid_diagram_generation_chat_output, echo=FALSE}
117: cat(resp, sep = "\n")
118: ```
119: 
120: Now that the chat has been initialized and the example R code snippet has been passed to the chat,
121: we can extract the generated Mermaid.js diagram code block from the response using the
122: provided utility function `extract_code()`:
123: 
124: ```{r extract_mermaid_diagram_code, eval=FALSE}
125: # extract mermaid diagram code block from response
126: mermaid_code <- extract_code(resp, lang = "mermaid", print = TRUE)
127: ```
128: 
129: preview the extracted Mermaid.js diagram code block:
130: 
131: ```{r extract_mermaid_diagram_code_output, echo=FALSE}
132: cat(mermaid_code, sep = "\n")
133: ```
134: 
135: Then you can use this generated Mermaid.js code block to render a diagram for the example R code:
136: 
137: ```{r render_mermaid_diagram, out.height="400px", fig.dim=c(6,4), fig.align="center", fig.cap="Mermaid.js Diagram for the Example R Code Snippet"}
138: # render the mermaid diagram
139: DiagrammeR::DiagrammeR(mermaid_code)
140: ```
141: 
142: <br>
143: 
144: The generated Mermaid.js diagram should represent the flow of the provided R code snippet.
145: 
146: ### Mermaid for this Workflow
147: 
148: Let's generate a diagram for the workflow defined above:
149: 
150: ```{r mermaid_workflow, eval=FALSE}
151: workflow <- "
152: 1. Initialize a chat with OpenAI using the mermaid.js system prompt
153: 2. Pass an example R code snippet to the chat
154: 3. Extract the generated Mermaid.js diagram code block from the response
155: 4. Render the Mermaid.js diagram using the extracted code block
156: "
157: 
158: resp <- chat$chat(prompt_mermaid_user(context = workflow))
159: ```
160: 
161: The response from the chat will contain the generated Mermaid.js diagram code block:
162: 
163: ```{r mermaid_workflow_output, eval=FALSE}
164: cat(resp_workflow, sep = "\n")
165: ```
166: 
167: Extract the generated Mermaid.js diagram code block:
168: 
169: ```{r extract_mermaid_workflow_code, eval=FALSE}
170: # extract mermaid diagram code block from response
171: mermaid_workflow_code <- extract_code(resp, lang = "mermaid", print = TRUE)
172: ```
173: 
174: preview the extracted Mermaid.js diagram code block:
175: 
176: ```{r extract_mermaid_workflow_code_output, eval=FALSE}
177: cat(mermaid_workflow_code, sep = "\n")
178: ```
179: 
180: Render the Mermaid.js diagram for this workflow:
181: 
182: ```{r render_mermaid_workflow, out.height="400px", fig.dim=c(6,4), fig.align="center", fig.cap="Mermaid.js Diagram for the Workflow of Generating a Mermaid.js Diagram"}
183: # render the mermaid diagram
184: DiagrammeR::DiagrammeR(mermaid_workflow_code)
185: ```
186: 
187: <br>
188: 
189: The generated Mermaid.js diagram should represent the workflow of generating a Mermaid.js diagram based on an R code snippet.
`````

## File: vignettes/noclocksai.Rmd
`````
 1: ---
 2: title: "Getting Started"
 3: output: rmarkdown::html_vignette
 4: vignette: >
 5:   %\VignetteIndexEntry{Getting Started}
 6:   %\VignetteEngine{knitr::rmarkdown}
 7:   %\VignetteEncoding{UTF-8}
 8: ---
 9: 
10: ```{r, include = FALSE}
11: knitr::opts_chunk$set(
12:   collapse = TRUE,
13:   comment = "#>"
14: )
15: ```
16: 
17: ```{r setup}
18: library(noclocksai)
19: ```
`````
