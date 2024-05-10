using Plots
include("Daten.jl")
# #TeamPia Kennlinien
function Kennlinie(M::Messdaten)
    scatter(M.Gegenspannung, M.Strom, xlabel="Gegenspannung", ylabel="Strom", title="Kennlinie", legend=false, yerror=0.01)
end

savefig(Kennlinie(Gelb), "/Users/mamajjou/Developer/Praktikum/Versuch O_18/Gelb.png")
savefig(Kennlinie(gruen), "/Users/mamajjou/Developer/Praktikum/Versuch O_18/Gruen.png")
savefig(Kennlinie(blau), "/Users/mamajjou/Developer/Praktikum/Versuch O_18/Blau.png")
savefig(Kennlinie(kurzblau), "/Users/mamajjou/Developer/Praktikum/Versuch O_18/Kurzblau.png")
savefig(Kennlinie(ultrablau), "/Users/mamajjou/Developer/Praktikum/Versuch O_18/Ultrablau.png")