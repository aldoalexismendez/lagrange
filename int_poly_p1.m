function yout = int_poly_p1(f,xin,xout)


yout = [];
len1 = length(xout);
len2 = length(xin);
sum_of_pn_x = [];
for i=1:len1
    for j=1:len2
        sum_of_pn_x = [sum_of_pn_x f(xin(j))*Ln(j,xin,xout(i))]; % creates temporary vector which stores each term of p(xi) for a specific i
    end
    yout = [yout sum(sum_of_pn_x)]; %adds the value of p(xi) to the output vector by summing each term in the p(xi) vector
    sum_of_pn_x = [];
end

function Ln_out = Ln(n,x_in,x)

    not_xn_xin = [x_in(1:n-1) x_in(n+1:end)] ; %x_in vector without the xn entry
    denominator_values = x_in(n)-not_xn_xin;
    denominator = prod(denominator_values);
    
    Ln_out = prod(x-not_xn_xin)/denominator;
end
end
    
    
  
    