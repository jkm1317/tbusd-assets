#!/usr/bin/env python3
"""
Add GitHub Personal Access Token to Keyring
"""

import keyring
import getpass

print("=" * 80)
print("🔐 ADD GITHUB TOKEN TO KEYRING")
print("=" * 80)
print()
print("Paste your GitHub Personal Access Token (it will be hidden):")
print()

# Get token from user (hidden input)
token = getpass.getpass("GitHub Token: ")

if not token:
    print("❌ Token cannot be empty")
    exit(1)

if not token.startswith('ghp_') and not token.startswith('github_pat_'):
    print("⚠️  Warning: Token doesn't look like a GitHub token")
    print("   Expected format: ghp_... or github_pat_...")
    confirm = input("Continue anyway? (y/n): ")
    if confirm.lower() != 'y':
        print("Cancelled")
        exit(0)

# Store in keyring
try:
    keyring.set_password('github', 'token', token)
    print()
    print("=" * 80)
    print("✅ SUCCESS! GitHub token saved to keyring")
    print("=" * 80)
    print()
    print("Service: github")
    print("Username: token")
    print(f"Token: {token[:10]}...{token[-4:]}")
    print()
    print("You can now use this token for GitHub operations!")
    print()
except Exception as e:
    print(f"❌ Error saving token: {e}")
    exit(1)
