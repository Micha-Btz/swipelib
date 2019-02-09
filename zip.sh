#! /bin/bash
FILE=swipelib
VERSION=v0.5.1
CM_Version=lineage-15.1
NAME=($FILE-$CM_Version-$VERSION)

echo "Making Zip"
# zipping
zip -r $NAME.zip system/* META-INF/* mount-system.sh unmount-system.sh
echo "ZIP is Ready"
echo "Signing ZIP"
java -jar signapk.jar testkey.x509.pem testkey.pk8 $NAME.zip $NAME-SIGNED.zip
# Cleanup
echo "Cleaning up"
rm $NAME.zip
echo "done"
