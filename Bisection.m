function[c]=Bisection(y,a,b,accuracy,MaxIter)

error = abs(a-b)/2;
i=0;

while error> accuracy
    c=(a+b)/2;

    if y(c)<  0 
        a=c;
    elseif y(c) > 0 
        b=c;
    end

     error = abs(a-b);

       if i > MaxIter 
    break
       end
       
       i=i+1;
end
end

