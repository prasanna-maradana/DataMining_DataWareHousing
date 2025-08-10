# Predicting AI Tool Usage Patterns Using Classification Models

## Project Overview
This project aims to predict AI tool usage patterns by analyzing user demographics, behavior, and preferences using various classification models. Leveraging machine learning techniques, it identifies key factors influencing AI tool adoption and determines the most effective classification model for accurate predictions. The insights from this study assist organizations and developers in making data-driven decisions for AI tool development.

---

## Problem Statement
Predict user behavior related to AI tool usage by classifying users based on their likelihood of using specific AI tools. The model considers demographics and other influencing factors to predict usage patterns effectively.

---

## Dataset
- Dataset collected via Google Forms survey, containing user information and AI tool usage details.
- Preprocessed to handle missing values and normalized for uniform scaling.

---

## Methodology

### Classification Algorithms Used
| Algorithm           | Description                                                                                           | Type                     |
|---------------------|---------------------------------------------------------------------------------------------------|--------------------------|
| Logistic Regression | Extension of linear regression for binary classification tasks (yes/no output).                    | Classification           |
| Decision Tree       | Interpretable model that splits data based on feature values into decision branches.               | Classification           |
| Naïve Bayes         | Probabilistic classifier based on Bayes’ theorem assuming feature independence.                    | Regression & Classification |
| K-Nearest Neighbors (KNN) | Classifies data points based on majority label among nearest neighbors in the feature space. | Regression & Classification |


---

## Data Warehousing - OLAP Schema
Designed and implemented Star, Snowflake, and Fact Constellation schemas with dimension and fact tables to support analytical queries such as roll-up, drill-down, slice, dice, and pivot operations on AI tool usage data.

---

## Evaluation & Results
- Data normalization and preprocessing steps improved model accuracy.
- Random Forest algorithm showed the highest accuracy among tested classifiers.
- Various OLAP operations demonstrated interactive analytics capabilities on AI tool usage.

---

## Technology Stack
- Orange Data Mining Tool (for preprocessing and modeling)
- SQL Server Management Studio (SSMS) for database management
- Python (for supplementary analysis)
- Tools: Microsoft Visual Studio, Microsoft Excel/CSV, Jupyter Notebook

---

