./dtmbench  \
 -c "dbname=postgres host=localhost port=5432 sslmode=disable" \
 -c "dbname=postgres host=localhost port=5433 sslmode=disable" \
 -c "dbname=postgres host=localhost port=5434 sslmode=disable" \
 -n 1000 -a 10000 -d 10000 -w 10 -r 1 $*

