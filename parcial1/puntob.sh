#!/bin/bash

	lsblk

	echo "Creando particiones..."
	(
	echo n 
	echo p 
	echo 1 
	echo   
	echo +2.5G 

	echo n 
	echo p 
	echo 2 
	echo   
	echo +2.5G 

	echo n 
	echo p 
	echo 3 
	echo   
	echo +2.5G 

	echo n 
	echo e 
	echo 4 
	echo   
	echo

	echo n
	echo p
	echo
	echo
	echo	

	echo w 
	) | sudo fdisk /dev/sdc

	echo "Formateando particiones..."
	sudo mkfs.ext3 /dev/sdc1
	sudo mkfs.ext3 /dev/sdc2
	sudo mkfs.ext3 /dev/sdc3
	sudo mkfs.ext3 /dev/sdc5

	echo "Montando particiones..."
	sudo mkdir /mnt
	sudo mount /dev/sdc1 /mnt
	sudo mount /dev/sdc2 /mnt
	sudo mount /dev/sdc3 /mnt
	sudo mount /dev/sdc5 /mnt

	echo "Particiones montadas:"
	lsblk

