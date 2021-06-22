
##Middle
FM_model%>%
  ggplot(aes(x = renewable_energy_precent , y = EPI_new)) +
  labs(title = "EPI Vs Renewable energy - middle income", x = "%", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
cor.test(FM_model$renewable_energy_precent, FM_model$EPI_new)

##Low
FL_model%>%
  ggplot(aes(x = renewable_energy_precent , y = EPI_new)) +
  labs(title = "EPI Vs Renewable energy - Low income", x = "%", y = "EPI score") +
  geom_point(aes(colour = Country_Name)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
shapiro.test(FL_model$renewable_energy_precent)
cor.test(FL_model$renewable_energy_precent, FL_model$EPI_new, method = "spearman")

##High
FH_model%>%
  ggplot(aes(x = renewable_energy_precent , y = EPI_new)) +
  labs(title = "EPI Vs Renewable energy - High income", x = "%", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
cor.test(FH_model$renewable_energy_precent, FH_model$EPI_new)
## World
FW_model%>%
  ggplot(aes(x = renewable_energy_precent , y = EPI_new)) +
  labs(title = "EPI Vs Renewable energy - World", x = "%", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")  

## statistics
cor.test(FW_model$renewable_energy_precent, FW_model$EPI_new)
