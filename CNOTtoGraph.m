function G = CNOTtoGraph(TT, c, t)
CT=cnot(TT,c,t);

Q=PosG(CT);
G=toGraph(CT,Q);

plotGraph(G);
