% References
% 
% 1. Ghaffari, H. B., Hogan, J. A., & Lakey, J. D. (2022). Properties of Clifford-Legendre Polynomials. Advances in Applied Clifford Algebras, 32(1), 1-25, https://doi.org/10.1007/s00006-021-01179-8
% 
% 2. H. Baghal Ghaffari, “Higher-dimensional prolate spheroidal wave functions, ”Ph.D. dissertation, The University of Newcastle, 2022.

function S=evenfiniteFouriercliffordlegendrewithoutyk(r,k,c,N)
if r==0
    if N==0 && k==0
        S=sqrt(pi);
    else
        S=0;
    end
elseif c==0
    S=0;
else
S=(-1).*(1i)^(k).*sqrt(2.*k+4.*N+2)./sqrt(2*pi).*r.^(-1)./(c).*besselj(k+2*N+1,2.*c.*pi.*r);
end
