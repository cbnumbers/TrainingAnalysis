library(tidyverse)
library(googlesheets)
library(ggplot2)
library(xts)
library(lubridate)

gs_ls()

PrepStats2018 <- gs_title("PrepStats2018")

Phase1 <- gs_read(PrepStats2018, ws = "Phase1Stats")
Phase2 <- gs_read(PrepStats2018, ws = "Phase2Stats")

FullData <- gs_read(PrepStats2018, ws = "FullData") 

FullData <- FullData %>%
  mutate(Day = as.Date(FullData$Day, "%m/%d/%Y"))

ts <- FullData %>%
  xts(order.by = FullData$Day)

lm <- 

ggplot(FullData, aes(x = Day, y = Weight)) +
  geom_point(aes(col = Phase )) +
  geom_smooth(aes(color = Phase))

autoplot(ts, geom = "point")
  
  

Day <- as.Date(Phase1$Day)
timeseries <- xts(x = Phase1, order.by = as.Date(PhasDay)
                  
                  ggplot(aes(x = ))