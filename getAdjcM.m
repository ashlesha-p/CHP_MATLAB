function A = getAdjcM(T)
%% Obtains the adjacency matrix that describes the cluster tableau in graph
% form. If the cluster is not in graph form it outputs a warning and the function ToGraph[]
% or ChooseG[] should be used.

% !!!!!!!!!!!!!! The Y case can be improved by adding a phase
% transformation like Hadamard, PosG. !!!!!!!


[rows, columns] = size(T);
n =(columns - 1) / 2;
if isequal(getDx(T),zeros(n)) && isequal(getDz(T),eye(n)) && isequal(getSx(T),eye(n)) && issymmetric(getSz(T))
    if isequal(diag(getSz(T)),zeros(n,1))==0
        error('Stabilizer has the operator Y instead of X. Not a graph state')
    
    else
        A=T(n+1:2*n,n+1:2*n);
    end

else
    error('Not a graph state')
end
end