function F23 = FusionII3S(T,c,t,plotAll)
% Performs successful 3rd fusion from the rotated type II fusions given in Mercedes'
% thesis on pg 114 (section 4.6)
% c is the control bit and t is the target bit
% * Creates bonds from all the neighbours of c to all neighbors of t

 T1=H(T,c);

 T2=cnot(T1,c,t);

 Tf=H(T2,c);

% F23=measureZ(Tf,[c,t]);
%  getStabilizers(F)


%  F23=measureZ(Tf,[c,t]);
  F23=measureZtoGraph(Tf,[c,t],plotAll);
getStabilizers(F23)

end