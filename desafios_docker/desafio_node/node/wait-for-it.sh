#!/bin/bash
#mostra todos os comandos executados
set -x

#shift
cmd1=$1
cmd2=$2

echo "valor variável cmd1 = $1"
echo "valor variável cmd2 = $2"

until nc -z -v -w30 db 3306
do
  echo "Waiting for database connection..."
  # wait for 5 seconds before check again
  sleep 5
done

$cmd1
exec $cmd2
