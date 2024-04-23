// For the two sequences x1[n] & x2[n] generated, perform multiplication operation and plot them with approprite labelling of x-axis and y-axis: y3[n] = x1[n].x2[n]

clc;
clear;
close;

n1=input('Enter the time sample range of x');
x=input('Enter the sequence');
n2=input('Enter the time sample of y');
y=input('Enter the sequence');
p=min(min(n1),min(n2));
q=max(max(n1),max(n2));
t=p:1:q;
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
y3=x1.*x2;

subplot(3,1,1);
plot2d3(t,x1);
xlabel('n');
ylabel('x1[n] ->');
title('First Sequence');
subplot(3,1,2);
plot2d3(t,x2);
xlabel('n');
ylabel('x2[n] ->');
title('Second Sequence');
subplot(3,1,3);
plot2d3(t,y3);
xlabel('n');
ylabel('y3[n] ->');
title('Multiplicated Sequence');
