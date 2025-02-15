% References
% 
% 1. Ghaffari, H. B., Hogan, J. A., & Lakey, J. D. (2022). Properties of Clifford-Legendre Polynomials. Advances in Applied Clifford Algebras, 32(1), 1-25, https://doi.org/10.1007/s00006-021-01179-8
% 
% 2. H. Baghal Ghaffari, “Higher-dimensional prolate spheroidal wave functions, ”Ph.D. dissertation, The University of Newcastle, 2022.

k=1;
c=1;
Truncation_Number=20;
n=1;
dim=2;

r=0:0.01:0.9;

T=abs(Odd_High_Dim_Finite_Fourier_CPSWFs_without_yk(r,k,c,Truncation_Number,n,dim));
S=Odd_High_Dim_CPSWFs_without_Yk(r,k,c,Truncation_Number,n,dim);
y=T./S;


Odd_High_Dim_Eigenvalue_CPSWFs(k,c,Truncation_Number,n,dim)


plot(r,y)
grid on