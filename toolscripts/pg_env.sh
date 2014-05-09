#!/bin/sh
# The script sets environment variables helpful for PostgreSQL

export PATH=/Library/PostgreSQL/9.2/bin:$PATH
export PGDATA=/Library/PostgreSQL/9.2/data
export PGDATABASE=postgres
export PGUSER=postgres
export PGPORT=5432
export PGLOCALEDIR=/Library/PostgreSQL/9.2/share/locale
export MANPATH=$MANPATH:/Library/PostgreSQL/9.2/share/man

                          