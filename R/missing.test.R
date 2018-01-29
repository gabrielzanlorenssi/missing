#' Missing test
#'
#' @param test.var
#' @param missing.var
#'
#' @return
#' @export
#'
#' @examples
missing.test <- function(x, missing.var,
                         x.vartype = "continuous", miss.vartype = "continuous") {
  if (x.vartype == "continuous" & miss.vartype == "continuous") {
    t.test(x[is.na(missing.var)],
           x[!is.na(missing.var)])
  } else if (x.vartype == "discrete" & miss.vartype == "continuous") {
    x <- as.factor(x)
    var <- list()
    for (i in seq_along(levels(x))) {
    var[[i]] <- ifelse(x==levels(x)[i], 1, 0)
    }

  }


}
#
# x <- c(1, 2, 3, 3, 3, 2, 4, 5, 4, 2, 4, 2, 3, 3, 2, 2)
# y <- c(1, NA, 3, NA, 23, 20, NA, 5, 8, 2, 4, 9, 100, NA, 2, 5)
# y <- rev(y)

missing.test(y, x)
