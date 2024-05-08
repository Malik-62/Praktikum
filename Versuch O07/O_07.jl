using Statistics

struct MeasurementSet
    phi_l::Vector{Float64}
    phi_r::Vector{Float64}
    phi::Vector{Float64}
    phi_err::Vector{Float64}
    weighted_avg::Float64
    phi_std::Float64
    drehwinkel::Float64
    insecurities::Float64
    gamma::Float64
    del_gamma::Float64
end

function calculate_measurement_set(phi_l::Vector{Float64}, phi_r::Vector{Float64})
    phi = (phi_l .+ phi_r) ./ 2
    phi_err = phi .- mean(phi)
    
    weighted_avg = sum(phi .* (1 ./ phi_err .^ 2)) / sum(1 ./ phi_err .^ 2)
    phi_std = std(phi)
    
    drehwinkel = 106.38924176860775 - weighted_avg
    insecurities = sqrt(2.1523630424876394^2 + phi_std^2)
    
    gamma = drehwinkel / 4
    del_gamma = sqrt((1/4 * insecurities)^2 + (drehwinkel * 0.05 / 16)^2)
    
    return MeasurementSet(phi_l, phi_r, phi, phi_err, weighted_avg, phi_std, drehwinkel, insecurities, gamma, del_gamma)
end

# Example usage
phi_l = [1.0, 2.0, 3.0]
phi_r = [4.0, 5.0, 6.0]
measurement_set = calculate_measurement_set(phi_l, phi_r)

println("Materialabhänigkeit blau Probe 86691")
println("Standard deviation of phi: ", measurement_set.phi_std)
println("Weighted average: ", measurement_set.weighted_avg)
println("Drehwinkel = ", measurement_set.drehwinkel)
println("Drehwinkel Fehler = ", measurement_set.insecurities)
println("Gamma = ", measurement_set.gamma)
println("Gamma Fehler = ", measurement_set.del_gamma)
