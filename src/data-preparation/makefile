DATA = ../../data 
TEMP = ../../gen/temp 

all: $(DATA)/airbnb_listings.csv $(TEMP)/combined_data.csv $(TEMP)/combined_data1.csv $(TEMP)/df_grouped.csv

$(DATA)/airbnb_listings.csv: download_data.R
	mkdir -p $(DATA)
	R --vanilla < download_data.R

$(TEMP)/combined_data.csv: download_data.R
	mkdir -p $(TEMP)
	R --vanilla < download_data.R

$(TEMP)/combined_data1.csv: clean_data.R
	mkdir - p $(TEMP)
	R --vanilla < clean_data.R
	
$(TEMP)/df_grouped.csv: $(TEMP)/combined_data.csv $(TEMP)/combined_data1.csv clean_data.R
	mkdir - p $(TEMP)
	R --vanilla < clean_data.R