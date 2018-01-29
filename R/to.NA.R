to.NA <- function(x, na.values, to=NA) {
  x[x %in% na.values] <- NA
}
