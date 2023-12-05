# Add spellchecker to TeXworks

Save the files
* [`en_GB.aff`](https://github.com/ropensci/hunspell/blob/master/inst/dict/en_GB.aff)
* [`en_GB.dic`](https://github.com/ropensci/hunspell/blob/master/inst/dict/en_GB.dic)

to the TeXworks folder

`C:\Users\<USERNAME>\TeXworks\dictionaries` (Windows)

# Add words to the spellchecker

* Increment the number at the top of the dictionary (`.dic`) file
* Add the desired word (e.g. `norovirus` which was not included as of 2023-12-05)
* Most likely you don't need to do anything to the affix (`.aff`) file

## Varia

1. If this is the first spellchecker being added, you may need to create the `dictionaries` folder first.
2. You may need to close and restart TeXworks to see a change.
3. Under `Edit > Preferences > Editor` you can set the default spellchecker.
