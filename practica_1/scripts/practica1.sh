#!/bin/bash

echo "--- Iniciando script de automatización de la Práctica 1 ---"

# Moverse al directorio del usuario
cd "$HOME" || exit

# Primero verficar si existe la carpeta Practica 1, si no la crea
if [ -d "Practica1" ]; then
    echo "La carpeta Practica1 ya existe."
else
    mkdir Practica1
    echo "Carpeta Practica1 creada."
fi

# Crear subcarpetas y archivos
mkdir -p Practica1/Letras
touch Practica1/Letras/a.txt Practica1/Letras/b.txt Practica1/Letras/c.txt

mkdir -p Practica1/Integrantes
touch Practica1/Integrantes/Rodríguez Pacheco Shaiel Skiolid.txt
touch Practica1/Integrantes/Galán Guzmán Jaime Murad.txt
touch Practica1/Integrantes/Cabañas Pedraza Gabriel Zaid.txt

# Mostrar la estructura mediante el comando tree
echo "Estructura de archivos creada:"
tree Practica1

# Eliminar la carpeta Practica1
rm -rf Practica1
echo "Carpeta Practica1 eliminada correctamente."
