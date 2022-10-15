# Overturning Roe v. Wade and the impact on the Airbnb market

## Introduction
Welcome to the ''Roe v Wade - Airbnb'' repository. Are you interested in the effects of the overturning of Roe v Wade on the American Airbnb market? Then you're are in the right spot!

It may not be the first thing you think of when talking about this topic, but the changing of abortion laws certainly had its impact on the rental market across the states. 

## Table of contents 
1. Research motivation
2. Setup of the repository
3. Repository overview
4. Software setup
5. Running instrction
6. Research method
7. Conclusion

## 1. Research motivation 
Roe v Wade was a critical case that legalised abortion in all the states of the United States. Unfortunately, though, it did create national controversy and divided the country into two parties: pro-abortion vs pro-life, with this last party getting what it wanted last June. The overturning of Roe v Wade. 

After this decision, states could now again make their own laws about abortion, resulting in abolishment in some states. The impact of this resounding lawsuit was not only limited to national politics but also affected many areas such as finance, social, health and tourism. 

This research will explore and analyse how Roe v Wade impacted the Airbnb market within different states. There will be looked at whether there is a correlation between price and in which state the rental can be booked. Is abortion legal or not? The latest data Airbnb offers will be used. It will be interesting to examine the effects of the lawsuit on Airbnb, as it is not what first comes to mind in the abortion debate. 

**Research Question**
How does the overturning of Roe v. Wade affect Airbnb's market (precisely price) between the states that still allow abortion and those that do not within the United States?

•	IV: time quarter (March-June VS June-September)  
•	DV: price

## URL list 
https://docs.google.com/spreadsheets/d/1tOMjx-lflqp-9XC1iGc9tdBIfK-nrOdlsLnFGgLFdVA/edit#gid=0

## 2. Setup of the repository
image.png

## 3. Repository overview
Several folders and files are located within the main folder "roevwade-airbnb". These are: ".gitignore", "README.md", and the general makefile. After running make, three other folders will be visible in this main folder: data, gen and src.
•	The "data" folder holds the raw data (airbnb_listings.csv) after running make.
•	The "gen" folder consists of two subfolders named "temp" and "output". In the gen/temp, temporary datasets (combined_data.csv, combined_data1.csv, df_grouped.csv) are stored. In gen/output, the final plots (price_boxplot.pdf, plot_price.pdf, plot_price1.pdf) can be found.
•	The "src" folder consists of two subfolders: analysis and data-preparation, and the file "clean-up.R". In src/analysis, the R-script to run the analyses (analyze.R) and the related makefile can be found. In src/data_preparation, the following files can be found: the R-script to download the data from InsideAirbnb (download_data.R), the R-script to clean the data (clean_data.R), and the related makefile. 

## 4. Software setup
•	Download R-packages: dplyr, googlesheets4, ggplot2, ggpubr.
•	Install GNU make: To install GNU make (both Mac and Windows users) go to this link: "https://tilburgsciencehub.com/building-blocks/configure-your-computer/automation-and-workflows/make/."

## 5. Running instruction 
This repository contains a complete pipeline of downloading data, data exploration, data preparation and analyses. Therefore, as a first step make sure you've cloned the repository onto your own laptop/pc. The complete pipeline is automated using "GNU make". To run this pipeline, you first need to have installed "GNU make" (see Software Setup: install GNU make). After you have done this, you open your Command Prompt (Windows) or Terminal (Mac), move to the folder "roevwade-airbnb" using cd and run "make". The final output can be found in the "output" folder located in the "gen" folder.

## 6. Research method
To address the aforementioned research question multiple AirBnB datasets, derived from InsideAirbnb, are combined to one big dataset containing data from 31 cities (19 States) in the United States: Los Angeles, Oakland, Pacific Grove, San Diego, San Francisco, San Mateo County, Santa Clara County, Santa Cruz County, Denver, Washington, D.C., Broward County, Hawaii, Chicago, New Orleans, Boston, Cambridge, Twin Cities MSA , Clark County, NV, Newark, Jersey City, New York City, Asheville, Columbus, Portland , Salem, OR, Rhode Island, Nashville, Austin, Dallas, Fort Worth, Seattle .

In total 62 different datasets are combined, each containing information per quarter.However, the raw dataset contains lots of information, of which many is not needed to address the research question this repository is dedicated to. Therefore the data is cleaned and prepared for analyses. 

In order to understand the effect of the over-turning of the Roe v. Wade case on Airbnb market, we exploit the idea that, although some states such as Texas banned abortion following the Supreme Court’s decision,  some other states did not. Specifically, we consider how average price of airbnb fluctuate subsequent to the decision. 

However, this difference would also include any change in prices that might have occurred even in the absence of the policy intervention. Therefore, we use a difference-in-differences (DID) specification by comparing the price changes in States where abortion is banned (i.e., the treated state) versus those states where abortion is still legal (the control states). 

Detailed definitions of the analyzed variables are listed below.

|Variable                        |Description                                 |
|--------------------------------|--------------------------------------------|
|host_id                         |Airbnb's unique identifier for the host/user|
|price                           |Daily price in local currency               |
|city                            |City that a listing is situated             |
|states                          |State in which a listing is situated        |
|category                        |Whether abortion is legal in that state     |
|time                            |a dummy variable denotes whether the list is before or after overturning Roe v wade|
|number_of_reviews               |Total amount of reviews a listing has       |
|avg_price                       |Average price of the whole states in local currency|


## 7. Conclusion 
Using two level data, we found different results and thus report both results. 

**Using host_id level data**

We fitted a linear model (estimated using OLS) to predict price with category1 (formula: price ~ category1 + time + did). The model explains a statistically significant and very weak proportion of variance (R2 = 1.16e-04, F(3, 541203) = 20.98, p < .001, adj. R2 = 1.11e-04). The model's intercept, corresponding to category1 = 0, is at 284.73 (95% CI [281.31, 288.15], t(541203) = 163.23, p < .001). Within this model:

  - The effect of category1 is statistically significant and negative (beta = -30.94, 95% CI [-39.80, -22.08], t(541203) = -6.84, p < .001; Std. beta = -0.01, 95% CI [-0.02, -9.54e-03])
  - The effect of time is statistically non-significant and negative (beta = -3.01, 95% CI [-7.77, 1.74], t(541203) = -1.24, p = 0.214; Std. beta = -1.83e-03, 95% CI [-4.72e-03, 1.06e-03])
  - The effect of did is statistically significant and positive (beta = 46.73, 95% CI [34.39, 59.06], t(541203) = 7.43, p < .001; Std. beta = 0.02, 95% CI [0.01, 0.02])

Standardized parameters were obtained by fitting the model on a standardized version of the dataset. 95% Confidence Intervals (CIs) and p-values were computed using a Wald t-distribution approximation.


<img width="651" alt="截屏2022-10-15 20 12 08" src="https://user-images.githubusercontent.com/112552239/196001987-f555850f-87fb-4de4-95e2-9a91863ce3f9.png">


**Using aggregated states level data**

We fitted a linear model (estimated using OLS) to predict avg_price with category1 (formula: avg_price ~ category1 + time + did). The model explains a statistically not significant and very weak proportion of variance (R2 = 4.25e-03, F(3, 34) = 0.05, p = 0.986, adj. R2 = -0.08). The model's intercept, corresponding to category1 = 0, is at 252.19 (95% CI [206.84, 297.53], t(34) = 11.30, p < .001). Within this model:

  - The effect of category1 is statistically non-significant and positive (beta = 2.23, 95% CI [-111.89, 116.34], t(34) = 0.04, p = 0.969; Std. beta = 9.59e-03, 95% CI [-0.48, 0.50])
  - The effect of time is statistically non-significant and negative (beta = -2.67, 95% CI [-66.80, 61.46], t(34) = -0.08, p = 0.933; Std. beta = -0.02, 95% CI [-0.39, 0.36])
  - The effect of did is statistically non-significant and positive (beta = 19.04, 95% CI [-142.35, 180.43], t(34) = 0.24, p = 0.812; Std. beta = 0.06, 95% CI [-0.45, 0.58])

Standardized parameters were obtained by fitting the model on a standardized version of the dataset. 95% Confidence Intervals (CIs) and p-values were computed using a Wald t-distribution approximation.


<img width="609" alt="截屏2022-10-15 20 12 15" src="https://user-images.githubusercontent.com/112552239/196001995-8d633c54-0f29-44c6-b4ca-adc76cc81680.png">
