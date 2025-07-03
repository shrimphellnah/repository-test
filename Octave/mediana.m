%Cortes Juarez Edson Alberti (Alumno 1)
imagen1 = imread('C:\Users\edcor\OneDrive\Escritorio\Octave\arte.png');
[x, y, z] = size(imagen1);

imagenResultado = zeros(x, y, z, 'uint8');

for i = 2:x-1 % Excluye el borde de la imagen
    for j = 2:y-1 % Excluye el borde de la imagen
        for k = 1:z
            % Extraer la vecindad 3x3
            Z3x3 = [
                imagen1(i-1, j-1, k), imagen1(i-1, j, k), imagen1(i-1, j+1, k);
                imagen1(i, j-1, k), imagen1(i, j, k), imagen1(i, j+1, k);
                imagen1(i+1, j-1, k), imagen1(i+1, j, k), imagen1(i+1, j+1, k)
            ];

            % Calcular la mediana de la vecindad
            mediana = median(Z3x3(:));

            % Asignar el valor de la mediana a la imagen resultante
            imagenResultado(i, j, k) = uint8(mediana);
        end
    end
end

imshow(imagenResultado), title('Filtro de Mediana');
