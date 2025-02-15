using Plots

k = 1  # Example value
c = 2  # Example value
m = 80  # Example value
n = 1  # Example value

# Define a dummy function in polar coordinates (r, θ)
function my_function(r, θ)
    return evencomputemultiprolatewithoutyk(r, k, c, m, n)  # Example function
end

# Define the polar grid with r between 0 and 1
r = range(0, 1, length=100)  # Radius (limited to [0, 1])
θ = range(0, 2π, length=100)  # Angle

# Convert polar to Cartesian coordinates
x = [ri * cos(θj) for ri in r, θj in θ]
y = [ri * sin(θj) for ri in r, θj in θ]

# Evaluate z for each combination of r and θ
z_values = [my_function(ri, θj) for ri in r, θj in θ]

# Create the surface plot
surface(x, y, z_values, xlabel="X", ylabel="Y", zlabel="Z", title="Polar Surface Plot")
