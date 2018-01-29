#' Missing test
#'
#' @param test.var 
#' @param missing.var 
#'
#' @return
#' @export
#'
#' @examples
missing.test <- function(x, missing.var, x.vartype = "continuous") {
  t.test(x[is.na(missing.var)],
       x[!is.na(missing.var)])
}
# 
# x <- c(1, 2, 3, NA, 23, 20, 17, 5, 8, 2, 4, 9, 100, 3, 2, NA)
# y <- c(1, 2, 3, 4, 23, 20, 17, 5, 8, 2, 4, 9, 100, 3, 2, 5)
# y <- rev(y)
# 
# missing.test(y, x)