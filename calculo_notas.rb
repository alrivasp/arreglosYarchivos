
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
    result = 0    
    arr.count.times do |i|
        if i > 0
            result > arr[i] ? result : result = arr[i]
        end
    end
    result
end

def review arr
    result = ""
    arr.each  {|ele| result += nota_mas_alta(ele).to_s}
    result
end

review(import_data)