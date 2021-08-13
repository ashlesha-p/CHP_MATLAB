function [zT, outcome] = measureZ(T, Q)
    
    [rows, columns] = size(T);
    n = (columns - 1) / 2;
    
    %we check that the input is valid
    if rows + 1 ~= columns
        error('invalid tableau')
    end
    for k=1:length(Q)
        a=Q(k);
    if a > n || a < 1
        error('invalid qubit')
    end
    
    %% Case I - Non-determinate outcome
    P2n=find(T(:, a));
    pp=find(T(n+1:2*n, a))+n;
    if isempty(pp)==0
        disp('Random outcome')
    p=pp(1);
    
    for i=1:length(P2n) 
        if P2n(i)~=p && P2n(i)~=p-n
        T = rowsum(T, P2n(i), p);
        end
    end
    T(p-n, :) = T(p, :);
    
    
    T(p, :) = zeros(1, 2*n + 1);
    T(p, 2*n + 1) = randi([0 1],1,1);
    T(p, n + a) = 1;
    outcome(k) = T(p, 2*n + 1);
    
    %% Case II - Determinate outcome
    else
        disp('Determinate outcome')
    T=[T;zeros(1, 2*n + 1);];
    Pn=find(T(1:n, a));
    for i=1:length(Pn)
        T = rowsum(T, 2*n + 1, Pn(i)+n);
    end
    outcome(k) = T(2*n + 1, 2*n + 1);
    T = T(1:2*n, :);
    end
    
    end
    zT = T;
end