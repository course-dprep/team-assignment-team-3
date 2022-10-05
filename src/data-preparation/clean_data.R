# Cleaning the Data #

# Loading packages
library(dplyr)

# Load merged data 
load("./gen/temp/combined_data")

## Create a dummy variable to identify the states where abortion is legal or not after overturning Roe v wade.  example lets assumed that countries with code 5,6, and 7 were treated (=1). states has the category "Legal" and "Gestational Limit" (abortion is banned after >= 15 weeks of pregnancy) are treated as "legal" (=0); states has the category "Banned" are treated as "banned"(=1) in our analysis. 
combined_data$category1 <- ifelse(combined_data$category == "Legal", 0, 1)
head(combined_data)

# Transform price to numeric

# Filtering the combined data on states, time, category & price
combined_data1 <- subset(combined_data, select = c(price, states, time, category1))
head(combined_data1)
