
def crear_index(prf1, prf2)
  file = File.new('index.html', 'w')
  file.write "<p>#{prf1}</p>\n"
  file.write "<p>#{prf2}</p>\n"
  file.close
  nil
end

def actualiza_index(prf1, prf2, arr)
  file = File.open('index.html', 'a')
  file.write "<p>#{prf1}</p>\n"
  file.write "<p>#{prf2}</p>\n"
  unless arr.empty?
    file.write "<ol>\n"
    arr.sort.map { |e| file.write "<li>#{e}</li>\n" }
    file.write '</ol>'
  end
  file.close
  nil
end

def color_fondo(color)
  file = File.read('index.html')
  data = file.gsub('<p>', "<p style='background-color: #{color};' >")
  File.write('index.html', data)
  nil
end

# Ejercicio 1
print crear_index 'mi parrafo 1', 'mi parrafo2'

# Ejercicio 2
arreglo = []
actualiza_index 'mi parrafo b.1', 'mi parrafo c.1', arreglo

arreglo = [1, 5, 3, 7, 2, 6, 3]
print actualiza_index 'mi parrafo b.1', 'mi parrafo c.2', arreglo

print color_fondo '#0000ff'
