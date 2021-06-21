##Middle
EM_model=Middle%>%
  filter(Time == 2016)%>%
  inner_join(EPI_2020, by = c("Country_Name"="country"))%>%
  inner_join(Electricity_consumption, by = c("Country_Name"="name"))

##Low
EL_model=Low%>%
  filter(Time == 2016)%>%
  inner_join(EPI_2020, by = c("Country_Name"="country"))%>%
  inner_join(Electricity_consumption, by = c("Country_Name"="name"))

##High
EH_model=High%>%
  filter(Time == 2016)%>%
  inner_join(EPI_2020, by = c("Country_Name"="country"))%>%
  inner_join(Electricity_consumption, by = c("Country_Name"="name"))

##World
EW_model=World%>%
  filter(Time == 2016)%>%
  inner_join(EPI_2020, by = c("Country_Name"="country"))%>%
  inner_join(Electricity_consumption, by = c("Country_Name"="name"))
  


##Middle
EM_model%>%
  filter(value_kWh<1e+11)%>%
  ggplot(aes(x = value_kWh , y = EPI_new)) +
  labs(title = "EPI Vs Electricity consumption - middle income", x = "kWh", y = "EPI score") +
  geom_point(aes(colour = region)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ value_kWh , data = EM_model))

##Low
EL_model%>%
  ggplot(aes(x = value_kWh , y = EPI_new)) +
  labs(title = "EPI Vs Electricity consumption - Low income", x = "kWh", y = "EPI score") +
  geom_point(aes(colour = Country_Name, size = region)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ value_kWh , data = EL_model))


##High
EH_model%>%
  filter(value_kWh<1e+11)%>%
  ggplot(aes(x = value_kWh , y = EPI_new)) +
  labs(title = "EPI Vs Electricity consumption - High income", x = "kWh", y = "EPI score") +
  geom_point(aes(colour = Country_Name, size = region)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ value_kWh , data = EH_model))

## World
EW_model%>%
  filter(value_kWh<1e+11)%>%
  ggplot(aes(x = value_kWh , y = EPI_new)) +
  labs(title = "EPI Vs Electricity consumption - World", x = "kWh", y = "EPI score") +
  geom_point(aes(colour = region)) + geom_smooth(method = "lm", se = FALSE, colour = "red")  
  
## statistics
summary(lm(EPI_new ~ value_kWh , data = EW_model))
