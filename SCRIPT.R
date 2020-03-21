library(tidyverse)

train <- read_csv("covid19-local-us-ca-forecasting-week-1/ca_train.csv")

summary(train)

train %>%
  arrange(desc(Date)) %>%
  ggplot(aes(x = Date, y = ConfirmedCases)) +
    geom_point() +
    geom_smooth(lm = "smooth")
