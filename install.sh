cat << 'EOF' > install.sh
#!/bin/bash

echo "[+] Instalando dependencias..."
sudo apt update
sudo apt install -y python3 python3-pip jq curl git

echo "[+] Instalando holehe..."
pip3 install holehe

echo "[+] Clonando GHunt..."
git clone https://github.com/mxrch/GHunt.git
cd GHunt
pip3 install -r requirements.txt
echo "[+] GHunt clonado. No olvides configurar las cookies con:"
echo "    cd GHunt && python3 check_and_gen.py"
cd ..

chmod +x osint_correo.sh

echo "[✔] Instalación completa. Ejecuta: ./osint_correo.sh correo@gmail.com"
EOF

chmod +x install.sh
