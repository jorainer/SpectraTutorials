RELEASE="2020.11"
FILE="MassBank.sql"

wget "https://github.com/MassBank/MassBank-data/releases/download/$RELEASE/$FILE"
## gunzip "$FILE.gz"

service mysql start
mysql MassBank < $FILE
rm $FILE
