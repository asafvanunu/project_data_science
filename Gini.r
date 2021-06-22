##EPI Vs WorldBank
##Middle

## plot
FM_model%>%
  ggplot(aes(x = Gini_index_World_Bank_estimate_, y = EPI_new)) +
  labs(title = "EPI Vs Gini Index - Middle income - 2016", x = "Gini Index", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ Gini_index_World_Bank_estimate_, data = FM_model))


## Low

## plot
FL_model%>%
  ggplot(aes(x = Gini_index_World_Bank_estimate_, y = EPI_new)) +
  labs(title = "EPI Vs Gini Index - Low income - 2016", x = "Gini Index", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ Gini_index_World_Bank_estimate_, data = FL_model))


## High

## plot
FH_model%>%
  ggplot(aes(x = Gini_index_World_Bank_estimate_, y = EPI_new)) +
  labs(title = "EPI Vs Gini Index - High income", x = "Gini Index", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ Gini_index_World_Bank_estimate_, data = FH_model))

## World


## plot
FW_model%>%
  ggplot(aes(x = Gini_index_World_Bank_estimate_, y = EPI_new)) +
  labs(title = "EPI Vs Gini Index - World", x = "Gini Index", y = "EPI score") +
  geom_point(aes(colour = region.x)) + geom_smooth(method = "lm", se = FALSE, colour = "red")

## statistics
summary(lm(EPI_new ~ Gini_index_World_Bank_estimate_, data = FW_model))


