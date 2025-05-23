library(rio) #rio and dplyr packages already installed on personal R studio
library(dplyr) #rio and dplyr package must be installed first using the function install.packages("package_name") if individual has not already
setwd("/Users/lydiapless/Downloads/") #working directory can be modified to individual's own directory path 
getwd()
dengue<- import("dengue_assignment.csv")
(cases2014 <- dengue %>%
  filter(year == 2014) %>%
  summarise(total_dengue_cases = sum(case_number, na.rm = TRUE)))