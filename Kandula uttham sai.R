# 24075143 - Kandula uttham sai

# Performing Correlation using Numeric Data
numeric_data <- speedrun_data %>% select_if(is.numeric)
correlation_matrix <- cor(numeric_data, use = "complete.obs")
print(correlation_matrix)

# Checking for Statistical Summary by Category
speedrun_data %>%
  group_by(category) %>%
  summarise(
    Count = n(),
    Mean_Time = mean(primary_time_seconds, na.rm = TRUE),
    Median_Time = median(primary_time_seconds, na.rm = TRUE),
    SD_Time = sd(primary_time_seconds, na.rm = TRUE),
    Min_Time = min(primary_time_seconds, na.rm = TRUE),
    Max_Time = max(primary_time_seconds, na.rm = TRUE))
