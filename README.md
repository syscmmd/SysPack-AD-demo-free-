# SysPack AD – Demo (Free)

This repository provides a **free demo version** of the **SysPack Active Directory Automation Pack**.  
With these sample scripts, sysadmins can automate common AD tasks and save hours of repetitive work.

⚡ If you want the **full automation pack with 20+ production-ready scripts**, check out our premium resources on **Gumroad**.

---

## 📂 Included Demo Scripts
- **Get-ADInactiveUsers.ps1** → Export a list of inactive users with last logon timestamp.
- **Get-ADGroupMembership.ps1** → Export AD groups and their members to CSV.
- **Reset-ADUserPassword.ps1** → Demo script to reset a user password (with random generator).

---

## 🚀 Usage
1. Import the Active Directory module:
   ```powershell
   Import-Module ActiveDirectory
Run any of the demo scripts:

.\Scripts\Get-ADInactiveUsers.ps1


Reports will be generated in CSV format inside the Samples/ folder.

📊 Demo Reports

We included sample CSV reports so you can preview what the scripts generate:

Demo-Report-InactiveUsers.csv

Demo-Report-GroupMembership.csv

📌 Next Steps

This is just the beginning!
🔑 The premium SysPack AD contains 20+ automation scripts for:

Bulk user management

Group cleanup

OU reporting

Security hardening

Password policy enforcement

👉 Get it on Gumroad
 (full link here).

⚠️ Disclaimer

These demo scripts are provided as-is and should be tested in a lab environment before using in production.
