theme_blackboard  <- function (base_size = 12, base_family = "") {
  require("xkcd", quietly = TRUE)
  require("scales", quietly = TRUE)  
  require("grid", quietly = TRUE)
  theme(
    line = element_line(colour = "white", size = 1, linetype = 1, lineend = "butt"), 
    rect = element_rect(fill = "black", colour = "white", size = 0.5, linetype = 1), 
    text = element_text(family = "xkcd", face = "plain", colour = "white", size = base_size, hjust = 0.5, vjust = 0.5, angle = 0, lineheight = 0.9), 
    axis.text = element_text(size = rel(1.2), colour = "grey50"), 
    strip.text = element_text(size = rel(0.8)), 
    axis.line = element_blank(), 
    axis.text.x = element_text(vjust = 1), 
    axis.text.y = element_text(hjust = 1), 
    axis.ticks = element_line(colour = "grey50"), 
    axis.title.x = element_text(size = rel(1.2)), 
    axis.title.y = element_text(angle = 0, size = rel(1.2)), 
    axis.ticks.length = unit(0.15, "cm"), 
    axis.ticks.margin = unit(0.1, "cm"), 
    legend.background = element_blank(), 
    legend.margin = unit(0.2, "cm"), 
    legend.key = element_rect(fill = NA, colour = "white"), 
    legend.key.size = unit(1.2, "lines"), 
    legend.key.height = NULL, 
    legend.key.width = NULL, 
    legend.text = element_text(size = rel(0.8)), 
    legend.text.align = NULL, 
    legend.title = element_text(size = rel(0.8), face = "bold", hjust = 0), 
    legend.title.align = NULL, 
    legend.position = "bottom", 
    legend.direction = NULL, 
    legend.justification = "center", 
    legend.box = NULL, 
    panel.background = element_rect(fill = "black", color = "black"), 
    panel.border = element_blank(), 
    panel.grid.major = element_line(colour = "grey50", size = 0.5, linetype = "dashed"), 
    panel.grid.minor = element_line(colour = "grey50", size = 0.25, linetype = "dashed"), 
    panel.margin = unit(0.25, "lines"), 
    strip.background = element_rect(fill = "grey80", colour = NA), 
    strip.text.x = element_text(), strip.text.y = element_text(angle = -90), 
    strip.background = element_blank(), 
    plot.background = element_rect(colour = NA), 
    plot.title = element_text(size = rel(2)), 
    plot.margin = unit(c(1, 1, 0.5, 0.5), "lines"), complete = TRUE)
}


set.seed(123)
N  <- 100
df  <- data.frame(x = rnorm(N), id = 1:N)
df$y  <- 1 + df$x + rnorm(N)
ggplot(data = df, aes(x = x, y = y)) + 
  geom_point(color = "white", position = "jitter", size = 3) + 
  theme_blackboard() + 
  labs(title = "Blackboard graphics")
