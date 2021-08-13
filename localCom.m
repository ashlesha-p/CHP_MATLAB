close all
clear all

A=[0 1 1 0 1; 1 0 0 0 0;1 0 0 1 1;0 0 1 0 0;1 0 1 0 0;];
% figure
% subplot(2,1,1)
T=fromAdjcM(A);
% T=star(7,1);
set(gca, 'visible', 'off')
set(findall(gca, 'type', 'text'), 'visible', 'on')
% T1=rZ(rX(T,3),[1,4,5]);
% Q2=PosG(T1);
% G=chooseG(T1,Q2);
% subplot(2,1,2)
% plotGraph(G);
% 
% set(gca, 'visible', 'off')
% set(findall(gca, 'type', 'text'), 'visible', 'on')
% subplot(2,1,2)
localComplementation(T,3)