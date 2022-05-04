library(tidyquant)
library(dplyr)
library(tibble)

prices <- c("PETR3","ITUB4","ABEV3","BBDC3","WEGE3","SANB11","RDOR3","BBAS3") %>%
  paste0(".SA") %>%
  tq_get(get = "stock.prices", from = " 2010-01-01") %>%
  mutate(symbol=sub(".SA","",symbol))

write.table(prices,"prices.csv", sep = ",",row.names=FALSE)
prices_t <- as_tibble(prices)

