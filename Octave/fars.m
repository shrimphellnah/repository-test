%Cortes Juarez Edson Alberti (Alumno 1)
clc
imagen1 = imread('C:\Users\edcor\OneDrive\Escritorio\Octave\arte.png');
[x, y, z] = size(imagen1);

x_image = imagen1;
y_image = imread('C:\Users\edcor\OneDrive\Escritorio\Octave\image03.png');

%Lambda = 255;

imagenResultado = zeros(x, y, z, 'uint8');

for i = 1:x
    for j = 1:y
        for k = 1:z
            fars_result = x_image(i, j, k) + y_image(i, j, k);
            if fars_result < 255 - 1
                imagenResultado(i, j, k) = uint8(fars_result);
            else
                imagenResultado(i, j, k) = uint8(255 - 1);
            end
        end
    end
end

imshow(imagenResultado), title('Combinacion Fars');

