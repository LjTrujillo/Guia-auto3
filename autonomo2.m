% Declarar dos matrices de tamaño 4x4 e inicializarlas con valores aleatorios
A = randi([0, 10], 4, 4);
B = randi([0, 10], 4, 4);

% Mostrar las matrices originales
disp('Matriz A:');
disp(A);
disp('Matriz B:');
disp(B);

% Operaciones entre matrices
% Suma de matrices
suma_AB = A + B;
disp('A + B:');
disp(suma_AB);

% Resta de matrices
resta_AB = A - B;
disp('A - B:');
disp(resta_AB);

% Multiplicación de matrices
mult_AB = A * B;
disp('A * B:');
disp(mult_AB);

% Operaciones elemento a elemento
% Suma elemento a elemento
suma_elemento_wise = A + B;
disp('A + B (element-wise):');
disp(suma_elemento_wise);

% Resta elemento a elemento
resta_elemento_wise = A - B;
disp('A - B (element-wise):');
disp(resta_elemento_wise);

% Multiplicación elemento a elemento
mult_elemento_wise = A .* B;
disp('A ⊙ B (element-wise):');
disp(mult_elemento_wise);

% Inversa de la matriz B
B_inversa = inv(B);
disp('Inversa de B:');
disp(B_inversa);

% Multiplicación de la inversa de B por A
mult_B_inversa_A = B_inversa * A;
disp('B^-1 * A:');
disp(mult_B_inversa_A);

% Multiplicación de A por la inversa de B
mult_A_B_inversa = A * B_inversa;
disp('A * B^-1:');
disp(mult_A_B_inversa);

% Inversa de la multiplicación de A por B
mult_AB_inversa = inv(mult_AB);
disp('(A * B)^-1:');
disp(mult_AB_inversa);

% Cuadrado de la matriz A
A_cuadrada = A^2;
disp('A^2:');
disp(A_cuadrada);

