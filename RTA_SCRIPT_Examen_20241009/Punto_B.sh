#!/bin/bash

DISCO=$(sudo fdisk -l | grep "10 GiB" | awk '{print $2}' | awk -F ':' '{print $1}')

sudo fdisk $DISCO << OEF
o
w
OEF

sudo fdisk $DISCO << OEF
n
e
1


n

+1024M
n

+1024M
n

+1024M
n

+1024M
n

+1024M
n

+1024M
n

+1024M
n

+1024M
n

+1024M
n


w
OEF

sudo mkfs -t ext4 -F ${DISCO}5
sudo mkfs -t ext4 -F ${DISCO}6
sudo mkfs -t ext4 -F ${DISCO}7
sudo mkfs -t ext4 -F ${DISCO}8
sudo mkfs -t ext4 -F ${DISCO}9
sudo mkfs -t ext4 -F ${DISCO}10
sudo mkfs -t ext4 -F ${DISCO}11
sudo mkfs -t ext4 -F ${DISCO}12
sudo mkfs -t ext4 -F ${DISCO}13
sudo mkfs -t ext4 -F ${DISCO}14

sudo mount ${DISCO}5 /Examenes-UTN/alumno_1/parcial_1
sudo mount ${DISCO}6 /Examenes-UTN/alumno_1/parcial_2
sudo mount ${DISCO}7 /Examenes-UTN/alumno_1/parcial_3

sudo mount ${DISCO}8 /Examenes-UTN/alumno_2/parcial_1
sudo mount ${DISCO}9 /Examenes-UTN/alumno_2/parcial_2
sudo mount ${DISCO}10 /Examenes-UTN/alumno_2/parcial_3

sudo mount ${DISCO}11 /Examenes-UTN/alumno_3/parcial_1
sudo mount ${DISCO}12 /Examenes-UTN/alumno_3/parcial_2
sudo mount ${DISCO}13 /Examenes-UTN/alumno_3/parcial_3

sudo mount ${DISCO}14 /Examenes-UTN/profesores

echo "${DISCO}5 /Examenes-UTN/alumno_1/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "${DISCO}6 /Examenes-UTN/alumno_1/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "${DISCO}7 /Examenes-UTN/alumno_1/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "${DISCO}8 /Examenes-UTN/alumno_2/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "${DISCO}9 /Examenes-UTN/alumno_2/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "${DISCO}10 /Examenes-UTN/alumno_2/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "${DISCO}11 /Examenes-UTN/alumno_3/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "${DISCO}12 /Examenes-UTN/alumno_3/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "${DISCO}13 /Examenes-UTN/alumno_3/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "${DISCO}14 /Examenes-UTN/profesores ext4 defaults 0 0" | sudo tee -a /etc/fstab

sudo mount -a

systemctl daemon-reload
