# Customer Churn Analysis System (CCAS)

> A complete end-to-end telecom customer churn analytics and machine learning pipeline built using R. Designed to simulate customer behavior, analyze churn patterns, generate business insights, and predict customer attrition using statistical modeling and classification techniques.

![R](https://img.shields.io/badge/Language-R-blue?style=for-the-badge&logo=r)
![Analytics](https://img.shields.io/badge/Domain-Data%20Analytics-orange?style=for-the-badge)
![Machine Learning](https://img.shields.io/badge/Model-Logistic%20Regression-green?style=for-the-badge)
![Visualization](https://img.shields.io/badge/Visualization-ggplot2-red?style=for-the-badge)
![EDA](https://img.shields.io/badge/Analysis-EDA-purple?style=for-the-badge)
![Statistics](https://img.shields.io/badge/Concept-Statistics-yellow?style=for-the-badge)

---

# Overview

The **Customer Churn Analysis System (CCAS)** is a comprehensive data analytics framework developed in R to study and predict telecom customer churn behavior. The project simulates realistic telecom customer data and performs a complete analytics workflow including:

- Synthetic dataset generation
- Data cleaning and preprocessing
- Exploratory Data Analysis (EDA)
- Business insight extraction
- Data visualization
- Machine learning model building
- Model evaluation and prediction

The system is designed to demonstrate practical applications of data science and business analytics in customer retention and churn prediction.

---

# Problem Statement

Customer churn is one of the biggest challenges faced by telecom companies. Losing customers directly impacts revenue and increases acquisition costs.

This project aims to:
- Identify factors influencing churn
- Analyze customer behavior patterns
- Predict high-risk customers
- Generate actionable business insights

---

# Project Architecture

```text
customer-churn-r/
│
├── data/
│   ├── raw_customer_data.csv
│   └── cleaned_customer_data.csv
│
├── scripts/
│   ├── 01_generate_dataset.R
│   ├── 02_data_cleaning.R
│   ├── 03_eda.R
│   ├── 04_visualization.R
│   ├── 05_model_building.R
│   └── 06_model_evaluation.R
│
├── outputs/
│   ├── plots/
│   └── models/
│
├── README.md
└── customer-churn-r.Rproj
```

---

# Features

## Synthetic Data Generation
- Simulates realistic telecom customer behavior
- Creates controlled churn probabilities
- Generates business-oriented datasets

## Data Cleaning Pipeline
- Handles categorical data
- Removes inconsistent records
- Prepares data for machine learning

## Exploratory Data Analysis
- Customer churn distribution analysis
- Statistical summaries
- Correlation analysis
- Business pattern discovery

## Visualization Engine
- Churn distribution graphs
- Monthly charge analysis
- Customer tenure histograms
- Insight-driven visualizations

## Machine Learning Pipeline
- Logistic Regression model
- Train-test splitting
- Churn prediction
- Probability-based classification

## Model Evaluation
- Confusion Matrix
- Accuracy analysis
- Classification metrics
- Prediction validation

---

# Technologies Used

| Category | Tools / Libraries |
|---|---|
| Language | R |
| IDE | RStudio |
| Data Manipulation | tidyverse, dplyr |
| Visualization | ggplot2 |
| Machine Learning | caret, caTools |
| Statistical Analysis | base R |
| Model Type | Logistic Regression |
| Version Control | Git & GitHub |

---

# Machine Learning Workflow

## 1. Dataset Generation
Synthetic telecom customer data is generated using probability-based business logic.

## 2. Data Cleaning
Categorical variables are converted into factors and invalid values are removed.

## 3. Exploratory Data Analysis
Statistical summaries and churn pattern analysis are performed.

## 4. Visualization
Business intelligence plots are generated using ggplot2.

## 5. Model Training
A Logistic Regression model is trained on customer attributes.

## 6. Prediction & Evaluation
Predictions are evaluated using confusion matrix metrics.

---

# Key Business Insights

- Customers with high monthly charges show higher churn probability.
- Month-to-month contract users are more likely to leave.
- Long-tenure customers demonstrate higher retention rates.
- Short-term users exhibit unstable customer behavior.

---

# Sample Visualizations

The project generates:
- Customer churn distribution plots
- Monthly charges boxplots
- Customer tenure histograms

All visual outputs are saved automatically inside:

```text
outputs/plots/
```

---

# Installation & Setup

## Clone Repository

```bash
git clone https://github.com/YOUR_USERNAME/customer-churn-r.git
```

---

## Open Project

Open the `.Rproj` file inside RStudio.

---

## Install Required Packages

```r
install.packages("tidyverse")
install.packages("ggplot2")
install.packages("caret")
install.packages("caTools")
install.packages("corrplot")
```

---

# Running The Project

Run the scripts in the following order:

```text
01_generate_dataset.R
02_data_cleaning.R
03_eda.R
04_visualization.R
05_model_building.R
06_model_evaluation.R
```

---

# Outputs Generated

## Datasets

```text
data/raw_customer_data.csv
data/cleaned_customer_data.csv
```

## Visualizations

```text
outputs/plots/churn_distribution.png
outputs/plots/monthly_charges_boxplot.png
outputs/plots/tenure_histogram.png
```

## Machine Learning Model

```text
outputs/models/churn_model.rds
```

---

# Future Improvements

The project can be extended with:

- Random Forest Classifier
- XGBoost Models
- Feature Importance Analysis
- Interactive Shiny Dashboard
- Real Telecom Dataset Integration
- SQL Database Integration
- Power BI Dashboard
- Deep Learning Models

---

# Learning Outcomes

This project demonstrates practical knowledge of:

- Data Analytics
- Machine Learning
- Statistical Analysis
- Business Intelligence
- Data Visualization
- Predictive Modeling
- End-to-End Analytics Workflow

---

# Author

## Prajjit Basu

Aspiring Data Scientist & AI/ML Developer

Focused on:
- Data Science
- Machine Learning
- Analytics Engineering
- Deep Learning
- Real-world AI Systems

---

# License

This project is licensed under the MIT License.

---

# Connect With Me

## GitHub
https://github.com/Bloop31

## Email
basuprajjit31@gmail.com
