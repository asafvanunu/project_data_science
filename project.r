## Load library
library(tidyverse)

## Read CSV files
Budget = read.csv("Budget_plus.csv")
Electricity_consumption = read.csv("Electricity_consumption.csv")
Electricity_from_fossil_fuels = read.csv("Electricity_from_fossil_fuels.csv")
Electricity_production = read.csv("Electricity_production.csv")
EPI_2020 = read.csv("EPI_2020.csv")
Exports = read.csv("exports.csv")
Industrial_production_growth = read.csv("Industrial_production_growth_rate.csv")
Labor_force = read.csv("Labor_force.csv")
Revenue_from_coal = read.csv("Revenue_from_coal.csv")
Revenue_from_forest_resources = read.csv("Revenue_from_forest_resources.csv")
Unemployment_rate = read.csv("Unemployment_rate.csv")
World = read.csv("World.csv")
High = read.csv("High_income.csv")
Low = read.csv("Low_income.csv")
Middle = read.csv("Middle_income.csv")


## change data to tibble
Budget = as.tibble(Budget)
Electricity_consumption = as.tibble(Electricity_consumption)
Electricity_from_fossil_fuels = as.tibble(Electricity_from_fossil_fuels)
Electricity_production = as.tibble(Electricity_production)
EPI_2020 = as.tibble(EPI_2020)
Exports = as.tibble(Exports)
Industrial_production_growth = as.tibble(Industrial_production_growth)
Labor_force = as.tibble(Labor_force)
Revenue_from_coal = as.tibble(Revenue_from_coal)
Revenue_from_forest_resources = as.tibble(Revenue_from_forest_resources)
Unemployment_rate = as.tibble(Unemployment_rate)
World = as.tibble(World)
High = as.tibble(High)
Low = as.tibble(Low)
Middle = as.tibble(Middle)

## Fixing World name
World = World%>%
rename(Country_Name = ן..Country_Name)

## Fixing High name
High = High%>%
  rename(Country_Name = ן..Country_Name)

## Fixing Low name
Low = Low%>%
  rename(Country_Name = ן..Country_Name)

## Fixing Middle name
Middle = Middle%>%
  rename(Country_Name = ן..Country_Name)

## Join EPI and World Bank - year 2016

##middle

M_model=Middle%>%
  filter(Time == 2016)%>%
  inner_join(EPI_2020, by = c("Country_Name"="country"))

##Low
L_model=Low%>%
  filter(Time == 2016)%>%
  inner_join(EPI_2020, by = c("Country_Name"="country"))

##High
H_model=High%>%
  filter(Time == 2016)%>%
  inner_join(EPI_2020, by = c("Country_Name"="country"))

##World
W_model=World%>%
  filter(Time == 2016)%>%
  inner_join(EPI_2020, by = c("Country_Name"="country"))