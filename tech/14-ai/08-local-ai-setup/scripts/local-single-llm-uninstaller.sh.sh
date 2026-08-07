#!/usr/bin/env bash

###############################################################################
#
# Local AI Uninstaller
#
# Removes:
#   - Ollama
#   - Downloaded Models
#   - Open WebUI
#   - Docker Resources
#   - Python Virtual Environments
#   - Configuration
#   - Logs
#
# Supported:
#   - macOS
#   - Ubuntu
#   - Debian
#   - Fedora
#
###############################################################################

set -Eeuo pipefail

##############################################
# Script Information
##############################################

SCRIPT_NAME="$(basename "$0")"
SCRIPT_VERSION="1.0.0"

START_TIME=$(date +%s)

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
# CLI Options
##############################################

ASSUME_YES=false
DRY_RUN=false
VERBOSE=false
KEEP_MODELS=false
KEEP_DOCKER=false

##############################################
# Progress
##############################################

TOTAL_STEPS=14
CURRENT_STEP=0

##############################################
# Summary Variables
##############################################

REMOVED_OLLAMA="No"
REMOVED_MODELS="No"
REMOVED_WEBUI="No"
REMOVED_DOCKER_CONTAINER="No"
REMOVED_DOCKER_IMAGE="No"
REMOVED_DOCKER_VOLUME="No"
REMOVED_PYTHON="No"
REMOVED_CONFIG="No"
REMOVED_LOGS="No"

##############################################
# Logging
##############################################

info() {

    echo -e "${BLUE}[INFO]${NC} $1"

}

success() {

    echo -e "${GREEN}[ OK ]${NC} $1"

}

warning() {

    echo -e "${YELLOW}[WARN]${NC} $1"

}

error() {

    echo -e "${RED}[FAIL]${NC} $1"

}

##############################################
# Progress
##############################################

step() {

    CURRENT_STEP=$((CURRENT_STEP+1))

    echo
    echo -e "${CYAN}====================================================${NC}"
    echo -e "${CYAN}[${CURRENT_STEP}/${TOTAL_STEPS}] $1${NC}"
    echo -e "${CYAN}====================================================${NC}"

}

##############################################
# Execute Command
##############################################

run() {

    if $DRY_RUN; then

        echo "[DRY-RUN] $*"

        return

    fi

    if $VERBOSE; then

        echo "[EXEC] $*"

    fi

    bash -c "$*"

}

##############################################
# Usage
##############################################

usage() {

cat <<EOF

Local AI Uninstaller

Usage:

    $SCRIPT_NAME [OPTIONS]

Options:

    --yes               Skip confirmation
    --dry-run           Show actions only
    --verbose           Enable verbose logging
    --keep-models       Do not remove downloaded models
    --keep-docker       Do not remove Docker resources
    --help              Show help

Examples:

    $SCRIPT_NAME

    $SCRIPT_NAME --yes

    $SCRIPT_NAME --dry-run

    $SCRIPT_NAME --keep-models

EOF

}

##############################################
# Parse Arguments
##############################################

while [[ $# -gt 0 ]]; do

    case "$1" in

        --yes|-y)
            ASSUME_YES=true
            ;;

        --dry-run)
            DRY_RUN=true
            ;;

        --verbose)
            VERBOSE=true
            ;;

        --keep-models)
            KEEP_MODELS=true
            ;;

        --keep-docker)
            KEEP_DOCKER=true
            ;;

        --help|-h)

            usage
            exit 0
            ;;

        *)

            error "Unknown option: $1"
            usage
            exit 1
            ;;

    esac

    shift

done

##############################################
# Detect Operating System
##############################################

OS="Unknown"

if [[ "$OSTYPE" == "darwin"* ]]; then

    OS="macOS"

elif [[ -f /etc/os-release ]]; then

    . /etc/os-release

    OS="$PRETTY_NAME"

fi

##############################################
# Banner
##############################################

command -v clear >/dev/null 2>&1 && clear

echo
echo "===================================================="
echo "           LOCAL AI UNINSTALLER"
echo "===================================================="
echo
echo "Version          : $SCRIPT_VERSION"
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
echo "  ✓ Configuration"
echo "  ✓ Logs"
echo

if $DRY_RUN; then

    warning "DRY RUN ENABLED"

fi

if ! $ASSUME_YES; then

    read -rp "Continue? (yes/no): " CONFIRM

    if [[ "$CONFIRM" != "yes" ]]; then

        warning "Cancelled."

        exit 130

    fi

fi

##############################################
# Detect Installed Components
##############################################

step "Detecting Installed Components"

HAS_OLLAMA=false
HAS_DOCKER=false
HAS_MODELS=false
HAS_OPENWEBUI=false
HAS_PYTHON=false

##############################################
# Ollama
##############################################

if command -v ollama >/dev/null 2>&1; then

    HAS_OLLAMA=true

    success "Ollama detected"

else

    warning "Ollama not installed"

fi

##############################################
# Docker
##############################################

DOCKER_RUNNING=false

if command -v docker >/dev/null 2>&1; then

    HAS_DOCKER=true

    success "Docker detected"

    if docker info >/dev/null 2>&1; then

        DOCKER_RUNNING=true

        success "Docker daemon is running"

    else

        warning "Docker daemon is not running"

    fi

else

    warning "Docker not installed"

fi

##############################################
# Models
##############################################

if [[ -d "$HOME/.ollama" ]]; then

    HAS_MODELS=true

    success "Downloaded models detected"

else

    warning "No downloaded models"

fi

##############################################
# Native Open WebUI
##############################################

OPENWEBUI_DIRS=(
    "$HOME/.local/share/open-webui"
    "$HOME/.config/open-webui"
    "$HOME/open-webui"
    "$HOME/open-webui-data"
    "$HOME/Library/Application Support/Open WebUI"
)

for dir in "${OPENWEBUI_DIRS[@]}"; do

    if [[ -d "$dir" ]]; then

        HAS_OPENWEBUI=true

        success "Open WebUI found"

        break

    fi

done

if ! $HAS_OPENWEBUI; then

    warning "Native Open WebUI not found"

fi

##############################################
# Python Virtual Environment
##############################################

PYTHON_VENVS=(
    "$HOME/.venv/open-webui"
    "$HOME/venv/open-webui"
    "$HOME/.virtualenvs/open-webui"
)

for dir in "${PYTHON_VENVS[@]}"; do

    if [[ -d "$dir" ]]; then

        HAS_PYTHON=true

        success "Python virtual environment found"

        break

    fi

done

if ! $HAS_PYTHON; then

    warning "Python virtual environment not found"

fi

##############################################
# Detection Summary
##############################################

echo
echo "----------------------------------------------------"
echo "Installed Components"
echo "----------------------------------------------------"

printf "%-25s : %s\n" "Ollama" "$HAS_OLLAMA"
printf "%-25s : %s\n" "Docker" "$HAS_DOCKER"
printf "%-25s : %s\n" "Downloaded Models" "$HAS_MODELS"
printf "%-25s : %s\n" "Open WebUI" "$HAS_OPENWEBUI"
printf "%-25s : %s\n" "Python Virtual Env" "$HAS_PYTHON"

##############################################
# Stop Running Services
##############################################

step "Stopping Running Services"

##############################################
# Stop Ollama
##############################################

if pgrep -x "ollama" >/dev/null 2>&1; then

    info "Stopping Ollama..."

    run "pkill ollama >/dev/null 2>&1 || true"

    sleep 2

    success "Ollama stopped"

else

    warning "Ollama is not running"

fi

##############################################
# Stop Open WebUI Container
##############################################

if $HAS_DOCKER && $DOCKER_RUNNING; then

    CONTAINERS=$(docker ps --format "{{.Names}}" | grep -Ei "open-webui|webui" || true)

    if [[ -n "$CONTAINERS" ]]; then

        while read -r container; do

            [[ -z "$container" ]] && continue

            info "Stopping container: $container"

            run "docker stop \"$container\" >/dev/null 2>&1 || true"

        done <<< "$CONTAINERS"

        success "Docker containers stopped"

    else

        warning "No running Open WebUI containers"

    fi

fi

##############################################
# Remove Docker Containers
##############################################

step "Removing Docker Containers"

if $HAS_DOCKER && $DOCKER_RUNNING && ! $KEEP_DOCKER; then

    CONTAINERS=$(docker ps -a --format "{{.Names}}" | grep -Ei "open-webui|webui" || true)

    if [[ -n "$CONTAINERS" ]]; then

        while read -r container; do

            [[ -z "$container" ]] && continue

            info "Removing container: $container"

            run "docker rm -f \"$container\" >/dev/null 2>&1 || true"

        done <<< "$CONTAINERS"

        REMOVED_DOCKER_CONTAINER="Yes"

        success "Docker containers removed"

    else

        warning "No Docker containers found"

    fi

elif $KEEP_DOCKER; then

    warning "Skipping Docker cleanup (--keep-docker)"

fi

##############################################
# Remove Docker Images
##############################################

step "Removing Docker Images"

if $HAS_DOCKER && $DOCKER_RUNNING && ! $KEEP_DOCKER; then

    IMAGE_IDS=$(docker images --format "{{.Repository}} {{.ID}}" \
        | grep "^ghcr.io/open-webui/open-webui" \
        | awk '{print $2}' \
        | sort -u || true)

    if [[ -n "$IMAGE_IDS" ]]; then

        while read -r image; do

            [[ -z "$image" ]] && continue

            info "Removing image: $image"

            run "docker rmi -f \"$image\" >/dev/null 2>&1 || true"

        done <<< "$IMAGE_IDS"

        REMOVED_DOCKER_IMAGE="Yes"

        success "Docker images removed"

    else

        warning "No Docker images found"

    fi

fi

##############################################
# Remove Docker Volumes
##############################################

step "Removing Docker Volumes"

if $HAS_DOCKER && $DOCKER_RUNNING && ! $KEEP_DOCKER; then

    VOLUMES=$(docker volume ls --format "{{.Name}}" \
        | grep -Ei "open-webui|ollama|webui" || true)

    if [[ -n "$VOLUMES" ]]; then

        while read -r volume; do

            [[ -z "$volume" ]] && continue

            info "Removing volume: $volume"

            run "docker volume rm \"$volume\" >/dev/null 2>&1 || true"

        done <<< "$VOLUMES"

        REMOVED_DOCKER_VOLUME="Yes"

        success "Docker volumes removed"

    else

        warning "No Docker volumes found"

    fi

fi

##############################################
# Remove Ollama
##############################################

step "Removing Ollama"

if $HAS_OLLAMA; then

    ##########################################
    # Homebrew
    ##########################################

    if command -v brew >/dev/null 2>&1; then

        if brew list ollama >/dev/null 2>&1; then

            info "Removing Ollama (Homebrew)"

            run "brew uninstall ollama >/dev/null 2>&1 || true"

        fi

    fi

    ##########################################
    # APT
    ##########################################

    if command -v apt >/dev/null 2>&1; then

        run "sudo apt remove -y ollama >/dev/null 2>&1 || true"

    fi

    ##########################################
    # DNF
    ##########################################

    if command -v dnf >/dev/null 2>&1; then

        run "sudo dnf remove -y ollama >/dev/null 2>&1 || true"

    fi

    ##########################################
    # macOS Application
    ##########################################

    if [[ -d "/Applications/Ollama.app" ]]; then

        info "Removing Ollama.app"

        run "sudo rm -rf /Applications/Ollama.app >/dev/null 2>&1 || true"

    fi

    REMOVED_OLLAMA="Yes"

    success "Ollama removed"

else

    warning "Ollama not installed"

fi

##############################################
# Remove Downloaded Models
##############################################

step "Removing Downloaded Models"

if ! $KEEP_MODELS; then

    MODEL_DIRS=(
        "$HOME/.ollama"
        "$HOME/.cache/ollama"
    )

    FOUND=false

    for dir in "${MODEL_DIRS[@]}"; do

        if [[ -d "$dir" ]]; then

            info "Removing $dir"

            run "rm -rf \"$dir\""

            FOUND=true

        fi

    done

    if $FOUND; then

        REMOVED_MODELS="Yes"

        success "Downloaded models removed"

    else

        warning "No downloaded models found"

    fi

else

    warning "Keeping downloaded models (--keep-models)"

fi

##############################################
# Remove Native Open WebUI
##############################################

step "Removing Native Open WebUI"

FOUND=false

for dir in "${OPENWEBUI_DIRS[@]}"; do

    if [[ -d "$dir" ]]; then

        info "Removing $dir"

        run "rm -rf \"$dir\""

        FOUND=true

    fi

done

if $FOUND; then

    REMOVED_WEBUI="Yes"

    success "Native Open WebUI removed"

else

    warning "Native Open WebUI not found"

fi

##############################################
# Remove Python Virtual Environments
##############################################

step "Removing Python Virtual Environments"

FOUND=false

for dir in "${PYTHON_VENVS[@]}"; do

    if [[ -d "$dir" ]]; then

        info "Removing $dir"

        run "rm -rf \"$dir\""

        FOUND=true

    fi

done

if $FOUND; then

    REMOVED_PYTHON="Yes"

    success "Python virtual environments removed"

else

    warning "Python virtual environments not found"

fi

##############################################
# Remove macOS Launch Agents
##############################################

step "Removing Launch Services"

if [[ "$OSTYPE" == "darwin"* ]]; then

    LAUNCH_AGENT="$HOME/Library/LaunchAgents/com.ollama.ollama.plist"

    if [[ -f "$LAUNCH_AGENT" ]]; then

        info "Removing LaunchAgent"

        run "launchctl unload \"$LAUNCH_AGENT\" >/dev/null 2>&1 || true"
        run "rm -f \"$LAUNCH_AGENT\""

    fi

    if [[ -f "$LAUNCH_AGENT" ]]; then
        warning "LaunchAgent still exists"
    else
        success "LaunchAgent removed"
    fi

fi

success "Launch services cleaned"

##############################################
# Remove Configuration
##############################################

step "Removing Configuration"

FOUND=false

CONFIG_DIRS=(
    "$HOME/.config/open-webui"
    "$HOME/.config/ollama"
)

for dir in "${CONFIG_DIRS[@]}"; do

    if [[ -d "$dir" ]]; then

        info "Removing $dir"

        run "rm -rf \"$dir\""

        FOUND=true

    fi

done

if $FOUND; then

    REMOVED_CONFIG="Yes"

    success "Configuration removed"

else

    warning "Configuration not found"

fi

##############################################
# Remove Logs
##############################################

step "Removing Logs"

FOUND=false

LOG_DIRS=(
    "$HOME/.ollama/logs"
    "$HOME/.cache/ollama"
    "$HOME/.local/share/open-webui/logs"
    "$HOME/Library/Logs/Ollama"
)

for dir in "${LOG_DIRS[@]}"; do

    if [[ -d "$dir" ]]; then

        info "Removing $dir"

        run "rm -rf \"$dir\""

        FOUND=true

    fi

done

if $FOUND; then

    REMOVED_LOGS="Yes"

    success "Logs removed"

else

    warning "Logs not found"

fi

##############################################
# Verification
##############################################

step "Verifying Cleanup"

##############################################
# Verify Ollama
##############################################

if command -v ollama >/dev/null 2>&1; then

    warning "Ollama executable still exists"

else

    success "Ollama removed"

fi

##############################################
# Verify Models
##############################################

if [[ -d "$HOME/.ollama" ]]; then

    warning "~/.ollama still exists"

else

    success "Downloaded models removed"

fi

##############################################
# Verify Open WebUI
##############################################

FOUND=false

for dir in "${OPENWEBUI_DIRS[@]}"; do

    if [[ -d "$dir" ]]; then

        FOUND=true
        break

    fi

done

if $FOUND; then

    warning "Open WebUI directories still exist"

else

    success "Open WebUI removed"

fi

##############################################
# Verify Docker
##############################################

if $HAS_DOCKER && $DOCKER_RUNNING; then

    CONTAINERS=$(docker ps -a --format "{{.Names}}" | grep -Ei "open-webui|webui" || true)

    if [[ -n "$CONTAINERS" ]]; then

        warning "Some Docker containers still exist"

    else

        success "Docker containers removed"

    fi

    IMAGES=$(docker images --format "{{.Repository}}" | grep "^ghcr.io/open-webui/open-webui" || true)

    if [[ -n "$IMAGES" ]]; then

        warning "Some Docker images still exist"

    else

        success "Docker images removed"

    fi

    VOLUMES=$(docker volume ls --format "{{.Name}}" | grep -Ei "open-webui|ollama|webui" || true)

    if [[ -n "$VOLUMES" ]]; then

        warning "Some Docker volumes still exist"

    else

        success "Docker volumes removed"

    fi

fi

##############################################
# Calculate Execution Time
##############################################

END_TIME=$(date +%s)
ELAPSED=$((END_TIME - START_TIME))

##############################################
# Cleanup Summary
##############################################

step "Cleanup Summary"

echo
echo "===================================================="
echo "               LOCAL AI UNINSTALL SUMMARY"
echo "===================================================="
echo

printf "%-30s : %s\n" "Ollama" "$REMOVED_OLLAMA"
printf "%-30s : %s\n" "Downloaded Models" "$REMOVED_MODELS"
printf "%-30s : %s\n" "Open WebUI" "$REMOVED_WEBUI"
printf "%-30s : %s\n" "Docker Containers" "$REMOVED_DOCKER_CONTAINER"
printf "%-30s : %s\n" "Docker Images" "$REMOVED_DOCKER_IMAGE"
printf "%-30s : %s\n" "Docker Volumes" "$REMOVED_DOCKER_VOLUME"
printf "%-30s : %s\n" "Python Environment" "$REMOVED_PYTHON"
printf "%-30s : %s\n" "Configuration" "$REMOVED_CONFIG"
printf "%-30s : %s\n" "Logs" "$REMOVED_LOGS"

echo
printf "%-30s : %ss\n" "Elapsed Time" "$ELAPSED"

echo
echo "===================================================="

echo
echo -e "${GREEN}Local AI cleanup completed successfully.${NC}"

echo
echo "Your system is ready for a fresh installation."

exit 0

