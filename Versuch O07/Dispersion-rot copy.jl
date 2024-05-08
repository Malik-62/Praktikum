using Statistics

phi_l = []
phi_r = []
phi = (phi_l .+ phi_r) ./ 2
phi_err = phi.-mean(phi)
println("Materialabhänigkeit blau Probe 86691")

weighted_avg = sum(phi .* (1 ./ phi_err .^ 2)) / sum(1 ./ phi_err .^ 2)
phi_std = std(phi)
println("Standard deviation of phi: ", phi_std)
println("Weighted average: ", weighted_avg)

drehwinkel = 106.38924176860775-weighted_avg
insecurities = sqrt(2.1523630424876394^2+phi_std^2)


gamma = drehwinkel/4
del_gamma = sqrt(
    (1/4*insecurities)^2 + (drehwinkel*0.05/16)^2
)

println("Drehwinkel = $drehwinkel")
println("Drehwinkel Fehler = $insecurities")
println("Gamma = $gamma")
println("Gamma Fehler = $del_gamma")


