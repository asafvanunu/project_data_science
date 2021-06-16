## try
World_data%>%
  group_by(Country_Name, Year)%>%
  left_join(EPI_2020, by = c("Country_Name"="country"))%>%
  filter(Country_Name == "Israel" | Country_Name == "Brazil" | Country_Name == "Thailand" | Country_Name == "China"| Country_Name == "United-States", Year == 2016)%>%
  ggplot(mapping = aes(x = Gini_index_World_Bank_estimate, y = EPI_new, colour = Country_Name))+ labs(x = "Gini Index", y = "EPI score", title = "Gini Vs EPI - 2016") + geom_point(size = 5)


## try 2
World_data%>%
  group_by(Country_Name, Year)%>%
  left_join(EPI_2020, by = c("Country_Name"="country"))%>%
  filter(Country_Name == "Israel" | Country_Name == "Brazil" | Country_Name == "Thailand" | Country_Name == "China"| Country_Name == "United-States", Year == 2016)%>%
  ggplot(mapping = aes(x = CO2_emissions_metric_tons_per_capita, y = EPI_new, colour = Country_Name))+ labs(x = "CO2 - metric ton per capita", y = "EPI score", title = "CO2 Vs EPI - 2016") + geom_point(size = 5)

## try 3
World_data%>%
  group_by(Country_Name)%>%
  filter(Country_Name == "Low-income" | Country_Name == "Middle-income"|Country_Name == "High-income" )%>%
  ggplot(mapping = aes(x = Year , y = Agricultural_land_precent_of_land_area, colour = Country_Name))+ labs(x = "Year", y = "Agricultural land % of land area", title = "Agricultural land precent") + geom_smooth(se = FALSE)

## try 4
EPI_2020%>%
  select(country, EPI_new)%>%
  full_join(Unemployment_rate, by = c("country"="name"))%>%
  ggplot(mapping = aes(x=value_precent, y=EPI_new)) + labs(x="Unemployment rate %", y = "EPI score", title = "EPI Vs Unemployment") + geom_point() + geom_abline(color = "red")


## Try 5
what=EPI_2020%>%
  select(country, EPI_new)%>%
  full_join(Unemployment_rate, by = c("country"="name"))

summary(lm(what$EPI_new~what$value_precent)) 

