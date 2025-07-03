%Cortes Juarez Edson Alberti (Alumno 1)
%Benitez Lopez Salvador Emiliano (Alumno 2)
clc
imagen1=imread('C:\Users\edcor\OneDrive\Escritorio\Octave\arte.png'),
[x,y,z] = size(imagen1),
alfa=5;
A = 255/(pi/2);

for i=1:x
  for j=1:y
    for k=1:z
      valor_original = double(imagen1(i,j,k))/255*(pi/2);
      nuevo_valor = alfa*sin(valor_original);
      imagenResultado(i,j,k) = uint8(nuevo_valor*A);
    end
  end
end

figure, subplot(1,2,1), imshow(imagen1), title('Original'),
subplot(1,2,2), imshow(imagenResultado), title('Aclarado Seno')
