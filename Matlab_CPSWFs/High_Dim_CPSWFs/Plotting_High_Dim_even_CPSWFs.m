% References
% 
% 1. Ghaffari, H. B., Hogan, J. A., & Lakey, J. D. (2022). Properties of Clifford-Legendre Polynomials. Advances in Applied Clifford Algebras, 32(1), 1-25, https://doi.org/10.1007/s00006-021-01179-8
% 
% 2. H. Baghal Ghaffari, “Higher-dimensional prolate spheroidal wave functions, ”Ph.D. dissertation, The University of Newcastle, 2022.


k=1;
c=1;
n=1;

m=80;

%you can chnge k, n, alpha
%Note that if you choose even n\in{0,2,4,...} or odd n\in{1,3,5,...} you will use evencliffordlegendrewithoutyk(r,N,k) or oddcliffordlegendrewithoutyk(r,N,k) 
%

[R,T] = meshgrid(0:1/50:1,0:pi/50:2*pi);
X = R.*cos(T);
Y = R.*sin(T);
Z=New_evencomputemultiprolatewithoutyk(R,k,c,m,n);
surf(X,Y,Z)






