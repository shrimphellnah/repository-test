%Cortes Juarez Edson Alberti (Alumno 1)
clc

pkg load image;

% Cargar la imagen
imagen1 = imread('C:\Users\edcor\OneDrive\Escritorio\Octave\arte.png');

% Especificar los factores de escala en x e y (por ejemplo, sx=1.5 y sy=1.5 para aumentar el tamaño)
sx = 1.0; % Cambia el valor de sx según la necesidad
sy = 1.5; % Cambia el valor de sy según la necesidad

% Tamaño de la imagen original
[filas, columnas, ~] = size(imagen1);

% Crear una imagen vacía para almacenar el resultado del escalado
imagenResultado = uint8(zeros(round(filas * sy), round(columnas * sx), 3));

% Aplicar el escalado a cada píxel de la imagen original
for x = 1:size(imagenResultado, 1)
    for y = 1:size(imagenResultado, 2)
        % Calcular las coordenadas originales (x, y) en la imagen original
        x_original = x / sy;
        y_original = y / sx;

        % Comprobar si las coordenadas originales están dentro de la imagen original
        if x_original >= 1 && x_original <= filas && y_original >= 1 && y_original <= columnas
            % Copiar el píxel de la imagen original a la imagen escalada
            imagenResultado(x, y, :) = imagen1(round(x_original), round(y_original), :);
        end
    end
end

% Mostrar la imagen original y la imagen resultante
figure;
subplot(1, 2, 1), imshow(imagen1), title('Original');
subplot(1, 2, 2), imshow(imagenResultado), title('Escalado');

