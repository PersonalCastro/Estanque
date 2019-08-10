# Makefilecon diferentes funciones para trabajar los diferentes codigos creados


#Declaramos distintas variables
Algoritmo = Estanque

#-------------------------------------------------------------------

#Llamamos como predeterminado a la función principal de compilación y de información
all: info Compilar

#-------------------------------------------------------------------
	
#Compilación de los diferentes .o en un solo ejecutable
Compilar:
	g++ $(Algoritmo).cpp -o $(Algoritmo)

#-------------------------------------------------------------------

#Sacamos por pantalla la información de las diferentes funciones implementadas en este Makefile
info:
	clear
	@echo "Funciones disponibles: "
	@echo 
	@echo "- make info : Saca por pantalla las diferentes funciones del archivo Makefile"
	@echo "- make clean : Limpia la carpeta de Archivos Temporales"
	@echo "- make exe : Ejecuta el programa"

#-------------------------------------------------------------------

#Removemos (eliminamos) los archivos temporales (los ".o")
clean: 
	@rm -f $(Algoritmo)

#-------------------------------------------------------------------

#Ejecutamos el Programa
exe:
	@./$(Algoritmo)


