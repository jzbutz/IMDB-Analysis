# IMDB Analysis
 Statistical Analysis for 5000 Sample Metadata Dataset

Impact analysis for IMDB scores

The purpose of this analysis is to determine what, if any, variables have a statistically significant relationship with IMDB score and to define that relationship.

The dataset I will be using is an IMDB 5000 movie metadata dataset. 

https://www.kaggle.com/carolzhangdc/imdb-5000-movie-dataset

Our null hypothesis (H0) is that the number of critics, Facebook likes, budget, and duration does not have an effect on IMDB score. Our alternative hypothesis (Ha) is that the number of critics, Facebook likes, budget, and duration does have an effect on IMDB score. I have found that only number of critical reviews and duration have a statistically significant effect on IMDB scores.

Our dataset is missing 50 values out of 5043, our analysis should not be affected. Our independent variables are number of critical reviews, Facebook likes, budget, and film duration. Our dependent variable is IMDB score. Descriptions of the variables are as follows:

•	The number of critical reviews is a measure of the count of film reviews. 

•	The Facebook likes are the number of Facebook likes a cast member has obtained through their Facebook social media presence.

•	The budget is the money spent producing a film. 

•	The film duration is the length of a film in minutes. 

•	The IMDB score is a review score measurement, used to determine the quality of a film. 

<h1 align="center">Table 1: Summary Statistics</h1>

| Variable 	        | n | min | max | median | mean | std |
| --- 	                | - | --- | --- | ---    | ---  | --- |
| Number of Critics     | :4993: | :1: | :813: | :110: | :140.2: | :121.6: |
| IMDB Score 		| :4993:     | :1.6: | :9.5: | :6.6: | :6.442: | :1.125: |
| Facebook Likes        | :4993: | :0: | :656730: | :3090: | :9699: | :18163.8: |
| Budget 	        | :4993: | :$218.00: | :$12,220,000,000.00: | :$20,000,000.00: | :$39,750,000.00: | :$206,114,898.00: |
| Duration (in minutes) | :4993: | :7: | :511: | :103: | :107.2: | :25.19744: |


We have not violated any assumptions (see regression diagnostics at the bottom of the page) and may proceed with our multiple linear regression. We will use an alpha of 0.01. Our regression model is:

(DV) ̂  = 6.046250 + 0.002 * IV1 + 0 * IV2 + 0 * IV3 + 0.014 * IV4 where DV = IMDB score and IV1 = number of critics, IV2 = Facebook likes, IV3 = budget, and IV4 = duration.

Review Score Multiple Linear Regression Model

	Dependent variable:
	
	IMDB Score

Number of Critics	0.002***
	(0.0001)
	
Facebook Likes	-0.00000
	(0.00000)
	
Budget	-0.000*
	(0.000)
	
Duration	0.014***
	(0.001)
	
Constant	4.564***
	(0.072)
	

Observations	4,517
R2	0.190
Adjusted R2	0.189
Residual Std. Error	1.002 (df = 4512)
F Statistic	264.103*** (df = 4; 4512)

Note:	*p<0.1; **p<0.05; ***p<0.01

From our findings, we can determine that our model is statistically significant (p-value: < 2.2e-16) and reliable (VIF = 1.075) however not all of our IV’s had a statistically significant relationship with IMDB score. Both budget and Facebook likes were not statistically significant (p-value: 0.8453 & 0.0973, respectively) and did not have a strong correlation (0.086 & 0.031, respectively).






We cannot reject our null hypothesis at a 0.01 significance level. Not all of our independent variables had an effect on review score. We can say that both the number of critics and the length of the film have a weak but positive relationship with IMDB score (r = .31, r =  0.26).

As our number of critics increases, the review score goes up. For every 100 critics the review score goes up by .2. As film length increases, the review score also goes up. For every 100 additional minutes, the review score increases by 1.4. Both increases in budget and number of Facebook likes have no or an insignificant effect on review scores. Our model does not explain much of the variation in our IMDB scores (R2 = .1897).


Regression Diagnostics
 
 
 
 
