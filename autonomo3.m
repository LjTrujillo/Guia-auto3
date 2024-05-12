% Definir el rango de valores de x con 1000 puntos
x = linspace(0, 10, 1000);

% Definir las funciones f(x) y g(x)
f_x = exp(x/100) + 100 * sin(x);
g_x = x.^3 - 10*x.^2 + 5*x + 20;

% Graficar las funciones
figure;
plot(x, f_x, 'r-', x, g_x, 'b-');

% Título y etiquetas de ejes
title('Gráficas de f(x) y g(x)');
xlabel('x');
ylabel('y');

% Leyendas para las gráficas
legend('f(x) = e^(x/100) + 100 * sin(x)', 'g(x) = x^3 - 10x^2 + 5x + 20');

% Línea horizontal en y=0
hold on;
yline(0, 'k--');
hold off;
