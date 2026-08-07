# Local AI Script Usage

## Overview

The Local AI scripts automate the installation and removal of the Local AI environment.

Scripts:

```text
scripts/
├── local-ai-installer.sh
└── local-ai-uninstaller.sh
```

---

# Make Scripts Executable

Run once:

```bash
chmod +x scripts/local-ai-installer.sh
chmod +x scripts/local-ai-uninstaller.sh
```

---

# Installer

## Standard Installation

```bash
./scripts/local-ai-installer.sh
```

Installs the complete Local AI environment.

---

# Uninstaller

## Standard Uninstall

```bash
./scripts/local-ai-uninstaller.sh
```

Removes all Local AI components.

---

# Command Line Options

The uninstaller supports optional command-line flags.

---

## --yes

Skip the confirmation prompt.

Example:

```bash
./scripts/local-ai-uninstaller.sh --yes
```

Useful for automation and CI/CD.

---

## --dry-run

Shows what would be removed without deleting anything.

Example:

```bash
./scripts/local-ai-uninstaller.sh --dry-run
```

Recommended before running the actual uninstall.

---

## --verbose

Displays every command executed by the script.

Example:

```bash
./scripts/local-ai-uninstaller.sh --verbose
```

Useful for debugging.

---

## --keep-models

Removes Local AI components but preserves downloaded models.

Example:

```bash
./scripts/local-ai-uninstaller.sh --keep-models
```

Useful when reinstalling Ollama without downloading models again.

---

## --keep-docker

Preserves Docker resources.

The script will not remove:

- Docker Containers
- Docker Images
- Docker Volumes

Example:

```bash
./scripts/local-ai-uninstaller.sh --keep-docker
```

---

## Combine Multiple Flags

Multiple flags may be combined.

Example:

```bash
./scripts/local-ai-uninstaller.sh --yes --keep-models
```

```bash
./scripts/local-ai-uninstaller.sh --dry-run --verbose
```

```bash
./scripts/local-ai-uninstaller.sh --yes --keep-models --keep-docker
```

---

# Typical Workflows

## Verify Before Uninstalling

```bash
./scripts/local-ai-uninstaller.sh --dry-run
```

---

## Complete Removal

```bash
./scripts/local-ai-uninstaller.sh
```

---

## Silent Removal

```bash
./scripts/local-ai-uninstaller.sh --yes
```

---

## Reinstall Without Downloading Models

```bash
./scripts/local-ai-uninstaller.sh --keep-models
./scripts/local-ai-installer.sh
```

---

## Debug Installation Issues

```bash
./scripts/local-ai-uninstaller.sh --verbose
```

---

# Verify Script Syntax

Before running the script:

```bash
bash -n scripts/local-ai-uninstaller.sh
```

---

# Static Analysis

Install ShellCheck.

macOS:

```bash
brew install shellcheck
```

Ubuntu:

```bash
sudo apt install shellcheck
```

Run:

```bash
shellcheck scripts/local-ai-uninstaller.sh
```

Fix reported issues before using the script.

---

# Exit Status

| Code | Meaning |
|------|---------|
| 0 | Success |
| 1 | Failure |
| 130 | User cancelled |

---

# Best Practices

- Run `--dry-run` before uninstalling.
- Keep downloaded models if you plan to reinstall.
- Use `--verbose` when troubleshooting.
- Run ShellCheck after modifying the script.
- Execute the installer and uninstaller from the repository root.

---

# Examples

Install:

```bash
./scripts/local-ai-installer.sh
```

Preview uninstall:

```bash
./scripts/local-ai-uninstaller.sh --dry-run
```

Remove everything:

```bash
./scripts/local-ai-uninstaller.sh
```

Remove without confirmation:

```bash
./scripts/local-ai-uninstaller.sh --yes
```

Keep downloaded models:

```bash
./scripts/local-ai-uninstaller.sh --keep-models
```

Verbose output:

```bash
./scripts/local-ai-uninstaller.sh --verbose
```
