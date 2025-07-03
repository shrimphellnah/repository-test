clc
X= 500;
Y=500;
Z=3;

    background_color = [0, 0, 0];

    imagen = uint8(zeros([X, Y, Z]));
    imagen(:, :, 1) = background_color(1);
    imagen(:, :, 2) = background_color(2);
    imagen(:, :, 3) = background_color(3);

    grid_color = [100, 100, 100];  % Color del grid (gris)
    step = 20;  % Espaciado del grid

for x = 1:step:X
    imagen(:, x, 1) = grid_color(1);
    imagen(:, x, 2) = grid_color(2);
    imagen(:, x, 3) = grid_color(3);
    end

for y = 1:step:Y
    imagen(y, :, 1) = grid_color(1);
    imagen(y, :, 2) = grid_color(2);
    imagen(y, :, 3) = grid_color(3);
    end

    x0 = input('Ingrese x0: ');
    y0 = input('Ingrese y0: ');
    x1 = input('Ingrese x1: ');
    y1 = input('Ingrese y1: ');

    dx = abs(x1 - x0);
    dy = abs(y1 - y0);

    if x0 < x1
        sx = 1;
    else
        sx = -1;
    end

    if y0 < y1
        sy = 1;
    else
        sy = -1;
    end

    err = dx - dy;

    while true
        imagen(y0, x0, :) = [255,255,255];  % Establece el píxel en (x0, y0) en blanco (255)

        if x0 == x1 && y0 == y1
            break;
        end

        e2 = 2 * err;

        if e2 > -dy
            err = err - dy;
            x0 = x0 + sx;
        end

        if e2 < dx
            err = err + dx;
            y0 = y0 + sy;
        end
    end

figure, imshow(uint8(imagen));

