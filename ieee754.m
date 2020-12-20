function a = ieee754(n)
if mod(n,1) == 0
    a = abs(n);
    b = dec2bin(n);
    b1 = str2num(b);
    if b1 == 0
        m = 0;
    else
        m = log10(b1);
    end
    c = floor(m) + 127;
    if c == 127
        e = '01111111';
    else
        e = dec2bin(c);
    end
    a1 = b(2:length(b));
    fz = '0';
    for i = 1 : 23 - length(b)
        fz = [fz,'0'];
    end
    a1 = [a1,fz];
    a = [e,a1];
    if n > 0
        a = ['0',a];
    else
        a = ['1',a];
    end
else
    n = abs(n);
    n1 = fix(n);
    n2 = n - fix(n);     
    b = dec2bin(n1);
    b1 = str2num(b);
    if b1 == 0
        m = 0;
    else
        m = log10(b1);
    end
    c = floor(m) + 127;
    if c == 127
        e = '01111111';
    else
        e = dec2bin(c);
    end    
    a1 = b(2:length(b));
    a2 = bin_float(n2);
    a2 = a2(3:length(a2));
    af = [a1,a2];
    fz = '0';
    for i = 1 : 22 - length(af)
        fz = [fz,'0'];
    end 
    af = [af,fz];
    a = [e,af];
    if n > 0
        a = ['0',a];
    else
        a = ['1',a];
    end
end

    
    

