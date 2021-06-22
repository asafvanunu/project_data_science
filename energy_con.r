

##Middle
FM_model%>%
  filter(value_kWh<1e+11)%>%
  ggplot(aes(x = value_kWh , y = EPI_new)) +
  labs(title = "EPI Vs Electricity consumption - middle income - 2016", x = "kWh", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
cor.test(FM_model$value_kWh, FM_model$EPI_new)
##Low
FL_model%>%
  ggplot(aes(x = value_kWh , y = EPI_new)) +
  labs(title = "EPI Vs Electricity consumption - Low income - 2016", x = "kWh", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
shapiro.test(FL_model$EPI_new)
shapiro.test(FL_model$value_kWh)
cor.test(FL_model$value_kWh, FL_model$EPI_new, method = "spearman")

##High
FH_model%>%
  filter(value_kWh<1e+11)%>%
  ggplot(aes(x = value_kWh , y = EPI_new)) +
  labs(title = "EPI Vs Electricity consumption - High income - 2016", x = "kWh", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
cor.test(FH_model$value_kWh, FH_model$EPI_new)
## World
FW_model%>%
  filter(value_kWh<1e+11)%>%
  ggplot(aes(x = value_kWh , y = EPI_new)) +
  labs(title = "EPI Vs Electricity consumption - World - 2016", x = "kWh", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")  
  
## statistics
cor.test(FW_model$value_kWh, FW_model$EPI_new)
