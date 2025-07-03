%Cortes Juarez Edson Alberti (Alumno 1)
clc
imagenx = imread('C:\Users\edcor\OneDrive\Escritorio\Octave\arte.png');
imageny = imread('C:\Users\edcor\OneDrive\Escritorio\Octave\image02.jpg');

k = 1 / (255 - 1); % Calculate k

[m,n,~] = size(imagenx);

imagenResultado = zeros(x, y, 3);

for i = 1:m
    for j = 1:n
            % Calculate the product using the formula z = k * x * y
            pix_x = double(imagenx(i,j,:));
            pix_y = double(imageny(i,j,:));

            for c =1:3
              imagenResultado(i, j, c) = k * pix_x(c) * pix_y(c);
        end
    end
end

imagenResultado = min(max(imagenResultado, 0), 255);

imagenResultado = uint8(imagenResultado);

imshow(imagenResultado), title('Producto de Imágenes');

