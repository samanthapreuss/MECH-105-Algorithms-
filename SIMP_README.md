### Simpson's 1/3 Rule 
`Simpson.m` is a MATLAB function for integrating experimental data using Simpson's 1/3 rule. 
#### How does it work? 
The user inputs inputs two vectors, x and y, which represent the independent and dependent variable data sets. The function determines if there is an odd or even number of intervals in the data, and if an odd number of intervals is found, it uses the trapezoidal rule for the last interval and warns the user that it will do so. 
##### Syntax 
- input: `Simpson(x,y)`
- output: `Integral Estimate is "ans"`