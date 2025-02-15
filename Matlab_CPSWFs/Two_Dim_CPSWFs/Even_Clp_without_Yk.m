% References
% 
% 1. Ghaffari, H. B., Hogan, J. A., & Lakey, J. D. (2022). Properties of Clifford-Legendre Polynomials. Advances in Applied Clifford Algebras, 32(1), 1-25, https://doi.org/10.1007/s00006-021-01179-8
% 
% 2. H. Baghal Ghaffari, “Higher-dimensional prolate spheroidal wave functions, ”Ph.D. dissertation, The University of Newcastle, 2022.

% This code computes (angle part is missed) Clifford Legendre polynomials defined on a unit disc 

% k is homogenity degree
% N is the order of Clifford Legendre polynomial
% r is the polar coordinate radius of any point inside the unit disc


function D=Even_Clp_without_Yk(r,N,k)

if N==0
C=((r.^(k))./(sqrt(2*pi)));
else
C=((((2.^(2*N)))*gamma((2*N)+1))/(gamma(N+1)))*((gamma(k+N+1)/(gamma(k+1)))*(((r.^k)/(sqrt(2*pi)))));
for i=1:N
C=C+((((2^(2*N)))*gamma((2*N)+1))/(gamma(N+1)))*((nchoosek(N,i)*((gamma(i+k+N+1))/(gamma(i+k+1)))*((-1)^i)*(1/(sqrt(2*(pi))))*(r.^(2*i+k))));
end
end

D=(sqrt((2*k)+(4*N)+2)/(2^(2*N)*factorial(2*N))).*C;