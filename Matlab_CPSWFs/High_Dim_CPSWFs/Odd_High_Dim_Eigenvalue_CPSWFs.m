% References
% 
% 1. Ghaffari, H. B., Hogan, J. A., & Lakey, J. D. (2022). Properties of Clifford-Legendre Polynomials. Advances in Applied Clifford Algebras, 32(1), 1-25, https://doi.org/10.1007/s00006-021-01179-8
% 
% 2. H. Baghal Ghaffari, “Higher-dimensional prolate spheroidal wave functions, ”Ph.D. dissertation, The University of Newcastle, 2022.

function q=Odd_High_Dim_Eigenvalue_CPSWFs(k,c,Truncation_Number,n,dim)
N=Odd_High_Dim_Coefficient_CPSWFs(k,c,Truncation_Number,n,dim);
q=abs((-1)^(dim)*N(1)*sqrt(2*k+2+dim)*pi^(k+dim/2+1)*c^(k+1)*(1i)^(k+1)/(gamma(k+dim/2+2)*Odd_High_Dim_CPSWFs_Radial_Part(0,k,c,Truncation_Number,n,dim)));
end

