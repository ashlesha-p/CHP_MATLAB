function T = lineG(n)
% Generates n-qubit linear graph state
adjc=diag(ones(n-1,1),1)+diag(ones(n-1,1),-1);
T=fromAdjcM(adjc);
end
