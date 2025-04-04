#!/bin/bash

# 🎨 Colores
ROJO='\033[0;31m'
VERDE='\033[0;32m'
AMARILLO='\033[1;33m'
AZUL='\033[0;34m'
CYAN='\033[0;36m'
RESET='\033[0m'

# 💥 Banner
clear
echo -e "${CYAN}"
echo "██╗  ██╗ █████╗ ██╗     ██╗███╗   ██╗██╗   ██╗██╗  ██╗"
echo "██║ ██╔╝██╔══██╗██║     ██║████╗  ██║██║   ██║╚██╗██╔╝"
echo "█████╔╝ ███████║██║     ██║██╔██╗ ██║██║   ██║ ╚███╔╝ "
echo "██╔═██╗ ██╔══██║██║     ██║██║╚██╗██║██║   ██║ ██╔██╗ "
echo "██║  ██╗██║  ██║███████╗██║██║ ╚████║╚██████╔╝██╔╝ ██╗"
echo "╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝"
echo -e "             ${AMARILLO}OSINT EMAIL TOOL by ${ROJO}K4L1NUX${RESET}"
echo ""

# 🧾 Logs
mkdir -p logs
LOG="logs/osint_$(date +%F_%H-%M-%S).log"

# ✅ Verificación de argumentos
if [ -z "$1" ]; then
    echo -e "${ROJO}Uso correcto: $0 correo@gmail.com${RESET}"
    exit 1
fi

EMAIL="$1"

# ✅ Verificación de herramientas
function check_tool {
    if ! command -v $1 &>/dev/null; then
        echo -e "${ROJO}❌ $1 no está instalado. Instálalo antes de continuar.${RESET}"
        exit 1
    fi
}

check_tool "holehe"
check_tool "curl"
check_tool "jq"
check_tool "python3"

# GHunt (chequeo manual)
if [ ! -d "GHunt" ]; then
    echo -e "${ROJO}❌ GHunt no está en el directorio actual. Clónalo con:${RESET}"
    echo -e "${AZUL}git clone https://github.com/mxrch/GHunt.git${RESET}"
    exit 1
fi

# Verifica si GHunt tiene cookies
if [ ! -f "GHunt/cookies.json" ]; then
    echo -e "${AMARILLO}⚠️ GHunt no está configurado. Ve al directorio y corre:${RESET}"
    echo -e "${AZUL}cd GHunt && python3 check_and_gen.py${RESET}"
    exit 1
fi

# 🔎 Holehe
echo -e "\n${VERDE}[+] Ejecutando Holehe...${RESET}"
holehe $EMAIL | tee -a "$LOG"

# 📊 EmailRep
echo -e "\n${VERDE}[+] Consultando EmailRep...${RESET}"
curl -s https://emailrep.io/$EMAIL | jq | tee -a "$LOG"

# 🕵️ GHunt
echo -e "\n${VERDE}[+] Ejecutando GHunt...${RESET}"
cd GHunt
python3 ghunt.py email $EMAIL | tee -a "../$LOG"
cd ..

# ✅ Fin
echo -e "\n${AZUL}[✔] OSINT completo. Log guardado en: ${LOG}${RESET}"
