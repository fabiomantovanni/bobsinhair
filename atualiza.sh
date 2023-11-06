#!/bin/bash

# Verifique se o script está sendo executado com privilégios de superusuário (root)
if [ "$EUID" -ne 0 ]; then
  echo "Este script deve ser executado como superusuário (root)."
  exit 1
fi

# Atualize a lista de pacotes
apt update

# Atualize os pacotes do sistema
apt upgrade -y

# Atualize o kernel do sistema (opcional)
# Certifique-se de reiniciar o sistema após a atualização do kernel
apt dist-upgrade -y

# Remova pacotes desnecessários (opcional)
apt autoremove -y

# Limpe o cache de pacotes
apt clean

# Se você estiver usando um sistema que não utiliza o apt, ajuste os comandos conforme necessário.

echo "Atualizações concluídas."

# Reinicie o sistema para aplicar as atualizações do kernel, se você as tiver executado.
# reboot
