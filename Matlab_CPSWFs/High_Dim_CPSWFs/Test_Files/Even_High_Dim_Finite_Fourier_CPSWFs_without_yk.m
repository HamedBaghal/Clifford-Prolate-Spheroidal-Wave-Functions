% References
% 
% 1. Ghaffari, H. B., Hogan, J. A., & Lakey, J. D. (2022). Properties of Clifford-Legendre Polynomials. Advances in Applied Clifford Algebras, 32(1), 1-25, https://doi.org/10.1007/s00006-021-01179-8
% 
% 2. H. Baghal Ghaffari, “Higher-dimensional prolate spheroidal wave functions, ”Ph.D. dissertation, The University of Newcastle, 2022.

function S=Even_High_Dim_Finite_Fourier_CPSWFs_without_yk(r,k,c,Truncation_Number,n,dim)
S=0;
N=Even_High_Dim_Coefficient_CPSWFs(k,c,Truncation_Number,n,dim);
for j=1:length(N)
    if N(j)>1/1000000
    S=S+N(j)*((-1)^(k)*2^(2*(j-1))*factorial(2*(j-1)).*(1i)^(k+2*(j-1))*1/sqrt(2*pi)*((-1)^(j-1))./(c.*r.^(dim/2)).*besselj(k+2*j-2+dim/2,2*pi.*r)).*(sqrt(2*k+4*(j-1)+dim))/(2^(2*(j-1))*factorial(2*(j-1)));
    end
end