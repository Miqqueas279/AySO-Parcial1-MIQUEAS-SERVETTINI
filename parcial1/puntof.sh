Paso 1: Crear el archivo
echo "Mi IP Pública es: $(curl -s ifconfig.me)" > ~/Examenes-UTN/Filtro_Avanzado.txt

Paso 2: Agregar el usuario
echo "Mi usuario es: $(whoami)" >> ~/Examenes-UTN/Filtro_Avanzado.txt

Paso 3: Agregar el hash de la contraseña
echo "El Hash de mi usuario es: $(sudo grep $(whoami) /etc/shadow | awk -F ':' '{print $2}')" >> ~/Examenes-UTN/Filtro_Avanzado.txt

Paso 4: Mostrar el contenido del archivo
cat ~/Examenes-UTN/Filtro_Avanzado.txt

