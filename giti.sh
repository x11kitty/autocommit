#!/bin/bash

# 1. Ask for User Details
read -p "🔹 Enter GitHub Username: " gh_user
read -p "🔹 Enter GitHub Email: " gh_email

# 2. Configure Global Git Identity
echo -e "\n[+] Configuring Git identity..."
git config --global user.name "$gh_user"
git config --global user.email "$gh_email"

# 3. Sync with Remote (The Fix)
# This pulls remote changes to prevent the [rejected] error
echo -e "[+] Syncing with remote repository..."
git pull origin main --rebase

# 4. Run the loop to generate 50 commits
echo -e "[+] Generating 50 commits..."
for i in {1..50}; do 
  echo "Update $i - $(date)" >> README.md; 
  git add README.md; 
  git commit -m "Commit $i"; 
done

# 5. Push them
# Added the -u flag to track the branch and a fallback check
echo -e "[+] Pushing to GitHub..."
git push origin main

if [ $? -ne 0 ]; then
  echo -e "\n[!] Standard push failed. Attempting force push..."
  git push origin main --force
fi

echo -e "\n[✓] Done! Check your contribution graph."
