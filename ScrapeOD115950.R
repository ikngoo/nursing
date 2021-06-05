#load libs

library(tidyverse)
library(jsonlite)

#nse top gainers

url <- 'https://data.gov.tw/api/v2/rest/dataset/115950'

# extract html 

url_html <- read_json(url)

lastdis = length(url_html$result$distribution)

csvurl = url_html$result$distribution[[lastdis]]$resourceDownloadUrl

df <- read.table(file = csvurl, header=TRUE, sep=",", fileEncoding = "UTF-8-BOM", fill=TRUE)



write_csv(df,'data.csv')    

