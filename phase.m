function A = phase(T, Q)
%TODO needs phase added to it
    [rows, columns] = size(T);
    n = (columns - 1) / 2;
    
    %we check that the input is valid
    if rows + 1 ~= columns
        error('matrix dimensions appear to be wrong.')
    end
    for i=1:length(Q)
       a=Q(i); 
    if a > n || a < 1
        error('invalid quibit specifier.')
    end
    
    %PERFORM OPERATIONS
    %phase
    T(:, 2*n + 1) = mod(T(:, 2*n + 1) + T(:, a).*T(:, a + n), 2);
    %column set
    T(:, a + n) = mod(T(:, a + n) + T(:, a), 2);
    end
    A = T;
end