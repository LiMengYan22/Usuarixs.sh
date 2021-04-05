#----Script crea 10 users, con carpeta llamada temporal y archivo manual.txt y un directorio /prueba, donde dos archivos basura y basura1. despues borrar basura1.txt: 27.3.17

#! /bin/bash
for i in {1..10..1}
do
sudo useradd users$i
#----------------------------------
mkdir /home/li/USUARIOS
echo "Directorio: /USUARIOS creado.."

mkdir /home/li/USUARIOS/user$i
echo "Directorio: /user creado.."

mkdir /home/li/USUARIOS/user$i/temporal
echo "Carpeta: /temporal creada.."

touch /home/li/USUARIOS/user$i/temporal/manual.txt 
echo "Archivo: /manual creado.."

mkdir /home/li/USUARIOS/user$i/prueba/
echo "Directorio: /prueba creado.."
#----------------------------------
touch /home/li/USUARIOS/user$i/prueba/basura /home/li/USUARIOS/user$i/prueba/basura1
echo "Archivos: /basura y /basura1 creados.."
#----------------------------------
rm /home/li/USUARIOS/user$i/prueba/basura1
echo "Archivos: /basura1 Eliminado."

done




