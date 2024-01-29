library(ggplot2)

set.seed(128)

edward <- rnorm(20, mean = 180, sd = 5)  # Edward's measurements
hugo <- rnorm(20, mean = 170, sd = 7)      # Hugo's measurements
lucy <- rnorm(20, mean = 160, sd = 3)   #Lucy's measurements


# combining the data for height
height <- data.frame(
  friend = rep(1:20, times = 3),
  height = c(edward, hugo, lucy),
  Person = rep(c("Edward", "Hugo", "Lucy"), each = 20)
)

#set the graph
ggplot(height, aes(x = friend, y = height, color = Person)) +
  geom_point() +
  labs(title = "Heights Measured by Edward, Hugo, and Lucy",
       x = "Friend",
       y = "Height") +
  theme_minimal()

