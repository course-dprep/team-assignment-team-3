# Analysing the Data #

# Analysing the Data #
library(ggplot2)
library(ggpubr)

# Load the final merged data 
combined_data1 <- read.csv("gen/temp/combined_data1")


# Assumptions (normality and outliers)
set.seed(5000)
combined_data_sample <- rnorm(5000)
shapiro.test(combined_data_sample)

price_boxplot <- ggboxplot(combined_data1, x="time", y="price",
                                         color="time", palette = c("#00AFBB", "#E7B800"),
                                         ylab= "Price", xlab="time")
price_boxplot


# make cotegory as factor
combined_data1$category1 <- as.factor(combined_data1$category1)
df_grouped$category1 <- as.factor(df_grouped$category1)

# Create an interaction between time and category1. We will call this interaction 'did'
combined_data1$did <- combined_data1$time * combined_data1$category1


# Estimate the DID estimator
didreg = lm(price ~ category1 + time + did, data = combined_data1)
summary(didreg)

# Estimate the DID estimator
didreg1 = lm(price ~ category1*time, data = combined_data1)
summary(didreg1)



# Create an interaction between time and category1. We will call this interaction 'did'
df_grouped$did <- df_grouped$time * df_grouped$category1

# Estimate the DID estimator
didreg = lm(avg_price ~ category1 + time + did, data = df_grouped)
summary(didreg)

# Estimate the DID estimator
didreg1 = lm(avg_price ~ category1*time, data = df_grouped)
summary(didreg1)



pdf(file="../../gen/output/figure1.pdf")
p<-ggplot(df_grouped, aes(x=time, y=avg_price, group=category1)) +
  geom_line(aes(color=category1))+
  geom_point(aes(color=category1))
dev.off()


