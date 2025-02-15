% References
% 
% 1. Ghaffari, H. B., Hogan, J. A., & Lakey, J. D. (2022). Properties of Clifford-Legendre Polynomials. Advances in Applied Clifford Algebras, 32(1), 1-25, https://doi.org/10.1007/s00006-021-01179-8
% 
% 2. H. Baghal Ghaffari, “Higher-dimensional prolate spheroidal wave functions, ”Ph.D. dissertation, The University of Newcastle, 2022.

function q=Even_High_Dim_Eigenvalue_CPSWFs(k,c,Truncation_Number,n,dim)
N=Even_High_Dim_Coefficient_CPSWFs(k,c,Truncation_Number,n,dim);
q=abs((-1)^(dim-1)*N(1).*sqrt(2*k+dim)*pi^(k+dim/2)*c^k*(1i)^k/(gamma(k+dim/2+1).*Even_High_Dim_CPSWFs_Radial_Part(0,k,c,Truncation_Number,n,dim)));
end

