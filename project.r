## Load library
library(tidyverse)

## Read CSV files
Electricity_consumption = read.csv("Electricity_consumption.csv")
Electricity_from_fossil_fuels = read.csv("Electricity_from_fossil_fuels.csv")
EPI_2020 = read.csv("EPI_2020.csv")
World = read.csv("World.csv")
High = read.csv("High_income.csv")
Low = read.csv("Low_income.csv")
Middle = read.csv("Middle_income.csv")


## change data to tibble
Electricity_consumption = as.tibble(Electricity_consumption)
Electricity_from_fossil_fuels = as.tibble(Electricity_from_fossil_fuels)
EPI_2020 = as.tibble(EPI_2020)
World = as.tibble(World)
High = as.tibble(High)
Low = as.tibble(Low)
Middle = as.tibble(Middle)

## Fixing World name
World = World%>%
rename(Country_Name = ן..Country_Name)%>%
select(Country_Name, Time, CO2_emissions_metric_tons_per_capita_, 
GDP_per_capita_current_US_dollar_, Gini_index_World_Bank_estimate_,
Population_total_, Fertility_rate_total_births_per_woman_)

## Fixing High name
High = High%>%
  rename(Country_Name = ן..Country_Name)%>%
  select(Country_Name, Time, CO2_emissions_metric_tons_per_capita_, 
         GDP_per_capita_current_US_dollar_, Gini_index_World_Bank_estimate_,
         Population_total_, Fertility_rate_total_births_per_woman_)

## Fixing Low name
Low = Low%>%
  rename(Country_Name = ן..Country_Name)%>%
  select(Country_Name, Time, CO2_emissions_metric_tons_per_capita_, 
         GDP_per_capita_current_US_dollar_, Gini_index_World_Bank_estimate_,
         Population_total_, Fertility_rate_total_births_per_woman_)

## Fixing Middle name
Middle = Middle%>%
  rename(Country_Name = ן..Country_Name)%>%
  select(Country_Name, Time, CO2_emissions_metric_tons_per_capita_, 
         GDP_per_capita_current_US_dollar_, Gini_index_World_Bank_estimate_,
         Population_total_, Fertility_rate_total_births_per_woman_)

## reselecting EPI_2020
EPI_2020 = EPI_2020%>%
  select(country, EPI_new)

## Join EPI and World Bank and CIA - year 2016
## Models for graph

##Middle
FM_model=Middle%>%
  filter(Time == 2016)%>%
  left_join(EPI_2020, by = c("Country_Name"="country"))%>%
  left_join(Electricity_from_fossil_fuels, by = c("Country_Name"="name"))%>%
  left_join(Electricity_consumption, by = c("Country_Name"="name"))%>%
  mutate(renewable_energy_precent = 100-value_precent)

##Low
FL_model=Low%>%
  filter(Time == 2016)%>%
  left_join(EPI_2020, by = c("Country_Name"="country"))%>%
  left_join(Electricity_from_fossil_fuels, by = c("Country_Name"="name"))%>%
  left_join(Electricity_consumption, by = c("Country_Name"="name"))%>%
  mutate(renewable_energy_precent = 100-value_precent)

##High
FH_model=High%>%
  filter(Time == 2016)%>%
  left_join(EPI_2020, by = c("Country_Name"="country"))%>%
  left_join(Electricity_from_fossil_fuels, by = c("Country_Name"="name"))%>%
  left_join(Electricity_consumption, by = c("Country_Name"="name"))%>%
  mutate(renewable_energy_precent = 100-value_precent)
##World
FW_model=World%>%
  filter(Time == 2016)%>%
  left_join(EPI_2020, by = c("Country_Name"="country"))%>%
  left_join(Electricity_from_fossil_fuels, by = c("Country_Name"="name"))%>%
  left_join(Electricity_consumption, by = c("Country_Name"="name"))%>%
  mutate(renewable_energy_precent = 100-value_precent)






