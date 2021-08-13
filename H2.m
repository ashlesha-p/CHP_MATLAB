function xyT = H2(T,Q)
% Outputs tableau after applying [1 -i; 1 i;] gate to all qubits in Q
[rows, columns] = size(T);
    n = (columns - 1) / 2;
    
    %we check that the input is valid
    if rows + 1 ~= columns
        error('matrix dimensions appear to be wrong.')
    end
    for i=1:length(Q)
       q=Q(i); 
    if q > n || q < 1
        error('invalid quibit specifier.')
    end
    
    %PERFORM OPERATIONS
    
    % x_iq, z_iq
    Tz=T(:,q+n);
    Tx=T(:, q);
    T(:,q+n)= Tx;
    T(:,q) = mod(Tz + Tx,2);
    end
    xyT = T;
end