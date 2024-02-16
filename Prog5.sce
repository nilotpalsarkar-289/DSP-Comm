clc;
clear;
close;

x = input('Enter the sequence:');
m = length(x);
// Take user input for the starting point of the sequence and store it in variable 'p'
p = input('Enter the starting point:');
d = input('Enter the delay:');
g = input('Enter the advance');
q = p+m-1;      //Calculates the ending point of the sequence and stores it in the variable q
n = p:1:q       // Creates a vector 'n' from 'p' to 'q' with a step size of 1
subplot(3,1,1)
a = gca();      // Gets the current axis handle
// Set the axis location to the origin
a.x_location = 'origin';
a.y_location = 'origin';
// Set the data bounds for the axis
a.data_bounds = [-10,0;10,10];
// Plot a 2D line plot using the function with the specified parameters
plot2d3('gnn',n,x);
xlabel('n -->');
ylabel('x1[n] -->');
title('Input Sequence');
n=p+d:1:q+d;
subplot(3,1,2)
a = gca();
a.x_location = 'origin';
a.y_location = 'origin';
a.data_bounds = [-10,0;10,10];
plot2d3('gnn',n,x);
xlabel('n -->');
ylabel('y4[n] -->');
title('Right Shift Delay');
n=p-g:1:q-g;
subplot(3,1,3)
a = gca();
a.x_location = 'origin';
a.y_location = 'origin';
a.data_bounds = [-10,0;10,10];
plot2d3('gnn',n,x);
xlabel('n -->');
ylabel('y5[n] -->');
title('Left Shift Delay');
