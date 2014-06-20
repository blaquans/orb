source("~/Documents/RInsee/R/inflation.R")

out <- data.frame(year = 1901:2012, euro = NA, stringsAsFactors = FALSE)
for (i in 1:nrow(out)) {
  out$euro[i] <- inflation(input = 1, input.currency="Euro", input.year=out$year[i] , output.currency= "Euro", output.year=2012)  
  }

library("ggplot2")
ggplot(out, aes( x = year, y = euro)) + geom_line() + theme_bw()
