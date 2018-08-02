# La opción 1 permite conocer la cantidad de productos existentes. Al seleccionar esta opción, se mostrará un submenú que permitirá:
# 	- a) Mostrar la existencia por productos.
# 	- b) Mostrar la existencia total por tienda.
# 	- c) Mostrar la existencia total en todas las tiendas.
# 	- d) Volver al menú principal.
#  	*Hint:* Se debe validar que la opción ingresada sea válida.
# - La opción 2 permite que el usuario ingrese el nombre de un producto y el programa responderá con la cantidad de stock total (suma en las bodegas) de ese producto.
# - La opción 3 muestra los productos no registrados en cada bodega.
# - La opción 4 permite conocer los productos con una existencia total menor a un valor ingresado por el usuario.
# - La opción 5 permite registrar un nuevo producto con su respectivo stock en cada bodega. (*Hint:* abrir el archivo como append).
# - Si el usuario ingresa la opción 6 el programa sale, si ingresa cualquier otra opción se debe mostrar que la opción es inválida, y mostrar el menú nuevamente y la opción de elegir.
opcion = 0

txt_menu = <<MENU
Seleccionar una opción
1. Conocer cantidad de productos existentes
2. Ver Stock Total de algún producto determinado
3. Productos no registrados en cada bodega
4. producto con existencia maxima asignada
5. Ingresar nuevo producto
6. Salir
MENU

def opcion_1
  def opcion_1_a
    file = File.open('Bodega.txt', 'r')
    pro = file.readlines.map { |e| e.chomp.split(', ') }
    file.close
    print pro
  end

  def opcion_1_c
    file = File.open('Bodega.txt', 'r')
    pro = file.readlines.map { |e| "#{e.chomp.split(', ')[0]}: #{e.chomp.split(', ').inject(0) { |i, valor| i + valor.to_i }}" }
    file.close

    puts pro
  end
sub_opcion = 0
menu_2 = <<MENU2
    1. Mostrar la existencia por productos.
    2. Mostrar la existencia total por tienda.
    3. Mostrar la existencia total en todas las tiendas.
    4. Volver al menú principal.
MENU2
  while sub_opcion != 4
    print menu_2
    sub_opcion = gets.to_i
    case sub_opcion
    when 1
      opcion_1_a
    when 2
      opcion_1_b
    when 3
      opcion_1_c
    when 4
      print "Salir al menu principal\n\n"
    else
      print "Error de opcion\n"
      print "Vuelva a ingresar opción\n\n"
    end
  end
end

def opcion_2
  print "Ingrese producto\n"
  pro = gets.chomp

  file = File.open('Bodega.txt', 'r')
  data = file.readlines.map { |x| x.chomp.split(', ') }.select { |i| i[0] == pro }
  file.close
  file_b = File.open('Bodega.txt', 'r')
  busca = file_b.readlines.map { |e| e.chomp.split(', ')[0] }
  file_b.close

  if busca.include? pro
    suma = data[0].inject(0) { |c, v| c + v.to_i }
    print "#{pro}: #{suma} items en total\n\n"
  else
    print "Producto no válido. Vuelva a Ingresar opción\n\n"
  end
end

while opcion != 6
  print txt_menu
  opcion = gets.to_i
  case opcion
  when 1
    opcion_1
  when 2
    opcion_2
  when 3
    opcion_3
  when 4
    opcion_4 producto
  when 5
    opcion_5 producto
  when 6
    print "Elegiste salir\n\n"
  else
    print "Error de opcion\n"
    print "Vuelva a ingresar opción\n\n"
  end
end
