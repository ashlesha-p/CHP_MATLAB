%Euclidean Algorithm
%Finding the greatest common divisor (gcd) of two positive integers a an b
%and return r
function r=gcd(a,b)
 if b==0
  r=a;
 else
  r=gcd(b,mod(a,b));
end
