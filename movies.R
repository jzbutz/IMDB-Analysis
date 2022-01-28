#Jonathan Butz INST 314 Project #3 last revised 11 DEC, 2021

#read IMDB data, place into data
data <- read.csv(file.choose(), header=T)

#create multiple variable histogram correlation chart using performance analytics and our variables
#imdb_score, num_critic_for_reviews, _cast_total_facebook_likes, budget, duration
library(PerformanceAnalytics)
chart.Correlation(subset(data, select=c(imdb_score, num_critic_for_reviews, cast_total_facebook_likes, budget, duration), histogram=TRUE, pch="+"))

#create multiple linear regression model, check it's info, check VIF for multicollinearity.
lm.data <- lm(imdb_score ~ num_critic_for_reviews + cast_total_facebook_likes + budget + duration, data = data)
summary(lm.data)
round(vif(lm.data),3)
mean(vif(lm.data))

#subset data into our IV's and DV's into a new data frame for future use.
data2 = subset(data, select = c(num_critic_for_reviews, duration, budget, imdb_score, cast_total_facebook_likes))

#list summary statistics and standard deviation for PQ charts.
summary(data$num_critic_for_reviews)
summary(data$cast_total_facebook_likes)
summary(data$budget)
summary(data$duration)
summary(data$imdb_score)
sd(data$cast_total_facebook_likes)
sd(data$budget, na.rm=TRUE)
sd(data$duration, na.rm=TRUE)
sd(data$imdb_score, na.rm=TRUE)
sd(data$num_critic_for_reviews, na.rm=TRUE)

#load stargazer and report regression model via html
library(stargazer)
stargazer(lm.data, title="Review Score Multiple Linear Regression Model", type="html", align=TRUE)
plot(data$num_critic_for_reviews, data$imdb_score, data$cast_total_facebook_likes, data$budget, data$duration, xlab = "IMDB Score", ylab = "Number of Critics", main = "Number of Critics compared to IMDB Scores")

# load power and run power test to find out power.
library(pwr)
pwr.f2.test(u=4, 4993, 0.8103, sig.level=0.001, power=NULL)

