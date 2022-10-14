TEMP = ../../gen/temp
OUTPUT = = ../../gen/output

all:$(OUTPUT)/plot_price.pdf


$(OUTPUT)/plot_price.pdf: analyze.R $(TEMP)/combined_data1.csv $(TEMP)/df_grouped.csv
	R --vanilla < analyze.R