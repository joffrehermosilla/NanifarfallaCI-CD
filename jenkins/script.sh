#!/bin/bash

NOMBRE=s1
APELLIDO=s2
MOSTRAR=s3
if ["$MOSTRAR=true"]; then
	echo "Hola, $NOMBRE $APELLIDO"
else
	echo "si quieres ver el nombre selecciona la casilla de MOSTRAR"
fi