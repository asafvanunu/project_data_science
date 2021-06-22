##EPI Vs WorldBank
##Middle
## plot
FM_model%>%
  ggplot(aes(x = CO2_emissions_metric_tons_per_capita_ , y = EPI_new)) +
  labs(title = "EPI Vs CO2 Emission - Middle income - 2016", x = "CO2 emission - tons  per capita", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ CO2_emissions_metric_tons_per_capita_ , data = FM_model))


## Low
## plot
FL_model%>%
  ggplot(aes(x = CO2_emissions_metric_tons_per_capita_ , y = EPI_new)) +
  labs(title = "EPI Vs CO2 Emission - Low income - 2016", x = "CO2 emission - tons  per capita", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ CO2_emissions_metric_tons_per_capita_ , data = FL_model))


## High


## plot
FH_model%>%
  ggplot(aes(x = CO2_emissions_metric_tons_per_capita_ , y = EPI_new)) +
  labs(title = "EPI Vs CO2 Emission - High income - 2016", x = "CO2 emission - tons  per capita", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ CO2_emissions_metric_tons_per_capita_ , data = FH_model))

## World
## plot
FW_model%>%
  ggplot(aes(x = CO2_emissions_metric_tons_per_capita_ , y = EPI_new)) +
  labs(title = "EPI Vs CO2 Emission - World - 2016", x = "CO2 emission - tons  per capita", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ CO2_emissions_metric_tons_per_capita_ , data = FW_model))

