<#
.SYNOPSIS
    Demo script to reset a user's AD password.
.DESCRIPTION
    This script generates a random temporary password and resets the specified
    user’s AD account with it.
#>

param (
    [Parameter(Mandatory=$true)]
    [string]$Username
)

Import-Module ActiveDirectory

# Generate random temporary password
$Password = [System.Web.Security.Membership]::GeneratePassword(12,2)

# Reset user password
Set-ADAccountPassword -Identity $Username -NewPassword (ConvertTo-SecureString $Password -AsPlainText -Force) -Reset
Set-ADUser -Identity $Username -ChangePasswordAtLogon $true

Write-Host "Password for $Username has been reset."
Write-Host "Temporary password: $Password"
