#!/bin/bash

# Quick GitHub Setup for TBUSD Assets
# Run this after creating the GitHub repo

set -e

echo "============================================================================"
echo "🚀 QUICK GITHUB SETUP"
echo "============================================================================"
echo ""
echo "STEP 1: Create GitHub Repo (Do this first!)"
echo "-------------------------------------------"
echo "1. Open: https://github.com/new"
echo "2. Repository name: tbusd-assets"
echo "3. Description: Public assets for TBillUSD stablecoin"
echo "4. Visibility: PUBLIC"
echo "5. DON'T initialize with README"
echo "6. Click 'Create repository'"
echo ""
read -p "Press ENTER after creating the repo..."
echo ""
echo "STEP 2: Enter Your GitHub Username"
echo "-----------------------------------"
read -p "GitHub username: " GITHUB_USER

if [ -z "$GITHUB_USER" ]; then
    echo "❌ Username cannot be empty"
    exit 1
fi

echo ""
echo "STEP 3: Pushing to GitHub..."
echo "----------------------------"

cd /home/josh/Dropbox/Businesses/StableCoin/stablecoin/website/tbusd-assets

# Add remote
git remote add origin "https://github.com/$GITHUB_USER/tbusd-assets.git" 2>/dev/null || \
    git remote set-url origin "https://github.com/$GITHUB_USER/tbusd-assets.git"

# Rename branch to main
git branch -M main

# Push
echo "Pushing to GitHub..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "============================================================================"
    echo "✅ SUCCESS! Your logo is now hosted on GitHub!"
    echo "============================================================================"
    echo ""
    echo "📍 YOUR PUBLIC LOGO URLS:"
    echo ""
    echo "256x256 (Standard):"
    echo "https://raw.githubusercontent.com/$GITHUB_USER/tbusd-assets/main/logos/tbusd-logo-256.png"
    echo ""
    echo "512x512 (High-Res):"
    echo "https://raw.githubusercontent.com/$GITHUB_USER/tbusd-assets/main/logos/tbusd-logo-512.png"
    echo ""
    echo "Original (Full Res):"
    echo "https://raw.githubusercontent.com/$GITHUB_USER/tbusd-assets/main/logos/tbusd-logo-original.png"
    echo ""
    echo "============================================================================"
    echo "📝 NEXT STEP: Update BaseScan"
    echo "============================================================================"
    echo ""
    echo "1. Go to: https://sepolia.basescan.org/address/0xA75daf12e8206CcDF8e3f76b1899F8Dd435216Ac"
    echo "2. Click 'More Options' → 'Update Token Info'"
    echo "3. Connect wallet: 0x0e27527AcC7bB45a23EECc9681781A5FACF89cC9"
    echo "4. Paste the 256x256 URL above (or upload file directly)"
    echo "5. Fill in:"
    echo "   - Name: TBillUSD"
    echo "   - Symbol: TBUSD"
    echo "   - Description: Treasury Bill-backed stablecoin with cross-chain recovery"
    echo "   - Website: https://tbillusd.com"
    echo ""
    echo "Wait 24-48 hours for wallets to sync!"
    echo "============================================================================"
else
    echo ""
    echo "❌ Push failed. Check your credentials."
    echo ""
    echo "If you have 2FA enabled:"
    echo "1. Go to: https://github.com/settings/tokens"
    echo "2. Generate new token (classic)"
    echo "3. Select scope: repo (all)"
    echo "4. Use token as password when prompted"
fi
