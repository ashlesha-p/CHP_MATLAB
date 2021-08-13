function Inv = mod2inv(A)
md=mod2det(A);
mdInv=MultInv(md);
 Inv=modMatrixInv(A,mdInv);
end
