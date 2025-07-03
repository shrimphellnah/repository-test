%Cortes Juarez Edson Alberti (Alumno 1)
clc
imagen1 = imread('C:\Users\edcor\OneDrive\Escritorio\Octave\arte.png');
[x, y, z] = size(imagen1);

x_image = imagen1;
y_image = imread('C:\Users\edcor\OneDrive\Escritorio\Octave\image03.png');

alpha = 0.8; % ajustar alpha
beta = 1 - alpha; %alpha + beta = 1

imagenResultado = zeros(x, y, z, 'uint8');

for i = 1:x
    for j = 1:y
        for k = 1:z
            if (x_image(i, j, k) == 0 || x_image(i, j, k) == 255)
                imagenResultado(i, j, k) = x_image(i, j, k);
            else
                imagenResultado(i, j, k) = uint8(alpha * double(x_image(i, j, k)) + beta * double(y_image(i, j, k)));
            end
        end
    end
end

imshow(imagenResultado), title('Combinacion Lineal');


