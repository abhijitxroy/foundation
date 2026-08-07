#!/usr/bin/env bash

###############################################################################
#
# Local Multi-LLM Uninstaller
#
# Removes:
#   - Selected LLM Models
#   - All LLM Models
#   - Ollama
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
SCRIPT_VERSION="2.0.0"

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
KEEP_DOCKER=false

##############################################
# Progress
##############################################

TOTAL_STEPS=12
CURRENT_STEP=0

##############################################
# Removal Mode
##############################################

REMOVAL_MODE=""

##############################################
# Model Collections
##############################################

INSTALLED_MODELS=()
SELECTED_MODELS=()

REMOVED_MODELS=()
SKIPPED_MODELS=()
FAILED_MODELS=()

##############################################
# Summary Variables
##############################################

REMOVED_OLLAMA="No"
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

    CURRENT_STEP=$((CURRENT_STEP + 1))

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

        return 0

    fi

    if $VERBOSE; then

        echo "[EXEC] $*"

    fi

    bash -c "$*"

}

##############################################
# Command Check
##############################################

check_cmd() {

    command -v "$1" >/dev/null 2>&1

}

##############################################
# Usage
##############################################

usage() {

cat <<EOF

Local Multi-LLM Uninstaller

Usage:

    $SCRIPT_NAME [OPTIONS]

Options:

    --yes               Skip confirmation
    --dry-run           Show actions only
    --verbose           Enable verbose logging
    --keep-docker       Do not remove Docker resources
    --help              Show help

Examples:

    $SCRIPT_NAME

    $SCRIPT_NAME --yes

    $SCRIPT_NAME --dry-run

    $SCRIPT_NAME --verbose

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

        --keep-docker)
			KEEP_DOCKER=true
			info "Skipping Docker cleanup (--keep-docker)"
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
echo "        LOCAL MULTI-LLM UNINSTALLER"
echo "===================================================="
echo
echo "Version          : $SCRIPT_VERSION"
echo "Operating System : $OS"
echo
echo "This script supports:"
echo
echo "  ✓ Remove Selected Models"
echo "  ✓ Remove All Models"
echo "  ✓ Remove Ollama"
echo "  ✓ Complete Cleanup"
echo
echo "Complete Cleanup removes:"
echo
echo "  ✓ Ollama"
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
# Step 1 - Detect Installed Components
##############################################

step "Detecting Installed Components"

HAS_OLLAMA=false
HAS_DOCKER=false
HAS_OPENWEBUI=false
HAS_PYTHON=false
DOCKER_RUNNING=false

##############################################
# Ollama
##############################################

if check_cmd ollama; then

    HAS_OLLAMA=true

    success "Ollama detected"

else

    warning "Ollama not installed"

fi

##############################################
# Docker
##############################################

if check_cmd docker; then

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

        success "Native Open WebUI detected"

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

        success "Python virtual environment detected"

        break

    fi

done

if ! $HAS_PYTHON; then

    warning "Python virtual environment not found"

fi

echo
echo "----------------------------------------------------"
echo "Installed Components"
echo "----------------------------------------------------"

printf "%-25s : %s\n" "Ollama" "$HAS_OLLAMA"
printf "%-25s : %s\n" "Docker" "$HAS_DOCKER"
printf "%-25s : %s\n" "Open WebUI" "$HAS_OPENWEBUI"
printf "%-25s : %s\n" "Python Virtual Env" "$HAS_PYTHON"

##############################################
# Step 2 - Discover Installed Models
##############################################

step "Discovering Installed Models"

if $HAS_OLLAMA; then

    while IFS= read -r MODEL; do

        [[ -z "$MODEL" ]] && continue

        INSTALLED_MODELS+=("$MODEL")

    done < <(
        ollama list \
            | tail -n +2 \
            | awk '{print $1}'
    )

fi

if ((${#INSTALLED_MODELS[@]})); then

    success "${#INSTALLED_MODELS[@]} installed model(s) found"

    echo
    echo "Installed Models"
    echo "----------------------------------------------------"

    INDEX=1

    for MODEL in "${INSTALLED_MODELS[@]}"; do

        printf "%2d) %s\n" "$INDEX" "$MODEL"

        INDEX=$((INDEX + 1))

    done

else

    warning "No installed models found"

fi

##############################################
# Step 3 - Removal Mode
##############################################

step "Removal Mode"

echo
echo "1) Remove Selected Models"
echo "2) Remove All Models"
echo "3) Remove Ollama Only"
echo "4) Complete Cleanup"
echo "5) Exit"
echo

read -rp "Select an option [1-5]: " OPTION

case "$OPTION" in

    1)

        REMOVAL_MODE="selected"

        ;;

    2)

        REMOVAL_MODE="all"

        ;;

    3)

        REMOVAL_MODE="ollama"

        ;;

    4)

        REMOVAL_MODE="cleanup"

        ;;

    5)

        warning "Cancelled."

        exit 0

        ;;

    *)

        error "Invalid option."

        exit 1

        ;;

esac

##############################################
# Step 4 - Model Selection
##############################################

if [[ "$REMOVAL_MODE" == "selected" ]]; then

    step "Selecting Models"

    echo

    INDEX=1

    for MODEL in "${INSTALLED_MODELS[@]}"; do

        printf "%2d) %s\n" "$INDEX" "$MODEL"

        INDEX=$((INDEX + 1))

    done

    echo

    read -rp "Enter model numbers (space separated): " -a CHOICES

    for CHOICE in "${CHOICES[@]}"; do

		if [[ ! "$CHOICE" =~ ^[0-9]+$ ]]; then

			warning "Ignoring invalid selection: $CHOICE"

			continue

		fi

		INDEX=$((CHOICE - 1))

		if (( INDEX >= 0 && INDEX < ${#INSTALLED_MODELS[@]} )); then

			SELECTED_MODELS+=("${INSTALLED_MODELS[$INDEX]}")

		else

			warning "Ignoring invalid selection: $CHOICE"

		fi

	done

fi

##############################################
# Step 5 - Remove Selected Models
##############################################

if [[ "$REMOVAL_MODE" == "selected" ]]; then

    if ((${#SELECTED_MODELS[@]} == 0)); then

        warning "No valid models selected."

        exit 0

    fi

    step "Removing Selected Models"

    for MODEL in "${SELECTED_MODELS[@]}"; do

        info "Removing $MODEL"

        if ollama rm "$MODEL" >/dev/null 2>&1; then

            success "$MODEL removed"

            REMOVED_MODELS+=("$MODEL")

        else

            error "$MODEL removal failed"

            FAILED_MODELS+=("$MODEL")

        fi

    done

fi

##############################################
# Step 6 - Remove All Models
##############################################

if [[ "$REMOVAL_MODE" == "all" ]]; then

    step "Removing All Models"

    if ((${#INSTALLED_MODELS[@]})); then

        for MODEL in "${INSTALLED_MODELS[@]}"; do

            info "Removing $MODEL"

            if ollama rm "$MODEL" >/dev/null 2>&1; then

                success "$MODEL removed"

                REMOVED_MODELS+=("$MODEL")

            else

                error "$MODEL removal failed"

                FAILED_MODELS+=("$MODEL")

            fi

        done

    else

        warning "No installed models found"

    fi

fi

##############################################
# Step 7 - Remove Ollama
##############################################

if [[ "$REMOVAL_MODE" == "ollama" || "$REMOVAL_MODE" == "cleanup" ]]; then

    step "Removing Ollama"

    if check_cmd brew && check_cmd ollama; then

        info "Removing Ollama (Homebrew)"

        if run "brew uninstall ollama"; then
			REMOVED_OLLAMA="Yes"
			success "Ollama removed"
		else
			error "Failed to remove Ollama"
		fi

    elif check_cmd ollama; then

        warning "Ollama installed outside Homebrew"

        warning "Please remove it manually"

    else

        warning "Ollama not installed"

    fi

fi

##############################################
# Step 8 - Complete Cleanup
##############################################

if [[ "$REMOVAL_MODE" == "cleanup" ]]; then

##############################################
# Docker Containers
##############################################

    step "Removing Docker Containers"

    if $HAS_DOCKER && $DOCKER_RUNNING && ! $KEEP_DOCKER; then

        CONTAINERS=$(docker ps -a --format "{{.Names}}" \
            | grep -Ei "open-webui|webui" || true)

        if [[ -n "$CONTAINERS" ]]; then

            while IFS= read -r CONTAINER; do

                [[ -z "$CONTAINER" ]] && continue

                info "Removing $CONTAINER"

                run "docker rm -f \"$CONTAINER\" >/dev/null 2>&1 || true"

            done <<< "$CONTAINERS"

            REMOVED_DOCKER_CONTAINER="Yes"

            success "Docker containers removed"

        else

            warning "No Docker containers found"

        fi

    fi

##############################################
# Docker Images
##############################################

    step "Removing Docker Images"

    if $HAS_DOCKER && $DOCKER_RUNNING && ! $KEEP_DOCKER; then

        IMAGE_IDS=$(docker images --format "{{.Repository}} {{.ID}}" \
            | grep "^ghcr.io/open-webui/open-webui" \
            | awk '{print $2}' || true)

        if [[ -n "$IMAGE_IDS" ]]; then

            while IFS= read -r IMAGE; do

                [[ -z "$IMAGE" ]] && continue

                info "Removing image $IMAGE"

                run "docker rmi -f \"$IMAGE\" >/dev/null 2>&1 || true"

            done <<< "$IMAGE_IDS"

            REMOVED_DOCKER_IMAGE="Yes"

            success "Docker images removed"

        else

            warning "No Docker images found"

        fi

    fi

##############################################
# Docker Volumes
##############################################

    step "Removing Docker Volumes"

    if $HAS_DOCKER && $DOCKER_RUNNING && ! $KEEP_DOCKER; then

        VOLUMES=$(docker volume ls --format "{{.Name}}" \
            | grep -Ei "open-webui|webui" || true)

        if [[ -n "$VOLUMES" ]]; then

            while IFS= read -r VOLUME; do

                [[ -z "$VOLUME" ]] && continue

                info "Removing volume $VOLUME"

                run "docker volume rm \"$VOLUME\" >/dev/null 2>&1 || true"

            done <<< "$VOLUMES"

            REMOVED_DOCKER_VOLUME="Yes"

            success "Docker volumes removed"

        else

            warning "No Docker volumes found"

        fi

    fi

##############################################
# Native Open WebUI
##############################################

    step "Removing Native Open WebUI"

    if $HAS_OPENWEBUI; then

        for DIR in "${OPENWEBUI_DIRS[@]}"; do

            if [[ -d "$DIR" ]]; then

                info "Removing $DIR"

                run "rm -rf \"$DIR\""

            fi

        done

        REMOVED_WEBUI="Yes"

        success "Native Open WebUI removed"

    else

        warning "Native Open WebUI not found"

    fi

##############################################
# Python Virtual Environments
##############################################

    step "Removing Python Virtual Environments"

    if $HAS_PYTHON; then

        for DIR in "${PYTHON_VENVS[@]}"; do

            if [[ -d "$DIR" ]]; then

                info "Removing $DIR"

                run "rm -rf \"$DIR\""

            fi

        done

        REMOVED_PYTHON="Yes"

        success "Python virtual environments removed"

    else

        warning "Python virtual environments not found"

    fi

##############################################
# Launch Services
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

##############################################
# Configuration
##############################################

    step "Removing Configuration"

    CONFIG_DIRS=(
        "$HOME/.ollama"
        "$HOME/.config/ollama"
        "$HOME/.config/open-webui"
        "$HOME/.cache/ollama"
        "$HOME/.cache/open-webui"
    )

    FOUND=false

    for DIR in "${CONFIG_DIRS[@]}"; do

        if [[ -e "$DIR" ]]; then

            FOUND=true

            info "Removing $DIR"

            run "rm -rf \"$DIR\""

        fi

    done

    if $FOUND; then

        REMOVED_CONFIG="Yes"

        success "Configuration removed"

    else

        warning "Configuration not found"

    fi

##############################################
# Logs
##############################################

    step "Removing Logs"

    LOG_DIRS=(
        "$HOME/.ollama/logs"
        "/tmp/ollama.log"
        "/tmp/open-webui.log"
    )

    FOUND=false

    for DIR in "${LOG_DIRS[@]}"; do

        if [[ -e "$DIR" ]]; then

            FOUND=true

            info "Removing $DIR"

            run "rm -rf \"$DIR\""

        fi

    done

    if $FOUND; then

        REMOVED_LOGS="Yes"

        success "Logs removed"

    else

        warning "Logs not found"

    fi

fi

##############################################
# Step 9 - Verification
##############################################

step "Verifying Cleanup"

if [[ "$REMOVAL_MODE" == "selected" || "$REMOVAL_MODE" == "all" ]]; then

    for MODEL in "${REMOVED_MODELS[@]}"; do

        if ollama list | tail -n +2 | awk '{print $1}' | grep -Fxq "$MODEL"; then

            warning "$MODEL still exists"

        else

            success "$MODEL removed"

        fi

    done

fi

if [[ "$REMOVAL_MODE" == "ollama" || "$REMOVAL_MODE" == "cleanup" ]]; then
    if check_cmd ollama; then
        warning "Ollama still installed"
    else
        success "Ollama removed"
    fi
fi

if [[ "$REMOVAL_MODE" == "cleanup" ]] && \
	check_cmd docker && \
	$DOCKER_RUNNING && \
	! $KEEP_DOCKER; then

    CONTAINERS=$(docker ps -a --format "{{.Names}}" | grep -Ei "open-webui|webui" || true)

    if [[ -n "$CONTAINERS" ]]; then
        warning "Docker containers still exist"
    else
        success "Docker containers removed"
    fi

    IMAGES=$(docker images --format "{{.Repository}}" | grep "^ghcr.io/open-webui/open-webui" || true)

    if [[ -n "$IMAGES" ]]; then
        warning "Docker images still exist"
    else
        success "Docker images removed"
    fi

    VOLUMES=$(docker volume ls --format "{{.Name}}" | grep -Ei "open-webui|webui" || true)

    if [[ -n "$VOLUMES" ]]; then
        warning "Docker volumes still exist"
    else
        success "Docker volumes removed"
    fi

fi

##############################################
# Step 10 - Summary
##############################################

step "Cleanup Summary"

END_TIME=$(date +%s)
ELAPSED=$((END_TIME - START_TIME))

echo
echo "===================================================="
echo "      LOCAL MULTI-LLM UNINSTALL SUMMARY"
echo "===================================================="
echo

echo "Removed Models"

if ((${#REMOVED_MODELS[@]})); then

    for MODEL in "${REMOVED_MODELS[@]}"; do
        echo "  ✓ $MODEL"
    done

else

    echo "  None"

fi

echo
echo "Failed Models"

if ((${#FAILED_MODELS[@]})); then

    for MODEL in "${FAILED_MODELS[@]}"; do
        echo "  ✗ $MODEL"
    done

else

    echo "  None"

fi

echo
printf "%-28s : %s\n" "Ollama Removed" "$REMOVED_OLLAMA"
printf "%-28s : %s\n" "Open WebUI Removed" "$REMOVED_WEBUI"
printf "%-28s : %s\n" "Docker Containers Cleaned" "$REMOVED_DOCKER_CONTAINER"
printf "%-28s : %s\n" "Docker Images Cleaned" "$REMOVED_DOCKER_IMAGE"
printf "%-28s : %s\n" "Docker Volumes Cleaned" "$REMOVED_DOCKER_VOLUME"
printf "%-28s : %s\n" "Python Environments" "$REMOVED_PYTHON"
printf "%-28s : %s\n" "Configuration" "$REMOVED_CONFIG"
printf "%-28s : %s\n" "Logs" "$REMOVED_LOGS"
printf "%-28s : %ss\n" "Elapsed Time" "$ELAPSED"

echo
if ((${#FAILED_MODELS[@]})); then
    echo "Cleanup completed with warnings."
else
    echo "Cleanup completed successfully."
fi

exit 0


