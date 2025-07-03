clc
imagen = zeros([500,500,3], 'uint8');
X=500;
Y=500;
Z=3;
for i=1:X
  for j=1:Y
    imagen(i,j,1)=0;
    imagen(i,j,2)=0;
    imagen(i,j,3)=0;
  end
end
X0=input("Introduce el valor de X0: ");
Y0=input("Introduce el valor de Y0: ");
X1=input("Introduce el valor de X1: ");
Y1=input("Introduce el valor de Y1: ");

m=(Y1-Y0)/(X1-X0);
b=Y0-m*X0;

for i=X0:X1
  YV=(uint8(m*i+b));
  for k=1.Z
    imagen(i,YV,k) = 255;
  end
end
figure,imshow(uint8(imagen));
