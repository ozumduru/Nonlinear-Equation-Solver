function[dy]=sym2double_diff(xi,y)
syms x
Dy = diff(y(x));
dy(x) = Dy;
dy = dy(xi);

dy = double(dy);
end