library("ggthemes")
library("reshape")
library("stringr")
library("lubridate")
library("scales")
library("hints")
library("sos")
library("foreign")

french <- function(x) str_trim(format(x, big.mark = " ", decimal.mark = ","))
pourcent <- function(x) paste(x, "%", sep = " ")
unfrench <- function(x) {
  as.numeric(gsub(pattern = "[[:blank:]]", replacement = "", x = gsub(pattern = ",", replacement = ".", x = x)))
}
dimension <- c(width = 297/25.4, height = 175/25.4)
dimension
a4 <- c(width = 297/25.4, height = 210/25.4)
a4