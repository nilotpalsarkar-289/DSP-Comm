// Generate two discrete - time sequences x1[n] and x2[n] by taking sample inputs from the user. Compute the Circular Convolution of x1[n] and x2[n] using Circulant Matrix and store the result in y1[n]. Plot x1[n], x2[n] and y1[n].

clc
clear 
close 

x1 = input('Enter the sequence: ');
x2 = input('Enter the sequence: ');

l1 = length(x1);
l2 = length(x2);
N = max(l1, l2);

x1 = [x1, zeros(1, N - l1)];
x2 = [x2, zeros(1, N - l2)];

x1 = x1';
x2 = x2';

mat = zeros(N, N);
mat(1, :) = x1;
for i = 2:N
    last_index = N;
    mat(i, :) = [mat(i-1, last_index), mat(i-1, 1:last_index-1)];
end

mat = mat';

disp("Circulant Matrix :")
disp(mat)

y1 = mat * x2;

disp("Circular Convolution Matrix, y1[1] : ")
disp(y1);

figure
subplot(3, 1, 1);
plot(0:N-1, x1, 'b');
title('First Sequence');
xlabel('Index');
ylabel('Amplitude');

subplot(3, 1, 2);
plot(0:N-1, x2, 'r');
title('Second Sequence');
xlabel('Index');
ylabel('Amplitude');

subplot(3, 1, 3);
plot(0:N-1, y1, 'g');
title('Circular Convolution Result, y1[n]');
xlabel('Index');
ylabel('Amplitude');
