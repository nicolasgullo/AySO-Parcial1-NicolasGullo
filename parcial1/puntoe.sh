#!/bin/bash

	cat /proc/meminfo | grep MemTotal > Filtro_Basico.txt

	sudo dmidecode -t chassis | grep -E "Chassis|Manu" >> Filtro_Basico.txt
