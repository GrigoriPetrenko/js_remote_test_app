#!/bin/bash

# Create new directories
mkdir -p public/assets
mkdir -p src
mkdir -p scripts

# Move files to appropriate directories
mv index.html public/
mv style.css public/
mv app.js src/
mv install.ps1 scripts/

# Optional: Create or update README.md
echo "# js_remote_test_app" > README.md
echo "This is a simple to-do list application." >> README.md
echo "" >> README.md
echo "## Project Structure" >> README.md
echo "```" >> README.md
echo "js_remote_test_app/" >> README.md
echo "│" >> README.md
echo "├── public/                 # Static assets that are served directly (HTML, CSS, images)" >> README.md
echo "│   ├── index.html          # Main HTML file" >> README.md
echo "│   ├── style.css           # CSS file" >> README.md
echo "│   └── assets/             # Additional assets like images" >> README.md
echo "│" >> README.md
echo "├── src/                    # Source files (JavaScript)" >> README.md
echo "│   └── app.js              # Main JavaScript file" >> README.md
echo "│" >> README.md
echo "├── scripts/                # Scripts for setup and installation" >> README.md
echo "│   └── install.ps1         # PowerShell script for Node.js installation" >> README.md
echo "│" >> README.md
echo "├── .gitignore              # Git ignore file" >> README.md
echo "└── README.md               # Project documentation" >> README.md
echo "```" >> README.md

# Add .gitignore file
echo "node_modules/" > .gitignore
echo "dist/" >> .gitignore
echo ".DS_Store" >> .gitignore

echo "Project structure reorganized successfully!"
