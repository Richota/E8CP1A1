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
sub_opcion = 0
txt_menu = <<MENU
Seleccionar una opción
1. Conocer cantidad de productos existentes
2. Ver Stock Total de algún producto determinado
3. Productos no registrados en cada bodega
4. producto con existencia maxima asignada
5. Ingresar nuevo producto
6. Salir
MENU
menu_2 = <<MENU2
  a. Mostrar la existencia por productos.
  b. Mostrar la existencia total por tienda.
  c. Mostrar la existencia total en todas las tiendas.
  d. Volver al menú principal.
MENU2

while opcion != 6
  print txt_menu
  opcion = gets.to_i
  case opcion
  when 1
      while sub_opcion != 'd'
        print menu_2
        opcion = gets.chomp
        case sub_opcion
        when 'a'
          opcion_1_a
        when 'b'
          opcion_1_b
        when 'c'
          opcion_1_c
        when 'd'
          print "Salir al menu principal\n\n"
        else
          print "Error de opcion\n\n"
        end
      end
  when 2
    opcion_2 producto
  when 3
    opcion_3 producto
  when 4
    opcion_4 producto
  when 5
    opcion_5 producto
  when 6
    print "Elegiste salir\n\n"
  else
    print "Error de opcion\n\n"
  end
end
