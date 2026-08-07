# Prerequisites

## Objective

Prepare the system for building a fully local AI platform.

The goal is to ensure the machine has the required hardware, operating system, software, and networking components before installing any AI tools.

---

# Supported Platforms

| Platform | Supported | Recommended |
|----------|-----------|-------------|
| macOS (Apple Silicon) | ✅ | ⭐⭐⭐⭐⭐ |
| macOS (Intel) | ✅ | ⭐⭐⭐ |
| Ubuntu 22.04+ | ✅ | ⭐⭐⭐⭐⭐ |
| Debian 12+ | ✅ | ⭐⭐⭐⭐ |
| Fedora | ✅ | ⭐⭐⭐⭐ |
| Windows 11 | ✅ | ⭐⭐⭐⭐ |
| Windows 10 | ⚠️ | ⭐⭐⭐ |

---

# Hardware Requirements

| Component | Minimum | Recommended |
|-----------|----------|-------------|
| CPU | 4 Cores | 8+ Cores |
| RAM | 8 GB | 16 GB+ |
| Storage | 50 GB Free | 200 GB+ SSD |
| GPU | Optional | Apple Silicon / NVIDIA |

---

# Operating System

## macOS

Recommended:

- macOS 14+
- Apple Silicon (M1/M2/M3/M4)

Verify:

```bash
sw_vers
```

---

## Linux

Recommended:

- Ubuntu 22.04+
- Debian 12+
- Fedora 40+

Verify:

```bash
cat /etc/os-release
```

---

## Windows

Recommended:

- Windows 11
- WSL2 (Recommended)

Verify:

```powershell
systeminfo
```

---

# Internet

Required only for:

- Initial installation
- Downloading models
- Software updates

After setup, the platform can run completely offline.

Verify:

```bash
ping github.com
```

---

# Storage

Minimum free space:

- 50 GB

Recommended:

- 200 GB+
- External SSD for models (optional)

Verify

## macOS / Linux

```bash
df -h
```

## Windows

```powershell
Get-PSDrive
```

---

# Required Software

| Software | Required | Purpose |
|----------|----------|---------|
| Git | ✅ | Source control |
| Python 3.11+ | ✅ | AI ecosystem |
| Homebrew (macOS) | macOS | Package manager |
| apt / dnf | Linux | Package manager |
| winget | Windows | Package manager |
| Docker Desktop | Optional | Containers |
| curl | ✅ | Downloads |
| wget | Optional | Downloads |
| jq | Optional | JSON processing |

---

# Verify Installed Software

## Git

```bash
git --version
```

## Python

```bash
python3 --version
```

## Docker

```bash
docker --version
```

## curl

```bash
curl --version
```

## wget

```bash
wget --version
```

## jq

```bash
jq --version
```

---

# Shell

Recommended:

- Bash
- Zsh
- PowerShell

---

# Administrator Privileges

Required during installation.

Examples:

## macOS / Linux

```bash
sudo -v
```

## Windows

Run PowerShell as Administrator.

---

# Firewall

Allow local communication.

Default Ollama API:

```
http://localhost:11434
```

---

# Antivirus

Ensure local AI binaries are not blocked.

---

# Recommended Hardware

## Best

- Apple Silicon Mac
- NVIDIA GPU Workstation
- Linux Desktop

## Good

- Windows Laptop
- Intel Mac

---

# Verification Checklist

- [ ] Supported Operating System
- [ ] Internet Available
- [ ] Git Installed
- [ ] Python Installed
- [ ] Package Manager Installed
- [ ] Docker (Optional)
- [ ] curl Installed
- [ ] Administrator Access
- [ ] Sufficient Free Disk Space
- [ ] Minimum 8 GB RAM

---

# Next

Continue with **03-ollama.md**.
