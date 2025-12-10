# 24075143 - Kandula uttham sai

# Performing Correlation using Numeric Data
numeric_data <- speedrun_data %>% select_if(is.numeric)
correlation_matrix <- cor(numeric_data, use = "complete.obs")
print(correlation_matrix)

