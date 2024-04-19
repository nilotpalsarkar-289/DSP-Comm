// Generate a discrete-time sequence x[n] by taking sample inputs from the user. Also, take "N-point" as input, indicating N-point DFT. Perform the reverse operation from X(k) to x[n], where X(k) is the N-point DFT by matrix inversion (or conjugation). Verify whether the inverse operation leads to x[n] or not.

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
W_inver=inv(W)

Y = W_inver * x';

disp('IDFT of input sequence is');
disp(Y);

Y_mag = abs(Y);
disp('Magnitude Response');
disp(Y_mag);

Y_phase = atan(imag(Y), real(Y));
disp('Phase response');
disp(Y_phase);

figure;

subplot(3,1,1);
plot2d3(n, x);
title('Input Sequence');

subplot(3,1,2);
plot2d3(k, Y_mag);
title('Magnitude Response');

subplot(3,1,3);
plot2d3(k, Y_phase);
title('Phase Response');
