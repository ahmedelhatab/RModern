rm(list=ls())
library(tidyverse)
library(lubridate)
library(openxlsx)
library(writexl)
data <- openxlsx::readWorkbook("./tariff.xlsx",sheet = "Discounts")
discount_info <- data %>% select (parametric_boo,marginal_discount_boo,negotiable_discount_boo,store_qualifying_usage_boo)
contincy_table <- as.data.frame(table(discount_info))
contincy_table$probability <- (contincy_table$Freq/488)*100

