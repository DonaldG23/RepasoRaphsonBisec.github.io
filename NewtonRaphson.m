clc; clear; close all;

% Definir la función f(x) y su derivada f'(x)
f = @(x) x^3 - 2*x - 5;  % f(x) = x^3 - 2x - 5
df = @(x) 3*x^2 - 2;      % f'(x) = 3x^2 - 2

%% Método de Newton-Raphson
x0 = 2; % Valor inicial
num_iter = 3; % Número de iteraciones

fprintf('\nMétodo de Newton-Raphson:\n');
fprintf('Iteración\t x_i\t     f(x_i)\t     f''(xi)\t x{i+1}\n');
fprintf('-------------------------------------------------------------\n');

for iter = 1:num_iter
    fx = f(x0);
    dfx = df(x0);
    x_new = x0 - fx / dfx;
    fprintf('%d\t\t %.6f\t %.6f\t %.6f\t %.6f\n', iter, x0, fx, dfx, x_new);
    x0 = x_new;
end

%% Método de la Secante
x0 = 1; % Primer valor inicial
x1 = 2; % Segundo valor inicial

fprintf('\nMétodo de la Secante:\n');
fprintf('Iteración\t x{i-1}\t xi\t     f(x{i-1})\t f(xi)\t x{i+1}\n');
fprintf('------------------------------------------------------------------\n');

for iter = 1:num_iter
    fx0 = f(x0);
    fx1 = f(x1);
    x_new = x1 - fx1 * (x1 - x0) / (fx1 - fx0);
    fprintf('%d\t\t %.6f\t %.6f\t %.6f\t %.6f\t %.6f\n', iter, x0, x1, fx0, fx1, x_new);
    x0 = x1;
    x1 = x_new;
end