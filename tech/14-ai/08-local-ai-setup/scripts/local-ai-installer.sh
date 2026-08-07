#!/usr/bin/env bash
set -euo pipefail

GREEN="\033[0;32m"
YELLOW="\033[1;33m"
RED="\033[0;31m"
BLUE="\033[0;34m"
NC="\033[0m"

LOGFILE="ov-ai-install.log"

log(){ echo -e "$1" | tee -a "$LOGFILE"; }

step=0
total=9

banner() {
cat <<'EOF'
==========================================
        OV-AI Phase-2 Installer
==========================================
EOF
}

progress() {
    step=$((step+1))
    log ""
    log "${BLUE}[$step/$total] $1${NC}"
}

check_cmd() {
    command -v "$1" >/dev/null 2>&1
}

install_brew() {
    if check_cmd brew; then
        log "${GREEN}✔ Homebrew already installed${NC}"
    else
        log "${YELLOW}Installing Homebrew...${NC}"
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
}

install_pkg() {
    local pkg="$1"
    if check_cmd "$pkg"; then
        log "${GREEN}✔ $pkg already installed${NC}"
    else
        log "${YELLOW}Installing $pkg...${NC}"
        brew install "$pkg"
    fi
}

banner

progress "System Information"
log "macOS : $(sw_vers -productVersion)"
log "Chip  : $(sysctl -n machdep.cpu.brand_string)"
log "RAM   : $(($(sysctl -n hw.memsize)/1024/1024/1024)) GB"
log "Disk  : $(df -h / | tail -1 | awk '{print $4 " free"}')"

progress "Checking Internet"
if curl -s --head https://ollama.com >/dev/null; then
    log "${GREEN}✔ Internet OK${NC}"
else
    log "${RED}Internet connection required for initial download.${NC}"
    exit 1
fi

progress "Checking Homebrew"
install_brew

progress "Checking Prerequisites"
for p in git python3 curl wget jq; do
    install_pkg "$p"
done

progress "Checking Docker"
if check_cmd docker; then
    log "${GREEN}✔ Docker installed${NC}"
else
    log "${YELLOW}Docker not found. Install Docker Desktop manually if needed.${NC}"
fi

progress "Checking Ollama"
if check_cmd ollama; then
    log "${GREEN}✔ Ollama already installed${NC}"
else
    brew install ollama
fi

progress "Starting Ollama"
if ! pgrep -f "ollama serve" >/dev/null 2>&1; then
    nohup ollama serve >/tmp/ollama.log 2>&1 &
    sleep 5
fi

if curl -s http://localhost:11434/api/tags >/dev/null; then
    log "${GREEN}✔ Ollama API is running${NC}"
else
    log "${RED}Failed to start Ollama${NC}"
    exit 1
fi

progress "Checking Qwen3:8B Model"
if ollama list | grep -q "qwen3:8b"; then
    log "${GREEN}✔ Model already installed${NC}"
else
    log "${YELLOW}Downloading qwen3:8b (this may take several minutes)...${NC}"
    ollama pull qwen3:8b
fi

progress "Verifying Model"
ollama run qwen3:8b "Reply with exactly: OV-AI installation successful." | tee -a "$LOGFILE"

cat <<EOF

==========================================
Installation Completed
==========================================

Try:

    ollama run qwen3:8b

API:

    http://localhost:11434

Log:

    $LOGFILE

Next Phase:
    Install Open WebUI
==========================================

EOF
