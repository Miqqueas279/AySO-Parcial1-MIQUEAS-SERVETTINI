Para obtener informacion de la ram:
grep -i 'MemTotal' /proc/meminfo | awk '{print $2, $3}' > Filtro_Basico.txt

agregar la informacion de la ram con sudo:
sudo dmidecode -t chassis | grep -i 'Manufacturer' >> Filtro_Basico.txt

verificar contenido:
cat Filtro_Basico.txt
