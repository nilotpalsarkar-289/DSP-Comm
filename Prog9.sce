// Generate a d.t. sequence x[n] with the program asking the user to enter the sample values and the n=0th position. Generate a time reversed/folded or amplitude reversed/reversed sequence y1[n] and y2[n].

clc;
clear;
close;

x = input('Enter the input sequence:');
m = length(x);
p = input('Enter the starting point of the input sequence');
q = p+m-1;
n = p:1:q;
subplot(2,2,1)
a = gca();
a.x_location = 'origin';
a.y_location = 'origin';
a.data_bounds = [-5,0;5,5];
plot2d3('gnn',n,x)
xlabel('n -->');
ylabel('x[n]');
title('Input Sequence');
subplot(2,2,2)
a = gca();
a.x_location = 'origin';
a.y_location = 'origin';
a.data_bounds = [-5,0;5,5];
plot2d3(-n,x)   // Plot the sequence in a reverse way in x-axis (time domain) in a 2D space
xlabel('n -->');
ylabel('y1[n]');
title('Folded Sequence');
subplot(2,2,3)
a = gca();
a.x_location = 'origin';
a.y_location = 'origin';
a.data_bounds = [-5,0;5,5];
plot2d3('gnn',n,-x)     // Plot the sequence in a reverse way in y-axis (amplitude domain) in 2D space
xlabel('n -->');
ylabel('y2[n]');
title('Reversed Sequence');
