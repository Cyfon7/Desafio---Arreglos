def promedio (visit)
    prom = visit.inject(0) do |suma, cant|
        suma + cant
    end
    prom / visit.count.to_f
end


visitas = [1000, 800, 250, 300, 500, 2500]
puts "Visitas registradas = #{visitas}"
puts "Visitas promedio    = #{promedio(visitas)}"