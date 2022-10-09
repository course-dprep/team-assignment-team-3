# Analysing the Data #

# Load the final merged data 
load("./gen/temp/combined_data1")

# Create an interaction between time and category1. We will call this interaction 'did'
combined_data1$did <- combined_data1$time * combined_data1$category1

# Estimate the DID estimator
didreg = lm(price ~ category1 + time + did, data = combined_data1)
summary(didreg)

# Estimate the DID estimator
didreg1 = lm(price ~ category1*time, data = combined_data1)
summary(didreg1)

# plot and store results
pdf(file="../../gen/output/figure1")
p<-ggplot(df_grouped, aes(x=time, y=avg_price, group=category1)) +
  geom_line(aes(color=category1))+
  geom_point(aes(color=category1))
dev.off()
