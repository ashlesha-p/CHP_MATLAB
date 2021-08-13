function [G, outcome] = measureYtoGraph(T,Q,plotAll)
% Gives X-measured state as a graph state
% [TT,outcome]=measureY(T,Q);
[TT,outcome]=measureY(T,Q);
if plotAll==1
    plotAllGraphs(TT);
else
    Q2=PosG(TT);
    G=chooseG(TT,Q2);
    plotGraph(G);
end
end
