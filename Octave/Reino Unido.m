clc
ancho = 500;
alto = 300;

 %linea blanca vertical
  background_color = [0, 0, 150];
  bandera = uint8(zeros([alto, ancho, 3]));
  bandera(:, :, 1) = background_color(1); % R
  bandera(:, :, 2) = background_color(2); % G
  bandera(:, :, 3) = background_color(3); % B

  ancho_cruz = 110; % Ancho de la cruz
  largo_cruz = 300; % Largo de la cruz

  inicio_x = floor((ancho - ancho_cruz) / 2) + 1;
  fin_x = inicio_x + ancho_cruz - 1;
  inicio_y = floor((alto - largo_cruz) / 2) + 1;
  fin_y = inicio_y + largo_cruz - 1;

  bandera(inicio_y:fin_y, inicio_x:fin_x, 1) = 255; % R en blanco
  bandera(inicio_y:fin_y, inicio_x:fin_x, 2) = 255; % G en blanco
  bandera(inicio_y:fin_y, inicio_x:fin_x, 3) = 255; % B en blanco

  % Añadir una línea blanca horizontal
  ancho_linea_blanca = ancho_cruz; % Ancho de la línea blanca
  alto_linea_blanca = 80; % Alto de la línea blanca

  inicio_y_linea_blanca = floor((alto - alto_linea_blanca) / 2) + 1;
  fin_y_linea_blanca = inicio_y_linea_blanca + alto_linea_blanca - 1;

  bandera(inicio_y_linea_blanca:fin_y_linea_blanca, :, 1) = 255; % R en blanco
  bandera(inicio_y_linea_blanca:fin_y_linea_blanca, :, 2) = 255; % G en blanco
  bandera(inicio_y_linea_blanca:fin_y_linea_blanca, :, 3) = 255; % B en blanco

  %linea roja vertical
  ancho_cruz_rojo = 80; % Ancho de la cruz
  largo_cruz_rojo = 300; % Largo de la cruz

  inicio_x_rojo = floor((ancho - ancho_cruz_rojo) / 2) + 1;
  fin_x_rojo = inicio_x_rojo + ancho_cruz_rojo - 1;
  inicio_y_rojo = floor((alto - largo_cruz_rojo) / 2) + 1;
  fin_y_rojo = inicio_y_rojo + largo_cruz_rojo - 1;

  bandera(inicio_y_rojo:fin_y_rojo, inicio_x_rojo:fin_x_rojo, 1) = 255; % R en blanco
  bandera(inicio_y_rojo:fin_y_rojo, inicio_x_rojo:fin_x_rojo, 2) = 0; % G en blanco
  bandera(inicio_y_rojo:fin_y_rojo, inicio_x_rojo:fin_x_rojo, 3) = 0; % B en blanco

  % Añadir una línea roja horizontal
  ancho_linea_roja = ancho_cruz_rojo; % Ancho de la línea roja
  alto_linea_roja = 50; % Alto de la línea roja

  inicio_y_linea_roja = floor((alto - alto_linea_roja) / 2) + 1;
  fin_y_linea_roja = inicio_y_linea_roja + alto_linea_roja - 1;

  bandera(inicio_y_linea_roja:fin_y_linea_roja, :, 1) = 255; % R en blanco
  bandera(inicio_y_linea_roja:fin_y_linea_roja, :, 2) = 0; % G en blanco
  bandera(inicio_y_linea_roja:fin_y_linea_roja, :, 3) = 0; % B en blanco

  figure, imshow(uint8(bandera))
