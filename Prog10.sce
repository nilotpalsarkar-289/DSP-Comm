// Generate a discrete-time sequence x[n] by taking sample inputs from the user. Also, take "N-point" as input, indicating N-point DFT. Generate the N-point DFT X(k) using matrix method. Plot x[n], along with the magnitude and phase plots of X(k).

clc;
clear;
close;

N = input('Enter the number of samples: ');
x = input('Enter the input sequence: ');
n = 0:N-1;
k = n;
kn = k' * n;
WN = exp(-%i * (2 * %pi) / N);

W = WN .^ kn;
X = W * x';

disp('DFT of input sequence is');
disp(X);

X_mag = abs(X);
disp('Magnitude Response');
disp(X_mag);

X_phase = atan(imag(X), real(X));
disp('Phase response');
disp(X_phase);

figure;

subplot(3,1,1);
plot2d3(n, x);
title('Input Sequence');

subplot(3,1,2);
plot2d3(k, X_mag);
title('Magnitude Response');

subplot(3,1,3);
plot2d3(k, X_phase);
title('Phase Response');
