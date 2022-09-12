# Overturning Roe v. Wade and Airbnb market

## Research Question
How overturning Roe v. Wade differently affect Airbnb’s market (specifically price and number of listing per host) between states that still allow abortion and states that did not in the U.S.? 

IV: time quarter (March-June VS June-September)  
DV: price, number of listing per host

Control variables: To be discussed
Dataset scope: To be discussed

## Research motivation 
Roe v Wade is an important case that legalized abortion in the US and created national controversy by dividing the country into two. With this lawsuit, abortion was legalized in all states of the USA because it was a constitutional right for women. However, after this decision, the conservative-leaning court made it easier for states to make their own decisions, and it was outlawed again in some states. The impact of such a resounding lawsuit was not limited to national politics but had effects in many areas such as financial, social, health and tourism. 

This research will explore and analyze how Roe v Wade impacted the Airbnb market within different states. It will be studied whether there is a correlation between the variables such as prices and reviews of hosts between states where abortion is legal and not. The latest data Airbnb offers will be used.  It will be interesting to examine the effects of the lawsuit on Airbnb, which is not operating in an area first to come to mind in the abortion debate.


## Questions for coaching: 
1. is this research question a good one? how to improve? 
2. the dataset of all states in US maybe too large for us, how can we limit our dataset scope? 
3. our team now has only three members, how to address that?  





## original text 
This is a basic example repository using Gnu make for a reproducible research workflow, as described in detail here: [tilburgsciencehub.com](http://tilburgsciencehub.com/). 

The main aim of this to have a basic structure, which can be easily adjusted to use in an actual project.  In this example project, the following is done: 
1. Download and prepare data
2. Run some analysis
3. Present results in a final pdf generated using LaTeX

## Dependencies
- R 
- R packages: `install.packages("stargazer")`
- [Gnu Make](https://tilburgsciencehub.com/get/make) 
- [TeX distribution](https://tilburgsciencehub.com/get/latex/?utm_campaign=referral-short)
- For the `makefile` to work, R, Gnu make and the TeX distribution (specifically `pdflatex`) need to be made available in the system path 
- Detailed installation instructions can be found here: [tilburgsciencehub.com](http://tilburgsciencehub.com/)


## Notes
- `make clean` removes all unncessary temporary files. 
- Tested under Linux Mint (should work in any linux distro, as well as on Windows and Mac) 
- IMPORTANT: In `makefile`, when using `\` to split code into multiple lines, no space should follow `\`. Otherwise Gnu make aborts with error 193. 
- Many possible improvements remain. Comments and contributions are welcome!
