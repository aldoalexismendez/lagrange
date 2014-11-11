(Make sure you have the folder “lagrange-master” as your directory!)

——————————————————————————————————————————————————————————————————————————————————————————

This folder should contain the following files:

plots_assignment2.m
top_sum.m
bottom_sum.m
lambda.m
int_poly_p1.m
int_poly_p2.m
————————————————————————————————————————————————————————————————————————————————————————
To run the code altogether:

>> plots_assignment2

________________________________________________________________________________________

To run code using other parameters:

>> yout = int_poly_p1(f,xin,xout)

where f is a function handle, xin is the set of x values at which we want to interpolate, xout is the set of x values at which we would like to evaluate the interpolating polynomial, and yout is the vector containing the y values of the interpolating polynomial after being evaluated at the values of xout.

to plot:

>>plot(xout,yout)

