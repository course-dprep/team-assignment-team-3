DATA=../../data 
TEMP=../../gen/temp 

all: $(TEMP)/combined_data.csv $(TEMP)/combined_data1.csv $(TEMP)/df_grouped.csv

$(TEMP)/combined_data.csv: download_data.R 
	R --vanilla < download_data.R

$(TEMP)/combined_data1.csv $(TEMP)/df_grouped.csv: $(TEMP)/combined_data.csv clean_data.R 
	R --vanilla < clean_data.R
