#TeamPia Daten

struct Messdaten
    Dunkelspannung::Float64
    Spannung::Array{Float64,1}
    Gegenspannung::Array{Float64,1}
    Strom::Array{Float64,1}
end


Gelb = Messdaten(-0.151, [-0.127, -0.128, -0.129, -0.130, -0.131, -0.131, -0.131, -0.132, -0.132, -0.132, -0.132, -0.131, -0.131, -0.132, -0.131, -0.131],
                           [0.0, 0.10, 0.20, 0.30, 0.40, 0.50, 0.60, 0.70, 0.80, 0.90, 1.00, 1.10, 1.20, 1.30, 1.60, 2.10],
                           [-1.27, -1.28, -1.29, -1.30, -1.31, -1.31, -1.31, -1.32, -1.32, -1.32, -1.32, -1.31, -1.31, -1.32, -1.31, -1.31])


gruen = Messdaten(0.128, [-0.122, -0.124, -0.126, -0.125, -0.127, -0.127, -0.128, -0.128, -0.128, -0.130, -0.130, -0.130],
                    [0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1],
                    [-1.22, -1.24, -1.26, -1.25, -1.27, -1.27, -1.28, -1.28, -1.28, -1.30, -1.30, -1.30]
)

blau = Messdaten(-0.128, [-0.109, -0.115, -0.118, -0.120, -0.124, -0.126, -0.128, -0.129, -0.130, -0.129, -0.130, -0.130],
                [0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1.1],
                [-1.09, -1.15, -1.18, -1.20, -1.24, -1.26, -1.28, -1.29, -1.30, -1.29, -1.30, -1.30]
)

kurzblau = Messdaten(-0.167, [-0.127, -0.129, -0.132, -0.136, -0.137, -0.138, -0.140, -0.140, -0.140, -0.141, -0.140, -0.140],
                    [0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1.1, 1.2],
                    [-1.27, -1.29, -1.32, -1.36, -1.37, -1.38, -1.40, -1.40, -1.40, -1.41, -1.40, -1.40, -1.40]
)

ultrablau = Messdaten(-1.31, [-0.115, -0.120, -0.122, -0.121, -0.125, -0.128, -0.128, -0.128, -0.129, -0.129, -0.129, -0.130, -0.130, -0.130, -0.130, -0.130],
                       [0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1.1, 1.2, 1.3, 1.6, 2.1],
                       [-1.15, -1.20, -1.22, -1.21, -1.25, -1.28, -1.28, -1.28, -1.29, -1.29, -1.29, -1.30, -1.30, -1.30, -1.30, -1.30])