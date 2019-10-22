#!/bin/bash -e

[[ -z "$LICENSE_SERVER" ]] && LICENSE_SERVER="localhost"
sed -i "s/{serveraddr}/$LICENSE_SERVER/g" /etc/hasplm/hasplm.ini

cd /opt/aksusbd
./dunst
./dinst
echo

sed -i "s/{name}/$ORACLE_NAME/g" /opt/tnsnames.ora
sed -i "s/{ip}/$ORACLE_HOST/g" /opt/tnsnames.ora
sed -i "s/{port}/$ORACLE_PORT/g" /opt/tnsnames.ora
sed -i "s/{tnsname}/$ORACLE_TNSNAME/g" /opt/tnsnames.ora

echo "'docker run -e LICENSE_SERVER=192.168.17.123 **' can be used to config the license now."
echo " or PUT mylicense.lic to $LICENSE_DIR directory"