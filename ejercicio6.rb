#ejercicio 6

restaurant_menu = {
  "Ramen" => 300,
  "Dal Makhani" => 400,
  "Coffee" => 200,
  "Sushi" => 1000,
  "Gohan" => 500,
  "Ebi Mozzarella" => 700
}

#obtener el plato mas caro
valores = restaurant_menu.values
puts restaurant_menu.key(valores.max)

#obtener el plato mas barato
puts restaurant_menu.key(valores.min)

#obtener el promedio del valor de los platos
suma = valores.sum.to_f
promedio  =suma/valores.length
puts promedio.round(2)

#crear un arreglo solo con los nombres de los platos
array = restaurant_menu.values.map{|i| i}
p array
#crear un arreglo con solo los valores de los platos
array2 = restaurant_menu.keys.map{|i|i}
p array2
#modificar el hash y agregar el iva a los valores de los platos
valores_con_iva =[]
array.each do |valor|
  valores_con_iva.push(valor*1.19)
end
p valores_con_iva

restaurant_menu_1 = array2.zip(valores_con_iva)
restaurant_menu_1.to_h
restaurant_menu =restaurant_menu_1
p restaurant_menu.to_h





#dar descuento del 20% para los platos que tengan un nombre de mas de una palabra
restaurant_menu.each do |key,item|
  if key.include? ' '
      descuento  = item*20/100
      item_dec = item-descuento
      puts "#{key} tiene un descuento del 20 % #{item} -> ahora #{item_dec}"
    end

end
