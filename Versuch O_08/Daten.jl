

##Wir messen 20 Ringe links und rechts von der mitte um die Radien der Ringe zu bestimmen. 
##Das heißt wir zeichnen Ringe x_l und x_r auf (beides Float64 Arrays mit 20 Einträgen)
struct Messung
    x_l::Array{Float64,1}
    x_r::Array{Float64,1}
    error::Float64 #müssen wir noch entscheiden
end


Linse4 = Messung([2.561, 2.575, 2.586, 2.599, 2.610, 2.621, 2.632, 2.641, 2.651, 2.659, 2.668, 2.677, 2.684, 2.693, 2.70, 2.708, 2.715, 2.722, 2.730, 2.737],reverse!([2.058, 2.066, 2.074, 2.082, 2.089, 2.097, 2.107, 2.114, 2.121, 2.13, 2.139, 2.148, 2.157, 2.165, 2.177, 2.188, 2.199, 2.21, 2.224,2.237])
,
0.001)

LinseN3 = Messung(
reverse!([3.054, 3.047, 3.042, 3.025, 3.029, 3.023, 3.016, 3.01, 3.004, 2.997, 2.90, 2.82, 2.975, 2.968, 2.961, 2.954, 2.945, 2.938, 2.929, 2.921]),
 [2.486, 2.477, 2.469, 2.461, 2.453, 2.445, 2.438, 2.43, 2.423, 2.417, 2.410, 2.403, 2.396, 2.389, 2.384, 2.377, 2.371, 2.365, 2.359, 2.354],
0.001)

length(LinseN3.x_r)