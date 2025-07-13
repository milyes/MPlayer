#!/data/data/com.termux/files/usr/bin/bash

echo "🔁 Activation de l'environnement virtuel..."
source ~/NeuroSync_IA_FullStarter/venv/bin/activate

echo "🚀 Lancement de l'API Flask NeuroSync IA..."
cd ~/NeuroSync_IA_FullStarter/app
nohup python3 ia_server.py > log.txt 2>&1 &

sleep 3

echo "🌍 Tunnel Cloudflare en cours de démarrage..."
cloudflared tunnel --url http://localhost:8000

