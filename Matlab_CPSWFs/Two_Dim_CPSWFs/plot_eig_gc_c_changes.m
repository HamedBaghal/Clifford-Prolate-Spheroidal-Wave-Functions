% References
% 
% 1. Ghaffari, H. B., Hogan, J. A., & Lakey, J. D. (2022). Properties of Clifford-Legendre Polynomials. Advances in Applied Clifford Algebras, 32(1), 1-25, https://doi.org/10.1007/s00006-021-01179-8
% 
% 2. H. Baghal Ghaffari, “Higher-dimensional prolate spheroidal wave functions, ”Ph.D. dissertation, The University of Newcastle, 2022.

%This code plots the eigenvalues of the g_c,

%In this code k and n are fixed and c changes. In this code we analyse (k,n)=(2,4) and (k,n)=(1,5)
close all

for c=1:40
W=abs(Even_Eigenvalue_CPSWFs(2,c/10,100,3));
U=abs((Odd_Eigenvalue_CPSWFs(1,c/10,100,3)));
plot(c/10,W,'or','LineWidth',3)
hold on
plot(c/10,U,'*k','LineWidth',3)
end
M=abs(Even_Eigenvalue_CPSWFs(2,c/10,100,3));
N=abs((Odd_Eigenvalue_CPSWFs(1,c/10,100,3)));
plot(c/10,M,'or','DisplayName','Quatient for k=2, c changes with n=4')
plot(c/10,N,'*k','DisplayName','Quatient for k=1, c changes with n=5')
legend('eigenvalues when c changes with k=2 n=4','eigenvalues when c changes with k=1 n=5')
legend('Location','northeast','FontSize',30)
grid on


