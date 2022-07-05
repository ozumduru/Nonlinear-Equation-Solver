function[c]=Bisection(y,a,b,accuracy)
error = abs(a-b)/2;

while error> accuracy
    c=(a+b)/2;

    if y(c)<  0 
        a=c;
    elseif y(c) > 0 
        b=c;
    end
     error = abs(a-b);
       
end
end

