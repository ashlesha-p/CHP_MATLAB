function A = rowsum(T, h, i)
    [rows, columns] = size(T);
    n = (columns - 1) / 2;
    
        T;
    %calculate the sum
    result = 2*T(h, 2*n + 1) + 2*T(i, 2*n + 1);
    for j = 1:n
       result = result + g(T(i, j), T(i, j + n), T(h, j), T(h, j + n));
    end
    
    %take mod 4
    result = mod(result, 4);
    
    %Now we change the phase according to our result
    if result == 0
        T(h, 2*n + 1) = 0;
    elseif result == 2
        T(h, 2*n + 1) = 1;
    else
%         result
        h
        i
        error('result was neither 2, 4')
    end
    
    %set new columns
    T(h, 1:n) = mod(T(i, 1:n) + T(h, 1:n), 2);
    T(h, n + 1:2*n) = mod(T(i, n + 1:2*n) + T(h, n + 1:2*n), 2);
    
    A = T;
end