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

### Using `latexdiff` in Overleaf

According to Overleaf (cf. [tex.stackexchange.com/a/603351](tex.stackexchange.com/a/603351)), the `shellesc` package can be used. Add a file called `diff.tex` with the following contents

```
\RequirePackage{shellesc}
\ShellEscape{latexdiff --append-context2cmd="abstract" old.tex draft.tex > diff.tex}
% --append-context2cmd="abstract" ensures changes to the abstract are also shown
\input{diff}
\documentclass{dummy}
```

Compiling this will give the .pdf file but not the .tex file.

NB `dummy` is not a real LaTeX documentclass (the options are [here](ctan.org/topic/class))

## Using `latexdiffcite`

Or if experiencing issues with references, run

```
latexdiffcite file main1.tex main2.tex -o diff.tex 
```

and compile the .tex file `diff.tex`

## Varia

And possibly need to replace `\hspace{0pt}` with `\hskip0pt` depending on whether `Extra }` error occurs cf. [github.com/ftilmann/latexdiff/issues/218](github.com/ftilmann/latexdiff/issues/218)
