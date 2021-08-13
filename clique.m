function T = clique(n)
% Generates n-qubit clique tableau
adjc=ones(n)-eye(n);
T=fromAdjcM(adjc);
end
