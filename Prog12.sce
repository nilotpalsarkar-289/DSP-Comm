// Write a program to find the FFT and inverse FFT of a discrete time signal

clc;
clear;
close;

// Generate and plot the input signal
x = input('Enter the input signal');
N = length(x);
m = 0:1:N-1
disp(x);
subplot(2,2,1);
plot2d3(m,x);
xlabel('n -->');
ylabel('x[n] -->');
title('Input Sequence');

// FFT of a signal
y = fft(x);
disp('Frequency Domain Signal:');
disp(y);
y_mag = abs(y);
disp('Magnitude Response:');
disp(y_mag);
y_phase = atan(imag(y),real(y));
disp('Phase Response');
disp(y_phase);

// Plotting the magnitude spectrum
k=0:1:N-1
subplot(2,2,2);
plot2d3(k,y_mag);
xlabel('Frequency(k)');
ylabel('Amplitude');
title('Magnitude Spectrum of FFT Signal');

// Plotting the phase spectrum
subplot(2,2,3);
plot2d3(k,y_phase);
xlabel('Frequency(k)');
ylabel('Phase Angle');
title('Phase Spectrum of FFT Signal');

// Inverse FFT of a signal
z = ifft(y);
disp('Inverse FFT:');
disp(z);

// Plotting Inverse FFT signal
n = 0:1:N-1
subplot(2,2,4);
plot2d3(n,z)
xlabel('Discrete Time');
ylabel('Amplitude');
title('Inverse FFT of time domain signal');
