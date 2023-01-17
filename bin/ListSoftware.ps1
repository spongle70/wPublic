function listAumids( $userAccount ) {

    if ($userAccount -eq "allusers")
    {
        # Find installed packages for all accounts. Must be run as an administrator in order to use this option.
        $installedapps = Get-AppxPackage -allusers
    }
    elseif ($userAccount)
    {
        # Find installed packages for the specified account. Must be run as an administrator in order to use this option.
        $installedapps = get-AppxPackage -user $userAccount
    }
    else
    {
        # Find installed packages for the current account.
        $installedapps = get-AppxPackage
    }

    $aumidList = @()
    foreach ($app in $installedapps)
    {
        foreach ($id in (Get-AppxPackageManifest $app).package.applications.application.id)
        {
            $aumidList += $app.packagefamilyname + "!" + $id
        }
    }

    return $aumidList
}

# Get a list of AUMIDs for the current account:
listAumids

# Get a list of AUMIDs for an account named “CustomerAccount”:
listAumids("CustomerAccount")

# Get a list of AUMIDs for all accounts on the device:
listAumids("allusers")

get-wmiobject Win32_Product | Format-Table IdentifyingNumber, Name, LocalPackage -AutoSize


Get-AppxPackage -allusers