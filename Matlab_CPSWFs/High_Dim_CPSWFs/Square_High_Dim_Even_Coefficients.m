% References
% 
% 1. Ghaffari, H. B., Hogan, J. A., & Lakey, J. D. (2022). Properties of Clifford-Legendre Polynomials. Advances in Applied Clifford Algebras, 32(1), 1-25, https://doi.org/10.1007/s00006-021-01179-8
% 
% 2. H. Baghal Ghaffari, “Higher-dimensional prolate spheroidal wave functions, ”Ph.D. dissertation, The University of Newcastle, 2022.


clear
clc
F=0;
for i=1:10
    N=Even_High_Dim_Coefficient_CPSWFs(0,1,20,i,3);
    F=F+(abs(N(1)))^2;
end

F

F=0;
for i=1:10
    N=Even_High_Dim_Coefficient_CPSWFs(0,1,20,i,3);
    F=F+(abs(N(2)))^2;
end

F