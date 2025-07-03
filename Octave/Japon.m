clc
alto = 300;
ancho = 500;

  background_color = [255, 255, 255];
  imagen = uint8(zeros([alto, ancho, 3]));
  imagen(:, :, 1) = background_color(1); % R
  imagen(:, :, 2) = background_color(2); % G
  imagen(:, :, 3) = background_color(3); % B

circle_color = [255, 0, 0];

radio = 25;
centro_x = ancho/2;
centro_y = alto/2;

imagen_figura = uint8(zeros(alto, ancho, 3));

for i = 1:size(imagen_figura, 3)
    for y = 1:alto
    for x = 1:ancho
        distancia_centro = sqrt((x - centro_x)^2 + (y - centro_y)^2);
        if distancia_centro <= radio
            imagen_figura(y, x, :) = circle_color;
        end
      end
    end
    end
  figure, imshow(uint8(imagen_figura));

