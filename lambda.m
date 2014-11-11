function l = lambda(j,xin)
    not_xn_xin = [xin(1:j-1) xin(j+1:end)] ; %x_in vector without the xn entry
    denominator_values = xin(j)-not_xn_xin;
    denominator = prod(denominator_values);
    l = 1/denominator;
end