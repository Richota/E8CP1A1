def conteo(filename)
file = File.open(filename, 'r')
data = file.readlines.count
end

print conteo('peliculas.txt')
