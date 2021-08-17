#!/bin/bash
op=0
while [ $op -ne 3 ]
do
  echo -ne "\n\t\tMENU\n\n"
  echo -ne "\n\t1) MOSTRAR CONTEÚDO DO DIRETÓRIO"
  echo -ne "\n\t2) COPIA ARQUIVOS"
  echo -ne "\n\t3) SAIR
  echo -ne "\n\n\n\tDIGITE A OPÇÃO: "; read op
  if [ $op -eq 1 ]
  then
    echo -ne "\n\tDIGITE UM DIRETÓRIO: "; read DIR
    if [ -d $DIR ]
    then
      CONT=0
      for VAR in $( ls $DIR )
      do
        CONT=$(( CONT + 1 ))
      done
      echo -ne "\n\tTOTAL DE ELEMENTOS EM $DIR É $CONT\n\n"; read
    fi
  fi
  if [ $op -eq 2 ]
  then
    echo -ne "\n\tDIGITE O ARQUIVO DE ORIGEM: "; read ORIG
    if [ -f $ORIG ]
    then
      echo -ne "\n\tDIGITE O ARQUIVO DE DESTINO: "; read DEST
      cp $ORIG $DIST
      echo -ne "\n\tARQUIVO $ORIG COPIADO COM PARA $DEST \n\n"; read
    else
      echo -ne "\n\tARQUIVO $ORIG NÃO EXISTE \n\n"; read
    fi
  fi
  if [ $op -eq 3 ]
  then
      echo -ne "\n\tSAI DO SISTEMA \n\n"; read; exit
  fi
done
