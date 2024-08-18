# Required Node.js version
$requiredNodeVersion = "20.16.0"

# Get the current Node.js version
$currentVersion = node -v 2>$null
$currentVersion = $currentVersion.TrimStart("v")

# Check if Node.js is installed and the version matches the required version
if ($currentVersion -ne $requiredNodeVersion) {
    Write-Host "Current Node.js version: $currentVersion"
    Write-Host "Required Node.js version: $requiredNodeVersion"
    Write-Host "Updating Node.js..."

    # Download the Node.js installer
    $url = "https://nodejs.org/dist/v$requiredNodeVersion/node-v$requiredNodeVersion-x64.msi"
    $output = "node-v$requiredNodeVersion-x64.msi"
    Invoke-WebRequest -Uri $url -OutFile $output

    # Run the installer
    Start-Process msiexec.exe -ArgumentList "/i", $output, "/quiet", "/norestart" -Wait

    # Remove the installer file
    Remove-Item $output

    Write-Host "Node.js has been updated to version $requiredNodeVersion."
} else {
    Write-Host "Node.js is already at the required version ($requiredNodeVersion)."
}

# Run the application
node hello.js