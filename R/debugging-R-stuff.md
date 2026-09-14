# Debugging issues

_Saved here in case this is of use to future me (my main collaborator)_

Error message: none

Underlying problem:
Subsetting data frame adds weird NA rows (contents are NA and row numbers are prefaced with NA)
```
> exmpl_df <- exmpl_df[exmpl_df$ISO_A3 == "IDN", ]
> nrow(exmpl_df)
[1] 2638 # Should be 1415
```

Fix: (source: https://stackoverflow.com/a/37351328)
Include `which` in the subsetting

```
> exmpl_df <- exmpl_df[which(exmpl_df$ISO_A3 == "IDN"), ]
> nrow(exmpl_df)
[1] 1415
```

----------------------------------------------------------------------------------------

Error message:
```
Error in apply(mats, 3, FUN = function(x) { : 
  'MARGIN' does not match dim(X)
```

Underlying problem:
While `mats` is an array it is of one dimension only (and 60 long in this instance)
```
> class(mats)
[1] "array"
> dim(mats)
[1] 60
```

Fix:
Correct the dimensions (and possibly also the dimnames attribute) such that it is of dimension three (3) and then margin should match

----------------------------------------------------------------------------------------

Error message:
```
Error: Discrete value supplied to continuous scale
```

Underlying problem:
Missing values (error seems to flag use of `scale_fill_viridis_c` rather than `scale_fill_viridis_d`)

Fix:
Check the values of the data being plotted
