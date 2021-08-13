function plotAllGraphs(T1)
% T=sparse(T);
Q=PosG(T1);
[r,c]=size(Q);
%  r
f=1;
if isempty(Q)
    f=1;
    r=1;
elseif mod(r,2)==0 
    f=r/2;
else
    f=(r+1)/2;
end
figure


for i=1:r
%     length(Q)
%     fprintf("here\n")
    if isempty(Q)
        T=chooseG(T1,Q);        
    else
        T=chooseG(T1,Q(i,:));
    end
subplot(f,2,i)

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
%         figure
        plot(G,'black');
        set(gca,'visible','off')
        set(findall(gca, 'type', 'text'), 'visible', 'on')
    end
else
    error('Not a graph state')
end
if isempty(Q)==0
title(mat2str(Q(i,:)))
end
set(gca, 'visible', 'off')
set(findall(gca, 'type', 'text'), 'visible', 'on')

end
end