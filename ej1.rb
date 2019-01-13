#desafio de bloque en arrays

#dado el array

a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

# Utilizando map generar un nuevo arreglo con cada valor aumentado en 1.

b = a.map{|i| i+1}
p b

#utilizando map generar un nuevo arreglo que contenga todos los valores convertidos a float

c = a.map{|i|i.to_f}
p c
#Utilizando map generar un nuevo arreglo que contenga todos los valores convertidos a string

d = a.map{|i|i.to_s}

#Utilizando reject descartar todos los elementos menores a 5 en el array

e = a.reject { |i| i<5 }
p e

f = a.select{|i| i<5}
p f

#Utilizando inject obtener la suma de todos los elementos del array

g = a.inject{|sum,i| sum +i}
p g

# Utilizando group_by agrupar todos los números por paridad (si son pares, es un grupos, si son impares es otro grupo)
h =a.group_by{|i| i %2 == 0 }
p h

#Utilizando group_by agrupar todos los números mayores y menores que 6.
i  = a.group_by{|i| i>6}

p i
