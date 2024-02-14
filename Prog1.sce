// Generation of two Discrete-Time sequences x1[n] and x2[n] of unequal lengths and different positions for n=0. The program must input data (sample values and position of n=0) from the user for both sequences respectively. Plot x1[n] and x2[n] respectively.


clc;        // Clears the commmand window
clear;      // Clears all variables in the workspace
close;      // Closes all open figures

// User input for the time sample range and sequences x and y
n1=input('Enter the time sample range of x');
x=input('Enter first sequence');
n2=input('Enter the time sample of y');
y=input('Enter second sequence');
// Find the common time sample range
p=min(min(n1),min(n2));
q=max(max(n1),max(n2));
t=p:1:q;
// Initialize x1 with zeroes and fill in the values from sequence x
x1=[];
temp=1;
for i=1:length(t)
if(t(i)<min(n1) || t(i)>max(n1))
x1=[x1 0];
else
x1=[x1 x(temp)];
temp=temp+1;
end
end
// Initialize x2 with zeroes and fill in the values from sequence y
x2=[];
temp=1;
for i=1:length(t)
if(t(i)<min(n2) || t(i)>max(n2))
x2=[x2 0];
else
x2=[x2 y(temp)];
temp=temp+1;
end
end
// Plot the first sequence x1
subplot(3,1,1);
plot2d3(t,x1);
xlabel('n');
ylabel('x1(n) ->');
title('First Sequence');
// Plot the second sequence x2
subplot(3,1,2);
plot2d3(t,x2);
xlabel('n');
ylabel('x2(n) ->');
title('Second Sequence');
