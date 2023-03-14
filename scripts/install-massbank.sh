RELEASE="2021.03"
FILE="MassBank.sql"

wget -nv "https://github.com/MassBank/MassBank-data/releases/download/$RELEASE/$FILE"
## gunzip "$FILE.gz"

service mariadb start
mysql < $FILE
rm $FILE
