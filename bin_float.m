function c = bin_float(n)
c = ['0.'];
active = 1;
while active
    n = n * 2;
    if n > 1
        n = n - 1;
        c = [c,'1'];
    elseif n < 1
        c = [c,'0'];
    else
        c = [c,'1'];
        active = 0
    end
end
        
    