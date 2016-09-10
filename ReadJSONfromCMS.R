
require(tidyjson)
library(jsonlite)
json_cms_url <- "https://data.medicare.gov/api/views/ynj2-r877/rows.json?accessType=DOWNLOAD"
json_data <- fromJSON(txt=json_cms_url,flatten=T)

dataColumns <- mt$view$columns$name