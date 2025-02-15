% References
% 
% 1. Ghaffari, H. B., Hogan, J. A., & Lakey, J. D. (2022). Properties of Clifford-Legendre Polynomials. Advances in Applied Clifford Algebras, 32(1), 1-25, https://doi.org/10.1007/s00006-021-01179-8
% 
% 2. H. Baghal Ghaffari, “Higher-dimensional prolate spheroidal wave functions, ”Ph.D. dissertation, The University of Newcastle, 2022.

function D=oddcliffordlegendre(r,t,N,k)

if N==0
C=2*((r^(k+1))/(sqrt(2*pi)))*sin((k+1)*t);
else N>0;
C=((((2^((2*N)+1)))*gamma((2*N)+2))/(gamma(N+1)))*(gamma(k+N+2)/(gamma(k+2))*(((r^(k+1))/(sqrt(2*pi)))*(-sin((k+1)*t))));
for i=1:N
C=C+((((2^((2*N)+1)))*gamma((2*N)+2))/(gamma(N+1)))*((nchoosek(N,i)*((gamma(i+k+N+2))/(gamma(i+k+2)))*((-1)^i)*(1/(sqrt(2*(pi))))*(r^(2*i+k+1))*(-sin((k+1)*t))));
end
end

D=(sqrt((2*k)+(4*N)+4)/(2^(2*N+1)*(gamma((2*N)+2))))*C;