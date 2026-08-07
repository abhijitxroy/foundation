#!/usr/bin/env bash

###############################################################################
# OV Local AI Uninstaller
#
# Removes:
#   - Ollama
#   - Open WebUI
#   - Downloaded Models
#   - Docker Resources
#   - Python Virtual Environments
#   - Configuration
#   - Logs
#
# Supported:
#   macOS
#   Ubuntu
#   Debian
#   Fedora
#
###############################################################################

set -e
set -o pipefail

##############################################
# Colors
##############################################

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m'

##############################################
# Progress
##############################################

TOTAL_STEPS=12
CURRENT_STEP=0

step() {

    CURRENT_STEP=$((CURRENT_STEP+1))

    echo
    echo -e "${CYAN}====================================================${NC}"
    echo -e "${CYAN}[${CURRENT_STEP}/${TOTAL_STEPS}] $1${NC}"
    echo -e "${CYAN}====================================================${NC}"
}

##############################################
# Logging
##############################################

info() {

    echo -e "${BLUE}[INFO]${NC} $1"
}

success() {

    echo -e "${GREEN}[ OK ]${NC} $1"
}

warn() {

    echo -e "${YELLOW}[WARN]${NC} $1"
}

error() {

    echo -e "${RED}[FAIL]${NC} $1"
}

##############################################
# Detect OS
##############################################

OS=""

if [[ "$OSTYPE" == "darwin"* ]]; then
    OS="macos"
elif [[ -f /etc/os-release ]]; then
    . /etc/os-release
    OS=$ID
else
    error "Unsupported Operating System"
    exit 1
fi

##############################################
# Banner
##############################################

clear

echo
echo "===================================================="
echo "          OV LOCAL AI UNINSTALLER"
echo "===================================================="
echo
echo "Operating System : $OS"
echo
echo "This script will remove:"
echo
echo "  ✓ Ollama"
echo "  ✓ Downloaded Models"
echo "  ✓ Open WebUI"
echo "  ✓ Docker Containers"
echo "  ✓ Docker Images"
echo "  ✓ Docker Volumes"
echo "  ✓ Python Virtual Environments"
echo "  ✓ Local AI Configuration"
echo "  ✓ Logs"
echo

echo "This action CANNOT be undone."
echo

read -rp "Continue? (yes/no): " CONFIRM

if [[ "$CONFIRM" != "yes" ]]; then
    echo
    warn "Operation cancelled."
    exit 0
fi

##############################################
# Summary Variables
##############################################

REMOVED_OLLAMA="No"
REMOVED_MODELS="No"
REMOVED_WEBUI="No"
REMOVED_DOCKER="No"
REMOVED_CONFIG="No"
REMOVED_LOGS="No"
REMOVED_PYTHON="No"

##############################################
# Detect Installed Components
##############################################

step "Detect Installed Components"

if command -v ollama >/dev/null 2>&1; then
    success "Ollama detected"
else
    warn "Ollama not installed"
fi

if command -v docker >/dev/null 2>&1; then
    success "Docker detected"
else
    warn "Docker not installed"
fi

if [[ -d "$HOME/.ollama" ]]; then
    success "Model directory found"
else
    warn "No model directory found"
fi

if [[ -d "$HOME/.local/share/open-webui" ]]; then
    success "Native Open WebUI detected"
fi

success "Detection completed"
