% References
% 
% 1. Ghaffari, H. B., Hogan, J. A., & Lakey, J. D. (2022). Properties of Clifford-Legendre Polynomials. Advances in Applied Clifford Algebras, 32(1), 1-25, https://doi.org/10.1007/s00006-021-01179-8
% 
% 2. H. Baghal Ghaffari, “Higher-dimensional prolate spheroidal wave functions, ”Ph.D. dissertation, The University of Newcastle, 2022.

function M=Odd_High_Dim_CPSWFs_Matrix(k,c,matrix_size,dim)
M=zeros(matrix_size,matrix_size);

M(1,1)=4*(k+dim/2)+4*pi^2*c^2/(k+dim/2+1)*((k+dim/2)+1/(k+dim/2+2));

for i=1:matrix_size-1
    M(i,i+1)=-(4*(pi)^2)*(c^2)*((i)*(k+i+dim/2))/((k+2*i+dim/2)*sqrt((k+2*i+dim/2+1)*(k+2*i+dim/2-1)));
    
    M(i+1,i+1)=4*(i+1)*(k+i+dim/2)+4*pi^2*c^2/(k+2*i+dim/2+1)*((((k+i+dim/2)^2)/((k+2*i+dim/2)))+(((i+1)^2)/((k+2*i+dim/2+2))));
    
    M(i+1,i)=-(4*(pi)^2)*(c^2)*((i)*(k+i+dim/2))/((k+2*i+dim/2)*sqrt((k+2*i+dim/2+1)*(k+2*i+dim/2-1)));
end