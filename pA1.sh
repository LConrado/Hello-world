#!/bin/bash
echo -ne "Digite A: "; read A
echo -ne "Digite B: "; read B
TEMP=0
if [ $A -gt $B ]
then
TEMP=$A
A=$B
B=$TEMP
fi
echo -ne "\n\tDigite C: "; read C
MIN=$C
MAX=$C
CONT=0
while [ $C -ge 0 ]
do
if [ $C -ge $A -a $C -le $B ]
then
CONT=$(( CONT + 1 ))
if [ $C -lt $MIN -a $C -ge $A ]
then
MIN=$C
fi
if [ $C -gt $MAX -a $C -le $B ]
then
MAX=$C
fi
fi
echo -ne "\n\tDigite C: "; read C
done
echo
if [ $CONT -le 0 ]
then
echo -ne "\n\tCont = $CONT.\n\t Nenhum valor digitado estah entre $A e $B\n\n"
else
echo -ne "\n\tNum valores entre $A e $B eh $CONT\n"
echo -ne "\n\rMin : $MIN e Max : $MAX\n\n"
fi

D
echo -ne "\n\tCont = $CONT.\n\t Nenhum valor digitado esta entre 
