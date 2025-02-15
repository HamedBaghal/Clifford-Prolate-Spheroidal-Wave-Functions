% References
% 
% 1. Ghaffari, H. B., Hogan, J. A., & Lakey, J. D. (2022). Properties of Clifford-Legendre Polynomials. Advances in Applied Clifford Algebras, 32(1), 1-25, https://doi.org/10.1007/s00006-021-01179-8
% 
% 2. H. Baghal Ghaffari, “Higher-dimensional prolate spheroidal wave functions, ”Ph.D. dissertation, The University of Newcastle, 2022.
                   
clear
close all 
clc
%
r=0:1/50:1;
%please chane the number num
%k=0;
Truncation_Number=20;
%k=1;
m=40;
c=1;
%r=1;
F=Spectrum_Accumulatio(r,c,m,Truncation_Number);
plot(r,F,'DisplayName','sum of eigenvalue and prolate for n=0 to 20, k=0 to 10, c=1','LineWidth',3)
legend('Location','northeast','FontSize',30)
grid on
%
function F=Spectrum_Accumulatio(r,c,m,Truncation_Number)
F=0;
for i=1:Truncation_Number
    for k=0:10             
        F=F+c^2*(abs(Even_Eigenvalue_CPSWFs(k,c,m,i))).^2*(abs(Even_CPSWFs_Radial_Part(r,k,c,m,i)).*(r.^(k))./(sqrt(2*pi))).^2+c^2*(abs(Odd_Eigenvalue_CPSWFs(k,c,m,i))).^2.*(abs(Odd_CPSWFs_Radial_Part(r,k,c,m,i).*(r.^(k+1))./(sqrt(2*pi)))).^2;
    end
end
end

