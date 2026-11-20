# Run in PowerShell from inside this folder. Requires git and GitHub CLI (gh) signed in.
git init
git add .
git commit -m "Karigar Passport: idea, research data and deck (Tech4Bharat 2.2)"
git branch -M main
gh repo create karigar-passport --public --source . --remote origin --push
gh repo view --web
