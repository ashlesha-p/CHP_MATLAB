function [G, outcome] = measureXtoGraph(T,Q, plotAll)
% Gives X-measured state as a graph state
[TT,outcome]=measureX(T,Q);
% [TT,outcome]=measureXv2(T,Q);
if plotAll==1
    plotAllGraphs(TT);
else
Q2=PosG(TT);
G=chooseG(TT,Q2);
plotGraph(G);
end
end
