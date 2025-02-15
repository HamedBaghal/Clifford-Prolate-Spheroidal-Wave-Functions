using Plots
pyplot()
T=[0.0 for i=1:10]
    for i=1:5
        T[2*i-1]=abs(evenquatientFourieronprolateatzero(i,0,1,20));
        T[2*i]=abs(oddquatientFourieronprolateatzero(i,0,1,20));
    end
print(T)
plot(T, color=:blue, label="Quotient for k=0, c=1", linewidth=3)
scatter!(T, color=:red, marker=:star, label="")

T=[0.0 for i=1:10]
    for i=1:5
        T[2*i-1]=abs(evenquatientFourieronprolateatzero(i,1,1,20));
        T[2*i]=abs(oddquatientFourieronprolateatzero(i,1,1,20));
    end
print(T)
plot!(T, color=:honeydew2, label="Quotient for k=1, c=1", linewidth=3)
scatter!(T, color=:red, marker=:star, label="")

T=[0.0 for i=1:10]
    for i=1:5
        T[2*i-1]=abs(evenquatientFourieronprolateatzero(i,4,1,20));
        T[2*i]=abs(oddquatientFourieronprolateatzero(i,4,1,20));
    end
print(T)
plot!(T, color=:yellow, label="Quotient for k=4, c=1", linewidth=3)
scatter!(T, color=:red, marker=:star, label="")