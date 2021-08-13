%Calculate Multiplicative Inverse of a in Zn
%Note : The integer a in Zn has a multiplicative inverse if and only 
%if gcd (n, a) ? 1 (mod n)
%The extended Euclidean algorithm finds the multiplicative inverses of b 
%in Zn when n and b are given and gcd (n, b) = 1.
%The multiplicative inverse of b is the value of t after being mapped to Zn.
function aInv = MultInv( a )
 r1=2;
 r2=a;
 t1=0;
 t2=1;
 while(r2>0)
     q=fix(r1/r2);
     r=mod(r1,r2);
     t=t1-q*t2;
     r1=r2;
     r2=r;
     t1=t2;
     t2=t;
 end
 aInv=t1;
end
