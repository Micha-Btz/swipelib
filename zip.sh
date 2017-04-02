#! /bin/bash
FILE=swipelib
VERSION=0.4
CM_Version=LOS-14.1
NAME=($FILE-$CM_Version-$VERSION)

echo "Making Zip"
# zipping
zip -r $NAME.zip META-INF app addon.d
echo "ZIP is Ready"
echo "Signing ZIP"
java -jar signapk.jar testkey.x509.pem testkey.pk8 $NAME.zip $NAME-SIGNED.zip
# Cleanup
echo "Cleaning up"
rm $NAME.zip
echo "done"
