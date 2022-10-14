DATA = ../../data
TEMP = ../../gen/temp
OUTPUT = = ../../gen/output

all:$(OUTPUT)/plot_price.pdf $(OUTPUT)/price_boxplot.pdf $(TEMP)/combined_data1.csv $(TEMP)/df_grouped.csv


$(OUTPUT)/plot_price.pdf $(OUTPUT)/price_boxplot.pdf: analyze.R $(TEMP)/combined_data1.csv $(TEMP)/df_grouped.csv
   	R --vanilla < analyze.R
