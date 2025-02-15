% References
% 
% 1. Ghaffari, H. B., Hogan, J. A., & Lakey, J. D. (2022). Properties of Clifford-Legendre Polynomials. Advances in Applied Clifford Algebras, 32(1), 1-25, https://doi.org/10.1007/s00006-021-01179-8
% 
% 2. H. Baghal Ghaffari, “Higher-dimensional prolate spheroidal wave functions, ”Ph.D. dissertation, The University of Newcastle, 2022.


T=zeros(1,10);
for n=1:5
T(2*n-1)=abs(Even_Eigenvalue_CPSWFs(4,1,100,n));
T(2*n)=abs(Odd_Eigenvalue_CPSWFs(4,1,100,n));
end
plot(T,'y','DisplayName','Quatient for k=4, c=1','LineWidth',3);
legend('Location','northeast','FontSize', 20)
hold on
plot(T,'*r','DisplayName','')
hold on

T=zeros(1,10);
for n=1:5
T(2*n-1)=abs(Even_Eigenvalue_CPSWFs(1,1,100,n));
T(2*n)=abs(Odd_Eigenvalue_CPSWFs(1,1,100,n));
end
plot(T,'g','DisplayName','Quatient for k=1, c=1','LineWidth',3);
legend('Location','northeast')
hold on
plot(T,'*r','DisplayName','')

T=zeros(1,10);
for n=1:5
T(2*n-1)=abs(Even_Eigenvalue_CPSWFs(0,1,100,n));
T(2*n)=abs(Odd_Eigenvalue_CPSWFs(0,1,100,n));
end
plot(T,'b','DisplayName','Quatient for k=0, c=1','LineWidth',3);
legend('Location','northeast')
hold on
plot(T,'*r','DisplayName','')

grid on
% 
% function q=evenquatientFourieronprolateatzero(n,k,c,m)
% N=New_evencoefficientcliffordprolate(k,c,m,n);
% q=-1.*N(1).*sqrt(2*k+2)*pi^(k+1)*c^(k).*(1i).^(k)/(gamma(k+2).*New_evencomputemultiprolateradialpart(0,k,c,m,n));
% end
% 
% function q=oddquatientFourieronprolateatzero(n,k,c,m)
% N=New_oddcoefficientcliffordprolate(k,c,m,n);
% q=N(1)*sqrt(2*k+4)*pi^(k+2)*c.^(k+1)*(1i)^(k+1)/(gamma(k+3).*New_oddcomputemultiprolateradialpart(0,k,c,m,n));
% end