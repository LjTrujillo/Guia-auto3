% Script principal

% Definir el tamaño de la matriz
n = 4;

% Llamar a la función para generar la matriz
A = generarMatriz(n);

% Imprimir la matriz A en consola
disp('Matriz A:');
disp(A);

% Calcular el valor máximo de cada fila de A
maximos_por_fila = max(A,[],2);
disp('Vector de valores máximos por fila:');
disp(maximos_por_fila');

% Calcular el promedio de cada columna de A
promedios_por_columna = mean(A);
disp('Vector de promedios por columna:');
disp(promedios_por_columna);

% Obtener el número de elementos en A
num_elementos = numel(A);
disp(['Número de elementos en A: ' num2str(num_elementos)]);

% Ordenar las columnas de A de menor a mayor
A_ordenada = sort(A);
disp('Matriz A con columnas ordenadas de menor a mayor:');
disp(A_ordenada);

% Obtener el valor del elemento en la posición (x, y)
x = 2; % Fila
y = 3; % Columna
elemento_xy = obtenerElemento(A, x, y);
disp(['Elemento en la posición (' num2str(x) ',' num2str(y) '): ' num2str(elemento_xy)]);

% Función para generar la matriz A
function A = generarMatriz(n)
    A = magic(n);
end

% Función para obtener un elemento específico de la matriz
function elemento = obtenerElemento(A, x, y)
    elemento = A(x, y);
end