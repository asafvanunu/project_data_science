
##Middle
FM_model%>%
  ggplot(aes(x = value_precent , y = EPI_new)) +
  labs(title = "EPI Vs Energy from fossil fuels - middle income - 2016", x = "%", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ value_precent , data = FM_model))

##Low
FL_model%>%
  ggplot(aes(x = value_precent , y = EPI_new)) +
  labs(title = "EPI Vs Energy from fossil fuels - Low income - 2016", x = "%", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ value_precent , data = FL_model))


##High
FH_model%>%
  ggplot(aes(x = value_precent , y = EPI_new)) +
  labs(title = "EPI Vs Energy from fossil fuels - High income - 2016", x = "%", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ value_precent , data = FH_model))

## World
FW_model%>%
  ggplot(aes(x = value_precent , y = EPI_new)) +
  labs(title = "EPI Vs Energy from fossil fuels - World - 2016", x = "%", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")  

## statistics
summary(lm(EPI_new ~ value_precent , data = FW_model))
