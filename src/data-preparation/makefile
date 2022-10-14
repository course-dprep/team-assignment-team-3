DATA=../../data 
TEMP=../../gen/temp 

data: $(DATA)/airbnb_listings.csv

all: $(DATA)/airbnb_listings.csv $(TEMP)/combined_data.csv $(TEMP)/combined_data1.csv $(TEMP)/df_grouped.csv

$(DATA)/airbnb_listings.csv $(TEMP)/combined_data.csv: download_data.R 
	R --vanilla < download_data.R

$(TEMP)/combined_data1.csv $(TEMP)/df_grouped.csv: $(TEMP)/combined_data.csv clean_data.R 
	R --vanilla < clean_data.R
