#! /bin/bash
FILE=swipelib
VERSION=0.2
NAME=($FILE-$VERSION)

echo "Making Zip"
# zipping
zip -r $NAME.zip META-INF lib
echo "ZIP is Ready"
echo "Signing ZIP"
java -jar signapk.jar testkey.x509.pem testkey.pk8 $NAME.zip $NAME-SIGNED.zip
# Cleanup
echo "Cleaning up"
rm $NAME.zip
echo "done"
