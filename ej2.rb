#Ejercicio 2: Arrays y strings
nombres = [
  'Violeta', 'Andino', 'Clemente', 'Javiera', 'Paula', 'Pia', 'Ray'
]

#Extraer todos los elementos que excedan mas de 5 caracteres utilizando el método .select.

a = nombres.select{|string| string.length<=5}
p a


#utilizando map crear un arreglo con los nombres en minuscula

b = nombres.map{|nombre| nombre.downcase}
p b

#utilizando select crear un arreglo con todos los nombres que empiecen con P

c = nombres.map{|nombre| nombre  if nombre[0]=='P'}
p c.compact

#utilizando map crea un arreglo unico con la cantidad de letras que tiene cada nombre
d = nombres.map{|letras| letras.length}
p d

#utilizando map y gsub eliminar las vocales de todos los nombres

e = nombres.map do
  |nombre| nombre.gsub(/[aeiou]/,'')
end


p e
