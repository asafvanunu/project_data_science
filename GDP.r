##EPI Vs WorldBank
##Middle
## plot
FM_model%>%
  ggplot(aes(x = GDP_per_capita_current_US_dollar_  , y = EPI_new)) +
  labs(title = "EPI Vs GDP - Middle income - 2016", x = "GDP - US$ per capita", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")



## statistics
cor.test(FM_model$GDP_per_capita_current_US_dollar_, FM_model$EPI_new)

## Low
## plot
FL_model%>%
  ggplot(aes(x = GDP_per_capita_current_US_dollar_  , y = EPI_new)) +
  labs(title = "EPI Vs GDP - Low income", x = "GDP - US$ per capita", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
shapiro.test(FL_model$EPI_new)
shapiro.test(FL_model$GDP_per_capita_current_US_dollar_)
cor.test(FL_model$GDP_per_capita_current_US_dollar_, FL_model$EPI_new, method =  "spearman")


## High


## plot
FH_model%>%
  ggplot(aes(x = GDP_per_capita_current_US_dollar_  , y = EPI_new)) +
  labs(title = "EPI Vs GDP - High income", x = "GDP - US$ per capita", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
cor.test(FH_model$GDP_per_capita_current_US_dollar_, FH_model$EPI_new)

## World
## plot
FW_model%>%
  ggplot(aes(x = GDP_per_capita_current_US_dollar_  , y = EPI_new)) +
  labs(title = "EPI Vs GDP - World", x = "GDP - US$ per capita", y = "EPI score") +
  geom_point() + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
cor.test(FW_model$GDP_per_capita_current_US_dollar_, FW_model$EPI_new)

