<data>
Dataset Name: {{ deparse(substitute(data)) }}
Column Names: {{ paste(names(data), collapse = ",") }}
Column Types: {{ paste(vapply(data, function(x) { paste(class(x), collapse = "-") }, character(1)), collapse = ", ") }}
Summary Statistics: 
```
{{ paste(capture.output(skimr::skim(data)), collapse = "\n") }}
```
</data>
