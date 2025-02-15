% References
% 
% 1. Ghaffari, H. B., Hogan, J. A., & Lakey, J. D. (2022). Properties of Clifford-Legendre Polynomials. Advances in Applied Clifford Algebras, 32(1), 1-25, https://doi.org/10.1007/s00006-021-01179-8
% 
% 2. H. Baghal Ghaffari, “Higher-dimensional prolate spheroidal wave functions, ”Ph.D. dissertation, The University of Newcastle, 2022.


clear all;

clc;

n=1;

k=1;

m=40;

F=zeros(1,20);

for i=1:20
    c=1/(i^2);        
    T=abs(New_evenquatientFourieronprolateatzero(n,k,c,m))/(((2*pi*c)^(2*(n-1)+k)));
    S=(pi*factorial(n-1)*gamma((n-1)+k+1))/(2^(k+2*(n-1))*gamma(2*(n-1)+k+2)*gamma(2*(n-1)+k+1));
    F(i)=T/S;
end 
 plot(F,'y','DisplayName','Asymptot as c tends to zero, with n=0, k=1','LineWidth',3);
 legend('Location','northeast','FontSize', 20)
 hold on
 plot(F,'*r','HandleVisibility','off')
 hold on


set(gca,'FontSize',20, 'FontName', 'Courier')
xlabel('This is the c-axis tends to zero like c=x^{-2}') % Font Size and Name are taken from Line 4 command.
ylabel('Division of left and right side in Theorem 3.7.4', 'FontSize', 15, 'FontName','Garamound', 'FontWeight','bold')
grid on