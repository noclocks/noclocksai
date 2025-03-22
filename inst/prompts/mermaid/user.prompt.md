<instructions>
Generate a MermaidJS diagram using the provided information below.
If any of the below sections are blank, ignore them.
If no chart type is specified, use the best chart type given the context.
</instructions>

<inputs>
{{if (!is.na(chart_type)) paste0("Chart Type: ", chart_type) else ""}}
{{if (!is.na(chart_styles)) paste0("Chart Styles: ", chart_styles) else ""}}
</inputs>

<context>
{{if (!is.na(context)) paste(context, collapse = "\n") else ""}}
</context>

<code>
{{if (!is.na(code)) paste(code, collapse = "\n") else ""}}
</code>

<additional_context>
{{if (!is.na(additional_context)) paste(additional_context, collapse = "\n") else ""}}
</additional_context>

<validation>
- Validate the generated diagram for any syntax errors before presenting it to the user.
</validation>
