// Generate a d.t sequence x[n] with the program asking the user to enter sample values and the n=0th position. Generate sequence y1[n], y2[n] and y3[n] which are theamplitude scaled and time scaled versions of x[n], with input of the amplitude scaling factor, compression factor and extended factor taken from the user. Print x[n] y1[n], y2[n] and y3[n].

clc;
clear;
close;

x = input("Enter Input Sequence");      // Takes user input for the input sequence and stores it in variable 'x'
p = input('Enter the starting point of input sequence:');       // Takes user input for the starting point of the input sequence and stores it in the variable 'p'.
b = input('Amplitude Scaling Factor:');     // Takes user input for the amplitude scaling factor and stores it in the variable 'b'
C = input('Enter Compression Factor:');     // Takes user input for the compression factor and stores it in the variable 'C'
D = input('Enter Extension Factor:');       // Takes user input for the extension factor and stores it in variable 'D'
m = length(x);      // Calculates the length of the input sequence and stores it in the variable 'm'
q = p+m-1;      // Calculates the end point of the sequence and stores it in the variable 'q'
n = p:1:q;      // Creates a range of values from 'p' to q' with a step of 1 and stores it in the variable 'n'
subplot(2,2,1)     // Divides the figure window into a 2X2 grid and selects a specific subplot for each subsequent plot
a = gca();      // Retrieves the current axis handle  and sets certain propertittes like axis location and data bounds for plotting
a.x_location = 'origin';
a.y_location = 'origin';
a.data_bounds = [-10,0;10,10];
plot2d3('gnn',n,x);     // Plots the input sequence 'x' against the values in 'n' using a specific plot type ('gnn')
xlabel('n -->');        // Sets labels fot the x-axis, y-axis and the title for the first subplot
ylabel('x[n]');
title('Input Sequence');
// Amplitude Scaling
y=b*x;      // Performs amplitude scaling by multiplying the input sequence 'x' by the scaling factor 'b' and stores it in variable 'y'
subplot(2,2,2)
a = gca();
a.x_location = 'origin';
a.y_location = 'origin';
a.data_bounds = [-10,0;10,10];
plot2d3('gnn',n,y);
xlabel('n -->');
ylabel('y1[n]');
title('Amplitude Scaled Sequence');
//Time Scaling - Compression
n = p/C:1/C:q/C;
subplot(2,2,3)
a = gca();
a.x_location = 'origin';
a.y_location = 'origin';
a.data_bounds = [-10,0;10,10];
plot2d3('gnn',n,x);
xlabel('n -->');
ylabel('y2[n]');
title('Compressed Sequence');
//Time Scaling - Expansion
n=p*D:D:q*D;
subplot(2,2,4)
a = gca();
a.x_location = 'origin';
a.y_location = 'origin';
a.data_bounds = [-10,0;10,10];
plot2d3('gnn',n,x);
xlabel('n -->');
ylabel('y3[n]');
title('Extended Sequence');
