% References
% 
% 1. Ghaffari, H. B., Hogan, J. A., & Lakey, J. D. (2022). Properties of Clifford-Legendre Polynomials. Advances in Applied Clifford Algebras, 32(1), 1-25, https://doi.org/10.1007/s00006-021-01179-8
% 
% 2. H. Baghal Ghaffari, “Higher-dimensional prolate spheroidal wave functions, ”Ph.D. dissertation, The University of Newcastle, 2022.

function D=Odd_High_Dim_Clp_Radial_Part(r,N,k,dim)

if N==0
C=-2;
else
C=-((((2.^(2.*N+1))).*gamma((2.*N)+2))/(gamma(N+1))).*((gamma(k+N+dim/2+1)/(gamma(k+dim/2+1))));
for i=1:N
C=C+(-((((2^((2*N)+1)))*gamma((2*N)+2))/(gamma(N+1)))*((nchoosek(N,i)*((gamma(i+k+N+dim/2+1))/(gamma(i+k+dim/2+1)))*((-1).^i)*(r.^(2*i)))));
end
end

D=(sqrt((2*k)+(4*N)+dim+2)/(2.^(2*N+1)*(gamma((2*N)+2))))*C;
end