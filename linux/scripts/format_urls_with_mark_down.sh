#!/bin/bash

# NOTA: no va massa fi! 
# - problemes amb el salt de linea
# - Problemes amb la segona pasada en un mateix document (per tant, no es bona idea 
#   plantejar res recursiu).

# Obtener el nombre del archivo
file=$1

# Crear archivo temporal
temp_file="temp.txt"
touch $temp_file

while read -r line; do
  if [[ $line =~ https:// ]]; then
    domain=$(echo $line | awk -F[/] '{print $3}')
    domain="$(echo $domain | sed 's/www.//g')"
    domain="$(tr '[:lower:]' '[:upper:]' <<< ${domain:0:1})${domain:1}"
    line=$(echo $line | sed "s,https://,\[$domain\](https://,g")
    line=$(echo $line | sed 's/$/)/g')
  fi
  echo "$line" >> $temp_file
done < $file

# Sobrescribir el archivo original con el archivo temporal
mv $temp_file $file
