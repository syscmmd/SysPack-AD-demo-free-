<#
.SYNOPSIS
    Exports AD groups and their members.
.DESCRIPTION
    This demo script exports all groups in AD with their members and outputs
    the results to a CSV file.
#>

Import-Module ActiveDirectory

$Groups = Get-ADGroup -Filter * 

$Result = foreach ($Group in $Groups) {
    $Members = Get-ADGroupMember -Identity $Group -Recursive | Select-Object -ExpandProperty SamAccountName
    foreach ($Member in $Members) {
        [PSCustomObject]@{
            GroupName = $Group.Name
            Member    = $Member
        }
    }
}

$Result | Export-Csv -Path "../Samples/Demo-Report-GroupMembership.csv" -NoTypeInformation

Write-Host "Group membership exported to Demo-Report-GroupMembership.csv"
