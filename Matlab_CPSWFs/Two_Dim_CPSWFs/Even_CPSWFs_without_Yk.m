% References
% 
% 1. Ghaffari, H. B., Hogan, J. A., & Lakey, J. D. (2022). Properties of Clifford-Legendre Polynomials. Advances in Applied Clifford Algebras, 32(1), 1-25, https://doi.org/10.1007/s00006-021-01179-8
% 
% 2. H. Baghal Ghaffari, “Higher-dimensional prolate spheroidal wave functions, ”Ph.D. dissertation, The University of Newcastle, 2022.


% This code computes even Clifford prolate in terms of Clifford Legendre Prolate

% m is the dimension
% k is homogenity degree
% c is the bandwidth of coresponding Clifford prolate
% n is the order of Clifford prolate
% r is the polar coordinate radius of any point inside the unit disc

function G=Even_CPSWFs_without_Yk(r,k,c,m,n)
G=0;
N=Even_CPSWFs_Coefficient(k,c,m,n);
for j=1:length(N)   
 if abs(N(j))>2.2204e-16   
    G=G+(N(j).*(Even_Clp_without_Yk(r,j-1,k)));
    % You may change the code
 end
end