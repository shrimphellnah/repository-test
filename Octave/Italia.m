clc
ancho = 500;
alto = 300;

bandera = zeros(alto, ancho, 3);

blanco = [255, 255, 255];
rojo = [255, 0.0, 0.0];
verde = [0, 255, 0];

alto_franja = ancho / 3;

% Dibujar las franjas
bandera(:, 1:alto_franja, 1) = verde(1);  % Canal rojo
bandera(:, 1:alto_franja, 2) = verde(2);  % Canal verde
bandera(:, 1:alto_franja, 3) = verde(3);  % Canal azul

bandera(:, alto_franja + 1:2 * alto_franja, 1) = blanco(1);
bandera(:, alto_franja + 1:2 * alto_franja, 2) = blanco(2);
bandera(:, alto_franja + 1:2 * alto_franja, 3) = blanco(3);

bandera(:, 2 * alto_franja + 1:end, 1) = rojo(1);
bandera(:, 2 * alto_franja + 1:end, 2) = rojo(2);
bandera(:, 2 * alto_franja + 1:end, 3) = rojo(3);

% Mostrar la bandera
figure, imshow(uint8(bandera));
