def conteo(filename)
file = File.open(filename, 'r')
data = file.readlines.map { |e| e.split(' ') }
end

print conteo('peliculas.txt').length
