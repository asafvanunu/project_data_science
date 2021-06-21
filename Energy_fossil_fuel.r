##Middle
FM_model=Middle%>%
  filter(Time == 2016)%>%
  inner_join(EPI_2020, by = c("Country_Name"="country"))%>%
  inner_join(Electricity_from_fossil_fuels, by = c("Country_Name"="name"))


##Low
FL_model=Low%>%
  filter(Time == 2016)%>%
  inner_join(EPI_2020, by = c("Country_Name"="country"))%>%
  inner_join(Electricity_from_fossil_fuels, by = c("Country_Name"="name"))

##High
FH_model=High%>%
  filter(Time == 2016)%>%
  inner_join(EPI_2020, by = c("Country_Name"="country"))%>%
  inner_join(Electricity_from_fossil_fuels, by = c("Country_Name"="name"))

##World
FW_model=World%>%
  filter(Time == 2016)%>%
  inner_join(EPI_2020, by = c("Country_Name"="country"))%>%
  inner_join(Electricity_from_fossil_fuels, by = c("Country_Name"="name"))



##Middle
FM_model%>%
  ggplot(aes(x = value_precent , y = EPI_new)) +
  labs(title = "EPI Vs Energy from fossil fuels - middle income", x = "%", y = "EPI score") +
  geom_point(aes(colour = region)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ value_precent , data = FM_model))

##Low
FL_model%>%
  ggplot(aes(x = value_precent , y = EPI_new)) +
  labs(title = "EPI Vs Energy from fossil fuels - Low income", x = "%", y = "EPI score") +
  geom_point(aes(colour = Country_Name)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ value_precent , data = FL_model))


##High
FH_model%>%
  ggplot(aes(x = value_precent , y = EPI_new)) +
  labs(title = "EPI Vs Energy from fossil fuels - High income", x = "%", y = "EPI score") +
  geom_point(aes(colour = region)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ value_precent , data = FH_model))

## World
FW_model%>%
  ggplot(aes(x = value_precent , y = EPI_new)) +
  labs(title = "EPI Vs Energy from fossil fuels - World", x = "%", y = "EPI score") +
  geom_point(aes(colour = region)) + geom_smooth(method = "lm", se = FALSE, colour = "red")  

## statistics
summary(lm(EPI_new ~ value_precent , data = FW_model))
