I need to organize the functions of an R package named {{pkg_name}} into logical groups for the pkgdown
YAML metadata "reference" section.

Here are the exported functions and their corresponding documentation:

{{pkg_funcs}}

***

Here is the existing `_pkgdown.yml` file:

```yaml
{{existing_yaml}}
```

Please update only the `reference` section of the YAML file to include the logical grouping of functions based on their
purpose and functionality.

***

If the above existing YAML file is empty, or missing a reference section,
please generate the YAML 'reference:' section that organizes these functions into logical groups 
based on their purpose and functionality for the pkgdown website. 

Use the following format:

```yaml
reference:
  - title: "Group 1"
    desc: >-
      Description of the functions in this group.
    contents:
      - function1
      - function2
      - starts_with("prefix_")
  - title: Group 2
    desc: >-
      Description of the functions in this group.
    contents:
      - function4
      - function5
      - matches("pattern")
```

Use `starts_with()`, `matches()`, or other appropriate functions to group the functions based on their names.
