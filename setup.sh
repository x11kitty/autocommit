#!/bin/bash

# Clear screen for a clean start
clear
echo "==========================================="
echo "   🚀 GITHUB AUTO-COMMIT SETUP WIZARD    "
echo "==========================================="
echo ""

# 1. Ask for User Details
read -p "🔹 Enter GitHub Username: " gh_user
read -p "🔹 Enter GitHub Email: " gh_email
read -sp "🔹 Enter Personal Access Token (PAT): " gh_token
echo -e "\n"
read -p "🔹 Enter Repo Name (e.g., YourGithubRepoName): " gh_repo
read -p "🔹 Enter Local Path to Repo (e.g., /home/user/YourGithubRepoName): " repo_path

# 2. Configure Global Git Identity
echo -e "\n[+] Configuring Git identity..."
git config --global user.name "$gh_user"
git config --global user.email "$gh_email"
git config --global credential.helper store

# 3. Navigate and Verify Path
if [ ! -d "$repo_path" ]; then
    echo "[!] Path not found. Creating directory and cloning..."
    mkdir -p "$repo_path"
    cd "$repo_path/.."
    git clone "https://$gh_user:$gh_token@github.com/$gh_user/$gh_repo.git"
    cd "$gh_repo"
else
    cd "$repo_path"
    echo "[+] Folder exists. Linking token to remote..."
    git remote set-url origin "https://$gh_user:$gh_token@github.com/$gh_user/$gh_repo.git"
fi

# 4. Create the Auto-Commit Script
cat <<EOF > autocommit.sh
#!/bin/bash
# Auto-generated script for $gh_repo
cd "$repo_path"
echo "Check: \$(date)" >> README.md
git add README.md
git commit -m "Auto-update: \$(date +'%Y-%m-%d %H:%M')"
git push origin main
EOF

chmod +x autocommit.sh

# 5. Add to .gitignore for safety
if ! grep -q "autocommit.sh" .gitignore 2>/dev/null; then
    echo "autocommit.sh" >> .gitignore
    echo "[+] Added autocommit.sh to .gitignore"
fi

echo "==========================================="
echo "✅ SETUP COMPLETE!"
echo "Your repo Remote Access is now in Your Directory "
echo "you can by autocommit any time by run giti.sh"
echo "==========================================="

# Final Test?
read -p "Do you want to run a test commit right now? (y/n): " test_run
if [[ "$test_run" == "y" ]]; then
    ./autocommit.sh
fi
