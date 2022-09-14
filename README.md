# mechacar_statistical_analysis

# Overview
The purpose is to analyze prototype production data for insights to help manufacturing root cause analysis .  
1. Linear regression analysis to identify key variables to predict mpg of prototypes.
2. Summary statistics on pounds per square inch (PSI) of suspension coils from manufacturing lots.
3. t-tests to determine if the manufacturing lots are statistically different from the mean population .
4. Design a statistical study to compare vehicle performance against different manufacturers.

## Resources
- Data Source: MechaCar_mpg, Suspension_Coil
- Software: RStudio 2022.07.1

## Results

The link to the R Script for the data analysis.<br>
[R Script for the data analysis](/mechacarchallenge.R)<br>

### Linear Regression to Predict MPG

<figure>
    <figcaption>Linear regression model</figcaption>
    <img src="/summary_linear_regression_mecha_car_mpg.png" width=1915 height=auto
         alt="Linear regression model">
</figure> <br>

1. Key variables for a non-random variance to the mpg are,
    - intercept
    - vehical length
    - ground clearance
Three variables/coefficients has p-value less than significance level of 0.05.

2. The slope of the linear model is not zero as p-value of the model is less than significane level of 0.05. It represent non-random coorelation between dependent variable and independent variables.

3. Linear model predict mpg of prototype effiectively as R-squared value of the model is ~0.70 and it represnt strong coorelation.

### Summary Statistics on Suspension Coils

1. Total summary of PSI of suspensiton coils for all lots 

- Design specification for the suspension coils is maximum PSI variance = 100PSI
- Based on total summary of PSI for all lots, manufacturing data meet the design specificaiton.

<figure>
    <figcaption>Summary of PSI of suspensiton coils for all lots</figcaption>
    <img src="/total_summary_psi.png" width=480 height=auto
         alt="Summary of PSI of suspensiton coils for all lots">
</figure> <br>

2. Summary of PSI of suspensiton coils for each lot

- Further anaylysis of each individual lot shows variance for Lot#3 is ~170PSI above the design specification. It indicates Lot#3 does not meet design specification.

<figure>
    <figcaption>Summary of PSI of suspensiton coils for each lot</figcaption>
    <img src="/lot_summary_psi.png" width=496 height=auto
         alt="Summary of PSI of suspensiton coils for each lots">
</figure> <br>

### T-Tests on Suspension Coils

1. t-test for all manufacturing lots against population mean of 1500PSI.

- t-test for all manufacturing lots show p-value of ~0.06. It is above siginificance level of 0.05. Null hypothesis is not rejected and it indicates PSI data of all manucfaturing lots is not statistically different from population mean of 1500PSI.

<figure>
    <figcaption>t-test summary for all manufacturing lots</figcaption>
    <img src="/one_sample_t_test.png" width=1031 height=auto
         alt="t-test summary for all manufacturing lots">
</figure> <br>

2. t-test for manufacturing lot#1 against population mean of 1500PSI.

- t-test for manufacturing lot#1 show p-value of ~1. It is above siginificance level of 0.05. Null hypothesis is not rejected and it indicates PSI data of manufacturing lot#1 is not statistically different from population mean of 1500PSI.

<figure>
    <figcaption>t-test summary for manufacturing lot#1</figcaption>
    <img src="/t_test_manufacturing_lot_1.png" width=1010 height=auto
         alt="t-test summary for manufacturing lot#1">
</figure> <br>

3. t-test for manufacturing lot#2 against population mean of 1500PSI.

- t-test for manufacturing lot#2 show p-value of ~0.61. It is above siginificance level of 0.05. Null hypothesis is not rejected and it indicates PSI data of manufacturing lot#2 is not statistically different from population mean of 1500PSI.

<figure>
    <figcaption>t-test summary for manufacturing lot#2</figcaption>
    <img src="/t_test_manufacturing_lot_2.png" width=1030 height=auto
         alt="t-test summary for manufacturing lot#2">
</figure> <br>

4. t-test for manufacturing lot#3 against population mean of 1500PSI.

- t-test for manufacturing lot#3 show p-value of ~0.04. It is below siginificance level of 0.05. Null hypothesis is rejected and it indicates PSI data of manufacturing lot#3 is statistically different from population mean of 1500PSI.

<figure>
    <figcaption>t-test summary for manufacturing lot#3</figcaption>
    <img src="/t_test_manufacturing_lot_3.png" width=983 height=auto
         alt="t-test summary for manufacturing lot#3">
</figure> <br>

### Study Design: MechaCar vs Competition

- Statistical study to compare city and highway mpg of MechaCar against competition.
- Null hypothesis of the study is that "city and highwy mpg of MechaCar is statistically equal to that of the competition in same car class".
- Statistical test for the study is two sample t-test to compare MechaCar data against each competitor in each test. Other test is ANOVA to compare MechaCar data against all competiors in single test. 
- The data needed is city and highway mpg of MechaCar and competitors for same car class in terms of cost and type of vehicle.