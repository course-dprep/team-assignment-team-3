# Overturning Roe v. Wade and the impact on the Airbnb market

## Research Question
How does the overturning of Roe v. Wade affect Airbnb's market (precisely price) between the states that still allow abortion and those that do not within the United States?

IV: time quarter (March-June VS June-September)  
DV: price


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

## URL list 
https://docs.google.com/spreadsheets/d/1tOMjx-lflqp-9XC1iGc9tdBIfK-nrOdlsLnFGgLFdVA/edit#gid=0



## 4. Software setup

Download R-packages: dplyr, googlesheets4, ggplot2, ggpubr.
Install GNU make: To install GNU make (both Mac and Windows users) go to this link: "https://tilburgsciencehub.com/building-blocks/configure-your-computer/automation-and-workflows/make/."


## 5. Running instruction 
This repository contains a complete pipeline of downloading data, data exploration, data preparation and analyses. Therefore, as a first step make sure you've cloned the repository onto your own laptop/pc. The complete pipeline is automated using "GNU make". To run this pipeline, you first need to have installed "GNU make" (see Software Setup: install GNU make). After you have done this, you open your Command Prompt (Windows) or Terminal (Mac), move to the folder "roevwade-airbnb" using cd and run "make". The final output can be found in the "output" folder located in the "gen/analysis" folder.


## 7. Research method
To address the aforementioned research question multiple AirBnB datasets, derived from InsideAirbnb, are combined to one big dataset containing data from 31 cities (19 States) in the United States: Los Angeles, Oakland, Pacific Grove, San Diego, San Francisco, San Mateo County, Santa Clara County, Santa Cruz County, Denver, Washington, D.C., Broward County, Hawaii, Chicago, New Orleans, Boston, Cambridge, Twin Cities MSA , Clark County, NV, Newark, Jersey City, New York City, Asheville, Columbus, Portland , Salem, OR, Rhode Island, Nashville, Austin, Dallas, Fort Worth, Seattle .

In total 62 different datasets are combined, each containing information per quarter.
However, the raw dataset contains lots of information, of which many is not needed to address the research question this repository is dedicated to. Therefore the data is cleaned and prepared for analyses. For more information about this read: ____________ (to be added README) 

In order to understand the effect of the over-turning of the Roe v. Wade case on Airbnb market, we exploit the idea that, although some states such as Texas banned abortion following the Supreme Court’s decision,  some other states did not. Specifically, we consider how average price of airbnb fluctuate——subsequent to the decision. 

However, this difference would also include any change in prices that might have occurred even in the absence of the policy intervention. Therefore, we use a difference-in-differences (DID) specification by comparing the price changes in States where abortion is banned (i.e., the treated state) versus those  states where abortion is still legal (the control states). 

In this research the following conceptual model applied:


Detailed definitions of the analyzed variables are listed below.



