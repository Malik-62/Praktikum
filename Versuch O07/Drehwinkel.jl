using Statistics

phi_l = [58.4,58.7,58.05,57.3,57.85]
phi_r = [58.4,58.6,58.1,57.2,57.85]
phi = (phi_l .+ phi_r) ./ 2
phi_err = phi.-mean(phi)


weighted_avg = sum(phi .* (1 ./ phi_err .^ 2)) / sum(1 ./ phi_err .^ 2)
phi_std = std(phi)
#println("Standard deviation of phi: ", phi_std)
#println("Weighted average: ", weighted_avg)

drehwinkel = 106.38924176860775-58.07232729091449
insecurities = sqrt(2.1523630424876394^2+0.5392123885817177^2)


gamma = drehwinkel/4
del_gamma = sqrt(
    (1/4*insecurities)^2 + (drehwinkel*0.05/16)^2
)

println("Drehwinkel = $drehwinkel")
println("Drehwinkel Fehler = $insecurities")
println("Gamma = $gamma")
println("Gamma Fehler = $del_gamma")
