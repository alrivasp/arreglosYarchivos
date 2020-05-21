data = [5, 3, 2, 5, 10]
#Grafico desarrollado de manera dinamica
def chart arr
    #Saber Numero mayor
    num = arr.inject(0) {|numero, x| numero >= x ? numero : numero = x}    
    #Dibujar grafico
    result = ""
    arr.each do |x|
        result += "|"
        x.times do |i|
            i > 8 ? result += "***" : result += "**"            
        end
        result += "\n"
    end
    
    2.times do |i|
        i == 0 ? result += ">" : result += " "
        num.times do |x|
            if i == 0 
                x > 8 ? result += "---" : result += "--"
            else
                x > 9 ? result += " #{x+1}" : result += "#{x+1} "                
            end              
        end
        result += "\n"
    end
    result
end

print chart(data)
