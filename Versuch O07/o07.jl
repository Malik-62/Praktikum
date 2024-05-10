
using Statistics




# Auswertung für die erste Leermessung
phi_l = [103.65, 100.8, 107.05, 107.1, 107.2, 107.2, 107.25, 107.05, 107.05, 106.3]
phi_r = [103.7,100.75,107.1,107.05,107.25,107.15,107.25,107,107.1 ,106.2]
phi = (phi_l .+ phi_r) ./ 2
phi_err = phi.-mean(phi)


weighted_avg = sum(phi .* (1 ./ phi_err .^ 2)) / sum(1 ./ phi_err .^ 2)
phi_std = std(phi)
println("Standard deviation of phi: ", phi_std)
println("Weighted average: ", weighted_avg)


