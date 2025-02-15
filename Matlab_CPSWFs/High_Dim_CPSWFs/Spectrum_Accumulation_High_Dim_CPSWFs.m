% References
% 
% 1. Ghaffari, H. B., Hogan, J. A., & Lakey, J. D. (2022). Properties of Clifford-Legendre Polynomials. Advances in Applied Clifford Algebras, 32(1), 1-25, https://doi.org/10.1007/s00006-021-01179-8
% 
% 2. H. Baghal Ghaffari, “Higher-dimensional prolate spheroidal wave functions, ”Ph.D. dissertation, The University of Newcastle, 2022.


clear
close all 
clc
dim=3;
%
r=0:1/50:1;
%please chane the number num
%k=0;
num=20;
%k=1;
Truncation_Number=40;
c=2;
%r=1;
F=handdy5twodimaccumulative(r,c,Truncation_Number,num,dim);
plot(r,F,'DisplayName','sum of eigenvalue and prolate for n=0 to 20, k=0 to 10, c=1','LineWidth',3)
legend('Location','northeast','FontSize',30)
grid on

handdy5twodimaccumulative(0,c,Truncation_Number,num,dim)

%
function F=handdy5twodimaccumulative(r,c,Truncation_Number,num,dim)
F=0;
for i=1:num
    for k=0:20            
        F=F+(c^dim)*(abs(Even_High_Dim_Eigenvalue_CPSWFs ...
            (k,c,Truncation_Number,i,dim)))^2*(abs(Even_High_Dim_CPSWFs_Radial_Part ...
            (r,k,c,Truncation_Number,i,dim)).*r.^(k)/sqrt(4*pi)).^2+(c^dim)*(abs(Odd_High_Dim_Eigenvalue_CPSWFs ...
            (k,c,Truncation_Number,i,dim))).^2.*(abs(Odd_High_Dim_CPSWFs_Radial_Part ...
            (r,k,c,Truncation_Number,i,dim)).*r.^(k+1)/sqrt(4*pi)).^2;
    end
end
end
