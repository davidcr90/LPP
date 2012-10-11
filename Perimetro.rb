#!/usr/bin/env ruby

#Alumno: David Carlos Reyes
#Alu4052

#clase perimetro
class Perimetro
	
	#Contructor
	def initialize (num)
		@perimetro = num
		@pi = 3.14
		@mitad = 2
	end
	
	#Metodo calcular perimetro
	def calperimetro
		resultado = (((@perimetro)/(@pi))/@mitad)
		return resultado
	end
		
end


#Funcion main para el calculo
def main
	#limpiar pantalla	
	puts "\e[H\e[2J"
	puts "===================================="
	print "== Introducir perimetro: "
	STDOUT.flush
	peri = gets.chomp
	peri = peri.to_r

	cal = Perimetro.new(peri)
	print "== Radio: " 
	puts cal.calperimetro
	
	#pulsar una tabla
	puts ""
	puts "== Para continuar pulse una tecla... "
	STDOUT.flush
	gets.chomp
end

#Menu
x = 5
while x != 0
	#limpiar pantalla	
	puts "\e[H\e[2J"
	puts "==================================="
	puts "== 1- Calcular perimetro         =="
	puts "== 0- Salir                      =="
	puts ""
	print "== Opcion: "
	STDOUT.flush
	x = gets.chomp
	x = x.to_i
	if x == 1
		main
	end
 end
