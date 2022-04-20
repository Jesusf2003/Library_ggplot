library(ggplot2)

# Create Data
data <- data.frame(
  group = LETTERS[1:5],
  value = c(13, 7, 9, 21, 2)
)

# Basic piechart
ggplot(data, aes(x = "", y = value, fill = group)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0)