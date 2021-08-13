    function val = g(x1, z1, x2, z2)
%     x1, z1, x2, z2;
   if x1 == 0 && z1 == 0
        val = 0;
    end
    if x1 == 0 && z1 == 1
        val = x2*(1 - 2*z2);
    end
    if x1 == 1 && z1 == 0
        val = z2*(2*x2 - 1);
    end
    if x1 == 1 && z1 == 1
        val = z2 - x2;
    end
    
    
end