// Generate a discrete-time sequence x[n] by taking sample inputs from the user. Also, take "N-point" as input, indicating N-point IDFT. Generate the N-point IDFT Y[k] using matrix method. Plot x[n], along with with magnitude and phase plots of Y[k]
clc;
clear;
close;

N = input('Enter the number of samples');
x = input('Enter the input sequence');
n = 0:N-1;
k = n;
kn = k'*n;
WN = exp(-%i*(2*%pi)/N);
W = WN ^ kn;
W_inver=inv(W)
Y = W_inver*x';

disp('IDFT of Input Sequence');
disp(Y);

Y_mag = abs(Y);
disp("Magnitude Response");
disp(Y_mag);

Y_phase = atan(imag(Y),real(Y));
disp('Phase Response');
disp(Y_phase);

figure;
subplot(3,1,1);
plot2d3(n,x);
xlabel('n -->');
ylabel('x[n]');
title('Input Sequence');
subplot(3,1,2);
plot2d3(k,Y_mag);
xlabel('mag -->');
ylabel('|Y[n]|');
title('Magnitude Response');
subplot(3,1,3);
plot2d3(k,Y_phase);
xlabel('angle -->');
ylabel('angle Y[n]');
title('Phase Response');

