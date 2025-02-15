using Plots
pyplot()  # Use the PyPlot backend for a MATLAB-like appearance

plot()
# Loop over c values from 1 to 40
for c in 1:20
    M = abs(evenquatientFourieronprolateatzero(2, 2, c/10, 20))
    N = abs(oddquatientFourieronprolateatzero(2, 1, c/10, 20))

    scatter!([c/10], [M], color=:red, marker=:circle, linewidth=3, label=false)
    scatter!([c/10], [N], color=:black, marker=:star, linewidth=3, label=false)
end

M = abs(evenquatientFourieronprolateatzero(2, 2, 20/10, 20))
N = abs(oddquatientFourieronprolateatzero(2, 1, 20/10, 20))

scatter!([20/10], [M], color=:red, marker=:circle, label="Quotient for k=2, c changes with n=2")
scatter!([20/10], [N], color=:black, marker=:star, label="Quotient for k=1, c changes with n=3")

