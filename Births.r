##EPI Vs WorldBank
##Middle
## plot
  FM_model%>%
  ggplot(aes(x = Fertility_rate_total_births_per_woman_ , y = EPI_new)) +
  labs(title = "EPI Vs Fertility rate - Middle income - 2016",
       x = "Fertility rate - Birth per woman", y = "EPI score") +
  geom_point(aes(colour = region.x)) +
    geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
  cor.test(FM_model$Fertility_rate_total_births_per_woman_, FM_model$EPI_new)
  

## Low
## plot
FL_model%>%
  ggplot(aes(x = Fertility_rate_total_births_per_woman_ , y = EPI_new)) +
  labs(title = "EPI Vs Fertility rate - Low income - 2016", x = "Fertility rate - Birth per woman", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
shapiro.test(FL_model$EPI_new)
shapiro.test(FL_model$Fertility_rate_total_births_per_woman_)
cor.test(FL_model$Fertility_rate_total_births_per_woman_, FL_model$EPI_new, method = "pearson")


## High

## plot
FH_model%>%
  ggplot(aes(x = Fertility_rate_total_births_per_woman_ , y = EPI_new)) +
  labs(title = "EPI Vs Fertility rate - High income - 2016", x = "Fertility rate - Birth per woman", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
cor.test(FH_model$Fertility_rate_total_births_per_woman_, FH_model$EPI_new)

## World
## plot
FW_model%>%
  ggplot(aes(x = Fertility_rate_total_births_per_woman_ , y = EPI_new)) +
  labs(title = "EPI Vs Fertility rate - World - 2016", x = "Fertility rate - Birth per woman", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
cor.test(FW_model$Fertility_rate_total_births_per_woman_, FW_model$EPI_new)

