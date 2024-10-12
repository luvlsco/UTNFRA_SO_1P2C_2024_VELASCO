#!/bin/bash

sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores


sudo useradd -m -s /bin/bash -p "$(sudo grep "$USER" /etc/shadow | awk -F ':' '{print $2}')" -G p1c2_2024_gAlumno p1c2_2024_A1
sudo useradd -m -s /bin/bash -p "$(sudo grep "$USER" /etc/shadow | awk -F ':' '{print $2}')" -G p1c2_2024_gAlumno p1c2_2024_A2
sudo useradd -m -s /bin/bash -p "$(sudo grep "$USER" /etc/shadow | awk -F ':' '{print $2}')" -G p1c2_2024_gAlumno p1c2_2024_A3

sudo useradd -m -s /bin/bash -p "$(sudo grep "$USER" /etc/shadow | awk -F ':' '{print $2}')" -G p1c2_2024_gProfesores p1c2_2024_P1


sudo chown p1c2_2024_A1:p1c2_2024_A1 /Examenes-UTN/alumno_1
sudo chown p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/alumno_2
sudo chown p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/alumno_3

sudo chown p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores


sudo chmod -R 750 /Examenes-UTN/alumno_1
sudo chmod -R 760 /Examenes-UTN/alumno_2
sudo chmod -R 700 /Examenes-UTN/alumno_3

sudo chmod -R 775 /Examenes-UTN/profesores


sudo su -c "whoami > /Examenes-UTN/alumno_1/validar.txt" p1c2_2024_A1
sudo su -c "whoami > /Examenes-UTN/alumno_2/validar.txt" p1c2_2024_A2
sudo su -c "whoami > /Examenes-UTN/alumno_3/validar.txt" p1c2_2024_A3

sudo su -c "whoami > /Examenes-UTN/profesores/validar.txt" p1c2_2024_P1

sudo ls -l /Examenes-UTN/alumno_{1..3}/validar.txt
sudo ls -l /Examenes-UTN/profesores/validar.txt

sudo cat -n /Examenes-UTN/alumno_{1..3}/validar.txt
sudo cat -n /Examenes-UTN/profesores/validar.txt
