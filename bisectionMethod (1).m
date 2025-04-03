% Definir la función
f = @(x) x.^3 - 6*x.^2 + 11*x - 6;

% Intervalo dado
a = 1.5;
b = 2.5;

% a) Demostrar que hay una raíz en [1.5, 2.5]
if f(a) * f(b) < 0
    fprintf('Existe al menos una raíz en [%f, %f] porque f(a) * f(b) < 0.\n\n', a, b);
else
    fprintf('No se puede garantizar una raíz en [%f, %f].\n\n', a, b);
end

% b) Método de bisección con 3 iteraciones
fprintf('Método de Bisección (3 iteraciones):\n');
fprintf('Iteración |   a      |   b      |   c      | f(c)\n');
fprintf('------------------------------------------------\n');

for iter = 1:3
    c = (a + b) / 2;
    fprintf('%9d | %7.4f | %7.4f | %7.4f | %7.4f\n', iter, a, b, c, f(c));

    if f(a) * f(c) < 0
        b = c;
    else
        a = c;
    end
end
fprintf('\n');

% c) Método de la regla falsa con 3 iteraciones
a = 1.5;
b = 2.5;

fprintf('Método de la Regla Falsa (3 iteraciones):\n');
fprintf('Iteración |   a      |   b      |   c      | f(c)\n');
fprintf('------------------------------------------------\n');

for iter = 1:3
    c = b - (f(b) * (a - b)) / (f(a) - f(b)); % Fórmula de la regla falsa
    fprintf('%9d | %7.4f | %7.4f | %7.4f | %7.4f\n', iter, a, b, c, f(c));

    if f(a) * f(c) < 0
        b = c;
    else
        a = c;
    end
end
