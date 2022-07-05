function [x,error] = Secant(y,x1,x2,accuracy,MaxIter)
error=1;
i=1;
x(1)=x1;
x(2)=x2;
 while error > accuracy 

    x(i+2)=(x(i).*y(x(i+1)) - x(i+1).*y(x(i))) ./ (y(x(i+1)) -y (x(i)));
    error=abs(x(i+2)-x(i+1));
    i=i+1;

 if i > MaxIter 
    break
 end

 end
 x=x(i+1);
end



