#ejercicio3
h = {'x' => 1 ,  'y' => 2}

#agregar el string z con el valor 3
h['z'] = 3

p h

#eliminar clave y
h.delete('y')
p h

#Si el hash tiene una clave llamada z mostrar en pantalla "yeeah".
puts 'yeaaah!'  if h.has_key?'z'

#Invertir el diccionario de forma que los valores sean las llaves y las llaves los valores
p h.invert()
