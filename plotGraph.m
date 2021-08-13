function plotGraph(T)
%% cluster state should be in graph form, if not it will print a warning saying
% so. A warning saying that self loops are not displayed will appear if a stabilizer has the
% operator Y instead of X.

% !!!!!!!!!!!!!! The Y case can be improved by adding a phase
% transformation like Hadamard, PosG. Change plotAllGraphs as well !!!!!!!


[rows, columns] = size(T);
 n =(columns - 1) / 2;
 
if isequal(getDx(T),zeros(n)) && isequal(getDz(T),eye(n)) && isequal(getSx(T),eye(n)) && issymmetric(getSz(T))
    if isequal(diag(getSz(T)),zeros(n,1))==0
        error('Self loops are not displayed as a stabilizer has the operator Y instead of X.')
%     elseif isequal(T(:,2*n+1),zeros(2*n,1))==0
%         % Reference - Kok P., Lovett B. - Introduction to Optical Quantum
%         % Information Processing (2010, CUP), pg 69.
%         
%         error('cluster state with a number of negative stabilizer eigenvalues')
    
    else
        G = graph(getAdjcM(T));
        figure
        plot(G,'black');
        set(gca,'visible','off')
        set(findall(gca, 'type', 'text'), 'visible', 'on')
    end
else
    error('Not a graph state')
end
end
