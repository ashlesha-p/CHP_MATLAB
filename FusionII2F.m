function F21 = FusionII2F(T,c,t,plotAll)
% Performs successful 1st fusion from the rotated type II fusions given in Mercedes'
% thesis on pg 114 (section 4.6)
% c is the control bit and t is the target bit
% The output is in the redundantly encoded state

% T0=H(T,[c,t]);
Tf=X(T,t);

% F21=measureZ(Tf,[c,t]);
F21=measureZtoGraph(Tf,[c,t],plotAll);
getStabilizers(F21)

end