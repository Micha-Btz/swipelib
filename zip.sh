#! /bin/bash
FILE=swipelib
VERSION=v0.4.1
CM_Version=cm-12.1
NAME=($FILE-$CM_Version-$VERSION)

echo "Making Zip"
# zipping
zip -r $NAME.zip META-INF lib addon.d
echo "ZIP is Ready"
echo "Signing ZIP"
java -jar signapk.jar testkey.x509.pem testkey.pk8 $NAME.zip $NAME-SIGNED.zip
# Cleanup
echo "Cleaning up"
rm $NAME.zip
echo "done"
