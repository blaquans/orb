# library(devtools)
# install_github("ropensci/plotly")
library("ggthemes")
library("plotly")

py <- plotly(username="blaquans", key="ylep2illiz")

N  <- 10
df  <- data.frame(id = 1:N, x = 1 + rnorm(N))
df$y  <- 1 + df$x + rnorm(N)

test  <- ggplot(df, aes(x =x, y = y, label = id)) + geom_point() + theme_tufte()

py$ggplotly(test)
