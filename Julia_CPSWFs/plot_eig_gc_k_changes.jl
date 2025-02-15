using Plots
pyplot()  # Use the PyPlot backend for MATLAB-like appearance


# Initialize plot
T = [0.0 for _ in 1:41]
plot()

for k in 0:40
    T[k+1] = abs(evenquatientFourieronprolateatzero(1, k/10, 1, 100))
    scatter!([k/10], [T[k+1]], color=:red, marker=:circle, linewidth=3, label=false)
    
    U = abs(oddquatientFourieronprolateatzero(1, k/10, 1, 100))
    scatter!([k/10], [U], color=:black, marker=:star, linewidth=3, label=false)
end


# Final values for k/10
M = abs(evenquatientFourieronprolateatzero(1, 40/10, 1, 100))
N = abs(oddquatientFourieronprolateatzero(1, 40/10, 1, 100))

scatter!([40/10], [M], color=:red, marker=:circle, label="Quotient for c=1, k changes with n=0")
scatter!([40/10], [N], color=:black, marker=:star, label="Quotient for c=1, k changes with n=1")

