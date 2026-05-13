library(ggplot2)

# Load dataset
df <- read.csv(
  "data/cleaned_customer_data.csv"
)

# Churn distribution
p1 <- ggplot(
  df,
  aes(x = Churn, fill = Churn)
) +
  geom_bar() +
  theme_minimal() +
  ggtitle("Customer Churn Distribution")

ggsave(
  "outputs/plots/churn_distribution.png",
  p1,
  width = 6,
  height = 4
)

# Monthly charges boxplot
p2 <- ggplot(
  df,
  aes(
    x = Churn,
    y = MonthlyCharges,
    fill = Churn
  )
) +
  geom_boxplot() +
  theme_minimal() +
  ggtitle("Monthly Charges vs Churn")

ggsave(
  "outputs/plots/monthly_charges_boxplot.png",
  p2,
  width = 6,
  height = 4
)

# Tenure histogram
p3 <- ggplot(
  df,
  aes(x = tenure)
) +
  geom_histogram(
    bins = 30,
    fill = "skyblue"
  ) +
  theme_minimal() +
  ggtitle("Customer Tenure Distribution")

ggsave(
  "outputs/plots/tenure_histogram.png",
  p3,
  width = 6,
  height = 4
)

print("Visualization Complete")