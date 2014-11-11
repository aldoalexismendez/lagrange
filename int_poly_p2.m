function yout = int_poly_p2(f,xin,xout)

yout = [];
len = length(xout);

for k=1:len
    if any(xin==xout(k))
        yout = [yout f(xout(k))];
    else
        yout = [yout top_sum(f,xin,xout(k))/bottom_sum(xin,xout(k))];
    end
end
end