#!/bin/bash
	echo "Bienvenido Operador!"
while true
do
	echo "---Menu Gestionador---"
	echo "1. Gestion de Usuarios"
	echo "2. Gestion de Grupos"
	echo "3. Salir"
read -p ":" opc
	case $opc in 
	1)/home/mint/Gestiondeusuarios.sh
   	;;
	2)/home/mint/Gestiondegrupos.sh
   	;;
	3)break
   	;;
	*)echo "Opcion no valida"
   	;;

	esac
	echo ""
done
