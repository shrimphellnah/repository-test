%logaritmica
clc
imagen1=imread('C:\Users\edcor\OneDrive\Escritorio\Octave\arte.png'),
[x,y,z] = size(imagen1),
alfa=2;
A=double(255/log(double(alfa*255)+1));

for i=1:x
  for j=1:y
    for k=1:z
      if(imagen1(i,j,k)==0||imagen1(i,j,k)==255)
        imagenResultado(i,j,k) = imagen1(i,j,k);
       else
        imagenResultado(i,j,k) = uint8(A*log(double(alfa*double(imagen1(i,j,k)+1))));
        end
    end
  end
end

figure, subplot(1,2,1), imshow(imagen1), title('Original'),
subplot(1,2,2), imshow(imagenResultado), title('Aclarado LN')

