# Saving R output to a .tex file

This is useful for e.g. `kable()`. The con**cat**enate and print function works as follows

```r
cat(INPUT, file = "output.tex")
```

Alternatively, for instances where `cat()` does not work, `sink()` (function for sending R output to a file) can be utilised as

```r
sink(file = "output.tex")
INPUT
sink()
```
