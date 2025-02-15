% References
% 
% 1. Ghaffari, H. B., Hogan, J. A., & Lakey, J. D. (2022). Properties of Clifford-Legendre Polynomials. Advances in Applied Clifford Algebras, 32(1), 1-25, https://doi.org/10.1007/s00006-021-01179-8
% 
% 2. H. Baghal Ghaffari, “Higher-dimensional prolate spheroidal wave functions, ”Ph.D. dissertation, The University of Newcastle, 2022.

function M=Odd_CPSWFs_Matrix(k,c,m)
M=zeros(m,m);

for i=1:m-1
M(i,i+1)=-(4*(pi)^2)*(c^2)*((i)*(k+i+1))/((k+2*i+1)*sqrt((k+2*i+2)*(k+2*i)));
end

for i=1:m
M(i,i)=4*(i)*(k+i)+4*((pi).^2)*(c^2)*((((i+k)^2)/((2*i+k-1)*(2*i+k)))+(((i)^2)/((2*i+k+1)*(2*i+k))));
end

for i=1:m-1
M(i+1,i)=-(4*(pi)^2)*(c^2)*((i)*(k+i+1))/((k+2*i+1)*sqrt((k+2*i+2)*(k+2*i)));
end