## lm models

## middle income
summary(lm(EPI_new ~ Fertility_rate_total_births_per_woman_ + 
value_kWh + 
value_precent + 
CO2_emissions_metric_tons_per_capita_ + 
GDP_per_capita_current_US_dollar_ +
Gini_index_World_Bank_estimate_ + 
Population_total_, data = FM_model))

## Low

summary(lm(EPI_new ~ Fertility_rate_total_births_per_woman_ + 
             value_kWh + 
             value_precent + 
             CO2_emissions_metric_tons_per_capita_ + 
             GDP_per_capita_current_US_dollar_ + 
             Population_total_, data = FL_model))

## High

summary(lm(EPI_new ~ Fertility_rate_total_births_per_woman_ + 
             value_kWh + 
             value_precent + 
             CO2_emissions_metric_tons_per_capita_ + 
             GDP_per_capita_current_US_dollar_ +
             Gini_index_World_Bank_estimate_ + 
             Population_total_, data = FH_model))

## World
summary(lm(EPI_new ~ Fertility_rate_total_births_per_woman_ + 
             value_kWh + 
             value_precent + 
             CO2_emissions_metric_tons_per_capita_ + 
             GDP_per_capita_current_US_dollar_ +
             Gini_index_World_Bank_estimate_ + 
             Population_total_, data = FW_model))




