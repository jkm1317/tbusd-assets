# Deploy TBUSD Assets to GitHub

## 📋 Repository is Ready!

Your logo repository is committed and ready to push to GitHub.

**Location:** `/home/josh/Dropbox/Businesses/StableCoin/stablecoin/website/tbusd-assets/`

---

## 🚀 Steps to Deploy

### **Step 1: Create GitHub Repository**

1. Go to: https://github.com/new
2. Repository name: `tbusd-assets` (or any name you prefer)
3. Description: "Public assets for TBillUSD stablecoin"
4. Visibility: **PUBLIC** (required for raw.githubusercontent.com hosting)
5. ❌ **DO NOT** initialize with README (we already have one)
6. Click **"Create repository"**

### **Step 2: Push Your Code**

GitHub will show you commands after creating the repo. Use these:

```bash
cd /home/josh/Dropbox/Businesses/StableCoin/stablecoin/website/tbusd-assets

# Add GitHub as remote (replace YOUR_USERNAME with your GitHub username)
git remote add origin https://github.com/YOUR_USERNAME/tbusd-assets.git

# Rename branch to main (if needed)
git branch -M main

# Push to GitHub
git push -u origin main
```

**If you have 2FA enabled**, you'll need a Personal Access Token instead of password:
1. Go to: https://github.com/settings/tokens
2. Generate new token (classic)
3. Select scopes: `repo` (all)
4. Copy token and use it as password when pushing

---

## 🌐 Your Public URLs (After Pushing)

Replace `YOUR_USERNAME` with your GitHub username:

### **256x256 Logo (Standard)**
```
https://raw.githubusercontent.com/YOUR_USERNAME/tbusd-assets/main/logos/tbusd-logo-256.png
```

### **512x512 Logo (High-Res)**
```
https://raw.githubusercontent.com/YOUR_USERNAME/tbusd-assets/main/logos/tbusd-logo-512.png
```

### **Original Logo (1.3 MB)**
```
https://raw.githubusercontent.com/YOUR_USERNAME/tbusd-assets/main/logos/tbusd-logo-original.png
```

---

## 📱 Update BaseScan

After pushing to GitHub:

### **Option A: Direct Upload (Easiest)**
1. Go to: https://sepolia.basescan.org/address/0xA75daf12e8206CcDF8e3f76b1899F8Dd435216Ac
2. Click "More Options" → "Update Token Info"
3. Connect wallet `0x0e27527AcC7bB45a23EECc9681781A5FACF89cC9`
4. Upload `logos/tbusd-logo-256.png` directly

### **Option B: Use GitHub URL**
1. Same steps as Option A
2. Instead of uploading, paste your raw.githubusercontent.com URL

**Either way, wallets will sync from BaseScan within 24-48 hours!**

---

## ✅ What's Included

```
tbusd-assets/
├── logos/
│   ├── tbusd-logo-256.png      (25 KB - Standard token logo)
│   ├── tbusd-logo-512.png      (76 KB - High-res variant)
│   └── tbusd-logo-original.png (1.3 MB - Full resolution)
├── README.md                   (Usage instructions)
└── .gitignore
```

---

## 🔄 Future Updates

To update logos in the future:

```bash
cd /home/josh/Dropbox/Businesses/StableCoin/stablecoin/website/tbusd-assets

# Make changes to logos/

git add logos/
git commit -m "Update TBUSD logos"
git push
```

The raw.githubusercontent.com URLs will update automatically (may take 5-10 minutes to propagate).

---

## 🎯 Next Steps

1. ✅ Repository created and committed (DONE)
2. ⏳ Create GitHub repo (YOU DO THIS)
3. ⏳ Push to GitHub (YOU DO THIS)
4. ⏳ Update BaseScan with logo URL or direct upload (YOU DO THIS)
5. ⏳ Wait 24-48 hours for wallet sync

---

**Questions?** Just ask!
