clc
ancho = 500;
alto = 300;

bandera = zeros(alto, ancho, 3);

negro = [0, 0, 0];
rojo = [255, 0.0, 0.0];
dorado = [255, 215, 0];

ancho_franja = alto / 3;

bandera(1:ancho_franja, :, 1) = negro(1);  % Canal rojo
bandera(1:ancho_franja, :, 2) = negro(2);  % Canal verde
bandera(1:ancho_franja, :, 3) = negro(3);  % Canal azul

bandera(ancho_franja+1:2*ancho_franja, :, 1) = rojo(1);  % Canal rojo
bandera(ancho_franja+1:2*ancho_franja, :, 2) = rojo(2);  % Canal verde
bandera(ancho_franja+1:2*ancho_franja, :, 3) = rojo(3);  % Canal azul

bandera(2*ancho_franja+1:end, :, 1) = dorado(1);  % Canal rojo
bandera(2*ancho_franja+1:end, :, 2) = dorado(2);  % Canal verde
bandera(2*ancho_franja+1:end, :, 3) = dorado(3);  % Canal azul


figure, imshow(uint8(bandera));
