#!/bin/sh

bat=$(acpi)

if $(echo $bat | grep Charging > /dev/null); then
	echo $bat | awk -F"," '{print "Charging " $2}'
else
	echo $bat| awk -F":| |," '{print $6 " " $8 ":" $9}'
fi
