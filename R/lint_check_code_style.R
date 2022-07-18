# NB requires the package lintr
# If wanting to run as a test in part of test suite use also tinytest

list_of_files <- c("setup.R", "aux-func.R") # Manual option
list_of_files <- list.files(pattern = "*.R$", full.names = FALSE) # Extract from current directory

chk <- sapply(list_of_files,
              function(x){lintr::lint(x,
                                      lintr::linters_with_defaults(
                                        paren_brace_linter = NULL,
                                        spaces_left_parentheses_linter = NULL,
                                        spaces_inside_linter = NULL,
                                        single_quotes_linter = NULL,
                                        # Additional two (below) added to avoid
                                        # "Variable and function name style
                                        # should be snake_case"
                                        object_name_linter = NULL,
                                        # and "Commas should never have a space
                                        # before"
                                        commas_linter = NULL))})

# Check files are formatted the way we like
tinytest::expect_equal(lengths(chk), 0,
                       info = "Check all files linted as we would like")
print(lengths(chk))
# In case just want to look at ones that still have outstandings
#print(lengths(chk)[which(lengths(chk) > 0)])
