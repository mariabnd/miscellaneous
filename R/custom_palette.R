#' Custom palette for OsloMet - Oslo Metropolitan University yellow
#'
#' @author mariabnd
#' @example
#' par(bg = "grey")
#' plot(1 : 5, type = "p", asp = 1, pch = 19, col = oslomet_pal(5))
oslomet_pal <- function (n, name = "OMYel"){
  if(n > 5){
    stop("n too large")
  }
  opts <- c(rgb(255, 248, 204, maxColorValue = 255), 
            rgb(255, 241, 153, maxColorValue = 255),
            rgb(255, 234, 102, maxColorValue = 255),
            rgb(191, 165, 0, maxColorValue = 255),
            rgb(127, 110, 0, maxColorValue = 255))
  if(n < 3){ 
    warning("Minimal value for n is 3 as in RColorBrewer, returning instead palette with n=3")
    return(oslomet_pal(3, name))
  }
  switch(name,
         OMYel = switch(n - 2,
                        opts[1 : 3],
                        opts[1 : 4],
                        opts[1 : 5]))
}
