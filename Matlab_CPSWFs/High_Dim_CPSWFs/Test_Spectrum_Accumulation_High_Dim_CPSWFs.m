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
Truncation_Number=20;
c=1;
%r=1;

F=handdy5twodimaccumulative(c,Truncation_Number,num,dim)

%plot(r,F)
grid on
%
function F=handdy5twodimaccumulative(c,Truncation_Number,num,dim)
F=0;
for i=1:num
        NEven=Even_High_Dim_Coefficient_CPSWFs(0,c,Truncation_Number,i,dim);
        F=F+(c^(dim/2)*NEven(1)*sqrt(dim)*pi^(dim/2)/(gamma(dim/2+1)*sqrt(4*pi))).^2;
end
end

