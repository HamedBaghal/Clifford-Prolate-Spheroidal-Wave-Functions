% References
% 
% 1. Ghaffari, H. B., Hogan, J. A., & Lakey, J. D. (2022). Properties of Clifford-Legendre Polynomials. Advances in Applied Clifford Algebras, 32(1), 1-25, https://doi.org/10.1007/s00006-021-01179-8
% 
% 2. H. Baghal Ghaffari, “Higher-dimensional prolate spheroidal wave functions, ”Ph.D. dissertation, The University of Newcastle, 2022.


function W=Odd_High_Dim_Coefficient_CPSWFs(k,c,Truncation_Number,n,dim)
A=Odd_High_Dim_CPSWFs_Matrix(k,c,Truncation_Number,dim);
[V,D]=eig(A);
[S,I]=sort(diag(D));
W=V(:,n);
N=S(:,1);