function[x,error] = NewtonMethod(y,x_initial,M,accuracy,MaxIter)

error = 1;
i=1;
x(1)=x_initial;

while error > accuracy

dy = sym2double_diff(x(i),y);

x(i+1) = x(i) - M*y(x(i))/dy;

error = abs(x(i+1)-x(i));

if i > MaxIter 
    break
end
       
       i=i+1;
end

x=x(i);
end