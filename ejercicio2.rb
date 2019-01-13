#ejercicio 2

productos={
  bebida:850,
  chocolate:1200,
  galletas:900,
  leche:750
}
productos.each do |key,producto|
  puts "#{key}:#{producto}"
end
productos[:cereal]=2200

#modificando el valor de bebida
productos[:bebida] = 2000

p productos

#eliminando galletas
productos.delete(:galletas)

p productos
