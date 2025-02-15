% References
% 
% 1. Ghaffari, H. B., Hogan, J. A., & Lakey, J. D. (2022). Properties of Clifford-Legendre Polynomials. Advances in Applied Clifford Algebras, 32(1), 1-25, https://doi.org/10.1007/s00006-021-01179-8
% 
% 2. H. Baghal Ghaffari, “Higher-dimensional prolate spheroidal wave functions, ”Ph.D. dissertation, The University of Newcastle, 2022.

function S=evenfiniteFouriercliffordprolatewithoutyk(r,k,c,m,n)
S=0; 
N=evencoefficientcliffordprolate(k,c,m,n);
for j=1:length(N)
    if abs(N(j))>1/10000
        S=S+N(j).*evenfiniteFouriercliffordlegendrewithoutyk(r,k,c,j-1);
    end
end