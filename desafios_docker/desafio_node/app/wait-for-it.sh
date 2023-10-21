#!/bin/bash
#mostra todos os comandos executados
set -x

shift
cmd="$@"

until nc -z -v -w30 db 3306
do
  echo "Waiting for database connection..."
  # wait for 5 seconds before check again
  sleep 5
done

exec $cmd
