Izvorni projekt https://github.com/mzazon/php-apache-mysql-containerized

Upravljanje okruženjem vrši se putem manage.sh skripte.
Za inicijalno pokretanje servisa potrebno je pokrenuti unutar GIS_Cloud foldera sljedeću komandu:

./manage.sh initiate

Zaustavljanje svih servisa vrši se sa:
./manage.sh stop

Pokretanje zaustavljenih servisa vrši se sa:
./manage.sh start

Pregled statusa servisa:
./manage.sh status

Pristup web serveru: http://localhost/
Kada svi servisi rade prikazana je sljedeća poruka:

---
Hello World!
Attempting MySQL connection from php...
Sve radi!
---
