#ejercicio5
meses = ['Enero','Febrero','Marzo','Abril','Mayo']
ventas = [2000,3000,1000,5000,4000]
hash = meses.zip(ventas).to_h

p hash

hash_i = hash.invert()
p hash_i


hash_i.each do |key,value|
  puts"#{value}" if key == hash_i.keys.max
end
