##EPI Vs WorldBank
##Middle
## plot
  FM_model%>%
  ggplot(aes(x = Fertility_rate_total_births_per_woman_ , y = EPI_new)) +
  labs(title = "EPI Vs Fertility rate - Middle income - 2016", x = "Fertility rate - Birth per woman", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ Fertility_rate_total_births_per_woman_ , data = FM_model))


## Low
## plot
FL_model%>%
  ggplot(aes(x = Fertility_rate_total_births_per_woman_ , y = EPI_new)) +
  labs(title = "EPI Vs Fertility rate - Low income - 2016", x = "Fertility rate - Birth per woman", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ Fertility_rate_total_births_per_woman_ , data = FL_model))


## High

## plot
FH_model%>%
  ggplot(aes(x = Fertility_rate_total_births_per_woman_ , y = EPI_new)) +
  labs(title = "EPI Vs Fertility rate - High income - 2016", x = "Fertility rate - Birth per woman", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ Fertility_rate_total_births_per_woman_ , data = FH_model))

## World
## plot
FW_model%>%
  ggplot(aes(x = Fertility_rate_total_births_per_woman_ , y = EPI_new)) +
  labs(title = "EPI Vs Fertility rate - World - 2016", x = "Fertility rate - Birth per woman", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ Fertility_rate_total_births_per_woman_ , data = FW_model))


