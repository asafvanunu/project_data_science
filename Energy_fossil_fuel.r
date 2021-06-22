
##Middle
FM_model%>%
  ggplot(aes(x = value_precent , y = EPI_new)) +
  labs(title = "EPI Vs Energy from fossil fuels - middle income - 2016", x = "%", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
cor.test(FM_model$value_precent, FM_model$EPI_new)
##Low
FL_model%>%
  ggplot(aes(x = value_precent , y = EPI_new)) +
  labs(title = "EPI Vs Energy from fossil fuels - Low income - 2016", x = "%", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
shapiro.test(FL_model$EPI_new)
shapiro.test(FL_model$value_precent)
cor.test(FL_model$value_precent, FL_model$EPI_new, method = "spearman")

##High
FH_model%>%
  ggplot(aes(x = value_precent , y = EPI_new)) +
  labs(title = "EPI Vs Energy from fossil fuels - High income - 2016", x = "%", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
cor.test(FH_model$value_precent, FH_model$EPI_new)
## World
FW_model%>%
  ggplot(aes(x = value_precent , y = EPI_new)) +
  labs(title = "EPI Vs Energy from fossil fuels - World - 2016", x = "%", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")  

## statistics
cor.test(FW_model$value_precent, FW_model$EPI_new)


