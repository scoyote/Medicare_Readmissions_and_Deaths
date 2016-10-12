library(pmml)
library(sas7bdat)
data("iris")
write.csv(file='iris.csv',iris)

fit <- lm(Sepal.Length ~ ., data=iris[,-5])
pm <- pmml(fit)
saveXML(pm,"lm.pmml")