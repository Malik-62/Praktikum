include("Daten.jl")

#1 1. Bestimmen Sie für beide Linsen den Durchmesser der Ringe aus der Differenz der beiden Positionen x_l und x_r und
#berechnen Sie daraus die Radien r mit Unsicherheit nach n,l n,r n dem Fehlerfortplanzungsgesetz für alle 20 Ringe.


function radien(messung::Messung)
    r = (messung.x_r - messung.x_l) / 2
    r_error = sqrt(2) *messung.error / 2
    return r, r_error
end


Linse1 = Messung([1.0, 2.0, 3.0], [2.0, 3.0, 4.0], 0.1)

radien(Linse1)