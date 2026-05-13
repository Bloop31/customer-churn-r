library(tidyverse)

set.seed(123)

# Number of customers
n <- 2000

# Customer ID
customerID <- 1:n

# Gender
gender <- sample(
  c("Male", "Female"),
  n,
  replace = TRUE
)

# Senior Citizen
SeniorCitizen <- sample(
  c(0, 1),
  n,
  replace = TRUE,
  prob = c(0.85, 0.15)
)

# Partner
Partner <- sample(
  c("Yes", "No"),
  n,
  replace = TRUE
)

# Dependents
Dependents <- sample(
  c("Yes", "No"),
  n,
  replace = TRUE
)

# Customer tenure
tenure <- sample(
  1:72,
  n,
  replace = TRUE
)

# Phone service
PhoneService <- sample(
  c("Yes", "No"),
  n,
  replace = TRUE,
  prob = c(0.9, 0.1)
)

# Internet service
InternetService <- sample(
  c("DSL", "Fiber Optic", "No"),
  n,
  replace = TRUE,
  prob = c(0.4, 0.5, 0.1)
)

# Monthly charges
MonthlyCharges <- round(
  runif(n, 20, 120),
  2
)

# Total charges
TotalCharges <- round(
  MonthlyCharges * tenure +
    rnorm(n, 0, 100),
  2
)

# Contract type
Contract <- sample(
  c(
    "Month-to-month",
    "One year",
    "Two year"
  ),
  n,
  replace = TRUE,
  prob = c(0.6, 0.25, 0.15)
)

# Payment method
PaymentMethod <- sample(
  c(
    "Electronic check",
    "Credit card",
    "Bank transfer",
    "Mailed check"
  ),
  n,
  replace = TRUE
)

# Churn logic
churn_probability <- ifelse(
  Contract == "Month-to-month" &
    MonthlyCharges > 80 &
    tenure < 12,
  0.7,
  0.2
)

Churn <- ifelse(
  runif(n) < churn_probability,
  "Yes",
  "No"
)

# Create dataframe
customer_data <- data.frame(
  customerID,
  gender,
  SeniorCitizen,
  Partner,
  Dependents,
  tenure,
  PhoneService,
  InternetService,
  MonthlyCharges,
  TotalCharges,
  Contract,
  PaymentMethod,
  Churn
)

# Save dataset
write.csv(
  customer_data,
  "data/raw_customer_data.csv",
  row.names = FALSE
)

print("Dataset Generated Successfully")