function tf = isGraph(T);
% !!!!!!!! the negative eigenvalue case !!!!!!!!!!! 


[rows, columns] = size(T);
n =(columns - 1) / 2;
if isequal(getDx(T),zeros(n)) && isequal(getDz(T),eye(n)) && isequal(getSx(T),eye(n)) && issymmetric(getSz(T)) && ...
        isequal(diag(getSz(T)),zeros(n,1))
    
%     if isequal(T(:,2*n+1),zeros(2*n,1))
        tf=1;
        fprintf('Graph state.')
        
%     else
%         % Reference - Kok P., Lovett B. - Introduction to Optical Quantum
%         % Information Processing (2010, CUP), pg 69.
%         tf=0;
%         fprintf('cluster state with a number of negative stabilizer eigenvalues')
        
%     end
        
else
    tf=0;
    fprintf('Not a graph state.')
end
end