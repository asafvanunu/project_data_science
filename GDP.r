##EPI Vs WorldBank
##Middle
## plot
FM_model%>%
  ggplot(aes(x = GDP_per_capita_current_US_dollar_  , y = EPI_new)) +
  labs(title = "EPI Vs GDP - Middle income - 2016", x = "GDP - US$ per capita", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")



## statistics
cor.test(FM_model$GDP_per_capita_current_US_dollar_, FM_model$EPI_new)

## Low
## plot
FL_model%>%
  ggplot(aes(x = GDP_per_capita_current_US_dollar_  , y = EPI_new)) +
  labs(title = "EPI Vs GDP - Low income - 2016", x = "GDP - US$ per capita", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
shapiro.test(FL_model$EPI_new)
shapiro.test(FL_model$GDP_per_capita_current_US_dollar_)
cor.test(FL_model$GDP_per_capita_current_US_dollar_, FL_model$EPI_new, method =  "spearman")


## High


## plot
FH_model%>%
  ggplot(aes(x = GDP_per_capita_current_US_dollar_  , y = EPI_new)) +
  labs(title = "EPI Vs GDP - High income - 2016", x = "GDP - US$ per capita", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
cor.test(FH_model$GDP_per_capita_current_US_dollar_, FH_model$EPI_new)

## World
## plot
FW_model%>%
  ggplot(aes(x = GDP_per_capita_current_US_dollar_  , y = EPI_new)) +
  labs(title = "EPI Vs GDP - World - 2016", x = "GDP - US$ per capita", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
cor.test(FW_model$GDP_per_capita_current_US_dollar_, FW_model$EPI_new)


World%>%
filter(Country_Name == "World" | Country_Name == "High-income" | Country_Name == "Low-income" | Country_Name == "Low-income" | Country_Name == "Lower-middle-income" | Country_Name == "Upper-middle-income")%>%
  filter(Time <= 2017) %>%
  ggplot(mapping = aes(x = Time, y = CO2_emissions_metric_tons_per_capita_,)) +
  labs(title = "CO2 During the years" , x = "Years", y = "CO2 emissions - metric ton per capita") +
  geom_point(aes(colour = Country_Name)) + geom_smooth(aes(colour = Country_Name),se = FALSE)

World%>%
  filter(Country_Name == "World" | Country_Name == "High-income" | Country_Name == "Low-income" | Country_Name == "Low-income" | Country_Name == "Lower-middle-income" | Country_Name == "Upper-middle-income")%>%
  filter(Time <= 2017) %>%
  ggplot(mapping = aes(x = Time, y = GDP_per_capita_current_US_dollar_,)) +
  labs(title = "GDP During the years" , x = "Years", y = "GDP per capita - US$") +
  geom_point(aes(colour = Country_Name)) + geom_smooth(aes(colour = Country_Name),se = FALSE)

