 function F22 = FusionII2S(T,c,t,plotAll)
% Performs successful 2nd fusion from the rotated type II fusions given in Mercedes'
% thesis on pg 114 (section 4.6)
% c is the control bit and t is the target bit
% The output is in the redundantly encoded state

 T1=cnot(T,c,t);

 Tf=H(T1,c);

% F22=measureZ(Tf,[c,t]);
F22=measureZtoGraph(Tf,[c,t],plotAll);
getStabilizers(F22)

end