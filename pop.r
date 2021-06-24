##EPI Vs WorldBank
##Middle
## plot
FM_model%>%
  mutate(new_pop = Population_total_/1000000)%>% 
  filter(new_pop <100)%>% 
  ggplot(aes(x = new_pop  , y = EPI_new)) +
  labs(title = "EPI Vs Total population - Middle income - 2016", x = "Total population - Milions", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")


## statistics
cor.test(FM_model$Population_total_, FM_model$EPI_new)


## Low
## plot
FL_model%>%
  mutate(new_pop = Population_total_/1000000)%>% 
  filter(new_pop <500)%>%
  ggplot(aes(x = new_pop  , y = EPI_new)) +
  labs(title = "EPI Vs Total population - Low income - 2016", x = "Total population - Milions", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
shapiro.test(FL_model$Population_total_)
cor.test(FL_model$Population_total_, FL_model$EPI_new, method = "spearman")

## High


## plot
FH_model%>%
  mutate(new_pop = Population_total_/1000000)%>% 
  filter(new_pop <300)%>%
  ggplot(aes(x = new_pop  , y = EPI_new)) +
  labs(title = "EPI Vs Total population - High income - 2016", x = "Total population - Milions", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
cor.test(FH_model$Population_total_, FH_model$EPI_new)

## World
## plot
FW_model%>%
  mutate(new_pop = Population_total_/1000000)%>%
  filter(new_pop<1000)%>%
  ggplot(aes(x = new_pop  , y = EPI_new)) +
  labs(title = "EPI Vs Total population - World", x = "Total population - Milions", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
cor.test(FW_model$Population_total_, FW_model$EPI_new)

