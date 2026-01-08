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
Stop:
```
pg_ctl -D $PREFIX/var/lib/postgresql stop
```

Environmental var:
```
export PGDATA="$PREFIX/var/lib/postgresql"
```
makes:
```
pg_ctl
```
no longer need
```
-D $PREFIX/var/lib/postgresql
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
