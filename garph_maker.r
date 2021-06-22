##EPI Vs WorldBank
##Middle
## plot
FM_model%>%
  ggplot(aes(x = CO2_emissions_metric_tons_per_capita_ , y = EPI_new)) +
  labs(title = "EPI Vs CO2 Emission - Middle income - 2016", x = "CO2 emission - tons  per capita", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
cor.test(FM_model$CO2_emissions_metric_tons_per_capita_, FM_model$EPI_new)


## Low
## plot
FL_model%>%
  ggplot(aes(x = CO2_emissions_metric_tons_per_capita_ , y = EPI_new)) +
  labs(title = "EPI Vs CO2 Emission - Low income - 2016", x = "CO2 emission - tons  per capita", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
shapiro.test(FL_model$EPI_new)
shapiro.test(FL_model$CO2_emissions_metric_tons_per_capita_)
cor.test(FL_model$CO2_emissions_metric_tons_per_capita_, FL_model$EPI_new, method = "spearman")


## High


## plot
FH_model%>%
  ggplot(aes(x = CO2_emissions_metric_tons_per_capita_ , y = EPI_new)) +
  labs(title = "EPI Vs CO2 Emission - High income - 2016", x = "CO2 emission - tons  per capita", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
cor.test(FH_model$CO2_emissions_metric_tons_per_capita_, FH_model$EPI_new)

## World
## plot
FW_model%>%
  ggplot(aes(x = CO2_emissions_metric_tons_per_capita_ , y = EPI_new)) +
  labs(title = "EPI Vs CO2 Emission - World - 2016", x = "CO2 emission - tons  per capita", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
cor.test(FW_model$CO2_emissions_metric_tons_per_capita_, FW_model$EPI_new)

