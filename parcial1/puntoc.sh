paso 1 crear ususarios:
sudo useradd -m developer
sudo useradd -m tester
sudo useradd -m devops
sudo useradd -m diseñador

paso 2 crear grupos:
sudo groupadd grupodevops
sudo groupadd grupodiseño
sudo groupadd grupodeveloper

paso 3 añadir usuarios a los grupos:
sudo usermod -aG grupodevops developer
sudo usermod -aG grupodiseño tester
sudo usermod -aG grupodeveloper devops

paso 4 dar permisos a los ususarios:

alumno1:
sudo chown developer:developer /Examenes-UTN/alumno_1
sudo chmod 750 /Examenes-UTN/alumno_1

alumno2:
sudo chown tester:tester /Examenes-UTN/alumno_2
sudo chmod 700 /Examenes-UTN/alumno_2

alumno3:
sudo chown devops:devops /Examenes-UTN/alumno_3
sudo chmod 770 /Examenes-UTN/alumno_3

profesor:
sudo chown diseñador:diseñador /Examenes-UTN/profesores
sudo chmod 770 /Examenes-UTN/profesores

Aplicar permisos recursivamente (si es necesario):
sudo chmod -R 750 /Examenes-UTN/alumno_1
sudo chmod -R 700 /Examenes-UTN/alumno_2
sudo chmod -R 770 /Examenes-UTN/alumno_3
sudo chmod -R 770 /Examenes-UTN/profesores

paso 5 crear archivo validadr con whoami:

cd /Examenes-UTN/alumno_
whoami > validar.txt

cd /Examenes-UTN/profesor
whoami > validar.txt

Comando en un solo script
Si prefieres ejecutar todo en un solo script, puedes crear un script de shell como este:

#!/bin/bash

# Crear el archivo en cada carpeta con el usuario correspondiente
echo "Creando validar.txt para cada usuario..."

echo "Creando validar.txt en /Examenes-UTN/alumno_1"
echo "developer" > /Examenes-UTN/alumno_1/validar.txt

echo "Creando validar.txt en /Examenes-UTN/alumno_2"
echo "tester" > /Examenes-UTN/alumno_2/validar.txt

echo "Creando validar.txt en /Examenes-UTN/alumno_3"
echo "devops" > /Examenes-UTN/alumno_3/validar.txt

echo "Creando validar.txt en /Examenes-UTN/profesores"
echo "diseñador" > /Examenes-UTN/profesores/validar.txt

echo "Archivos crearos correctamente."

Guarda este script en un archivo, por ejemplo, crear_validar.sh, y luego ejecuta:

chmod +x crear_validar.sh
./crear_validar.sh
