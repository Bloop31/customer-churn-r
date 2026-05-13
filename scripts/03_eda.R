library(tidyverse)

# Load cleaned data
df <- read.csv(
  "data/cleaned_customer_data.csv"
)

# Summary statistics
summary(df)

# Churn count
table(df$Churn)

# Churn percentage
prop.table(table(df$Churn)) * 100

# Average monthly charges
mean(df$MonthlyCharges)

# Correlation analysis
numeric_df <- df %>%
  select(
    tenure,
    MonthlyCharges,
    TotalCharges
  )

cor(numeric_df)

print("EDA Complete")