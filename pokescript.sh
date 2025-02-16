#!/bin/bash

[ -z "$1" ] && { echo "Ingresa pokemon: $0 <nombre_del_pokemon>"; exit 1;}
RESPONSE=$(curl -s "https://pokeapi.co/api/v2/pokemon/$1")
if echo "$RESPONSE" | jq -e '.id'; then
  echo "$(echo "$RESPONSE" | jq -r '.name') (No. $(echo "$RESPONSE" | jq '.id'))"
  echo "Id = $(echo "$RESPONSE" | jq '.id')"
  echo "Weight = $(echo "$RESPONSE" | jq '.weight')"
  echo "Height = $(echo "$RESPONSE" | jq '.height')"
  CSV_FILE="pokemon_data.csv"
  [ ! -f "$CSV_FILE" ] && echo "id,name,weight,height,order" > "$CSV_FILE"
  echo "$RESPONSE" | jq -r '[.id, .name, .weight, .height, .order] | @csv' >> "$CSV_FILE"
else
  echo "Pokémon no encontrado: $1"
fi
