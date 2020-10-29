def promedio (array)
    prom = array.inject(0) do |suma, cant|
        suma + cant
    end
    prom / array.count.to_f
end

def compara_arrays (arr1, arr2)

    arr1.map! do |x|
        x.to_f
    end

    arr2.map! do |x|
        x.to_f
    end
        
    prom1 = promedio(arr1)
    prom2 = promedio(arr2)

    #Lineas de codigo para examinar los datos realmente usados
=begin
    print "\n\nArray 1 = #{arr1}\n"
    print "Promedio 1 = #{prom1}\n"

    print "\n\nArray 2 = #{arr2}\n"
    print "Promedio 2 = #{prom2}\n"
=end

    if (prom1 >= prom2)
        prom1
    else
        prom2
    end
end

a = []
b = []
nume = true

2.times do |i|
    puts "Arreglo #{i+1}"
    print "Cant de elementos del arreglo? "
    n = gets.to_i
    n.times do |j|
        print "Ingrese item #{j+1} : "
        if nume
            a.push (gets.chomp)
        else
            b.push (gets.chomp)
        end
    end
    print "\nArreglo #{i+1} : "
    if nume
        print "#{a} \n\n"
        nume = false
    else
        print "#{b} \n\n"
    end
end

puts "El promedio mayor es = #{compara_arrays(a,b)}"