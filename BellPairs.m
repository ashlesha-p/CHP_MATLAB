function T = BellPairs(n)
% Returns n bell pairs

adjcm = kron(eye(n),[0,1;1,0;]);
set(groot,'defaultFigureVisible','off')
T = fromAdjcM(adjcm);
T=H(T,1:2:2*n);
set(groot,'defaultFigureVisible','on')

end