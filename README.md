# js_remote_test_app


## How to Run

### Prerequisites

- Windows 11
- [Git](https://git-scm.com/downloads) installed on your machine
- Administrator privileges for installing software

### Steps to Run the Application

1. **Clone the Repository:**

   Open a terminal and run the following command:

   ```bash
   git clone https://github.com/GrigoriPetrenko/js_remote_test_app.git
   ```

2. **Navigate to the Project Directory:**

   ```bash
   cd js_remote_test_app
   ```

3. **Run the PowerShell Installation Script:**

   This script will:
   - Check if Node.js is installed and whether it matches the required version (`20.16.0`).
   - Download and install the required version of Node.js if it's not already installed.
   - Run the `hello.js` application.

   **To run the script:**

   - Open **PowerShell** as Administrator.
   - Navigate to the project directory.
   - Run the following command:

     ```powershell
     ./install.ps1
     ```

4. **Output:**

   If everything is set up correctly, you should see the output:

   ```text
   Hello, World!
   ```

### Troubleshooting

#### Script Execution Policy

If you encounter an error related to script execution policies when running `install.ps1`, follow these steps:

1. Open PowerShell as Administrator.
2. Temporarily allow script execution by running:

   ```powershell
   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
   ```

3. Run the installation script:

   ```powershell
   ./install.ps1
   ```

4. If you prefer to allow script execution permanently, use:

   ```powershell
   Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
   ```

After running the script, the required version of Node.js will be installed, and the application will execute.
