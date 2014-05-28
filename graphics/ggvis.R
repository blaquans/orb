ggplot(Minard.cities, aes(x = long, y = lat)) +
  geom_path(
    aes(size = survivors, colour = direction, group = group),
    data = Minard.troops
  ) +
  geom_point() +
  geom_text(aes(label = city), hjust=0, vjust=1, size=4)

library("ggthemes")
library("ggvis")

N  <- 100
df  <- data.frame(id = 1:N, x = rnorm(N))
df$z  <- 1 + df$x + rnorm(N)
df$y  <- 1 + df$x + df$z + rnorm(N)
df$cat  <- sample(1:6, size = N, replace = TRUE)

mtcars 
ggvis(~wt, ~mpg) 

%>% layer_points()

layer_points(ggvis(df, ~x, ~y))
+ layer_points()

ggvis(df, props(x = ~x, y = ~y)) + mark_point() + layer_smooth(method = "lm", se = TRUE)

ggvis(subset(df), props(x = ~x, y = ~y)) + 
  layer_point(props(fill = ~factor(cat))) + 
  layer_smooth(method = "lm", se = TRUE) 

ggvis(df, props(x = ~x, y = ~y)) + mark_point()+ layer_line()

ggvis(df, props(x = ~x, y = ~y)) + mark_point() + layer_smooth(method = "lm", se = TRUE)

ggvis(df, props(x = ~x, y = ~y)) + layer_point(props(fill = ~factor(cat))) + layer_smooth(method = "lm", se = TRUE)

ggvis(mtcars, props(x = ~wt, y = ~mpg)) +
  layer_smooth(se = TRUE,
               span = input_slider(min = 0.3, max = 1, value = 0.8, step = 0.1,
                                   label = "Smoothing span")) +
  layer_point() +
  guide_axis("x", title = "Weight") +
  guide_axis("y", title = "MPG")

ggvis(mtcars, props(x = ~wt)) +
  layer_density(
    adjust = input_slider(.1, 2, value = 1, step = .1, label = "Bandwidth adjustment"),
    kernel = input_select(
      c("Gaussian" = "gaussian",
        "Epanechnikov" = "epanechnikov",
        "Rectangular" = "rectangular",
        "Triangular" = "triangular",
        "Biweight" = "biweight",
        "Cosine" = "cosine",
        "Optcosine" = "optcosine"),
      label = "Kernel")
  )


