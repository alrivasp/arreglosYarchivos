def import_data
    #Importar data
    data = open('notas.data').readlines
    #Convertir a un array por linea
    data.map! {|x| x.chomp.split(',')}
    #Convertir tipo de datos 
    result = []
    data.count.times do |r|
        temp = []
        data[r].count.times do |c|
            c == 0 ? temp << data[r][c].to_s : temp << data[r][c].to_i
        end
        result << temp
    end 
    #Retorno de array bidimencional
    result
end

def nota_mas_alta arr
    result = []
    arr.count.times do |r| 
        nota = 0
        arr[r].count.times do |c|
            if c > 0
                nota > arr[r][c] ? nota : nota = arr[r][c]
            end
        end
        result << nota
    end
    result
end

nota_mas_alta(import_data)