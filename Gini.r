##EPI Vs WorldBank
##Middle

## plot
FM_model%>%
  ggplot(aes(x = Gini_index_World_Bank_estimate_, y = EPI_new)) +
  labs(title = "EPI Vs Gini Index - Middle income - 2016", x = "Gini Index", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
cor.test(FM_model$Gini_index_World_Bank_estimate_, FM_model$EPI_new)


## Low

## plot
FL_model%>%
  ggplot(aes(x = Gini_index_World_Bank_estimate_, y = EPI_new)) +
  labs(title = "EPI Vs Gini Index - Low income - 2016", x = "Gini Index", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
shapiro.test(FL_model$Gini_index_World_Bank_estimate_)
cor.test(FL_model$Gini_index_World_Bank_estimate_, FL_model$EPI_new, method = "spearman")

## High

## plot
FH_model%>%
  ggplot(aes(x = Gini_index_World_Bank_estimate_, y = EPI_new)) +
  labs(title = "EPI Vs Gini Index - High income - 2016", x = "Gini Index", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
cor.test(FH_model$Gini_index_World_Bank_estimate_, FH_model$EPI_new)
## World


## plot
FW_model%>%
  ggplot(aes(x = Gini_index_World_Bank_estimate_, y = EPI_new)) +
  labs(title = "EPI Vs Gini Index - World - 2016", x = "Gini Index", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
cor.test(FW_model$Gini_index_World_Bank_estimate_, FW_model$EPI_new)

