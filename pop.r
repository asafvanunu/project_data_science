##EPI Vs WorldBank
##Middle
## plot
FM_model%>%
  mutate(new_pop = Population_total_/1000000)%>% 
  filter(new_pop <500)%>% 
  ggplot(aes(x = new_pop  , y = EPI_new)) +
  labs(title = "EPI Vs Total population - Middle income - 2016", x = "Total population - Milions", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")


## statistics
summary(lm(EPI_new ~ Population_total_  , data = FM_model))


## Low
## plot
FL_model%>%
  mutate(new_pop = Population_total_/1000000)%>% 
  filter(new_pop <500)%>%
  ggplot(aes(x = new_pop  , y = EPI_new)) +
  labs(title = "EPI Vs Total population - Low income - 2016", x = "Total population - Milions", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ Population_total_  , data = FL_model))


## High


## plot
FH_model%>%
  mutate(new_pop = Population_total_/1000000)%>% 
  filter(new_pop <500)%>%
  ggplot(aes(x = new_pop  , y = EPI_new)) +
  labs(title = "EPI Vs Total population - High income - 2016", x = "Total population - Milions", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ Population_total_  , data = FH_model))

## World
## plot
FW_model%>%
  mutate(new_pop = Population_total_/1000000)%>% 
  ggplot(aes(x = new_pop  , y = EPI_new)) +
  labs(title = "EPI Vs Total population - World", x = "Total population - Milions", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ Population_total_  , data = FW_model))

