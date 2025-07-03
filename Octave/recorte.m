clc

pkg load image;

% Cargar la imagen
imagen1 = imread('C:\Users\edcor\OneDrive\Escritorio\Octave\arte.png');

% Especificar los factores de escala en x e y (por ejemplo, sx=1.5 y sy=1.5 para aumentar el tamaño)
sx = 1.5; % Cambia el valor de sx según la necesidad
sy = 1.5; % Cambia el valor de sy según la necesidad

% Tamaño de la imagen original
[filas, columnas, ~] = size(imagen1);

% Calcular las dimensiones de la imagen escalada
nuevas_filas = round(filas * sy);
nuevas_columnas = round(columnas * sx);

% Crear una imagen vacía para almacenar el resultado del escalado
imagenEscalada = uint8(zeros(nuevas_filas, nuevas_columnas, 3));

% Aplicar el escalado a cada píxel de la imagen original
for x = 1:nuevas_filas
    for y = 1:nuevas_columnas
        % Calcular las coordenadas originales (x_original, y_original) en la imagen original
        x_original = x / sy;
        y_original = y / sx;

        % Comprobar si las coordenadas originales están dentro de la imagen original
        if x_original >= 1 && x_original <= filas && y_original >= 1 && y_original <= columnas
            % Copiar el píxel de la imagen original a la imagen escalada
            imagenEscalada(x, y, :) = imagen1(round(x_original), round(y_original), :);
        end
    end
end

% Definir las coordenadas de la ventana de recorte
ventana_x_min = 50; % Cambia estos valores según tu necesidad
ventana_x_max = 250;
ventana_y_min = 100;
ventana_y_max = 350;

% Realizar el recorte de la imagen escalada
imagenRecortada = imagenEscalada(ventana_x_min:ventana_x_max, ventana_y_min:ventana_y_max, :);

% Mostrar la imagen original, la imagen escalada y la imagen recortada
figure;
subplot(1, 2, 1), imshow(imagen1), title('Original');
subplot(1, 2, 2), imshow(imagenRecortada), title('Recortado');

