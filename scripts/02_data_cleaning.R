library(tidyverse)

# Load dataset
df <- read.csv(
  "data/raw_customer_data.csv"
)

# View structure
str(df)

# Check missing values
colSums(is.na(df))

# Convert categorical columns to factors
df$gender <- as.factor(df$gender)
df$Partner <- as.factor(df$Partner)
df$Dependents <- as.factor(df$Dependents)
df$PhoneService <- as.factor(df$PhoneService)
df$InternetService <- as.factor(df$InternetService)
df$Contract <- as.factor(df$Contract)
df$PaymentMethod <- as.factor(df$PaymentMethod)
df$Churn <- as.factor(df$Churn)

# Remove negative total charges
df <- df %>%
  filter(TotalCharges > 0)

# Save cleaned data
write.csv(
  df,
  "data/cleaned_customer_data.csv",
  row.names = FALSE
)

print("Data Cleaning Complete")