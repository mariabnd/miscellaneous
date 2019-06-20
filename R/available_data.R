avail_data <- function(pkg){
  d <- data(package = pkg)$result[, c("Item", "Title")]
  return(dplyr::as_tibble(d))
}

# Example
avail_data("vegan")
