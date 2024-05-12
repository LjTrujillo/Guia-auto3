% Leer los datos del archivo .edf
[datos, header] = edfread('r01.edf');

% Visualizar la información del encabezado
disp(header);

% Visualizar el tamaño de los datos leídos
disp(size(datos));

frecuencia = 200;  
duracion_total = 30;  
tiempo = linspace(0, duracion_total, duracion_total * frecuencia);

amplitud_max = 100;  % Amplitud máxima en microvoltios
senal_eeg = randn(size(tiempo)) * amplitud_max;

% Definir el tiempo de inicio y fin para graficar 5 segundos
tiempo_inicio = 0;  % en segundos
duracion = 5;       % en segundos
tiempo_fin = tiempo_inicio + duracion;

% Convertir tiempo a índices de muestras
indice_inicio = tiempo_inicio * frecuencia + 1;  % +1 porque MATLAB indexa desde 1
indice_fin = tiempo_fin * frecuencia + 1;

% Extraer los datos del canal EEG seleccionado para los 5 segundos
datos_5segundos = senal_eeg(indice_inicio:indice_fin);

% Calcular el tiempo correspondiente en segundos para el eje x
tiempo_5segundos = tiempo(indice_inicio:indice_fin);

% Graficar
plot(tiempo_5segundos, datos_5segundos);
xlabel('Tiempo (segundos)');
ylabel('Amplitud (microvoltios)');
title('5 segundos de señal EEG');

% Detectar picos QRS
[~,locs] = findpeaks(datos_5segundos, 'MinPeakHeight', max(datos_5segundos)/2);

% Dibujar líneas verticales en los picos QRS
hold on;
for i = 1:length(locs)
    plot([tiempo_5segundos(locs(i)), tiempo_5segundos(locs(i))], ylim, 'r--');
end
hold off;
