#!/bin/bash
# Script de setup MPLAYER_B_TERMINAL avec affichage intelligent
# Auteur : Zoubirou Ilyes

echo "🛠️ Initialisation du terminal IA Orbitron B..."

# ✅ Mise à jour du système
apt update && apt upgrade -y
apt install git python nodejs wget -y

# ✅ Clonage du dépôt si absent
if [ ! -d "MPlayer" ]; then
  git clone https://github.com/milyes/MPlayer.git
fi

cd MPlayer || exit

# ✅ Affichage automatique de la fiche logicoul
if [ -f "README_MPLAYER_B_TERMINAL_ORBITRON.md" ]; then
  echo "📄 Fiche logicoul détectée :"
  cat README_MPLAYER_B_TERMINAL_ORBITRON.md
else
  echo "⚠️ Fiche .md non trouvée."
fi

# ✅ Lancement cockpit IA WebView local
if [ -f "MPLAYER_B_TERMINAL.html" ]; then
  termux-open file:///data/data/com.termux/files/home/MPlayer/MPLAYER_B_TERMINAL.html
else
  echo "⚠️ Fichier HTML cockpit non présent."
fi

# ✅ Affichage rapide du ASCII IA
if [ -f "terminal.css" ]; then
  echo "🎨 Style Orbitron IA présent ✅"
else
  echo "❌ Style CSS non détecté"
fi

# ✅ Exécution moteur IA développeur
if [ -f "ai_dev_engine.py" ]; then
  echo "🧠 Démarrage du moteur IA..."
  python ai_dev_engine.py
fi

echo "✅ Terminal IA MPLAYER_B initialisé avec affichage cognitif 🧠📄"
