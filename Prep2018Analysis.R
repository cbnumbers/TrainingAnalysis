library(tidyverse)
library(googlesheets)
library(ggplot2)
library(xts)
library(lubridate)
library(grid)

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
  geom_smooth(aes(color = Phase)) +
  labs(title = "Weight by Date", x= "Date", y = "Weight(lbs)")

AvgWeightPlot <- FullData %>%
  group_by(Phase, Week, AvgWeeklyCal, WeeklyAvgWeight) %>%
  summarise()%>%
  ggplot(aes(x = Week, y = WeeklyAvgWeight)) +
  geom_point(aes(col = Phase )) +
  geom_smooth() +
  labs(title = "Avg Weight by Week", x= "Week", y = "Avg Weekly Weight(lbs)")

AvgCalsPlot <- FullData %>%
  group_by(Phase, Week, AvgWeeklyCal, WeeklyAvgWeight) %>%
  summarise()%>%
  ggplot(aes(x = Week, y = AvgWeeklyCal)) +
  geom_point(aes(col = Phase )) +
  geom_smooth() +
  labs(title = "Avg Cals by Week", x= "Week", y = "Avg Weekly Cals(kcals)")

grid.newpage()
grid.draw(rbind(ggplotGrob(AvgWeightPlot), ggplotGrob(AvgCalsPlot), size = "last"))

autoplot(ts, geom = "point")
  
  

Day <- as.Date(Phase1$Day)
timeseries <- xts(x = Phase1, order.by = as.Date(PhasDay)
                  