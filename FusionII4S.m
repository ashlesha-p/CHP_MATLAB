function F24 = FusionII4S(T,c,t, plotAll)
% Performs successful (|0(+i)> + |1(-i)>)/sqrt(2) projection
% * Creates bonds between all the neighbours of c to all neighbors of t
% and local complementation on c *
% c is the control bit and t is the target bit



 T1=H2(T,t);

%  T1=H2(T,c);

 T2=cnot(T1,c,t);

 Tf=H(T2,c);
%  getStabilizers(T1)
%  getStabilizers(T2)
%  getStabilizers(Tf)



%  Tf=H(T2,c);

% F24=measureZ(Tf,[c,t])
%  getStabilizers(F24)
 
%  F24=measureZ(Tf,[c,t]);
 F24=measureZtoGraph(Tf,[c,t], plotAll);
getStabilizers(F24)

end