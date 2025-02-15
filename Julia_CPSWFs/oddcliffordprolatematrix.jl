function oddcliffordprolatematrix(k,c,m)
    M=zeros(m,m);
    
    for i=1:m-1
        M[i,i+1]=-(4*(pi)^2)*(c^2)*((i)*(k+i+1))/((k+2*i+1)*sqrt((k+2*i+2)*(k+2*i)));
    end
    
    for i=1:m
    M[i,i]=4*(i)*(k+i)+4*((pi).^2)*(c^2)*((((i+k)^2)/((2*i+k-1)*(2*i+k)))+(((i)^2)/((2*i+k+1)*(2*i+k))));
    end
    
    for i=1:m-1
        M[i+1,i]=-(4*(pi)^2)*(c^2)*((i)*(k+i+1))/((k+2*i+1)*sqrt((k+2*i+2)*(k+2*i)));
    end
    return M
end

