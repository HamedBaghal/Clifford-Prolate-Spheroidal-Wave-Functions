% References
% 
% 1. Ghaffari, H. B., Hogan, J. A., & Lakey, J. D. (2022). Properties of Clifford-Legendre Polynomials. Advances in Applied Clifford Algebras, 32(1), 1-25, https://doi.org/10.1007/s00006-021-01179-8
% 
% 2. H. Baghal Ghaffari, “Higher-dimensional prolate spheroidal wave functions, ”Ph.D. dissertation, The University of Newcastle, 2022.

k=1;
c=1;
m=20;
n=1;

r=0:0.01:0.9;

T=abs(evenFouriercomputationofprolatewithoutyk(r,k,c,m,n))
S=evencomputemultiprolatewithoutyk(r,k,c,m,n)
y=T./S;


evenquatientFourieronprolateatzero(n,k,c,m)


plot(r,y)
grid on

