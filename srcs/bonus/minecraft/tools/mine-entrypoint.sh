#!/bin/ash

wget -qO /minecraft/server.jar https://piston-data.mojang.com/v1/objects/84194a2f286ef7c14ed7ce0090dba59902951553/server.jar

java -jar /minecraft/server.jar --nogui
