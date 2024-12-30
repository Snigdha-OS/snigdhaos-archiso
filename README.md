
# Snigdha OS Default ISO

<div align="center">
    <img src="https://github.com/Snigdha-OS/snigdhaos-assets/blob/master/2024/png/Snigdha%20OS%20Favicon.png" alt="Snigdha OS Logo">
</div>

Welcome to the official repository for the **Snigdha OS Default ISO**! This repository hosts the configurations and scripts used to build the default ISO image of Snigdha OS, a lightweight and highly customizable Linux distribution built on Arch Linux with the Linux Zen Kernel.

## About Snigdha OS

Snigdha OS emphasizes:
- **Minimalism**: A lightweight design tailored for performance.
- **Customizability**: A highly flexible environment that adapts to user preferences.
- **User-centric design**: An intuitive experience for both general users and professionals.

The default ISO provides a robust starting point for exploring the Snigdha OS ecosystem.

## Features

- **Zen Kernel**: Optimized for low-latency performance.
- **Arch-based Minimalism**: Retains the power of Arch Linux while reducing bloat.
- **Pre-configured Environment**: Comes with essential tools to get started.
- **Custom Scripts**: Automates setup and configuration for ease of use.

## Repository Structure

```plaintext
├── configs/          # Configuration files for ISO creation
├── scripts/          # Custom scripts used in the build process
├── assets/           # Logos and branding materials
├── docs/             # Documentation for contributors and users
└── README.md         # This file
```

## Getting Started

### Prerequisites
To build the ISO, ensure you have the following installed:
- `archiso`: Arch Linux's official tool for creating ISOs.
- Basic Linux command-line knowledge.

### Building the ISO
1. Clone the repository:
   ```bash
   git clone https://github.com/Snigdha-OS/snigdhaos-default-iso.git
   cd snigdhaos-default-iso
   ```
2. Run the build script:
   ```bash
   ./scripts/build.sh
   ```
3. Your ISO will be available in the `output/` directory.

### Installation
Once you have the ISO:
- Boot into the live environment.
- Follow the [installation guide](https://snigdha-os.github.io/docs/installation).

## Contributing

We welcome contributions from the community! To contribute:
1. Fork this repository.
2. Create a branch for your feature or bugfix.
3. Submit a pull request with detailed information about your changes.

For more details, refer to the [CONTRIBUTING.md](docs/CONTRIBUTING.md) file.

## License

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.

## Stay Connected

- 🌐 Website: [snigdha-os.github.io](https://snigdha-os.github.io)
- 🐦 Twitter: [@SnigdhaOS](https://twitter.com/SnigdhaOS)
- 💬 Discord: [Snigdha OS Community](https://discord.gg/snigdhaos)

🚀 **Snigdha OS** - Redefining lightweight Linux distributions!
