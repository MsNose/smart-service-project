# Import the tidyverser library
library(tidyverse)

# Import the data
data20_22 <- read.csv("data/cleaned/data20_22.csv", sep=";")
data19 <- read.csv("data/cleaned/data19.csv", sep=";")
data18 <- read.csv("data/cleaned/data18.csv", sep=";")
data17 <- read.csv("data/cleaned/data17.csv", sep=";")
data16 <- read.csv("data/cleaned/data16.csv", sep=";")
data15 <- read.csv("data/cleaned/data15.csv", sep=";")
data14 <- read.csv("data/cleaned/data14.csv", sep=";")
data13 <- read.csv("data/cleaned/data13.csv", sep=";")
data12 <- read.csv("data/cleaned/data12.csv", sep=";")

# Combine the dataframes
ult_total <- bind_rows(data20_22, data19)
ult_total <- bind_rows(ult_total, data18)
ult_total <- bind_rows(ult_total, data17)
ult_total <- bind_rows(ult_total, data16)
ult_total <- bind_rows(ult_total, data15)
ult_total <- bind_rows(ult_total, data14)
ult_total <- bind_rows(ult_total, data13)

# Write the total dataframe to a csv file
write_delim(ult_total, "data/TotalDataset.csv", delim= ";")
