% References
% 
% 1. Ghaffari, H. B., Hogan, J. A., & Lakey, J. D. (2022). Properties of Clifford-Legendre Polynomials. Advances in Applied Clifford Algebras, 32(1), 1-25, https://doi.org/10.1007/s00006-021-01179-8
% 
% 2. H. Baghal Ghaffari, “Higher-dimensional prolate spheroidal wave functions, ”Ph.D. dissertation, The University of Newcastle, 2022.

clear


dim=3;
T=zeros(1,10);
for n=1:5
T(2*n-1)=abs(Even_High_Dim_Eigenvalue_CPSWFs(4,2,100,n,dim));
T(2*n)=abs(Odd_High_Dim_Eigenvalue_CPSWFs(4,2,100,n,dim));
end
plot(T,'y','DisplayName','Quatient for dim=3, k=4, c=1','LineWidth',3);
legend('Location','northeast','FontSize', 20)
hold on
plot(T,'*r','DisplayName','')
hold on

T=zeros(1,10);
for n=1:5
T(2*n-1)=abs(Even_High_Dim_Eigenvalue_CPSWFs(1,2,100,n,dim));
T(2*n)=abs(Odd_High_Dim_Eigenvalue_CPSWFs(1,2,100,n,dim));
end
plot(T,'g','DisplayName','Quatient for dim=3, k=1, c=1','LineWidth',3);
legend('Location','northeast')
hold on
plot(T,'*r','DisplayName','')

T=zeros(1,10);
for n=1:5
T(2*n-1)=abs(Even_High_Dim_Eigenvalue_CPSWFs(0,2,100,n,dim));
T(2*n)=abs(Odd_High_Dim_Eigenvalue_CPSWFs(0,2,100,n,dim));
end
plot(T,'b','DisplayName','Quatient for dim=3, k=0, c=1','LineWidth',3);
legend('Location','northeast')
hold on
plot(T,'*r','DisplayName','')

grid on