# 🛠️ Ervax-Cyber Termux Toolkit

Welcome to **my-toolkit** — a lightweight Termux-based cybersecurity toolkit built for quick network tasks, recon, and system checks. Designed for mobile red teamers and privacy-conscious users.

---

## 🚀 Features

- 📡 Check your public IP
- 🔎 Run quick port scans with `nmap`
- 🌐 Perform WHOIS lookups
- 🎛️ Simple terminal menu interface
- ⚙️ Easy to expand with your own tools

---

## 📂 Folder Structure

my-toolkit/ ├── start.sh              # Menu launcher └── scripts/ ├── ip-check.sh       # Get your public IP └── port-scan.sh      # Quick nmap scan
---
#!/bin/bash
read -rp "Enter domain (e.g. example.com): " domain
echo "🔍 Finding subdomains for $domain..."
curl -s "https://crt.sh/?q=%25.$domain&output=json" |
jq -r '.[].name_value' | sort -u

## 📦 Installation (Termux)

```bash
git clone git@github.com:Ervax-Cyber/my-toolkit.git
cd my-toolkit
chmod +x start.sh scripts/*.sh
pkg install nmap curl whois -y
./start.sh
