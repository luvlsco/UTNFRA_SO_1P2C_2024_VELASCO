#!/bin/bash

sudo grep MemTotal /proc/meminfo > $HOME/repogit/UTNFRA_SO_1P2C_2024_VELASCO/RTA_ARCHIVOS_Examen_20241009/Filtro_Basico.txt

sudo dmidecode -t chassis | grep "Chassis" >> $HOME/repogit/UTNFRA_SO_1P2C_2024_VELASCO/RTA_ARCHIVOS_Examen_20241009/Filtro_Basico.txt
sudo dmidecode -t chassis | grep "Manufacturer" >> $HOME/repogit/UTNFRA_SO_1P2C_2024_VELASCO/RTA_ARCHIVOS_Examen_20241009/Filtro_Basico.txt
