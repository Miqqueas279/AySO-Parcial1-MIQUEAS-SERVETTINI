pasos a seguir crear estructrura:

mkdir -p Estructura_Asimetrica/correo
mkdir -p Estructura_Asimetrica/clientes

# Crear cartas_1 a cartas_100 en ambas carpetas
for i in {1..100}; do
    touch Estructura_Asimetrica/correo/cartas$i
    touch Estructura_Asimetrica/clientes/cartas$i
done

# Crear carteros_1 a carteros_10 solo en la carpeta correo
for i in {1..10}; do
    touch Estructura_Asimetrica/correo/carteros$i
done

revisar en tree:
tree Estructura_Asimetrica
