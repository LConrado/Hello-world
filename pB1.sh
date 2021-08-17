#!/bin/bash
echo -ne "\n\tDIGITE UM DIRETÓRIO: "; read DIR
if [ ! -d $DIR ]
then
  echo -ne "\n\tDIRETÓRIO $DIR NÃO EXISTE!!! \n"
  read
  exit  #abandona
fi
CONT=0
for VAR1 in $( ls $DIR/m??? )
do
  echo -ne "\n\tARQUIVO: $VAR \n"
  CONT=$ (( CONT + 1 ))
  sleep 1
done
echo
echo -ne "\n\tQUANTIDADE DE ELEMENTOS É: $CONT \n\n"
