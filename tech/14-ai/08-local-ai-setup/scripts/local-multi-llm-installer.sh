#!/usr/bin/env bash

###############################################################################
#
# Multi-LLM Installer
#
# Installs:
#   - Homebrew
#   - Prerequisites
#   - Ollama
#   - Open Source LLMs
#
# Supported:
#   - macOS (Apple Silicon & Intel)
#
###############################################################################

set -Eeuo pipefail

##############################################
# Script Information
##############################################

SCRIPT_NAME="$(basename "$0")"
SCRIPT_VERSION="2.0.0"

START_TIME=$(date +%s)

##############################################
# Colors
##############################################

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m'

##############################################
# Configuration
##############################################

LOGFILE="multi-llm-install.log"

TOTAL_STEPS=12
CURRENT_STEP=0

##############################################
# Installation Summary
##############################################

INSTALLED_MODELS=()
SKIPPED_MODELS=()
FAILED_MODELS=()

##############################################
# Logging
##############################################

log() {

    echo -e "$1" | tee -a "$LOGFILE"

}

info() {

    log "${BLUE}[INFO]${NC} $1"

}

success() {

    log "${GREEN}[ OK ]${NC} $1"

}

warning() {

    log "${YELLOW}[WARN]${NC} $1"

}

error() {

    log "${RED}[FAIL]${NC} $1"

}

##############################################
# Progress
##############################################

step() {

    CURRENT_STEP=$((CURRENT_STEP + 1))

    log ""
    log "===================================================="
    log "${CYAN}[${CURRENT_STEP}/${TOTAL_STEPS}] $1${NC}"
    log "===================================================="

}

##############################################
# Command Check
##############################################

check_cmd() {

    command -v "$1" >/dev/null 2>&1

}

##############################################
# Banner
##############################################

banner() {

cat <<EOF

====================================================
                Multi-LLM Installer
====================================================

Version : $SCRIPT_VERSION

This installer will:

  ✓ Install Homebrew (if required)
  ✓ Install Prerequisites
  ✓ Install Ollama
  ✓ Detect Hardware
  ✓ Recommend Models
  ✓ Install Selected Models
  ✓ Verify Installation

====================================================

EOF

}

##############################################
# Homebrew
##############################################

install_brew() {

    if check_cmd brew; then

        success "Homebrew already installed"

    else

        info "Installing Homebrew..."

        /bin/bash -c \
            "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

		if [[ -x /opt/homebrew/bin/brew ]]; then
			eval "$(/opt/homebrew/bin/brew shellenv)"
		elif [[ -x /usr/local/bin/brew ]]; then
			eval "$(/usr/local/bin/brew shellenv)"
		fi

        success "Homebrew installed"

    fi

}

##############################################
# Package Installation
##############################################

install_pkg() {

    local pkg="$1"

    if check_cmd "$pkg"; then

        success "$pkg already installed"

    else

        info "Installing $pkg..."

        brew install "$pkg"

        success "$pkg installed"

    fi

}

##############################################
# Hardware Variables
##############################################

CPU=""
ARCH=""
RAM_GB=0
DISK_FREE=""
HARDWARE_TIER=""
RECOMMENDED_MODELS=()

##############################################
# Model Collections
##############################################

GENERAL_MODELS=(
    "gemma3:4b"
    "gemma3:12b"
    "qwen3:4b"
    "qwen3:8b"
    "llama3.1:8b"
    "mistral:7b"
)

CODING_MODELS=(
    "codellama"
    "deepseek-coder"
    "qwen2.5-coder"
    "starcoder2"
)

REASONING_MODELS=(
    "deepseek-r1"
    "qwen3"
)

VISION_MODELS=(
    "llava"
)

SELECTED_MODELS=()

##############################################
# Start
##############################################

banner

##############################################
# Step 1 - System Information
##############################################

step "System Information"

CPU=$(sysctl -n machdep.cpu.brand_string)
ARCH=$(uname -m)
RAM_GB=$(( $(sysctl -n hw.memsize) / 1024 / 1024 / 1024 ))
DISK_FREE=$(df -h / | awk 'NR==2 {print $4}')

log "Operating System : macOS $(sw_vers -productVersion)"
log "CPU              : $CPU"
log "Architecture     : $ARCH"
log "Memory           : ${RAM_GB} GB"
log "Free Disk        : $DISK_FREE"

##############################################
# Step 2 - Hardware Assessment
##############################################

step "Hardware Assessment"

if [[ "$ARCH" == "arm64" ]]; then

    success "Apple Silicon detected"

else

    warning "Intel Mac detected"

fi

if (( RAM_GB < 8 )); then

    HARDWARE_TIER="Small"

    RECOMMENDED_MODELS=(
        "gemma3:4b"
        "phi4-mini"
    )

elif (( RAM_GB < 16 )); then

    HARDWARE_TIER="Medium"

    RECOMMENDED_MODELS=(
        "gemma3:4b"
        "qwen3:4b"
        "llama3.1:8b"
    )

elif (( RAM_GB < 32 )); then

    HARDWARE_TIER="Large"

    RECOMMENDED_MODELS=(
        "qwen3:8b"
        "llama3.1:8b"
        "gemma3:12b"
    )

else

    HARDWARE_TIER="Workstation"

    RECOMMENDED_MODELS=(
        "qwen3:8b"
        "gemma3:12b"
        "llama3.1:8b"
        "mistral:7b"
    )

fi

log ""
log "Hardware Tier : $HARDWARE_TIER"
log ""
log "Recommended Models"

for model in "${RECOMMENDED_MODELS[@]}"; do
    log "  • $model"
done

##############################################
# Step 3 - Internet Connectivity
##############################################

step "Checking Internet Connectivity"

if curl -fsSL --head https://ollama.com >/dev/null 2>&1; then

    success "Internet connection available"

else

    error "Internet connection is required."

    exit 1

fi

##############################################
# Step 4 - Install Prerequisites
##############################################

step "Installing Prerequisites"

install_brew

PACKAGES=(
    git
    python3
    curl
    wget
    jq
)

for pkg in "${PACKAGES[@]}"; do
    install_pkg "$pkg"
done

##############################################
# Step 5 - Docker
##############################################

step "Checking Docker"

if check_cmd docker; then

    success "Docker installed"

    if docker info >/dev/null 2>&1; then

        success "Docker daemon running"

    else

        warning "Docker installed but daemon is not running"

    fi

else

    warning "Docker not installed"

fi

##############################################
# Step 6 - Ollama
##############################################

step "Installing Ollama"

if check_cmd ollama; then

    success "Ollama already installed"

else

    info "Installing Ollama..."

    brew install ollama

    success "Ollama installed"

fi

##############################################
# Start Ollama
##############################################

step "Starting Ollama"

if ! pgrep -f "ollama serve" >/dev/null 2>&1; then

    info "Starting Ollama service..."

    nohup ollama serve >/tmp/ollama.log 2>&1 &

    sleep 5

fi

if curl -s http://localhost:11434/api/tags >/dev/null; then

    success "Ollama API is running"

else

    error "Failed to start Ollama"

    exit 1

fi

##############################################
# Step 7 - Open Source LLM Catalog
##############################################

step "Open Source LLM Catalog"

log ""
log "===================================================="
log "GENERAL PURPOSE"
log "===================================================="

log "$(printf "%-22s %-8s %-12s %s" "Model" "RAM" "Category" "Best For")"
log "$(printf "%-22s %-8s %-12s %s" "gemma3:4b" "8 GB" "General" "Lightweight Chat")"
log "$(printf "%-22s %-8s %-12s %s" "gemma3:12b" "16 GB" "General" "High Quality Chat")"
log "$(printf "%-22s %-8s %-12s %s" "qwen3:4b" "8 GB" "General" "Balanced")"
log "$(printf "%-22s %-8s %-12s %s" "qwen3:8b" "16 GB" "General" "Best Overall")"
log "$(printf "%-22s %-8s %-12s %s" "llama3.1:8b" "16 GB" "General" "Reasoning")"
log "$(printf "%-22s %-8s %-12s %s" "mistral:7b" "16 GB" "General" "Fast")"

log ""
log "===================================================="
log "CODING"
log "===================================================="

log "$(printf "%-22s %-8s %-12s %s" "codellama" "16 GB" "Coding" "Programming")"
log "$(printf "%-22s %-8s %-12s %s" "deepseek-coder" "16 GB" "Coding" "Code Generation")"
log "$(printf "%-22s %-8s %-12s %s" "qwen2.5-coder" "16 GB" "Coding" "Code Assistant")"
log "$(printf "%-22s %-8s %-12s %s" "starcoder2" "16 GB" "Coding" "Development")"

log ""
log "===================================================="
log "REASONING"
log "===================================================="

log "$(printf "%-22s %-8s %-12s %s" "deepseek-r1" "32 GB+" "Reasoning" "Complex Reasoning")"
log "$(printf "%-22s %-8s %-12s %s" "qwen3" "16 GB" "Reasoning" "Thinking")"

log ""
log "===================================================="
log "VISION"
log "===================================================="

log "$(printf "%-22s %-8s %-12s %s" "llava" "16 GB" "Vision" "Image Understanding")"

log ""
log "Recommended for your system:"

for model in "${RECOMMENDED_MODELS[@]}"; do
    log "  ✓ $model"
done

##############################################
# Step 8 - Installation Mode
##############################################

step "Installation Mode"

log ""
log "1) Install Recommended Models"
log "2) Choose Models"
log "3) Install All Models"
log "4) Exit"
log ""

read -rp "Select an option [1-4]: " MODE

case "$MODE" in

1)

    SELECTED_MODELS=("${RECOMMENDED_MODELS[@]}")

    ;;

2)

    echo
    echo "Available Models"
    echo

    ALL_MODELS=(
        "${GENERAL_MODELS[@]}"
        "${CODING_MODELS[@]}"
        "${REASONING_MODELS[@]}"
        "${VISION_MODELS[@]}"
    )

    for ((i=0; i<${#ALL_MODELS[@]}; i++)); do
        printf "%2d) %s\n" "$((i+1))" "${ALL_MODELS[$i]}"
    done

    echo
    read -rp "Enter model numbers (space separated): " -a CHOICES

    for choice in "${CHOICES[@]}"; do

        index=$((choice-1))

        if (( index >= 0 && index < ${#ALL_MODELS[@]} )); then

            SELECTED_MODELS+=("${ALL_MODELS[$index]}")

        fi

    done

    ;;

3)

    SELECTED_MODELS=(
        "${GENERAL_MODELS[@]}"
        "${CODING_MODELS[@]}"
        "${REASONING_MODELS[@]}"
        "${VISION_MODELS[@]}"
    )

    ;;

4)

    echo "Cancelled."

    exit 0

    ;;

*)

    error "Invalid selection."

    exit 1

    ;;

esac

log ""
log "Selected Models"

for model in "${SELECTED_MODELS[@]}"; do
    log "  • $model"
done

##############################################
# Step 9 - Install Selected Models
##############################################

step "Installing Selected Models"

TOTAL_MODELS=${#SELECTED_MODELS[@]}
MODEL_COUNT=0

for model in "${SELECTED_MODELS[@]}"; do

    MODEL_COUNT=$((MODEL_COUNT + 1))

    log ""
    log "----------------------------------------------------"
    log "[$MODEL_COUNT/$TOTAL_MODELS] $model"
    log "----------------------------------------------------"

    if ollama list | tail -n +2 | awk '{print $1}' | grep -Fxq "$model"; then

        success "$model already installed"

        SKIPPED_MODELS+=("$model")

        continue

    fi

    info "Downloading $model ..."
    info "This may take several minutes."

    if ollama pull "$model"; then

        success "$model installed"

        INSTALLED_MODELS+=("$model")

    else

        error "$model installation failed"

        FAILED_MODELS+=("$model")

        continue

    fi

done

##############################################
# Step 10 - Verify Installed Models
##############################################

step "Verifying Installed Models"

VERIFY_PROMPT="Respond with one word: OK"

for model in "${SELECTED_MODELS[@]}"; do

    if ollama list | tail -n +2 | awk '{print $1}' | grep -Fxq "$model"; then

        info "Testing $model"

        if ollama run "$model" "$VERIFY_PROMPT" >/dev/null 2>&1; then

            success "$model verification passed"

        else

            warning "$model installed but verification failed"

        fi

    fi

done

##############################################
# Step 11 - Installation Summary
##############################################

step "Installation Summary"

END_TIME=$(date +%s)
ELAPSED=$((END_TIME - START_TIME))

log ""
log "===================================================="
log "           MULTI-LLM INSTALLATION SUMMARY"
log "===================================================="
log ""

log "Installed Models"

if ((${#INSTALLED_MODELS[@]})); then

    for model in "${INSTALLED_MODELS[@]}"; do
        log "  ✓ $model"
    done

else

    log "  None"

fi

log ""
log "Skipped Models"

if ((${#SKIPPED_MODELS[@]})); then

    for model in "${SKIPPED_MODELS[@]}"; do
        log "  ✓ $model"
    done

else

    log "  None"

fi

log ""
log "Failed Models"

if ((${#FAILED_MODELS[@]})); then

    for model in "${FAILED_MODELS[@]}"; do
        log "  ✗ $model"
    done

else

    log "  None"

fi

log ""
log "----------------------------------------------------"
log "$(printf "%-22s : %s" "Ollama API" "http://localhost:11434")"
log "$(printf "%-22s : %s" "Log File" "$LOGFILE")"
log "$(printf "%-22s : %ss" "Total Time" "$ELAPSED")"
log "----------------------------------------------------"

log ""
log "Installation completed."

if ((${#INSTALLED_MODELS[@]})); then

    echo
    read -rp "Launch a model now? (y/N): " ANSWER

    if [[ "$ANSWER" =~ ^[Yy]$ ]]; then

        echo
        echo "Installed Models"

        INDEX=1

        for model in "${INSTALLED_MODELS[@]}"; do
            echo "$INDEX) $model"
            INDEX=$((INDEX + 1))
        done

        echo

        read -rp "Select model number: " MODEL_NO

        MODEL_INDEX=$((MODEL_NO - 1))

        if (( MODEL_INDEX >= 0 && MODEL_INDEX < ${#INSTALLED_MODELS[@]} )); then

            exec ollama run "${INSTALLED_MODELS[$MODEL_INDEX]}"

        fi

    fi

fi

exit 0
