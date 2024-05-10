##hier kommen die Versuchsdaten rein.

struct Messung
    phi_l::Array{Float64,1}
    phi_r::Array{Float64,1}
end

#Leermessung (Ohne Probe zur Bestimmung des Nullwinkels)


leermessung = Messung(
    [109.15, 113, 125.10, 98.0, 110.35, 113.6, 108.45, 115.25, 116.6, 114.7], 
    [113.3, 109.35, 108.1, 102.2, 113.5, 115.7, 110.55, 120.5, 119.75, 115.7]
)

#Probe 86691 rechtsdrehend
blau86691 = Messung(
    [148.65,152.2,144.05,162.1,140.2],
    [150.75,150.5,147.2,146.15,142.3]
)
gruen86691 = Messung(
    [0.8, 165.45, 2.95, 170.3, 1.55],
    [0.8. 167.55, 166.1, 172.4, 2.6]
)
rot86691 = Messung(
    [4.1, 27.8, 26.6, 19.1, 25.75],
    [8.3, 28.85, 25.65, 20.15, 30.1]
)

#Probe 86692 Linksdrehend 
M86692 = Messung(
    [45.34, 55.65, 40.3, 41.2, 45.45],
    [48.5, 58.8, 43.45, 43.3, 48.6]
)

#Probe 86681 rechtsdrehend
M86681 = Messung(
    [46.3, 47.4, 63.9, 55.5, 53.45],
    [49.45, 50.55, 65.1, 56.55, 54.5]
)

