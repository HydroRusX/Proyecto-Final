#!/bin/bash
	echo "Bienvenido al gestionador de grupos!"
while true
do
	echo "---Menu Gestionador---"
	echo "1. Alta de Grupo"
	echo "2. Baja de Grupo"
	echo "3. Modificar Grupo"
    echo "4. Salir"
read -p ":" opc
	case $opc in 
	1) read -p "Nombre del grupo a agregar: " grupo
       sudo groupadd $grupo
   	   ;;
	2) read -p "Nombre del grupo a eliminar: " grupo
       sudo groupdel $grupo
   	;;
    3) echo "Que desea modificar?"
       echo "1. Nombre"
       echo "2. GID"

       read -p "Opcion: " mod
       
       case $mod in
        
          1)
             read -p "Nombre actual: " actual
             read -p "Nombre Nuevo: " nuevo
            
             sudo groupmod -n $nuevo $actual
             ;;
          
          2) 
             read -p "Nombre del grupo: " grupo
             read -p "Nuevo GID: " gid

             sudo groupmod -g $gid $grupo
             ;;
          *)
             echo "Opcion Invalida"
             ;;
        esac
        ;;
    4)break
   	;;
	*)echo "Opcion no valida"
   	;;

	esac
	echo ""
done
