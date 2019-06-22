#!/bin/sh
# wait-for-mysql.sh

set -e

host="$1"
shift
cmd="$@"

until mysql -uroot --host=${host} --database=microservicos --password=root --execute="select count(table_name) > 0 from information_schema.tables;"  --skip-column-names -B; do
  >&2 echo "Mysql is unavailable - sleeping"
  sleep 1
done

>&2 echo "Mysql is up - executing command"
exec $cmd

