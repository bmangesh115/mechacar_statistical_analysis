# Import dependencies
library(tidyverse)

# Load mechacar_mpg data from csv as a DataFrame

mecha_car_mpg_df <- read_csv("MechaCar_mpg.csv")

# Generate multiple linear regression model

linear_regression_mpg <- lm(mpg ~ 
                              vehicle_length + 
                              vehicle_weight + 
                              spoiler_angle + 
                              ground_clearance + 
                              AWD, 
                            data = mecha_car_mpg_df)

# Summary of linear regression model

summary_linear_regression_mpg <- summary(linear_regression_mpg)
summary_linear_regression_mpg

# Load suspension_coil data from csv as a DataFrame
suspension_coil_df <- read_csv("Suspension_Coil.csv")



# Summary statistics for PSI
total_summary <- suspension_coil_df %>%
                  summarize(Mean = mean(PSI), 
                            Median = median(PSI), 
                            Variance = var(PSI), 
                            SD = sd(PSI))


# Summary statistics for PSI by grouping manufacturing_lot
lot_summary <- suspension_coil_df %>%
                  group_by(Manufacturing_Lot) %>%
                  summarize(Mean = mean(PSI), 
                            Median = median(PSI), 
                            Variance = var(PSI), 
                            SD = sd(PSI))

# one sample t-test for suspension coils

t.test(suspension_coil_df$PSI, mu = 1500)

# t-test for suspension coils for manufacturing lot-1

subset_lot1_suspension_coil_df <- subset(suspension_coil_df, Manufacturing_Lot == 'Lot1')
t.test(subset_lot1_suspension_coil_df$PSI, mu = 1500)

# t-test for suspension coils for manufacturing lot-2

subset_lot2_suspension_coil_df <- subset(suspension_coil_df, Manufacturing_Lot == 'Lot2')
t.test(subset_lot2_suspension_coil_df$PSI, mu = 1500)

# t-test for suspension coils for manufacturing lot-3

subset_lot3_suspension_coil_df <- subset(suspension_coil_df, Manufacturing_Lot == 'Lot3')
t.test(subset_lot3_suspension_coil_df$PSI, mu = 1500)

