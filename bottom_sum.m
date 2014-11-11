function bottom = bottom_sum(xin,x)
    bottom = 0;
    for j = 1:length(xin)
        denominator = x-xin(j);
        bottom = bottom + lambda(j,xin)/denominator;
    end
end