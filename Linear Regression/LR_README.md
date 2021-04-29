### Linear Regressionn with Residual Error
`LinearRegression.m` is a MATLAB function that takes a set of data and uses a Linear Least Squares Method to create a linear relationship between the independent and dependent variables. 
#### How does it work? 
The user inputs two vectors, x and y, which represent the independent and dependent variable data sets. The function returns the calculated slope and y-intercept of the line that best fits the data as well as the statistical errors associated with the calculation including:
1. Sr, regression sum of squares: measure of the dispersion of data points.
2. St, square of the residual: measure of the amount of variance in a data set
3. Sy, standard deviation: measure of dispersion of a set of data from its mean.
4. Syx, standard error of estimate: measure of variation of an observation made around the computed regression line.
5. rsqrd, R-squared: measure of how close the data are to the fitted regression line
##### Syntax 
- input: `LinearRegression(x,y)`
- output: `Line of best fit: y = a1*x + a0`, `Sr,St,Sy,Syx,rsqrd`
---
