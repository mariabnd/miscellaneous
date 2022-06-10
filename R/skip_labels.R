skip_labels <- function(x, amount = 4L){
  x <- sort(unique(x))
  x[!(x %in% x[seq.int(1L, length(x), amount)])] <- ""
  return(x)
}

# Example
skip_labels(1 : 10)
# Can be used with ggplot2::scale_x_discrete()
