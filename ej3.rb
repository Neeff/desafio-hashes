#array de hashes
#1)Crear un menú que permita registrar la información de los alumnos del curso.

data=[{nombre: 'diego', edad: 20, comuna: 'victoria', genero: 'masculino' },{nombre: 'andrea', edad: 30, comuna: 'temuco', genero: 'femenino'},{nombre: 'patricio', edad: 25, comuna: 'providencia', genero: 'masculino'},{nombre: 'carolina', edad: 22, comuna: 'victoria', genero: 'femenino'}]
def ingresa_info(data)
  p data
  puts 'Ingrese Nombre'
  nombre = gets.chomp.downcase
  puts 'Ingrese Edad'
  edad = gets.chomp.to_i
  puts 'Ingrese Comuna'
  comuna  = gets.chomp.downcase
  puts 'Ingrese Genero'
  genero = gets.chomp.downcase
  info = {}
  info[:nombre] = nombre
  info[:edad]   = edad
  info[:comuna] = comuna
  info[:genero] = genero
  data.push(info)
  p data
end

def menu()
  puts '1)Ingrese Datos'
  puts '2)Editar Datos'
  puts '3)Eliminar Persona'
  puts '4)Personas Ingresadas'
  puts '5)Comunas'
  puts '6)Personas entre 20 y 25 años'
  puts '7)Suma de edades'
  puts '8)Promedio de Edades'
  puts '9)Lista personas por Genero'
  puts '10)Salir'
end

def editar(data)
  p data
  puts "Ingrese indice entre 0 y #{data.length} para modificar registro"
  indice  = gets.chomp.to_i
  puts 'Ingrese Nombre nuevo'
  nombre = gets.chomp.downcase
  puts 'Ingrese Edad Nueva'
  edad = gets.chomp.downcase
  puts 'Ingrese Comuna'
  comuna = gets.chomp.downcase
  puts 'Ingrese Genero'
  genero = gets.chomp.downcase
  data[indice][:nombre] = nombre
  data[indice][:edad]   = edad
  data[indice][:comuna] = comuna
  data[indice][:genero] = genero
  p data
end
def borrar(data)
  puts "Ingrese indice entre 0 y #{data.length} para borrar registro"
  indice = gets.chomp.to_i
 data.delete_at(indice)
  p data
end

def cuenta_personas(data)
  puts "#{data.length} Persona Ingresadas"
end

def comunas(data)
  comunas = []
  data.each do |info|
    info.each do |k,v|
        puts "#{info[:nombre]} :#{v}" if k == :comuna
        comunas.push(v) if k == :comuna
      end
  end
    p comunas.uniq
end

def edades(data)
  nombres =[]
  data.each do |persona|
    nombres.push(persona[:nombre]) if persona[:edad]>=20 and persona[:edad]<=25
  end
  p nombres
end

def suma_edades(data)
  suma = 0
  data.each do |info|
    suma = suma + info[:edad]

  end
  p "la suma es #{suma}"
end

def promedio_edades(data)
  promedio = 0
  data.each do |info|
    promedio = promedio + info[:edad]/data.length
  end
  puts  "el promedio es #{promedio}"
end

def lista_por_genero(data)
  masculino = []
  femenino  = []
  data.each do |personas|
    if personas[:genero] == 'masculino'
      masculino.push(personas[:nombre])
    else
      femenino.push(personas[:nombre])
    end
  end
  p "lista de personas Masculinas #{masculino}"
  p "lista de personas Femeninas #{femenino}"
end

verdadero =true
while verdadero
  menu()
  puts 'Ingrese opcion'
  opcion = gets.chomp.to_i
  if opcion  == 1
    ingresa_info(data)
  elsif opcion == 2
    editar(data)
  elsif opcion == 3
    borrar(data)
  elsif opcion == 4
    cuenta_personas(data)
  elsif opcion == 5
    comunas(data)
  elsif opcion == 6
    edades(data)
  elsif opcion == 7
    suma_edades(data)
  elsif opcion == 8
    promedio_edades(data)
  elsif opcion == 9
    lista_por_genero(data)
  elsif opcion ==10
    verdadero = false
  end
end
