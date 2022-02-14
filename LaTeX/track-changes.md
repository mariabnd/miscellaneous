# Track changes in LaTeX using `latexdiff`/`latexdiffcite`

How to create a tracked changes document (useful for resubmission to journals).
You need two files:
* `main1.tex` (the first version of the document with which changes are compared)
* `main2.tex` (the newer version of the same document with changes applied)

## Using `latexdiff`

To obtain the track changes version run

```
latexdiff main1.tex main2.tex > diff.tex
```

and compile the .tex file `diff.tex`

## Using `latexdiffcite`

Or if experiencing issues with references, run

```
latexdiffcite file main1.tex main2.tex -o diff.tex 
```

and compile the .tex file `diff.tex`

## Varia

And possibly need to replace `\hspace{0pt}` with `\hskip0pt` depending on whether `Extra }` error occurs cf. [https://github.com/ftilmann/latexdiff/issues/218](https://github.com/ftilmann/latexdiff/issues/218)
