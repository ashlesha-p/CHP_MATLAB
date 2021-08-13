function Cph = CZ(T, A, B)
% !!! convert to graph state before performing another CNOT
% !!!!!!!!!!!!!!!!!!!!!!!!!!

    [rows, columns] = size(T);
    n =(columns - 1) / 2;
   
    if rows + 1 ~= columns
        error('invalid tableau')
    end
    for i=1:length(A)
        a=A(i);
        for j=1:length(B)
        b=B(j);
    if (a > n || a < 1) || (b > n || b < 1)
        error('invalid qubits')
    end
    
    %% !!!!!!!!!!!!!!! Check phase  !!!!!!!!!!!!!!!!!!!!
    
    %bracket_part = mod(mod(T(:, b) + T(:, a + n) + 1, 2), 2);
    T(:, 2*n + 1) = mod(T(:, 2*n + 1) + T(:, a).*T(:, b).*mod(T(:, b+n)+T(:, a + n),2), 2);
    
    T(:, b+n) = mod(T(:, a) + T(:, b+n), 2);
    T(:, a + n) = mod(T(:, a + n) + T(:, b ), 2);
        end
    end
    Cph = T;
end