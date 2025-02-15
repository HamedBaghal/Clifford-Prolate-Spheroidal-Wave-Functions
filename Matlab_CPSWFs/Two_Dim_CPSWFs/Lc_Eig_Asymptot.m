% References
% 
% 1. Ghaffari, H. B., Hogan, J. A., & Lakey, J. D. (2022). Properties of Clifford-Legendre Polynomials. Advances in Applied Clifford Algebras, 32(1), 1-25, https://doi.org/10.1007/s00006-021-01179-8
% 
% 2. H. Baghal Ghaffari, “Higher-dimensional prolate spheroidal wave functions, ”Ph.D. dissertation, The University of Newcastle, 2022.

clear;
close all;
clc;

m=40;
k=1;
% 
c=0.1;
% 
% M=Even_CPSWFs_Matrix(k,c,m);
% [V,D]=eig(M);
% [S,I]=sort(diag(D));
% N=S(:,1);
% T1=abs(N(1)-M(1,1));
% 
% 
% c=0.4;
% M=Even_CPSWFs_Matrix(k,c,m);
% [V,D]=eig(M);
% [S,I]=sort(diag(D));
% N=S(:,1);
% T2=abs(N(1)-M(1,1));
% 
% T2./T1


T=zeros(1,10);
for n=1:5
    M=Even_CPSWFs_Matrix(k,0.1,m);
    [V,D]=eig(M);
    [S,I]=sort(diag(D));
    N=S(:,1);
    T1=abs(N(1)-M(1,1));
    
    M=Even_CPSWFs_Matrix(k,0.2,m);
    [V,D]=eig(M);
    [S,I]=sort(diag(D));
    N=S(:,1);
    T2=abs(N(1)-M(1,1));    
    T(2*n-1)=abs(T2./T1);
    
    M=Odd_CPSWFs_Matrix(k,0.1,m);
    [V,D]=eig(M);
    [S,I]=sort(diag(D));
    N=S(:,1);
    T1=abs(N(1)-M(1,1));
    
    M=Odd_CPSWFs_Matrix(k,0.2,m);
    [V,D]=eig(M);
    [S,I]=sort(diag(D));
    N=S(:,1);
    T2=abs(N(1)-M(1,1));    
    T(2*n)=abs(T2./T1);

end
plot(T,'g','DisplayName','Quatient for k=1, n changes from 0 to 9, and division of c=0.1 and c=0.2 so O(c^4)=2^4=16','LineWidth',3);
legend('Location','northeast','FontSize', 20)
hold on
plot(T,'*k','DisplayName','')
hold on


T=zeros(1,10);
for n=1:5
    M=Even_CPSWFs_Matrix(k,0.1,m);
    [V,D]=eig(M);
    [S,I]=sort(diag(D));
    N=S(:,1);
    T1=abs(N(1)-M(1,1));
    
    M=Even_CPSWFs_Matrix(k,0.3,m);
    [V,D]=eig(M);
    [S,I]=sort(diag(D));
    N=S(:,1);
    T2=abs(N(1)-M(1,1));    
    T(2*n-1)=abs(T2./T1);
    
    M=Odd_CPSWFs_Matrix(k,0.1,m);
    [V,D]=eig(M);
    [S,I]=sort(diag(D));
    N=S(:,1);
    T1=abs(N(1)-M(1,1));
    
    M=Odd_CPSWFs_Matrix(k,0.3,m);
    [V,D]=eig(M);
    [S,I]=sort(diag(D));
    N=S(:,1);
    T2=abs(N(1)-M(1,1));    
    T(2*n)=abs(T2./T1);

end
plot(T,'r','DisplayName','Quatient for k=1, n changes from 0 to 9, and division of c=0.1 and c=0.3 so O(c^4)=3^4=81','LineWidth',3);
legend('Location','northeast','FontSize', 20)
hold on
plot(T,'*k','DisplayName','')
hold on


grid on
