% References
% 
% 1. Ghaffari, H. B., Hogan, J. A., & Lakey, J. D. (2022). Properties of Clifford-Legendre Polynomials. Advances in Applied Clifford Algebras, 32(1), 1-25, https://doi.org/10.1007/s00006-021-01179-8
% 
% 2. H. Baghal Ghaffari, “Higher-dimensional prolate spheroidal wave functions, ”Ph.D. dissertation, The University of Newcastle, 2022.

% This code generate the coefficients of expanded even Clifford prolate in terms of Clifford Legendre Prolate

% m is the size of the matrix
% k is homogenity degree
% c is the bandwidth of coresponding Clifford prolate
% n is the order of Clifford prolate

function W=Even_CPSWFs_Coefficient(k,c,m,n)
A=Even_CPSWFs_Matrix(k,c,m);
[V,D]=eig(A);
[S,I]=sort(diag(D));
W=V(:,n);
N=S(:,1);



