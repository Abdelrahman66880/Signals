%task 2
h_t = 0:9;
x_t = 0:6;

h_n = ones(1, numel(h_t));


a = 1;  
x_n = exp(-a * x_t);


y = conv(h_n, x_n) * 0.1;
t_y = h_t(1) + x_t(1) : h_t(end) + x_t(end);

figure;

subplot(3, 1, 1);
stem(h_t, h_n);
title('Impulse Response');
xlabel('n');
ylabel('h[n]');

% input
subplot(3, 1, 2);
stem(x_t, x_n);
title('Input Signal');
xlabel('n');
ylabel('x[n]');

% the output
subplot(3, 1, 3);
stem(t_y, y);
title('Convolution Output');
xlabel('n');
ylabel('y[n]');