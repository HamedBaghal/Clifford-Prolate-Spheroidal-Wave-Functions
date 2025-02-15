% References
% 
% 1. Ghaffari, H. B., Hogan, J. A., & Lakey, J. D. (2022). Properties of Clifford-Legendre Polynomials. Advances in Applied Clifford Algebras, 32(1), 1-25, https://doi.org/10.1007/s00006-021-01179-8
% 
% 2. H. Baghal Ghaffari, “Higher-dimensional prolate spheroidal wave functions, ”Ph.D. dissertation, The University of Newcastle, 2022.


%This code plots the eigenvalues of the g_c,

%In this code c and n are fixed and k changes. 

close all 


for k=0:40
W=abs(Even_Eigenvalue_CPSWFs(k/10,1,100,1));
U=abs((Odd_Eigenvalue_CPSWFs(k/10,1,100,1)));
plot(k/10,W,'or','LineWidth',3)
hold on
plot(k/10,U,'*k','LineWidth',3)
end
M=abs(Even_Eigenvalue_CPSWFs(k/10,1,100,1));
N=abs(Odd_Eigenvalue_CPSWFs(k/10,1,100,1));
plot(k/10,M,'or','DisplayName','Quatient for c=1, k changes with n=0')
plot(k/10,N,'*k','DisplayName','Quatient for c=1, k changes with n=1')
legend('eigenvalues when k changes with c=1 n=0','eigenvalues when k changes with c=1 n=1')
legend('Location','northeast','FontSize',30)

grid on

