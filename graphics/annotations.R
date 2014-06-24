set.seed(123)
N  <- 100 
df  <- data.frame(id = 1:100, x = 1 + rnorm(N))
df$y  <- 1 + df$x + rnorm(N)
ggplot(data = df, aes(x = x, y = y)) + 
  geom_point() + 
  theme_blaquans() + 
  annotate("text", label = "Lecture : L'effet de x sur y", x = 0, y = -2)

