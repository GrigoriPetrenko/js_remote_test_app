# Create new directories
New-Item -ItemType Directory -Path "public/assets" -Force
New-Item -ItemType Directory -Path "src" -Force
New-Item -ItemType Directory -Path "scripts" -Force

# Move files to appropriate directories
Move-Item -Path "index.html" -Destination "public/index.html" -Force
Move-Item -Path "style.css" -Destination "public/style.css" -Force
Move-Item -Path "app.js" -Destination "src/app.js" -Force
Move-Item -Path "install.ps1" -Destination "scripts/install.ps1" -Force

# Update or append README.md
$readmePath = "README.md"

if (Test-Path $readmePath) {
    # Read existing content
    $existingContent = Get-Content -Path $readmePath
    # Append new content
    $newContent = @"
    
## Updated Project Structure
"@
    Add-Content -Path $readmePath -Value $newContent
} else {
    # Create new README.md if it does not exist
    $readmeContent = @"
# js_remote_test_app
This is a simple to-do list application.

## Project Structure
"@
    Set-Content -Path $readmePath -Value $readmeContent
}

# Add .gitignore file
$gitignoreContent = @"
node_modules/
dist/
.DS_Store
"@
Set-Content -Path ".gitignore" -Value $gitignoreContent

Write-Output "Project structure reorganized successfully!"
