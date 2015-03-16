#!/bin/sh
cp -R /postgres/* $TEAMCITY_DATA_PATH/
sed -i "s/\\\${DB_HOSTNAME}/$DB_HOSTNAME/g" $TEAMCITY_DATA_PATH/config/database.properties
sed -i "s/\\\${DB_PORT}/$DB_PORT/g" $TEAMCITY_DATA_PATH/config/database.properties
sed -i "s/\\\${DB_DATABASE}/$DB_DATABASE/g" $TEAMCITY_DATA_PATH/config/database.properties
sed -i "s/\\\${DB_USERNAME}/$DB_USERNAME/g" $TEAMCITY_DATA_PATH/config/database.properties
sed -i "s/\\\${DB_PASSWORD}/$DB_PASSWORD/g" $TEAMCITY_DATA_PATH/config/database.properties   
$TEAMCITY_INSTALL_DIR/TeamCity/bin/teamcity-server.sh run
