library(openxlsx)

rm(list = ls())

data <- read.xlsx("data.xlsx", sheet=1)
rownames(data) <- data$Name
data <- data [, -1]

## log2 destransformation
data <- as.matrix(2^(data))
write.xlsx(as.data.frame(data), "data_wo-log.xlsx",row.names = TRUE)
