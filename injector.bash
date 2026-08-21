#!/bin/bash

clear

echo " "
echo "  ██████╗██╗  ██╗██████╗  ██████╗ ███╗   ███╗███████╗    ██╗███╗   ██╗     ██╗███████╗ ██████╗████████╗ ██████╗ ██████╗ "
echo " ██╔════╝██║  ██║██╔══██╗██╔═══██╗████╗ ████║██╔════╝    ██║████╗  ██║     ██║██╔════╝██╔════╝╚══██╔══╝██╔═══██╗██╔══██╗"
echo " ██║     ███████║██████╔╝██║   ██║██╔████╔██║█████╗      ██║██╔██╗ ██║     ██║█████╗  ██║        ██║   ██║   ██║██████╔╝"
echo " ██║     ██╔══██║██╔══██╗██║   ██║██║╚██╔╝██║██╔══╝      ██║██║╚██╗██║██   ██║██╔══╝  ██║        ██║   ██║   ██║██╔══██╗"
echo " ╚██████╗██║  ██║██║  ██║╚██████╔╝██║ ╚═╝ ██║███████╗    ██║██║ ╚████║╚█████╔╝███████╗╚██████╗   ██║   ╚██████╔╝██║  ██║"
echo "  ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝    ╚═╝╚═╝  ╚═══╝ ╚════╝ ╚══════╝ ╚═════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝"
echo "     Chrome Injector Tool v0.1 by Coreline355 (Jhonatan Kuibida) "


sleep 0.5
echo " " 
echo "Coletando local do ambiente..."
sleep 0.1
env=$(echo $HOME)
if [ -d "$env/.config/chrome.injector" ]; then
  echo " "
  echo "Bem vindo(a) de volta! Bora usar o chrome com IA sem quebrar o PC da escola? KKSKSK"
else
  echo " "
  echo "Parece que você é novo(a) aqui... A primeira vez rodando esse script, a configuração inicial demora um pouco. Seja paciente."
  echo " "
  echo "Criando diretório de trabalho..."
  mkdir -p $env/.config/chrome.injector
fi
sleep 2
cd $env/.config/chrome.injector
echo " "

if [ -f "chrome.AppImage" ]; then
  echo "Pulando o Download do Chrome AppImage. Pois ele já existe."
else
  echo "Fazendo download da Build 151.0.7922.169-1 do Chrome AppImage..."
  curl -L -o chrome.AppImage https://github.com/ivan-hc/Chrome-appimage/releases/download/continuous/Google-Chrome-stable-151.0.7922.173-1-x86_64.AppImage
fi

echo " "
echo "Contornando o sandboxing linux..."
chmod +x chrome.AppImage
echo "Matando instâncias atuais do Chrome para evitar conflitos..."
pkill chrome
echo " "
echo "AVISO: NUNCA FECHE A JANELA DO TERMINAL ENQUANTO O CHROME ESTIVER RODANDO! ISSO PODE CAUSAR SÉRIOS PROBLEMAS NO COMPUTADOR E VOCÊ (ou eu) SERÁ RESPONSÁVEL PELOS DANOS!"
echo " "
sleep 1
echo "abrindo em 3..."
sleep 1
echo "abrindo em 2..."
sleep 1
echo "abrindo em 1..."
sleep 1

echo "INICIALIZANDO O CHROME INJETADO..."
./chrome.AppImage


echo " "
echo "Chrome foi Fechado!"
sleep 1
echo "Fazendo a limpeza do Local State..."
rm -r $env/.config/google-chrome
echo " "
echo "Bom trabalhar pra você. Qualquer coisa é só me rodar denovo."
