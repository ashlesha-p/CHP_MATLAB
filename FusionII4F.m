function F24 = FusionII4F(T,c,t, plotAll)
% Performs successful (|0(-i)>) projection
% * removes c and t from the cluster similar to Z measurement *
% c is the control bit and t is the target bit
% equivalent to Z-measurements on c and t



 T1=H2(T,t);
%  sprintf('T1')
% getStabilizers(T1)
%  T1=H2(T,c);

 Tf=X(T1,t);
% sprintf('Tf')
% getStabilizers(Tf)
%  Tf=H(T2,c);
%  getStabilizers(T1)
%  getStabilizers(T2)
%  getStabilizers(Tf)



%  Tf=H(T2,c);

%  F24=measureZ(Tf,[c,t])
%  getStabilizers(F24)
 
%  F24=measureZ(Tf,[c,t]);
 F24=measureZtoGraph(Tf,[c,t], plotAll);
getStabilizers(F24)

end