#' Title
#'
#' @param x
#' @param fill.value
#' @param to
#'
#' @return
#' @export
#'
#' @examples
from.NA <- function(x, fill.value) {
  x[is.na(x)] <- fill.value
  x
}

#
# fill.value <- 0
# x <-c(1,2,3,4,NA,5)
# x[is.na(x)] <- fill.value
# x
