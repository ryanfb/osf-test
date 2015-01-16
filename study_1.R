library(xlsx)
data <- read.xlsx(file = "/Users/Courtney/Desktop/study1.xlsx", sheetName = "Sheet1", as.data.frame = TRUE, header = TRUE)

data$correct <- rowMeans(subset(data, select=math1:math12))

result <- t.test(data$correct ~ data$cond, paired = FALSE, alternative = "two.sided", var.equal = TRUE, conf.level = .95)
