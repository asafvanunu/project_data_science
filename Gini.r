##EPI Vs WorldBank
##Middle

## plot
Middle%>%
  filter(Time == 2016)%>%
  inner_join(EPI_2020, by = c("Country_Name"="country"))%>%
  ggplot(aes(x = Gini_index_World_Bank_estimate_, y = EPI_new)) +
  labs(title = "EPI Vs Gini Index - Middle income", x = "Gini Index", y = "EPI score") +
  geom_point(aes(colour = Country_Name)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ Gini_index_World_Bank_estimate_, data = M_model))


## Low

## plot
Low%>%
  filter(Time == 2016)%>%
  inner_join(EPI_2020, by = c("Country_Name"="country"))%>%
  ggplot(aes(x = Gini_index_World_Bank_estimate_, y = EPI_new)) +
  labs(title = "EPI Vs Gini Index - Low income", x = "Gini Index", y = "EPI score") +
  geom_point(aes(colour = Country_Name)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ Gini_index_World_Bank_estimate_, data = L_model))


## High

## plot
High%>%
  filter(Time == 2016)%>%
  inner_join(EPI_2020, by = c("Country_Name"="country"))%>%
  ggplot(aes(x = Gini_index_World_Bank_estimate_, y = EPI_new)) +
  labs(title = "EPI Vs Gini Index - High income", x = "Gini Index", y = "EPI score") +
  geom_point(aes(colour = Country_Name)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ Gini_index_World_Bank_estimate_, data = H_model))

## World


## plot
World%>%
  filter(Time == 2016)%>%
  inner_join(EPI_2020, by = c("Country_Name"="country"))%>%
  ggplot(aes(x = Gini_index_World_Bank_estimate_, y = EPI_new)) +
  labs(title = "EPI Vs Gini Index - World", x = "Gini Index", y = "EPI score") +
  geom_point() + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ Gini_index_World_Bank_estimate_, data = W_model))

glimpse(Low)
