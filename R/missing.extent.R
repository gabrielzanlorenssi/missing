#' Missing extent
#'
#' @param x data.frame or a vector containing missing values
#'
#' @return
#' @export
#'
#' @examples
missing.extent <- function(x) {
  A <- as.matrix(x)
  list <- c(n.missing = sum(as.integer(is.na(A) | is.nan(A))),
            n.total = length(as.integer(is.na(A) | is.nan(A))),
            missing.extent = sum(as.integer(is.na(A) | is.nan(A))) / 
                             length(as.integer(is.na(A) | is.nan(A))))
  return(list)
}



