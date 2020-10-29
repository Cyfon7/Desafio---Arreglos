def promedio (array)
    prom = array.inject(0) do |suma, cant|
        suma + cant
    end
    prom / array.count.to_f
end

def clear_steps (pasos_diarios)
    pasos_limpios = []
    
    pasos_diarios.each do |elemento|
        if (elemento.count("0-9") == elemento.length)
            pasos_limpios.push(elemento)
        end
    end

    pasos_limpios.map! { |ele| ele.to_i } 

    pasos_limpios.select { |paso| !((paso < 200) || (paso > 100000)) }
end

pasos = ['100', '21', '231as', '2031', '1052000', '213b', 'b123']

print "Data original     = #{pasos}\n"
print "Data limpiada     = #{clear_steps(pasos)}\n"
print "Promedio de pasos = #{promedio(clear_steps(pasos))}\n"