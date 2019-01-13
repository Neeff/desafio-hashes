inventario = {
  'Notebooks': 4,
  'Pc Escritorio': 6,
  'Routers': 10,
  'Impresora': 6
}


def menu
  puts '1)Agrega Item a Inventario'
  puts '2)Elminina Item  Inventario '
  puts '3)Actualiza Item Inventario '
  puts '4)Stock Total Inventario'
  puts '5)Item con mas Stock'
  puts '6) Busca Item'
  puts '7)Salir'
end

def agrega(inventario)
#si el usuario ingresa 1 podra agregar un item y su stock para separar el nombre del string el usuario debe usar una coma
  puts 'Ingrese un Producto,para ingresar separe el nombre el stock con una coma'
  new_prod = gets.chomp
  info  = new_prod.split(',')
  inventario[info[0]]=info[1]

  p inventario
end

#eliminar item
def elimina(inventario)
  puts 'ingrese  key para eliminar producto'
  llave = gets.chomp.to_s
  inventario.delete(llave)
  p inventario
end
def actualiza(inventario)
#actualizar elementos de inventario
  p inventario
  puts 'desea Modificar la key de un producto?S/n'
  opcion  = gets.chomp
  if opcion  == 'S'
    puts 'ingrese key del producto a modificar'
    key = gets.chomp.to_sym
    puts 'ingrese nueva key para el producto '
    new_key = gets.chomp.to_s
    puts 'ingrese valor asociado'
    var = gets.chomp.to_i
    inventario.delete(key)
    inventario[new_key]=var
    p inventario
  else
    puts 'ingrese key del producto a modificar'
    key = gets.chomp.to_sym
    puts 'ingrese nuevo stock para el producto'
    new_stock = gets.chomp.to_i
    inventario[key]=new_stock
    p inventario
  end
end
def stock_total(inventario)
#stock total
  total  = inventario.values.sum
  puts "total stock: #{total}"
end

def item_max_stock(inventario)
#item con mas stock
  product_max_stock = inventario.key(inventario.values.max)
  puts "el producto con mayor stock es #{product_max_stock}"
end
def busca(inventario)
#consulta si item existe en inventario
  puts 'ingrese Producto a buscar'
  key = gets.chomp.to_sym
  existe =  inventario.has_key?(key)
  if existe
    puts 'Si'
  else
    puts 'No'
  end
end
verdadero = true
while verdadero
  puts 'Ingrese Opcion'
  menu()
  opcion  = gets.chomp.to_i
  if opcion    == 1
    agrega(inventario)
  elsif opcion == 2
    elimina(inventario)
  elsif opcion == 3
    actualiza(inventario)
  elsif opcion == 4
    stock_total(inventario)
  elsif opcion == 5
    item_max_stock(inventario)
  elsif opcion == 6
    busca(inventario)
  elsif opcion == 7
    verdadero = false

  end
end
