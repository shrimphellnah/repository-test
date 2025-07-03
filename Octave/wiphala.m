clc
ancho = 400;
alto = 300;

background_color = [255, 255, 255];
  bandera = uint8(zeros([alto, ancho, 3]));
  bandera(:, :, 1) = background_color(1); % R
  bandera(:, :, 2) = background_color(2); % G
  bandera(:, :, 3) = background_color(3); % B

  % Definir las dimensiones del cuadrado amarillo
cuadrado_ancho = 100/2;
cuadrado_alto = 100/2;

% Coordenadas del cuadrado amarillo en la parte inferior izquierda
x_inicio = 1;
y_inicio = 350 - cuadrado_alto + 1;
x_final = 1 + cuadrado_ancho - 1;
y_final = 350;

% Color amarillo (en formato RGB)
yellow = [250, 220, 0];

% Rellenar el cuadrado con color amarillo
bandera(y_inicio:y_final, x_inicio:x_final, 1) = yellow(1); % R
bandera(y_inicio:y_final, x_inicio:x_final, 2) = yellow(2); % G
bandera(y_inicio:y_final, x_inicio:x_final, 3) = yellow(3); % B


%amarillo inversa vertical

x_inicio = 300;
y_inicio = 300 - cuadrado_alto + 1;
x_final = 300 + cuadrado_ancho - 1;
y_final = 300;

bandera(y_inicio:y_final, x_inicio:x_final, 1) = yellow(1);
bandera(y_inicio:y_final, x_inicio:x_final, 2) = yellow(2);
bandera(y_inicio:y_final, x_inicio:x_final, 3) = yellow(3);

%amarillo inversa quinta columna

x_inicio = 250;
y_inicio = 250 - cuadrado_alto + 1;
x_final = 250 + cuadrado_ancho - 1;
y_final = 250;

bandera(y_inicio:y_final, x_inicio:x_final, 1) = yellow(1);
bandera(y_inicio:y_final, x_inicio:x_final, 2) = yellow(2);
bandera(y_inicio:y_final, x_inicio:x_final, 3) = yellow(3);

%amarillo inversa cuarta columna

x_inicio = 200;
y_inicio = 200 - cuadrado_alto + 1;
x_final = 200 + cuadrado_ancho - 1;
y_final = 200;

bandera(y_inicio:y_final, x_inicio:x_final, 1) = yellow(1);
bandera(y_inicio:y_final, x_inicio:x_final, 2) = yellow(2);
bandera(y_inicio:y_final, x_inicio:x_final, 3) = yellow(3);

%amarillo inversa tercera columna

x_inicio = 200;
y_inicio = 200 - cuadrado_alto + 1;
x_final = 200 + cuadrado_ancho - 1;
y_final = 200;

bandera(y_inicio:y_final, x_inicio:x_final, 1) = yellow(1);
bandera(y_inicio:y_final, x_inicio:x_final, 2) = yellow(2);
bandera(y_inicio:y_final, x_inicio:x_final, 3) = yellow(3);

%amarillo inversa segunda columna

x_inicio = 150;
y_inicio = 150 - cuadrado_alto + 1;
x_final = 150 + cuadrado_ancho - 1;
y_final = 150;

bandera(y_inicio:y_final, x_inicio:x_final, 1) = yellow(1);
bandera(y_inicio:y_final, x_inicio:x_final, 2) = yellow(2);
bandera(y_inicio:y_final, x_inicio:x_final, 3) = yellow(3);

%amarillo inversa primera columna

x_inicio = 100;
y_inicio = 100 - cuadrado_alto + 1;
x_final = 100 + cuadrado_ancho - 1;
y_final = 100;

bandera(y_inicio:y_final, x_inicio:x_final, 1) = yellow(1);
bandera(y_inicio:y_final, x_inicio:x_final, 2) = yellow(2);
bandera(y_inicio:y_final, x_inicio:x_final, 3) = yellow(3);

%amarillo inversa horizontal

x_inicio = 50;
y_inicio = 50 - cuadrado_alto + 1;
x_final = 50 + cuadrado_ancho - 1;
y_final = 50;

bandera(y_inicio:y_final, x_inicio:x_final, 1) = yellow(1);
bandera(y_inicio:y_final, x_inicio:x_final, 2) = yellow(2);
bandera(y_inicio:y_final, x_inicio:x_final, 3) = yellow(3);

% naranja (vertical)
cuadrado_ancho_naran = 100/2;
cuadrado_alto_naran = 100/2;

x_inicio_naran = 1;
y_inicio_naran = 300 - cuadrado_alto_naran + 1;
x_final_naran = 1 + cuadrado_ancho_naran - 1;
y_final_naran = 300;

orange = [244, 150, 0];

bandera(y_inicio_naran:y_final_naran, x_inicio_naran:x_final_naran, 1) = orange(1);
bandera(y_inicio_naran:y_final_naran, x_inicio_naran:x_final_naran, 2) = orange(2);
bandera(y_inicio_naran:y_final_naran, x_inicio_naran:x_final_naran, 3) = orange(3);

%naranja inversa vertical

x_inicio_naran = 300;
y_inicio_naran = 250 - cuadrado_alto_naran + 1;
x_final_naran = 300 + cuadrado_ancho_naran - 1;
y_final_naran = 250;

bandera(y_inicio_naran:y_final_naran, x_inicio_naran:x_final_naran, 1) = orange(1);
bandera(y_inicio_naran:y_final_naran, x_inicio_naran:x_final_naran, 2) = orange(2);
bandera(y_inicio_naran:y_final_naran, x_inicio_naran:x_final_naran, 3) = orange(3);

%naranja inversa cuarta columna

x_inicio_naran = 250;
y_inicio_naran = 200 - cuadrado_alto_naran + 1;
x_final_naran = 250 + cuadrado_ancho_naran - 1;
y_final_naran = 200;

bandera(y_inicio_naran:y_final_naran, x_inicio_naran:x_final_naran, 1) = orange(1);
bandera(y_inicio_naran:y_final_naran, x_inicio_naran:x_final_naran, 2) = orange(2);
bandera(y_inicio_naran:y_final_naran, x_inicio_naran:x_final_naran, 3) = orange(3);

%naranja inversa tercera columna

x_inicio_naran = 200;
y_inicio_naran = 150 - cuadrado_alto_naran + 1;
x_final_naran = 200 + cuadrado_ancho_naran - 1;
y_final_naran = 150;

bandera(y_inicio_naran:y_final_naran, x_inicio_naran:x_final_naran, 1) = orange(1);
bandera(y_inicio_naran:y_final_naran, x_inicio_naran:x_final_naran, 2) = orange(2);
bandera(y_inicio_naran:y_final_naran, x_inicio_naran:x_final_naran, 3) = orange(3);

%naranja inversa segunda columna

x_inicio_naran = 150;
y_inicio_naran = 100 - cuadrado_alto_naran + 1;
x_final_naran = 150 + cuadrado_ancho_naran - 1;
y_final_naran = 100;

bandera(y_inicio_naran:y_final_naran, x_inicio_naran:x_final_naran, 1) = orange(1);
bandera(y_inicio_naran:y_final_naran, x_inicio_naran:x_final_naran, 2) = orange(2);
bandera(y_inicio_naran:y_final_naran, x_inicio_naran:x_final_naran, 3) = orange(3);

%naranja inversa horizontal

x_inicio_naran = 100;
y_inicio_naran = 50 - cuadrado_alto_naran + 1;
x_final_naran = 100 + cuadrado_ancho_naran - 1;
y_final_naran = 50;

bandera(y_inicio_naran:y_final_naran, x_inicio_naran:x_final_naran, 1) = orange(1);
bandera(y_inicio_naran:y_final_naran, x_inicio_naran:x_final_naran, 2) = orange(2);
bandera(y_inicio_naran:y_final_naran, x_inicio_naran:x_final_naran, 3) = orange(3);

%naranja (horizontal)
x_inicio_naran = 50;
y_inicio_naran = 350 - cuadrado_alto_naran + 1;
x_final_naran = 50 + cuadrado_ancho_naran - 1;
y_final_naran = 350;

bandera(y_inicio_naran:y_final_naran, x_inicio_naran:x_final_naran, 1) = orange(1);
bandera(y_inicio_naran:y_final_naran, x_inicio_naran:x_final_naran, 2) = orange(2);
bandera(y_inicio_naran:y_final_naran, x_inicio_naran:x_final_naran, 3) = orange(3);


%rojo (vertical)

cuadrado_ancho_rojo = 100/2;
cuadrado_alto_rojo = 100/2;

x_inicio_rojo = 1;
y_inicio_rojo = 250 - cuadrado_alto_rojo + 1;
x_final_rojo = 1 + cuadrado_ancho_rojo - 1;
y_final_rojo = 250;

red = [254, 0, 0];

bandera(y_inicio_rojo:y_final_rojo, x_inicio_rojo:x_final_rojo, 1) = red(1);
bandera(y_inicio_rojo:y_final_rojo, x_inicio_rojo:x_final_rojo, 2) = red(2);
bandera(y_inicio_rojo:y_final_rojo, x_inicio_rojo:x_final_rojo, 3) = red(3);

%rojo inversa vertical /////////////////////////////////

x_inicio_rojo = 300;
y_inicio_rojo = 200 - cuadrado_alto_rojo + 1;
x_final_rojo = 300 + cuadrado_ancho_rojo - 1;
y_final_rojo = 200;

bandera(y_inicio_rojo:y_final_rojo, x_inicio_rojo:x_final_rojo, 1) = red(1);
bandera(y_inicio_rojo:y_final_rojo, x_inicio_rojo:x_final_rojo, 2) = red(2);
bandera(y_inicio_rojo:y_final_rojo, x_inicio_rojo:x_final_rojo, 3) = red(3);

%rojo inversa tercera columna //////////////////////////

x_inicio_rojo = 250;
y_inicio_rojo = 150 - cuadrado_alto_rojo + 1;
x_final_rojo = 250 + cuadrado_ancho_rojo - 1;
y_final_rojo = 150;

bandera(y_inicio_rojo:y_final_rojo, x_inicio_rojo:x_final_rojo, 1) = red(1);
bandera(y_inicio_rojo:y_final_rojo, x_inicio_rojo:x_final_rojo, 2) = red(2);
bandera(y_inicio_rojo:y_final_rojo, x_inicio_rojo:x_final_rojo, 3) = red(3);

%rojo inversa segunda columna ///////////////////////

x_inicio_rojo = 200;
y_inicio_rojo = 100 - cuadrado_alto_rojo + 1;
x_final_rojo = 200 + cuadrado_ancho_rojo - 1;
y_final_rojo = 100;

bandera(y_inicio_rojo:y_final_rojo, x_inicio_rojo:x_final_rojo, 1) = red(1);
bandera(y_inicio_rojo:y_final_rojo, x_inicio_rojo:x_final_rojo, 2) = red(2);
bandera(y_inicio_rojo:y_final_rojo, x_inicio_rojo:x_final_rojo, 3) = red(3);

%rojo inversa horizontal ///////////////////////

x_inicio_rojo = 150;
y_inicio_rojo = 50 - cuadrado_alto_rojo + 1;
x_final_rojo = 150 + cuadrado_ancho_rojo - 1;
y_final_rojo = 50;

bandera(y_inicio_rojo:y_final_rojo, x_inicio_rojo:x_final_rojo, 1) = red(1);
bandera(y_inicio_rojo:y_final_rojo, x_inicio_rojo:x_final_rojo, 2) = red(2);
bandera(y_inicio_rojo:y_final_rojo, x_inicio_rojo:x_final_rojo, 3) = red(3);


%rojo (horizontal)

x_inicio_rojo = 100;
y_inicio_rojo = 350 - cuadrado_alto_rojo + 1;
x_final_rojo = 100 + cuadrado_ancho_rojo - 1;
y_final_rojo = 350;

bandera(y_inicio_rojo:y_final_rojo, x_inicio_rojo:x_final_rojo, 1) = red(1);
bandera(y_inicio_rojo:y_final_rojo, x_inicio_rojo:x_final_rojo, 2) = red(2);
bandera(y_inicio_rojo:y_final_rojo, x_inicio_rojo:x_final_rojo, 3) = red(3);


%rojo(diagonal)

x_inicio_rojo = 50;
y_inicio_rojo = 300 - cuadrado_alto_rojo + 1;
x_final_rojo = 50 + cuadrado_ancho_rojo - 1;
y_final_rojo = 300;

bandera(y_inicio_rojo:y_final_rojo, x_inicio_rojo:x_final_rojo, 1) = red(1);
bandera(y_inicio_rojo:y_final_rojo, x_inicio_rojo:x_final_rojo, 2) = red(2);
bandera(y_inicio_rojo:y_final_rojo, x_inicio_rojo:x_final_rojo, 3) = red(3);



%morado(vertical)

cuadrado_ancho_mor = 100/2;
cuadrado_alto_mor = 100/2;

x_inicio_mor = 1;
y_inicio_mor = 200 - cuadrado_alto_mor + 1;
x_final_mor = 1 + cuadrado_ancho_mor - 1;
y_final_mor = 200;

purple = [150, 0, 150];

bandera(y_inicio_mor:y_final_mor, x_inicio_mor:x_final_mor, 1) = purple(1);
bandera(y_inicio_mor:y_final_mor, x_inicio_mor:x_final_mor, 2) = purple(2);
bandera(y_inicio_mor:y_final_mor, x_inicio_mor:x_final_mor, 3) = purple(3);

%morado inversa vertical ///////////////////

x_inicio_mor = 300;
y_inicio_mor = 150 - cuadrado_alto_mor + 1;
x_final_mor = 300 + cuadrado_ancho_mor - 1;
y_final_mor = 150;

bandera(y_inicio_mor:y_final_mor, x_inicio_mor:x_final_mor, 1) = purple(1);
bandera(y_inicio_mor:y_final_mor, x_inicio_mor:x_final_mor, 2) = purple(2);
bandera(y_inicio_mor:y_final_mor, x_inicio_mor:x_final_mor, 3) = purple(3);

%morado inversa horizontal ////////////////

x_inicio_mor = 250;
y_inicio_mor = 100 - cuadrado_alto_mor + 1;
x_final_mor = 250 + cuadrado_ancho_mor - 1;
y_final_mor = 100;

bandera(y_inicio_mor:y_final_mor, x_inicio_mor:x_final_mor, 1) = purple(1);
bandera(y_inicio_mor:y_final_mor, x_inicio_mor:x_final_mor, 2) = purple(2);
bandera(y_inicio_mor:y_final_mor, x_inicio_mor:x_final_mor, 3) = purple(3);

%morado inversa diagonal ///////////////////

x_inicio_mor = 200;
y_inicio_mor = 50 - cuadrado_alto_mor + 1;
x_final_mor = 200 + cuadrado_ancho_mor - 1;
y_final_mor = 50;

bandera(y_inicio_mor:y_final_mor, x_inicio_mor:x_final_mor, 1) = purple(1);
bandera(y_inicio_mor:y_final_mor, x_inicio_mor:x_final_mor, 2) = purple(2);
bandera(y_inicio_mor:y_final_mor, x_inicio_mor:x_final_mor, 3) = purple(3);

%morado(tercera columna)

x_inicio_mor = 50;
y_inicio_mor = 250 - cuadrado_alto_mor + 1;
x_final_mor = 50 + cuadrado_ancho_mor - 1;
y_final_mor = 250;

bandera(y_inicio_mor:y_final_mor, x_inicio_mor:x_final_mor, 1) = purple(1);
bandera(y_inicio_mor:y_final_mor, x_inicio_mor:x_final_mor, 2) = purple(2);
bandera(y_inicio_mor:y_final_mor, x_inicio_mor:x_final_mor, 3) = purple(3);

%morado(segunda columna)

x_inicio_mor = 100;
y_inicio_mor = 300 - cuadrado_alto_mor + 1;
x_final_mor = 100 + cuadrado_ancho_mor - 1;
y_final_mor = 300;

bandera(y_inicio_mor:y_final_mor, x_inicio_mor:x_final_mor, 1) = purple(1);
bandera(y_inicio_mor:y_final_mor, x_inicio_mor:x_final_mor, 2) = purple(2);
bandera(y_inicio_mor:y_final_mor, x_inicio_mor:x_final_mor, 3) = purple(3);

%morado (horizontal)

x_inicio_mor = 150;
y_inicio_mor = 350 - cuadrado_alto_mor + 1;
x_final_mor = 150 + cuadrado_ancho_mor - 1;
y_final_mor = 350;

bandera(y_inicio_mor:y_final_mor, x_inicio_mor:x_final_mor, 1) = purple(1);
bandera(y_inicio_mor:y_final_mor, x_inicio_mor:x_final_mor, 2) = purple(2);
bandera(y_inicio_mor:y_final_mor, x_inicio_mor:x_final_mor, 3) = purple(3);

%azul(vertical)

cuadrado_ancho_az = 100/2;
cuadrado_alto_az = 100/2;

x_inicio_az = 1;
y_inicio_az = 150 - cuadrado_alto_az + 1;
x_final_az = 1 + cuadrado_ancho_az - 1;
y_final_az = 150;

blue = [0, 0, 230];

bandera(y_inicio_az:y_final_az, x_inicio_az:x_final_az, 1) = blue(1);
bandera(y_inicio_az:y_final_az, x_inicio_az:x_final_az, 2) = blue(2);
bandera(y_inicio_az:y_final_az, x_inicio_az:x_final_az, 3) = blue(3);


%azul inversa vertical

x_inicio_az = 250;
y_inicio_az = 50 - cuadrado_alto_az + 1;
x_final_az = 250 + cuadrado_ancho_az - 1;
y_final_az = 50;

bandera(y_inicio_az:y_final_az, x_inicio_az:x_final_az, 1) = blue(1);
bandera(y_inicio_az:y_final_az, x_inicio_az:x_final_az, 2) = blue(2);
bandera(y_inicio_az:y_final_az, x_inicio_az:x_final_az, 3) = blue(3);

%azul inversa horizontal ///////

x_inicio_az = 300;
y_inicio_az = 100 - cuadrado_alto_az + 1;
x_final_az = 300 + cuadrado_ancho_az - 1;
y_final_az = 100;

bandera(y_inicio_az:y_final_az, x_inicio_az:x_final_az, 1) = blue(1);
bandera(y_inicio_az:y_final_az, x_inicio_az:x_final_az, 2) = blue(2);
bandera(y_inicio_az:y_final_az, x_inicio_az:x_final_az, 3) = blue(3);


%azul(cuarta columna)

x_inicio_az = 50;
y_inicio_az = 200 - cuadrado_alto_az + 1;
x_final_az = 50 + cuadrado_ancho_az - 1;
y_final_az = 200;

bandera(y_inicio_az:y_final_az, x_inicio_az:x_final_az, 1) = blue(1);
bandera(y_inicio_az:y_final_az, x_inicio_az:x_final_az, 2) = blue(2);
bandera(y_inicio_az:y_final_az, x_inicio_az:x_final_az, 3) = blue(3);

%azul(tercera columna)

x_inicio_az = 100;
y_inicio_az = 250 - cuadrado_alto_az + 1;
x_final_az = 100 + cuadrado_ancho_az - 1;
y_final_az = 250;

bandera(y_inicio_az:y_final_az, x_inicio_az:x_final_az, 1) = blue(1);
bandera(y_inicio_az:y_final_az, x_inicio_az:x_final_az, 2) = blue(2);
bandera(y_inicio_az:y_final_az, x_inicio_az:x_final_az, 3) = blue(3);

%azul(segunda columna)

x_inicio_az = 150;
y_inicio_az = 300 - cuadrado_alto_az + 1;
x_final_az = 150 + cuadrado_ancho_az - 1;
y_final_az = 300;

bandera(y_inicio_az:y_final_az, x_inicio_az:x_final_az, 1) = blue(1);
bandera(y_inicio_az:y_final_az, x_inicio_az:x_final_az, 2) = blue(2);
bandera(y_inicio_az:y_final_az, x_inicio_az:x_final_az, 3) = blue(3);

%azul(horizontal)

x_inicio_az = 200;
y_inicio_az = 350 - cuadrado_alto_az + 1;
x_final_az = 200 + cuadrado_ancho_az - 1;
y_final_az = 350;

bandera(y_inicio_az:y_final_az, x_inicio_az:x_final_az, 1) = blue(1);
bandera(y_inicio_az:y_final_az, x_inicio_az:x_final_az, 2) = blue(2);
bandera(y_inicio_az:y_final_az, x_inicio_az:x_final_az, 3) = blue(3);


%verde(vertical)

cuadrado_ancho_ver = 100/2;
cuadrado_alto_ver = 100/2;

x_inicio_ver = 1;
y_inicio_ver = 100 - cuadrado_alto_ver + 1;
x_final_ver = 1 + cuadrado_ancho_ver - 1;
y_final_ver = 100;

green = [0, 180, 0];

bandera(y_inicio_ver:y_final_ver, x_inicio_ver:x_final_ver, 1) = green(1);
bandera(y_inicio_ver:y_final_ver, x_inicio_ver:x_final_ver, 2) = green(2);
bandera(y_inicio_ver:y_final_ver, x_inicio_ver:x_final_ver, 3) = green(3);

%verde vertical inversa !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

x_inicio_ver = 300;
y_inicio_ver = 50 - cuadrado_alto_ver + 1;
x_final_ver = 300 + cuadrado_ancho_ver - 1;
y_final_ver = 50;

bandera(y_inicio_ver:y_final_ver, x_inicio_ver:x_final_ver, 1) = green(1);
bandera(y_inicio_ver:y_final_ver, x_inicio_ver:x_final_ver, 2) = green(2);
bandera(y_inicio_ver:y_final_ver, x_inicio_ver:x_final_ver, 3) = green(3);

%verde(sexta columna)

x_inicio_ver = 50;
y_inicio_ver = 150 - cuadrado_alto_ver + 1;
x_final_ver = 50 + cuadrado_ancho_ver - 1;
y_final_ver = 150;

bandera(y_inicio_ver:y_final_ver, x_inicio_ver:x_final_ver, 1) = green(1);
bandera(y_inicio_ver:y_final_ver, x_inicio_ver:x_final_ver, 2) = green(2);
bandera(y_inicio_ver:y_final_ver, x_inicio_ver:x_final_ver, 3) = green(3);

%verde(quinta columna)

x_inicio_ver = 100;
y_inicio_ver = 200 - cuadrado_alto_ver + 1;
x_final_ver = 100 + cuadrado_ancho_ver - 1;
y_final_ver = 200;

bandera(y_inicio_ver:y_final_ver, x_inicio_ver:x_final_ver, 1) = green(1);
bandera(y_inicio_ver:y_final_ver, x_inicio_ver:x_final_ver, 2) = green(2);
bandera(y_inicio_ver:y_final_ver, x_inicio_ver:x_final_ver, 3) = green(3);

%verde(cuarta columna)

x_inicio_ver = 150;
y_inicio_ver = 250 - cuadrado_alto_ver + 1;
x_final_ver = 150 + cuadrado_ancho_ver - 1;
y_final_ver = 250;

bandera(y_inicio_ver:y_final_ver, x_inicio_ver:x_final_ver, 1) = green(1);
bandera(y_inicio_ver:y_final_ver, x_inicio_ver:x_final_ver, 2) = green(2);
bandera(y_inicio_ver:y_final_ver, x_inicio_ver:x_final_ver, 3) = green(3);

%verde(tercera columna)

x_inicio_ver = 200;
y_inicio_ver = 300 - cuadrado_alto_ver + 1;
x_final_ver = 200 + cuadrado_ancho_ver - 1;
y_final_ver = 300;

bandera(y_inicio_ver:y_final_ver, x_inicio_ver:x_final_ver, 1) = green(1);
bandera(y_inicio_ver:y_final_ver, x_inicio_ver:x_final_ver, 2) = green(2);
bandera(y_inicio_ver:y_final_ver, x_inicio_ver:x_final_ver, 3) = green(3);

%verde(segunda columna)

x_inicio_ver = 250;
y_inicio_ver = 350 - cuadrado_alto_ver + 1;
x_final_ver = 250 + cuadrado_ancho_ver - 1;
y_final_ver = 350;

bandera(y_inicio_ver:y_final_ver, x_inicio_ver:x_final_ver, 1) = green(1);
bandera(y_inicio_ver:y_final_ver, x_inicio_ver:x_final_ver, 2) = green(2);
bandera(y_inicio_ver:y_final_ver, x_inicio_ver:x_final_ver, 3) = green(3);

% Mostrar la bandera
imshow(bandera);
