%Cortes Juarez Edson Alberti (Alumno 1)
%Benites Lopez Salvador Emiliano (Alumno 2)
clc
imagen1=imread('C:\Users\edcor\OneDrive\Escritorio\Octave\arte.png'),
[x,y,z] = size(imagen1),
alfa=5;
Lambda = 255;
a = 1.5;
A = Lambda / (1 - exp(-a));

for i=1:x
  for j=1:y
    for k=1:z
      valor_original = double(imagen1(i, j, k));
      nuevo_valor = A * (1 - exp(-a * valor_original / Lambda));
      imagenResultado(i, j, k) = uint8(nuevo_valor);
    end
  end
end

figure, subplot(1,2,1), imshow(imagen1), title('Original'),
subplot(1,2,2), imshow(imagenResultado), title('Aclarado exponencial')
