// Generate two discrete-time sequences x1[n] and x2[n] by taking sample inputs from the user. Compute the Cicrular Convolution of y2[n] by multiplying their respective DFTs and taking IDFT (you may use matrix method to perform DFT/IDFT operations for example).

clc;
clear; 
close;

x1 = input('Enter the sequence: ');
x2 = input('Enter the sequence: ');

N = max(length(x1), length(x2));
x1 = [x1, zeros(1, N - length(x1))];
x2 = [x2, zeros(1, N - length(x2))];

W = zeros(N, N);
for k = 0:N-1
    for n = 0:N-1
        W(k+1, n+1) = exp(-%i*2*%pi*n*k/N);
    end
end

X1 = W * x1.';
disp("DFT of 1st Sequence : ");
disp(X1.');

X2 = W * x2.';
disp("DFT of 2nd Sequence :");
disp(X2.');

Y2 = X1 .* X2;
disp("Multiplication of 2 DFTs:");
disp(Y2.');

W_inver = inv(W);
y2 = W_inver * Y2;
disp(" Circular Convolution Result is y2[n]: ");
y2 = real(y2);
y2 = round(y2);
disp(y2);
