##EPI Vs WorldBank
##Middle
## plot
Middle%>%
  filter(Time == 2016)%>%
  inner_join(EPI_2020, by = c("Country_Name"="country"))%>%
  ggplot(aes(x = CO2_emissions_metric_tons_per_capita_ , y = EPI_new)) +
  labs(title = "EPI Vs CO2 Emission - Middle income", x = "CO2 emission - tons  per capita", y = "EPI score") +
  geom_point(aes(colour = Country_Name)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ CO2_emissions_metric_tons_per_capita_ , data = M_model))


## Low
## plot
Low%>%
  filter(Time == 2016)%>%
  inner_join(EPI_2020, by = c("Country_Name"="country"))%>%
  ggplot(aes(x = CO2_emissions_metric_tons_per_capita_ , y = EPI_new)) +
  labs(title = "EPI Vs CO2 Emission - Low income", x = "CO2 emission - tons  per capita", y = "EPI score") +
  geom_point(aes(colour = Country_Name)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ CO2_emissions_metric_tons_per_capita_ , data = L_model))


## High


## plot
High%>%
  filter(Time == 2016)%>%
  inner_join(EPI_2020, by = c("Country_Name"="country"))%>%
  ggplot(aes(x = CO2_emissions_metric_tons_per_capita_ , y = EPI_new)) +
  labs(title = "EPI Vs CO2 Emission - High income", x = "CO2 emission - tons  per capita", y = "EPI score") +
  geom_point(aes(colour = Country_Name)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ CO2_emissions_metric_tons_per_capita_ , data = H_model))

## World
## plot
World%>%
  filter(Time == 2016)%>%
  inner_join(EPI_2020, by = c("Country_Name"="country"))%>%
  ggplot(aes(x = CO2_emissions_metric_tons_per_capita_ , y = EPI_new)) +
  labs(title = "EPI Vs CO2 Emission - World", x = "CO2 emission - tons  per capita", y = "EPI score") +
  geom_point() + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ CO2_emissions_metric_tons_per_capita_ , data = W_model))

