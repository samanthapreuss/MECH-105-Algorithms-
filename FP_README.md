### False Position: Root Finding Method
`falsePosition.m` is a MATLAB function used to estimate the location of a root. False Position is a closed root finding (bracketing) method that estimates roots by drawing a secant line between and upper and lower intial guesses and determining where that line crosses the x-axis. This intersection is found using similiar triangles and the *false-position formula*. 
#### How does it work? 
For this function, the user inputs a function, a lower guess, and an upper guess and recieves the estimated root location (`root`), value of the function at the root (`fx`), the approximate relative error (`ea`), and the number of iterations performed (`iter`). 
##### Syntax 
- input: `falsePosition(testFunc, x_left, x_right)`
- output: `root,fx,ea,iter`
