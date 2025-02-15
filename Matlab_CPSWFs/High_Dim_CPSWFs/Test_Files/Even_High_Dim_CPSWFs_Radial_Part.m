% References
% 
% 1. Ghaffari, H. B., Hogan, J. A., & Lakey, J. D. (2022). Properties of Clifford-Legendre Polynomials. Advances in Applied Clifford Algebras, 32(1), 1-25, https://doi.org/10.1007/s00006-021-01179-8
% 
% 2. H. Baghal Ghaffari, “Higher-dimensional prolate spheroidal wave functions, ”Ph.D. dissertation, The University of Newcastle, 2022.

function G=Even_High_Dim_CPSWFs_Radial_Part(r,k,c,Truncation_Number,n,dim)
G=0;
N=Even_High_Dim_Coefficient_CPSWFs(k,c,Truncation_Number,n,dim);
for j=1:length(N)
    if abs(N(j))>2.2204e-16 
    G=G+(N(j).*(Even_High_Dim_Clp_Radial_Part(r,j-1,k,dim)));
    end
end
end