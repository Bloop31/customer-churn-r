library(caTools)

# Load dataset
df <- read.csv(
  "data/cleaned_customer_data.csv"
)

# Remove customer ID
df$customerID <- NULL

# Convert target variable
df$Churn <- as.factor(df$Churn)

# Train-test split
set.seed(123)

split <- sample.split(
  df$Churn,
  SplitRatio = 0.7
)

train <- subset(
  df,
  split == TRUE
)

test <- subset(
  df,
  split == FALSE
)

# Logistic regression model
model <- glm(
  Churn ~ .,
  data = train,
  family = binomial
)

# Model summary
summary(model)

# Save model
saveRDS(
  model,
  "outputs/models/churn_model.rds"
)

print("Model Building Complete")