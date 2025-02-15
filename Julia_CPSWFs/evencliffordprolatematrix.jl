#Hamed Baghal Ghaffari
#2021-10-20
#This Function gives us the doubly finite tridiagonal matrix.
function evencliffordprolatematrix(k,c,m)
    M=zeros(m,m);
    
    M[1,1]=(4*(pi)^2)*(c^2)*(k+1)/(k+2);

    for i=1:m-1
        M[i,i+1]=-(4*(pi)^2)*(c^2)*((i)*(k+i))/((k+2*i)*sqrt((k+2*i+1)*(k+2*i-1)));
    end
    
    for i=2:m
        M[i,i]=4*(i-1)*(k+i)+4*((pi).^2)*(c^2)*((((i+k)^2)/((2*i+k)*(2*i+k-1)))+(((i-1)^2)/((2*i+k-2)*(2*i+k-1))));
    end
    
    for i=1:m-1
        M[i+1,i]=-(4*(pi)^2)*(c^2)*((i)*(k+i))/((k+2*i)*sqrt((k+2*i+1)*(k+2*i-1)));
    end
    return M
end    
    
    