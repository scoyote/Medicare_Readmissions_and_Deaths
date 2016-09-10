raw_data <- read.csv("https://data.medicare.gov/api/views/ynj2-r877/rows.csv?accessType=DOWNLOAD",stringsAsFactors=F)

temp <- data.frame(strsplit(head(raw_data$Location,3), split="\n"))
temp <- t(temp)
colnames(temp) <- list("Street","cityStateZip", "coord")
row.names(temp) <- seq(1:length(temp[,1]))
head(temp)