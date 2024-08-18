
This is a simple to-do list application. The app is built using JavaScript and is intended to help users manage their tasks effectively. This project is designed to be easily deployable and maintainable.

## Table of Contents

- [Project Structure](#project-structure)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Project Structure

The project follows a clean and organized structure to separate concerns and improve maintainability. Below is the structure of the project:

│   ├── index.html          # Main HTML file
│   ├── style.css           # CSS file
│   └── assets/             # Additional assets like images
│
├── src/                    # Source files (JavaScript)
│   └── app.js              # Main JavaScript file
│
├── scripts/                # Scripts for setup and installation
│   └── install.ps1         # PowerShell script for Node.js installation and setup
│
├── .gitignore              # Git ignore file
└── README.md               # Project documentation
`

## Installation

To set up this project on your local machine, follow the steps below:

### Prerequisites

- Ensure you have **Node.js v20.16.0** or a compatible version installed. You can verify the installed version using:

  ```bash
  node -v
  ```

### Steps

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/GrigoriPetrenko/js_remote_test_app.git
   cd js_remote_test_app
   ```

2. **Install Node.js and Dependencies**:

   If Node.js is not installed or if you want to ensure you have the correct version, run the installation script:

   ```powershell
   .\scripts\install.ps1
   ```

   This script will check for Node.js installation, install it if necessary, or update it to the correct version.

3. **Install Project Dependencies**:

   After ensuring Node.js is installed, install the required npm packages:

   ```bash
   npm install
   ```

## Usage

Once the setup is complete, you can start the application by opening the `index.html` file in your browser.

### Running the Application

- Simply open `public/index.html` in your preferred web browser to use the to-do list app.

## Contributing

Contributions are welcome! If you would like to contribute to this project, please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/YourFeature`).
3. Make your changes and commit them (`git commit -m 'Add new feature'`).
4. Push to the branch (`git push origin feature/YourFeature`).
5. Open a Pull Request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
