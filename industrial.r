##Middle
IM_model=Middle%>%
  filter(Time == 2017)%>%
  inner_join(EPI_2020, by = c("Country_Name"="country"))%>%
  inner_join(Industrial_production_growth, by = c("Country_Name"="name"))


##Low
IL_model=Low%>%
  filter(Time == 2017)%>%
  inner_join(EPI_2020, by = c("Country_Name"="country"))%>%
  inner_join(Industrial_production_growth, by = c("Country_Name"="name"))

##High
IH_model=High%>%
  filter(Time == 2017)%>%
  inner_join(EPI_2020, by = c("Country_Name"="country"))%>%
  inner_join(Industrial_production_growth, by = c("Country_Name"="name"))

##World
IW_model=World%>%
  filter(Time == 2017)%>%
  inner_join(EPI_2020, by = c("Country_Name"="country"))%>%
  inner_join(Industrial_production_growth, by = c("Country_Name"="name"))



##Middle
IM_model%>%
  ggplot(aes(x = value_precent , y = EPI_new)) +
  labs(title = "EPI Vs Industrial production growth - middle income", x = "%", y = "EPI score") +
  geom_point(aes(colour = region)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ value_precent , data = IM_model))

##Low
IL_model%>%
  ggplot(aes(x = value_precent , y = EPI_new)) +
  labs(title = "EPI Vs Industrial production growth - Low income", x = "%", y = "EPI score") +
  geom_point(aes(colour = Country_Name, size = region)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ value_precent , data = IL_model))


##High
IH_model%>%
  ggplot(aes(x = value_precent , y = EPI_new)) +
  labs(title = "EPI Vs Industrial production growth - High income", x = "%", y = "EPI score") +
  geom_point(aes(colour = Country_Name, size = region)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ value_precent , data = IH_model))

## World
IW_model%>%
  ggplot(aes(x = value_precent , y = EPI_new)) +
  labs(title = "EPI Vs Industrial production growth - World", x = "%", y = "EPI score") +
  geom_point(aes(colour = region)) + geom_smooth(method = "lm", se = FALSE, colour = "red")  

## statistics
summary(lm(EPI_new ~ value_precent , data = IW_model))
