#!/bin/sh

clear while : do
  exec ./RustDedicated -batchmode -nographics \
  -server.ip IPAddressHere \
  -server.port 28015 \
  -rcon.ip IPAddressHere \
  -rcon.port 28016 \
  -rcon.password "123" \
  -server.maxplayers 75 \
  -server.hostname "SuperRustServer" \
  -server.identity "superrustserver" \
  -server.level "Procedural Map" \
  -server.seed 12345 \
  -server.worldsize 3000 \
  -server.saveinterval 300 \-server.globalchat true \
  -server.description "just best rust server" \
  -server.headerimage "https://imholzsport-andermatt.ch/wp-content/uploads/2021/04/Angebot_Bikeservice_512x256px.jpg" \
  -server.url "www.steam.com"
  echo "\nRestarting server...\n" done
