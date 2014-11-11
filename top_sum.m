function top = top_sum(f,xin,x)
    top = 0;
    for j = 1:length(xin)
        denominator = x-xin(j);
        top = top + lambda(j,xin)*f(xin(j))/denominator;
    end
end
