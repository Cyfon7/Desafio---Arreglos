numero = ARGV[0]

datos = open('./procesos.data').readlines

lista = []

datos.each do |elem|
    if elem > numero
        lista << elem.to_i
    end
end

File.write('./procesos_filtrados.data',lista.join("\n"))
