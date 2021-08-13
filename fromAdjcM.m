function T = fromAdjcM(A)
% Builds graph state tableau from adjacancy matrix
n=length(A);
if issymmetric(A)==0 
    error('Invalid adjacancy matrix')
else
    T=[zeros(n),eye(n),zeros(n,1);eye(n),A,zeros(n,1);];
end
plotGraph(T)
end