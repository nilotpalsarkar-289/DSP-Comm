clc;
clear;
close;

x = input('Enter the sequence:');
m = length(x);
p = input('Enter the starting point:');
d = input('Enter the delay:');
g = input('Enter the advance');
q = p+m-1;
n = p:1:q
subplot(3,1,1)
a = gca();
a.x_location = 'origin';
a.y_location = 'origin';
a.data_bounds = [-10,0;10,10];
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
