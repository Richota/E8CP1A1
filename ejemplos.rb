print "Ingrese producto\n"
pro = 'Producto8' # gets.chomp

file = File.open('Bodega.txt', 'r')
data = file.readlines.map { |x| x.chomp.split(', ') }.select { |i| i[0] == pro }
file.close
file_b = File.open('Bodega.txt', 'r')
busca = file_b.readlines.map { |e| e.chomp.split(', ')[0] }
file_b.close

if busca.include? pro
  suma = data[0].inject(0) { |c, v| c + v.to_i }
  print "#{pro}: #{suma} items en total\n"
else
  print "no existe. Vuelva a Ingresar opcion\n"
end

# print data
# print busca
