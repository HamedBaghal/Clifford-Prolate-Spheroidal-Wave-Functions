% References
% 
% 1. Ghaffari, H. B., Hogan, J. A., & Lakey, J. D. (2022). Properties of Clifford-Legendre Polynomials. Advances in Applied Clifford Algebras, 32(1), 1-25, https://doi.org/10.1007/s00006-021-01179-8
% 
% 2. H. Baghal Ghaffari, “Higher-dimensional prolate spheroidal wave functions, ”Ph.D. dissertation, The University of Newcastle, 2022.


clear all;
clc

n=1;
m=200;
c=.1;
k=1;

N=New_eveneigeigcoefficientcliffordprolate(k,c,m,n);

A=N(n);

i=n-1;
W=4*(i)*(k+i+1)-4*((pi).^2)*(c^2)*((((i+k+1)^2)/((2*i+k+2)*(2*i+k+1)))+(((i)^2)/((2*i+k)*(2*i+k+1))));
%[(sqrt((2*k)+(4*i)+2)/(2^(2*i)*(gamma((2*i)+1))))]*
T=(A-W);

c=.2;
N=New_eveneigeigcoefficientcliffordprolate(k,c,m,n);

A=N(n);

i=n-1;
W=4*(i)*(k+i+1)-4*((pi).^2)*(c^2)*((((i+k+1)^2)/((2*i+k+2)*(2*i+k+1)))+(((i)^2)/((2*i+k)*(2*i+k+1))));
%[(sqrt((2*k)+(4*i)+2)/(2^(2*i)*(gamma((2*i)+1))))]*
S=(A-W);

S/T

% ------------------------------------------
function N=New_eveneigeigcoefficientcliffordprolate(k,c,m,n)
A=New_evencliffordprolatematrix(k,c,m);
[V,D]=eig(A);
[S,I]=sort(diag(D));
N=S(:,1);
end