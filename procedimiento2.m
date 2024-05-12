% Definir el rango y el número de elementos
x = linspace(-10, 10, 40);

% Calcular las funciones
abs_x = abs(x);
sqrt_x = sqrt(abs(x)); % Se toma la raíz cuadrada del valor absoluto de x
cos_x = cos(x);
exp_x = exp(x);
log10_x = log10(abs(x)); % Se toma el logaritmo en base 10 del valor absoluto de x

% Graficar las funciones
figure;

subplot(3, 2, 1);
plot(x, abs_x, 'b');
title('|x|');
xlabel('x');
ylabel('|x|');

subplot(3, 2, 2);
plot(x, sqrt_x, 'r');
title('√x');
xlabel('x');
ylabel('√x');

subplot(3, 2, 3);
plot(x, cos_x, 'g');
title('cos(x)');
xlabel('x');
ylabel('cos(x)');

subplot(3, 2, 4);
plot(x, exp_x, 'm');
title('e^x');
xlabel('x');
ylabel('e^x');

subplot(3, 2, 5);
plot(x, log10_x, 'k');
title('log10(x)');
xlabel('x');
ylabel('log10(x)');

sgtitle('Gráficas de funciones');
