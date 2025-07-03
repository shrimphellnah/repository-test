function negativa
%Cortes Juarez Edson Alberti (Alumno 1)
%Benitez Lopez Salvador (Alumno 2)
imagen=imread('C:\Users\edcor\OneDrive\Escritorio\Octave\arte.png');
[x,y,z]=size(imagen);

T(1) = max(max(imagen(:,:,1)));
T(2) = max(max(imagen(:,:,2)));
T(3) = max(max(imagen(:,:,3)));

for i=1:x
  for j=1:y
    for k=1:z
      imagen2(i,j,k) = T(k) - imagen(i,j,k);
      end
    end
  end

figure, imshow(imagen), title('original'),
figure, imshow(imagen2), title('negativa copia'),
