lapply(c("rio","dplyr","tidyr"), 
       library, character.only=T)
setwd("/Users/lydiapless/Downloads/")
getwd()
dengue<- import("dengue_assignment.csv")
(cases2014<- dengue %>%
  filter(year == 2014) %>%
  summarise(total_dengue_cases = sum(case_number, na.rm = TRUE)))