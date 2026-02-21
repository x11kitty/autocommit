<p align="center">
  <img src="https://img.shields.io/badge/Shell-Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white" alt="Bash">
  <img src="https://img.shields.io/badge/Git-Automation-F05032?style=for-the-badge&logo=git&logoColor=white" alt="Git">
  <img src="https://img.shields.io/badge/License-GPL--3.0-blue.svg?style=for-the-badge" alt="License">
</p>

![GIF](assets/thumb.gif)

<h1 align="center">🚀 GitHub Auto-Commit Bot</h1>
<p align="center">
  <strong>A high-performance bash utility to automate GitHub commits and keep your contribution graph active.</strong>
</p>

---

### 📝 Overview
This tool handles the setup, authentication, and bulk-commit process for you. It is designed to be lightweight, fast, and secure by using GitHub Personal Access Tokens (PAT) instead of storing raw passwords.

### 📋 Prerequisites
Before starting, you need a **GitHub Personal Access Token (PAT)**. This acts as your password for the script to push changes:

1. Go to your GitHub Settings (click your profile icon in the top right).
2. Scroll down on the left sidebar and click Developer settings.
3. Select Tokens (classic) under "Personal access tokens".
4. Click Generate new token -> Generate new token (classic).
5. Note: Give it a name (e.g., "AutoCommit").
6. Important: Check the repo checkbox (this allows the script to access your repositories).
7. Scroll to the bottom and click Generate token.
8. Copy the token immediately! You won't be able to see it again.

### 🛠️ Installation & Setup

```bash
# Clone the repository
git clone https://github.com/x11kitty/autocommit.git

# Enter the directory
cd autocommit

# Grant execution permissions
sudo chmod +x setup.sh giti.sh

# Run the setup file and insert details
sudo ./setup.sh
```
### Now Your Setup is Complete Now You can do Autocommit by Running giti.sh Anytime You Want Till The Date You Select to Remote Access of Your Repo
```bash
sudo ./setup.sh
```

<div align="center">
  <img src="assets/2.png" width="300" style="border-radius: 15px;" alt="Random Anime Character" />
  <p><i>"System optimized. Stay comfy and keep coding."</i></p>
</div>

