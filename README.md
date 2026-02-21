<p align="center">
  <img src="https://img.shields.io/badge/OS-Arch%20Linux-blue?style=for-the-badge&logo=arch-linux&logoColor=white" alt="Arch Linux">
  <img src="https://img.shields.io/badge/Shell-Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white" alt="Bash">
  <img src="https://img.shields.io/badge/Git-Automation-F05032?style=for-the-badge&logo=git&logoColor=white" alt="Git">
  <img src="https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge" alt="License">
</p>

<h1 align="center">🚀 GitHub Auto-Commit Bot</h1>

<p align="center">
  <strong>A minimalist utility to automate GitHub commits and maintain an active contribution graph.</strong>
</p>

---

### 📝 Description
This bash-based tool automates the tedious parts of repository maintenance. It handles setup, authentication via PAT, and bulk-commit processes to keep your workflow seamless and your profile active.

### 📋 Prerequisites
To use this script, you need a **GitHub Personal Access Token (PAT)**:
1. **Navigate:** `Settings` ⮕ `Developer settings` ⮕ `Tokens (classic)`.
2. **Generate:** Create a new token (classic) and name it (e.g., "AutoCommit").
3. **Permissions:** Ensure you check the **`repo`** checkbox.
4. **Security:** Copy your token immediately; it will not be displayed again.

---

### 🛠️ Installation & Quickstart

```bash
# 1. Clone the repository
git clone [https://github.com/x11kitty/autocommit](https://github.com/x11kitty/autocommit)

# 2. Enter the directory
cd autocommit

# 3. Grant execution permissions
sudo chmod +x setup.sh giti.sh

# 4. Run the configuration setup
sudo ./setup.sh
