# 🚀 GitHub Auto-Commit Bot
> A sleek bash-based utility to automate GitHub commits and maintain an active contribution graph.

---

## 🎨 Overview
`GitHub Auto-Commit Bot` simplifies the repository maintenance process. It handles authentication, environment setup, and bulk-committing with a single command, ensuring your workflow stays fluid and your profile stays green.

## 🔑 Prerequisites
To authenticate the script, you must generate a **GitHub Personal Access Token (PAT)**.

1.  **Navigate:** Settings ⮕ Developer settings ⮕ Personal access tokens ⮕ **Tokens (classic)**.
2.  **Generate:** Click `Generate new token (classic)`.
3.  **Scope:** Name it (e.g., `AutoCommit`) and select the **`repo`** checkbox.
4.  **Security:** Copy the token immediately; it will not be shown again.

---

## 🛠️ Installation
Run the following commands in your terminal to clone the repository and set permissions:

```bash
# Clone the repository
git clone [https://github.com/x11kitty/autocommit](https://github.com/x11kitty/autocommit)

# Enter the directory
cd autocommit

# Grant execution permissions
sudo chmod +x setup.sh giti.sh
