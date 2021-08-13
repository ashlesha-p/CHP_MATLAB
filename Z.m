function zT = Z(T,Q)
% Outputs tableau after applying Pauli Z gate to all qubits in Q
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
    %phase
    T(:, 2*n + 1) = mod(T(:, 2*n + 1) + T(:, q), 2);
    end
    zT = T;
end