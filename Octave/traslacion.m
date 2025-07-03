%Cortes Juarez Edson Alberti (Alumno 1)
clc
pkg load image;

% Cargar la imagen
imagen1 = imread('C:\Users\edcor\OneDrive\Escritorio\Octave\arte.png');

% Definir las coordenadas de translación
tx = 50; % Cambia el valor de tx según la necesidad
ty = 30; % Cambia el valor de ty según la necesidad

% Definir la matriz de translación
T = [1 0 tx; 0 1 ty; 0 0 1];

% Tamaño de la imagen original
[filas, columnas, ~] = size(imagen1);

% Crear una imagen vacía para almacenar el resultado de la translación
imagenResultado = uint8(zeros(filas, columnas, 3));

% Aplicar la translación a cada píxel de la imagen original
for x = 1:filas
    for y = 1:columnas
        % Aplicar la matriz de translación a las coordenadas (x, y)
        coordenadas_transladadas = T * [x; y; 1];
        x_transladado = round(coordenadas_transladadas(1));
        y_transladado = round(coordenadas_transladadas(2));

        % Comprobar si las coordenadas trasladadas están dentro de la imagen original
        if x_transladado >= 1 && x_transladado <= filas && y_transladado >= 1 && y_transladado <= columnas
            % Copiar el píxel de la imagen original a la imagen trasladada
            imagenResultado(x_transladado, y_transladado, :) = imagen1(x, y, :);
        end
    end
end

% Mostrar la imagen original y la imagen resultante
figure;
subplot(1, 2, 1), imshow(imagen1), title('Original');
subplot(1, 2, 2), imshow(imagenResultado), title('Translación');

