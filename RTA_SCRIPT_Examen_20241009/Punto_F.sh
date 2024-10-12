#!/bin/bash

echo "Mi IP Publica es:" $(curl -s ifconfig.me | awk '{print $1}') > $HOME/repogit/UTNFRA_SO_1P2C_2024_VELASCO/RTA_ARCHIVOS_Examen_20241009/Filtro_Avanzado.txt
echo "Mi usuario es:" $(whoami) >> $HOME/repogit/UTNFRA_SO_1P2C_2024_VELASCO/RTA_ARCHIVOS_Examen_20241009/Filtro_Avanzado.txt
echo "El Hash de mi Usuario es:" $(sudo grep "$USER" /etc/shadow | awk -F ':' '{print $2}') >> $HOME/repogit/UTNFRA_SO_1P2C_2024_VELASCO/RTA_ARCHIVOS_Examen_20241009/Filtro_Avanzado.txt

cd $HOME/repogit/UTNFRA_SO_1P2C_2024_VELASCO/
echo "La URL de mi repositorio es:" $(sudo git remote get-url origin) >> $HOME/repogit/UTNFRA_SO_1P2C_2024_VELASCO/RTA_ARCHIVOS_Examen_20241009/Filtro_Avanzado.txt
