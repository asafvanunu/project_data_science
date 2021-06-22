##EPI Vs WorldBank
##Middle
## plot
FM_model%>%
  ggplot(aes(x = GDP_per_capita_current_US_dollar_  , y = EPI_new)) +
  labs(title = "EPI Vs GDP - Middle income - 2016", x = "GDP - US$ per capita", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")



## statistics
summary(lm(EPI_new ~ GDP_per_capita_current_US_dollar_  , data = FM_model))


## Low
## plot
FL_model%>%
  ggplot(aes(x = GDP_per_capita_current_US_dollar_  , y = EPI_new)) +
  labs(title = "EPI Vs GDP - Low income", x = "GDP - US$ per capita", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ GDP_per_capita_current_US_dollar_  , data = FL_model))


## High


## plot
FH_model%>%
  ggplot(aes(x = GDP_per_capita_current_US_dollar_  , y = EPI_new)) +
  labs(title = "EPI Vs GDP - High income", x = "GDP - US$ per capita", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ GDP_per_capita_current_US_dollar_  , data = FH_model))

## World
## plot
FW_model%>%
  ggplot(aes(x = GDP_per_capita_current_US_dollar_  , y = EPI_new)) +
  labs(title = "EPI Vs GDP - World", x = "GDP - US$ per capita", y = "EPI score") +
  geom_point() + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ GDP_per_capita_current_US_dollar_  , data = FW_model))

