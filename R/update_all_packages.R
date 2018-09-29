# Script for when you take the lazy option and copy paste packages from the old 
# library folder to the new one after updating R (probably not recommended)
ifelse(sum((installed.packages()[, "Built"] < paste0(R.version$major,".",
                                                     R.version$minor)) == TRUE) > 0,
       cat(sum((installed.packages()[, "Built"] < paste0(R.version$major,".",
                                                         R.version$minor)) == TRUE),
           "packages were installed by an R version with different internals, these are: \n",
           rownames(installed.packages()[(installed.packages()[, "Built"] < 
                                            paste0(R.version$major,".", R.version$minor))
                                         == TRUE, ])),
       cat("All packages are built for the current R version"))

install.packages(rownames(installed.packages()[(installed.packages()[, "Built"] < 
                                 paste0(R.version$major,".", R.version$minor))
                              == TRUE, ]))