#!/bin/bash

# Verifique se o script está sendo executado com privilégios de superusuário (root)
if [ "$EUID" -ne 0 ]; then
  echo "Este script deve ser executado como superusuário (root)."
  exit 1
fi

sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install -y xfce4 xfce4-goodies
sudo apt-get install -y tightvncserver
vncserver
