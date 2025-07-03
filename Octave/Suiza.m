clc
ancho = 500;
alto = 300;

  background_color = [255, 0, 0];
  bandera = uint8(zeros([alto, ancho, 3]));
  bandera(:, :, 1) = background_color(1); % R
  bandera(:, :, 2) = background_color(2); % G
  bandera(:, :, 3) = background_color(3); % B

  ancho_cruz = 180; % Ancho de la cruz
  largo_cruz = 60; % Largo de la cruz

  inicio_x = floor((ancho - ancho_cruz) / 2) + 1;
  fin_x = inicio_x + ancho_cruz - 1;
  inicio_y = floor((alto - largo_cruz) / 2) + 1;
  fin_y = inicio_y + largo_cruz - 1;

  bandera(inicio_y:fin_y, inicio_x:fin_x, 1) = 255; % R en blanco
  bandera(inicio_y:fin_y, inicio_x:fin_x, 2) = 255; % G en blanco
  bandera(inicio_y:fin_y, inicio_x:fin_x, 3) = 255; % B en blanco

% Agregar una segunda línea blanca vertical en el centro
  segundo_ancho_cruz = 60;
  segundo_largo_cruz = largo_cruz + 120;

  inicio_segundo_x = floor((ancho - segundo_ancho_cruz) / 2) + 1;
  fin_segundo_x = inicio_segundo_x + segundo_ancho_cruz - 1;
  inicio_segundo_y = floor((alto - segundo_largo_cruz) / 2) + 1;
  fin_segundo_y = inicio_segundo_y + segundo_largo_cruz - 1;

  bandera(inicio_segundo_y:fin_segundo_y, inicio_segundo_x:fin_segundo_x, 1) = 255; % R en blanco
  bandera(inicio_segundo_y:fin_segundo_y, inicio_segundo_x:fin_segundo_x, 2) = 255; % G en blanco
  bandera(inicio_segundo_y:fin_segundo_y, inicio_segundo_x:fin_segundo_x, 3) = 255; % B en blanco



  figure, imshow(uint8(bandera))
