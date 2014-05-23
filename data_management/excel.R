
library("XLConnect")
N  <- 100
df  <- data.frame(id = 1:N, x = rnorm(N), u = rnorm(N))

wb <- loadWorkbook("data_management/test.xlsx", create = TRUE)
createSheet(wb, name = "mydata")
writeWorksheet(wb, df, sheet = "mydata", startRow = 1, startCol = 1, header = TRUE)
saveWorkbook(wb)


