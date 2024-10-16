#!/bin/bash

	sudo useradd programadores
	sudo useradd tester
	sudo useradd analistas
	sudo useradd disenadores

	sudo groupadd grupoprogramadores
	sudo groupadd grupotester
	sudo groupadd grupoanalistas
	sudo groupadd grupodisenadores

	sudo usermod -aG grupoprogramadores programadores
	sudo usermod -aG grupotester tester
	sudo usermod -aG grupoanalistas analistas
	sudo usermod -aG grupodisenadores disenadores

	sudo chmod -R 750 $HOME/AySO-Parcial1-NicolasGullo/parcial1/Examenes-UTN/alumno_1
	sudo chmod -R 760 $HOME/AySO-Parcial1-NicolasGullo/parcial1/Examenes-UTN/alumno_2
	sudo chmod -R 700 $HOME/AySO-Parcial1-NicolasGullo/parcial1/Examenes-UTN/alumno_3
	sudo chmod -R 775 $HOME/AySO-Parcial1-NicolasGullo/parcial1/Examenes-UTN/profesores
	
	whoami > $HOME/AySO-Parcial1-NicolasGullo/parcial1/validar.txt
