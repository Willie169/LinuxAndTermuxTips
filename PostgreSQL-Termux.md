# PostgreSQL-Termux

Install:
```
pkg install postgresql
```

Create:
```
mkdir -p $PREFIX/var/lib/postgresql
initdb $PREFIX/var/lib/postgresql
```

Start:
```
pg_ctl -D $PREFIX/var/lib/postgresql start
```

Environmental var:
```
export PGDATA="$PREFIX/var/lib/postgresql"
```
makes starting:
```
pg_ctl start
```

Creat user:
```
createuser --superuser --pwprompt user
```

Drop user
```
dropuser user
```

Create database:
```
createdb mydb
```

Open database:
```
psql mydb
```
and you will now see the promt:
```
mydb=#
```

Drop database:
```
dropdb mydb
```
