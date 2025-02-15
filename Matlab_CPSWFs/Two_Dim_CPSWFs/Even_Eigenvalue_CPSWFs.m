% References
% 
% 1. Ghaffari, H. B., Hogan, J. A., & Lakey, J. D. (2022). Properties of Clifford-Legendre Polynomials. Advances in Applied Clifford Algebras, 32(1), 1-25, https://doi.org/10.1007/s00006-021-01179-8
% 
% 2. H. Baghal Ghaffari, “Higher-dimensional prolate spheroidal wave functions, ”Ph.D. dissertation, The University of Newcastle, 2022.

function q=Even_Eigenvalue_CPSWFs(k,c,m,n)
N=Even_CPSWFs_Coefficient(k,c,m,n);
q=-N(1)*sqrt(2*k+2)*pi^(k+1)*c^(k).*(1i)^(k)/(gamma(k+2).*Even_CPSWFs_Radial_Part(0,k,c,m,n));