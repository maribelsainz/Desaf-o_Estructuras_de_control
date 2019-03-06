# Condicional: If and else
# Ejercicio 1: Modifica la condición para que se cumpla.

a = '2'
if a == '2'
	puts 'la condicion es verdadera'
end

# _________________________________________________________
# Ejercicio 2: Modifica el valor asignado a la variable 'a' para que se cumpla la condición

a = 5
if a == 5
	puts 'la condicion es verdadera'
end

# _________________________________________________________
# Ejercicio 3: Hacer un refactoring, transformando las últimas 3 líneas en una sola línea.

a='X9-by'
puts 'HOLA!'if a == 'X9-by'

# _________________________________________________________
# Ejercicio 4: La variable 'password' no se encuentra definida.
# Permitir que el usuario pueda ingresar la contraseña por teclado, almacenar esta contraseña
# en la variable 'password' y luego evaluar la condición.

puts 'Ingrese contraseña'

password = gets.chomp.to_s

if password == 'secreto'
	puts 'acceso Permitido'
else
	puts 'acceso Denegado'
end

# _________________________________________________________
# Ejercicio 5
# Utiliza lógica booleana para hacer un refactoring de este código. Para verificar la evaluación de
# condiciones puedes modificar los valores de a y b.

a =true
b =true
if a==true && b==true
	puts 'lograste a y b'
elsif a==true && b== false
	puts 'lograste a pero no b '
else
	puts 'no lograste ni a ni b'
end

# _________________________________________________________
# Ejercicio 6
# Utiliza álgebra booleana para hacer un refactoring de este código. Para verificar la evaluación
# de condiciones puedes modificar los valores de a y b.

a ='verdadero'
b ='false'
puts ':)' if a =='verdadero' && b=='false'
puts ':|' if  a== 'falso' && b == 'verdadero'
puts ':C' if a=='falso' && b=='falso'




# _________________________________________________________
# Ciclos Iterativos
# Ejercicio 1: En el siguiente código reemplaza la instrucción 'for' por 'times'.

10.times do |i|
	i+=1
	puts i

  end

  # _________________________________________________________
  # Ejercicio 2: En el siguiente código reemplaza la instrucción 'while' por 'times'.

  10.times do |i|
    puts "iteracion: #{i}"
  end

  # _________________________________________________________
  # Ejercicio 3: Mostrar todos los divisores del número 990 con 'while', 'for' y 'times'.


  puts 'ciclo for '

  for i in (1..990)
    puts "#{i} es divisor" if 990 % i==0
  end

  puts '--------------------------'

  puts 'ciclo while'
  i=1
  while i<=990
    puts "#{i} es divisor" if 990 % i == 0
    i+=1
  end

  puts '---------------------------'

  puts 'ciclo times'

  990.times do |i|
    i+=1
    puts "#{i} es divisor" if 990 % i == 0
  end
  puts '-----------------------------'

  # _________________________________________________________
  # Ejercicio 4:

  a = 5
  b = '<li> hola </li> '
  puts '<ul>'
  a.times do
    puts b
    end
  puts'</ul>'

  # _________________________________________________________
  # Ejercicio 5: El siguiente código busca sumar todos los números del 1 al 10, pero no funciona porque algo falta, ¿puedes arreglarlo?

  suma = 0
  10.times do |i|
    suma = suma +i
  end
  puts suma

  # _________________________________________________________
  # Ejercicio 6: El siguiente algoritmo pretende calcular la multiplicación de los números de 1 a 10. (Factorial de 10)

    multiplicacion = 1
  10.times do |i|
    i += 1
    multiplicacion *= i
  end
  puts multiplicacion

# _________________________________________________________
# Ejercicio 7:

  a = 10
  a.times do |i|
    i += 1
    puts "#{i}=>PAR" if i.even?
  end

# _________________________________________________________
# Ejercicio 8:

  a=''

  10.times do |i|
    i+=1
    if i.odd?
      a=a+"#{i}impar "
    else
      a=a+"#{i}par "
    end
  end

  puts a

# _________________________________________________________
# Ejercicio 9: Crear un algoritmo que permita generar un string con el siguiente contenido:

  puts '<table>'
  puts '<tbody>'
  puts '<tr>'
  3.times do |i|
    i+=1
    puts "<td>#{i}</td>"
    end
  puts '</tr>'
  puts '</tbody>'
  puts '</table>'

# _________________________________________________________
# Ejercicio 10: El siguiente bloque de código debería mostrar un menú e imprimirlo reiteradamente hasta que el usuario ingrese la opción número 4.

  ready = 0
  while ready == 0
    puts 'opcion 1'
    puts 'opcion 2'
    puts 'opcion 3'
    puts 'opcion 4'
    puts 'ingresa opcion:'
    opcion = gets.chomp.to_i

    if opcion == 4
      ready = 1
    end

  end


# _________________________________________________________
# Ciclos Iterativos Anidados
# Ejercicio 1: Se pide imprimir la secuencia numérica, de la siguiente forma:

  array=[]
  4.times do |i|
    array.push([])
    4.times do |j|
      j+=1
      array[i].push(j*(i+1))
    end
  end

  array.each do |item|
    puts item.each{ |p| p }.join(" ")
  end

# _________________________________________________________
# Ejercicio 2: Generar el código para imprimir un string con el siguiente contenido:

puts '<table>'
puts '<tbody>'
c=0
3.times do |i|
	puts '<tr>'
	4.times do |j|
		puts "<td>#{c+1}</td>"
		c=c+1
	end
	puts '</tr>'
end
puts '</tbody'
puts '</table>'

# _________________________________________________________
# Ejercicio 3: Construir un programa que permita ingresar un número por teclado e imprimir la tabla de
# multiplicar del número ingresado.
# Debe repetir la operación (volver a preguntar por un número) hasta que se ingrese un 0 (cero).

  condicion = true

  while condicion
    puts 'ingrese valor numerico'
    puts 'para salir ingrese el 0'
    numero = gets.chomp.to_i
    if numero !=0
      puts "tabla de multiplicar del numero #{numero}"
      12.times do |item|
        item+=1
        res = item*numero
        puts "#{item}*#{numero}=#{res}"

      end
    else
      condicion = false
    end

  end