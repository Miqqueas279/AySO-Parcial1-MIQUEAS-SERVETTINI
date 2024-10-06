pasos a seguir crear estructrura:

kdir -p Estructura_Asimetrica/correo
mkdir -p Estructura_Asimetrica/clientes

# Crear cartas_1 a cartas_100 en ambas carpetas
for i in $(seq 1 100); do
  touch Estructura_Asimetrica/correo/carta_$i
  touch Estructura_Asimetrica/clientes/carta_$i
done

# Crear carteros_1 a carteros_10 solo en correo
for i in $(seq 1 10); do
  touch Estructura_Asimetrica/correo/cartero_$i
done

revisar con tree:
tree Estructura_Asimetrica
