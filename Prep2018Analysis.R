library(tidyverse)
library(googlesheets)
library(xts)

gs_ls()

PrepStats2018 <- gs_title("PrepStats2018")

Phase1 <- gs_read(PrepStats2018, ws = "Phase1Stats")
Phase2 <- gs_read(PrepStats2018, ws = "Phase2Stats")

FullData <- Phase1 %>%
  union(Phase2)

Day <- as.Date(Phase1$Day)
timeseries <- xts(x = Phase1, order.by = as.Date(PhasDay)
                  
                  ggplot(aes(x = ))