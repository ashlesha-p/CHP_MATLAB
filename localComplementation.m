function lcT = localComplementation(T,Q)
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
        e=find(T(n+q,n+1:2*n));
       T1=rZ(rX(T,q),e);
    
    end
    Q2=PosG(T1);
lcT=chooseG(T1,Q2);
% figure
% subplot(2,1,2)
plotGraph(lcT);
title(['Local complementation on qubit ',num2str(q)])
set(gca, 'visible', 'off')
set(findall(gca, 'type', 'text'), 'visible', 'on')
end