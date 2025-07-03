clc
X=500;
Y=500;
Z=3;

  background_color = [0, 255, 0];
  imagen = uint8(zeros([X, Y, Z]));
  imagen(:, :, 1) = background_color(1); % R
  imagen(:, :, 2) = background_color(2); % G
  imagen(:, :, 3) = background_color(3); % B

  x0 = input("Ingrese x0: ");
  y0 = input("Ingrese y0: ");
  x1 = input("Ingrese x1: ");
  y1 = input("Ingrese y1: ");

  dx = x1 - x0;
  dy = y1 - y0;

  if abs(dx) > abs(dy)
    steps = abs(dx);
  else
    steps = abs(dy);
  endif

  xinc = dx/steps;
  yinc = dy/steps;

  x = x0;
  y = y0;

  for k = 1:steps
    x = x + xinc;
    y = y + yinc;

    x_rounded = max(1, min(round(x), X));
    y_rounded = max(1, min(round(y), Y));
    imagen(y_rounded, x_rounded, :) = [0, 0, 0];
  endfor

  figure, imshow(imagen);


