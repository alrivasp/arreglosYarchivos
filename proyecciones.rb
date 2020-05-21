
#Importar datos
data = open('ventas_base.db').read.chomp.split(',')
data.map! {|x| x.to_i}
#Metodo de calculo
def calculate arr, porcent, index_start, index_end
    total = 0
    for i in (index_start..index_end)
        total += arr[i]
    end
    '%.2f' % (total*  "1.#{porcent}".to_f )
end
#Exportar datos
def export sem1, sem2
    result = "#{sem1}\n#{sem2}"       
    File.write('resultados.data', result)
end
#Ejecucion de metodos
export((calculate(data, 10, 0, 5)), calculate(data, 20, 6, 11))
