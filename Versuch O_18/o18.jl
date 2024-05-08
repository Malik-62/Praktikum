using Plots
using LinearAlgebra
using Statistics

function linear_regression(x, y)
    n = length(x)
    x_mean = mean(x)
    y_mean = mean(y)
    xy_mean = mean(x .* y)
    x_squared_mean = mean(x .^ 2)
    
    slope = (xy_mean - x_mean * y_mean) / (x_squared_mean - x_mean^2)
    intercept = y_mean - slope * x_mean
    
    return slope, intercept
end

I = [-1270, -1280, -1290, -1300, -1310, -1310, -1310, -1320, -1320, -1320, -1320, -1310, -1310, -1320, -1310, -1310] .* 0.001
U = [0.0, 0.1, 0.2 ,0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0, 1.1, 1.2, 1.3, 1.6, 2.1]

scatter(U, I, label="Data Points")

slope, intercept = linear_regression(U, I)
plot!(U, slope .* U .+ intercept, label="Line of Best Fit")

println("intercept: ", intercept)

xlabel!("U")
ylabel!("I")
title!("Data Points with Line of Best Fit")



