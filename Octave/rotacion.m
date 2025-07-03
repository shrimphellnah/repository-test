%Cortes Juarez Edson Alberti (Alumno 1)
clc

pkg load image;

% Cargar la imagen
imagen1 = imread('C:\Users\edcor\OneDrive\Escritorio\Octave\arte.png');

% Especificar el ángulo de rotación en radianes (por ejemplo, 30 grados)
angulo = deg2rad(30); % Cambia el valor del ángulo según la necesidad

% Definir la matriz de rotación
R = [cos(angulo) -sin(angulo); sin(angulo) cos(angulo)];

% Tamaño de la imagen original
[filas, columnas, ~] = size(imagen1);

% Crear una imagen vacía para almacenar el resultado de la rotación
imagenResultado = uint8(zeros(filas, columnas, 3));

% Aplicar la rotación a cada píxel de la imagen original
for x = 1:filas
    for y = 1:columnas
        % Aplicar la matriz de rotación a las coordenadas (x, y)
        coordenadas_rotadas = [x; y] - [filas / 2; columnas / 2]; % Traslación al origen
        coordenadas_rotadas = R * coordenadas_rotadas; % Rotación
        coordenadas_rotadas = coordenadas_rotadas + [filas / 2; columnas / 2]; % Traslación de regreso
        x_rotado = round(coordenadas_rotadas(1));
        y_rotado = round(coordenadas_rotadas(2));

        % Comprobar si las coordenadas rotadas están dentro de la imagen original
        if x_rotado >= 1 && x_rotado <= filas && y_rotado >= 1 && y_rotado <= columnas
            % Copiar el píxel de la imagen original a la imagen rotada
            imagenResultado(x, y, :) = imagen1(x_rotado, y_rotado, :);
        end
    end
end

% Mostrar la imagen original y la imagen resultante
figure;
subplot(1, 2, 1), imshow(imagen1), title('Original');
subplot(1, 2, 2), imshow(imagenResultado), title('Rotacion');

