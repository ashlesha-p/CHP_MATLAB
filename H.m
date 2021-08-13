function HT = H(T, A)
    [rows, columns] = size(T);
    n =(columns - 1) / 2;
    
    if rows + 1 ~= columns
        error('invalid tableau')
    end
    for i=1:length(A)
        a=A(i);
    if a > n || a < 1
        error('invalid qubit')
    end
    %phase
    
        T(:, 2*n + 1) = mod(T(:, 2*n + 1) + T(:, a).*T(:, a + n), 2);
        % qubits
        t = T(:, a);
        T(:, a) = T(:, a + n);
        T(:, a + n) = t;
    end
    HT = T;
    
    
end