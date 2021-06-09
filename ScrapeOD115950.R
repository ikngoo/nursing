#load libs

library(tidyverse)

#get csv download url

url <- 'https://quality.data.gov.tw/dq_download_csv.php?nid=115950&md5_url=1f49e6e3e77ba203a4bba37f3b263715'

# read csv 

df <- read.table(file = url, header=TRUE, sep=",", fileEncoding = "UTF-8", fill=TRUE)

df <- df[!(is.na(df$`WGS84經度`) | df$`WGS84經度` ==""), ]

write_csv(df,'data.csv')    

