World_data%>%
  filter(Year==2016)%>%
inner_join(Electricity_from_fossil_fuels,
by = c("Country_Name"="name"),c("Year"="date_of_information"))%>%
select(Country_Name, GDP_per_capita_current_US_dollar, Year, value_precent,date_of_information)%>%
  ggplot(mapping = aes(x = GDP_per_capita_current_US_dollar, y = value_precent, colour = Country_Name))+geom_point()

