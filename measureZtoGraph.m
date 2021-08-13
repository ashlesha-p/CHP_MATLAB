function [G, outcome] = measureZtoGraph(T,Q,plotAll)
% Gives Z-measured state as a graph state
[G,outcome]=measureZ(T,Q);
if plotAll==1
 plotAllGraphs(G);
else
Q2=PosG(G);
G=chooseG(G,Q2);
plotGraph(G);
end
end


