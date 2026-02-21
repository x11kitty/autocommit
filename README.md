<p align="center">
  <img src="https://img.shields.io/badge/Shell-Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white" alt="Bash">
  <img src="https://img.shields.io/badge/Git-Automation-F05032?style=for-the-badge&logo=git&logoColor=white" alt="Git">
  <img src="https://img.shields.io/badge/License-GPL--3.0-blue.svg?style=for-the-badge" alt="License">
</p>

<h1 align="center">🚀 GitHub Auto-Commit Bot</h1>

<p align="center">
  <strong>A high-performance bash utility to automate GitHub commits and keep your contribution graph active.</strong>
</p>

---

### 📝 Overview
This tool handles the setup, authentication, and bulk-commit process for you. It is designed to be lightweight, fast, and secure by using GitHub Personal Access Tokens (PAT) instead of storing raw passwords.

### 📋 Prerequisites
Before starting, you need a **GitHub Personal Access Token (PAT)**. This acts as your password for the script to push changes:

1.  **Navigate:** Go to `Settings` ⮕ `Developer settings` ⮕ `Tokens (classic)`.
2.  **Generate:** Click `Generate new token (classic)` and give it a name like "AutoCommit".
3.  **Scope:** **Important:** Check the `repo` checkbox to allow script access.
4.  **Secure:** Copy the token immediately! It will not be shown again.

---

### 🛠️ Installation & Setup

```bash
# Clone the repository
git clone [https://github.com/x11kitty/autocommit](https://github.com/x11kitty/autocommit)

# Enter the directory
cd autocommit

# Grant execution permissions
sudo chmod +x setup.sh giti.sh

# Run the setup file and insert details
sudo ./setup.sh
