<#
.SYNOPSIS
    Exports a list of inactive AD users to CSV.
.DESCRIPTION
    This demo script checks Active Directory for users who have not logged in
    for the last 90 days. It exports the results to a CSV file.
#>

# Import AD module
Import-Module ActiveDirectory

# Define inactivity threshold
$DaysInactive = 90
$Time = (Get-Date).AddDays(-$DaysInactive)

# Get users and filter by LastLogonDate
$InactiveUsers = Get-ADUser -Filter {LastLogonDate -lt $Time -and Enabled -eq $true} -Properties LastLogonDate

# Export results
$InactiveUsers |
    Select-Object SamAccountName, Name, LastLogonDate |
    Export-Csv -Path "../Samples/Demo-Report-InactiveUsers.csv" -NoTypeInformation

Write-Host "Inactive users exported to Demo-Report-InactiveUsers.csv"
