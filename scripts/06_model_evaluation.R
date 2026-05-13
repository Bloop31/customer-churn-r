library(caret)
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

# Load model
model <- readRDS(
  "outputs/models/churn_model.rds"
)

# Predict probabilities
pred_prob <- predict(
  model,
  test,
  type = "response"
)

# Convert probabilities to labels
pred <- ifelse(
  pred_prob > 0.5,
  "Yes",
  "No"
)

pred <- as.factor(pred)

# Confusion matrix
cm <- confusionMatrix(
  pred,
  test$Churn
)

print(cm)

print("Model Evaluation Complete")