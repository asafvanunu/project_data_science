

##Middle
FM_model%>%
  filter(value_kWh<1e+11)%>%
  ggplot(aes(x = value_kWh , y = EPI_new)) +
  labs(title = "EPI Vs Electricity consumption - middle income - 2016", x = "kWh", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ value_kWh , data = FM_model))

##Low
FL_model%>%
  ggplot(aes(x = value_kWh , y = EPI_new)) +
  labs(title = "EPI Vs Electricity consumption - Low income - 2016", x = "kWh", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ value_kWh , data = FL_model))


##High
FH_model%>%
  filter(value_kWh<1e+11)%>%
  ggplot(aes(x = value_kWh , y = EPI_new)) +
  labs(title = "EPI Vs Electricity consumption - High income - 2016", x = "kWh", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ value_kWh , data = FH_model))

## World
FW_model%>%
  filter(value_kWh<1e+11)%>%
  ggplot(aes(x = value_kWh , y = EPI_new)) +
  labs(title = "EPI Vs Electricity consumption - World - 2016", x = "kWh", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")  
  
## statistics
summary(lm(EPI_new ~ value_kWh , data = FW_model))
