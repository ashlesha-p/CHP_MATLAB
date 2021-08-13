function F21 = FusionII3F(T,c,t,plotAll)
% Performs successful 3rd fusion from the rotated type II fusions given in Mercedes'
% thesis on pg 114 (section 4.6)
% c is the control bit and t is the target bit
% Equivalent to X-measurement on c and Z-measurement on t
% T0=X(T,t);
% Tf=H(T0,[c,t]);

T0=H(T,[c]);
Tf=X(T0,t);


% F21=measureZ(Tf,[c,t]);
F21=measureZtoGraph(Tf,[c,t],plotAll);
getStabilizers(F21)

end