#!/bin/bash

yr=$1

si=$((yr%4))
yibai=$((yr%100))
sibai=$((yr%400))

# https://stackoverflow.com/questions/32196628/my-shell-script-for-checking-leap-year-is-showing-error
(( !($si) && ( ($yibai) || !($sibai) ) )) && echo 'leap' || echo 'not leap'
