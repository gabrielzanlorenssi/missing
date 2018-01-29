to.NaN <- function(x, nan.values, to=NaN) {
  x[x %in% nan.values] <- NaN
}
