##EPI Vs WorldBank
##Middle
## plot
Middle%>%
  filter(Time == 2016)%>%
  inner_join(EPI_2020, by = c("Country_Name"="country"))%>%
  ggplot(aes(x = Fertility_rate_total_births_per_woman_ , y = EPI_new)) +
  labs(title = "EPI Vs Fertility rate - Middle income", x = "Fertility rate - Birth per woman", y = "EPI score") +
  geom_point(aes(colour = Country_Name)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ Fertility_rate_total_births_per_woman_ , data = M_model))


## Low
## plot
Low%>%
  filter(Time == 2016)%>%
  inner_join(EPI_2020, by = c("Country_Name"="country"))%>%
  ggplot(aes(x = Fertility_rate_total_births_per_woman_ , y = EPI_new)) +
  labs(title = "EPI Vs Fertility rate - Low income", x = "Fertility rate - Birth per woman", y = "EPI score") +
  geom_point(aes(colour = Country_Name)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ Fertility_rate_total_births_per_woman_ , data = L_model))


## High


## plot
High%>%
  filter(Time == 2016)%>%
  inner_join(EPI_2020, by = c("Country_Name"="country"))%>%
  ggplot(aes(x = Fertility_rate_total_births_per_woman_ , y = EPI_new)) +
  labs(title = "EPI Vs Fertility rate - High income", x = "Fertility rate - Birth per woman", y = "EPI score") +
  geom_point(aes(colour = Country_Name)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ Fertility_rate_total_births_per_woman_ , data = H_model))

## World
## plot
World%>%
  filter(Time == 2016)%>%
  inner_join(EPI_2020, by = c("Country_Name"="country"))%>%
  ggplot(aes(x = Fertility_rate_total_births_per_woman_ , y = EPI_new)) +
  labs(title = "EPI Vs Fertility rate - World", x = "Fertility rate - Birth per woman", y = "EPI score") +
  geom_point() + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ Fertility_rate_total_births_per_woman_ , data = W_model))

glimpse(Low)
