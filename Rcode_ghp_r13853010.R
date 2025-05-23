library(rio)
library(dplyr)
setwd("/Users/lydiapless/Downloads/") #working directory can be modified to individual's own directory path 
getwd()
dengue<- import("dengue_assignment.csv")
(cases2014 <- dengue %>%
  filter(year == 2014) %>%
  summarise(total_dengue_cases = sum(case_number, na.rm = TRUE)))