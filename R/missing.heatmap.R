# missing map
missing.heatmap <- function(x, coord.flip=T) {
plot <- x %>%
    is.na %>%
    reshape2::melt() %>%
    ggplot(aes(x = .[[1]],
               y = .[[2]])) +
    geom_tile(aes(fill = .[[3]])) +
    scale_fill_manual(values = c("#BEBEBE", "#EE3B3B"),
                      labels = c("Not NA", "Is NA")) +
    labs(y = "Variables", x = "Observations") +
    theme(axis.text.x  = element_text(angle=45, vjust=0.5))

if (coord.flip) {
  plot + coord_flip()
}  else {
  plot
}
}

# x <- datasets::mtcars
# x <- x %>%
#   mutate(cyl = ifelse(cyl==4, NA, cyl))
# missing.heatmap(x)
#
