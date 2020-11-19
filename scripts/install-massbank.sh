RELEASE="2020.10"
FILE="MassBank-$RELEASE.1-SNAPSHOT.sql"

wget "https://github.com/MassBank/MassBank-data/releases/download/$RELEASE/$FILE.gz"
gunzip "$FILE.gz"

service mysql start
mysql MassBank < $FILE
rm $FILE
