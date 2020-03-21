library(tidyverse)

train <- read_csv("covid19-local-us-ca-forecasting-week-1/ca_train.csv")

summary(train)

train %>%
  arrange(desc(Lat)) %>%
  ggplot(aes(x = Date, y = ConfirmedCases, color = Fatalities)) +
    geom_point() +
    geom_smooth(span = 0.3)
    # geom_smooth(method = lm, se = FALSE)
    # geom_smooth(method = lm, formula = y ~ splines::bs(x, 3), se = FALSE)
