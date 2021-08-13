%This Function calculate Marix determinant of a square matrix A of size m ? m 
%denoted as moddet (A,n) is a scalar calculated recursively as shown below:
%Inputs A: square marix A of size m ? m
%       n: module in Zn
%Output d: determinant in Zn
function d = mod2det( A )
  n=2;
  m=size(A,1);
  if m==1
      d=A(1,1);
  else
      d=0;
      j=1;
      for i=1:m
           Aij=A;
           Aij([i],:)=[];
           Aij(:,[j])=[];
           d=d+(-1)^(i+j)*A(i,j)*mod2det(Aij);
         
      end
      d=mod(d,n);
  end
  
end