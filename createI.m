function T = createI(n)
    %create initial "identity matrix" tableau for n qubit state
T=[eye(2*n),zeros(2*n,1);];%zeros(1,2*n+1)];
    
end