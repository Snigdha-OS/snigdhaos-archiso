# 🐧 Snigdha OS ArchISO  

**Snigdha OS ArchISO** is the official ArchISO configuration for building Snigdha OS, a highly customizable Linux distribution based on Arch Linux and featuring the **LTS Kernel** for unmatched stability. 🚀  

Designed to cater to both everyday users and penetration testers, Snigdha OS provides a seamless, minimal, and efficient Linux experience powered by robust tools and thoughtful configurations.  

## 🌟 Key Features  

### 🎯 **Reliable LTS Kernel**  
- Long-Term Support kernel ensures stability and compatibility across a wide range of hardware. Perfect for production environments and critical systems.  

### 🔍 **Penetration Testing Ready**  
- Includes **Blackbox**, a custom framework offering pre-configured tools for penetration testing and security auditing.  

### 🌎 **Intelligent Mirror Selection**  
- Automatically recommends the fastest regional mirrors for downloads during installation and updates, minimizing downtime.  

### 🧩 **Modular, Minimal Design**  
- A lightweight base system that empowers users to create their perfect environment without unnecessary software clutter.  

### 💡 **Customizable Root Filesystem**  
- Fully modifiable `airootfs` directory allows you to add scripts, configurations, and customizations directly to the live ISO.  

### 🔒 **Focus on Security**  
- Pre-configured security best practices, ensuring a safe and secure environment out of the box.  

## 📂 Repository Structure  

Here’s a detailed breakdown of the repository layout:  

```
snigdhaos-archiso/  
├── configs/  
│   ├── airootfs/         # Custom root filesystem  
│   │   ├── etc/          # System configurations (e.g., fstab, hostname)  
│   │   ├── usr/          # Custom binaries, scripts, and utilities  
│   │   └── home/         # Default user home directory settings  
│   ├── packages.x86_64   # List of packages included in the ISO  
│   ├── services/         # Custom systemd service configurations  
│   └── hooks/            # Custom hooks for build process enhancements  
├── scripts/  
│   ├── build.sh          # Main script to build the ISO  
│   ├── cleanup.sh        # Script to clean the build environment  
│   ├── post-build.sh     # Optional post-build automation script  
├── out/                  # Directory for the generated ISO file  
├── LICENSE               # License for the repository  
└── README.md             # Documentation and instructions  
```  

## 🚀 Getting Started  

Follow these steps to build and test your own Snigdha OS ISO image.  

### Prerequisites  

1. **Arch Linux environment** (or a compatible Arch-based distribution).  
2. Install required dependencies:  
   ```bash
   sudo pacman -S archiso git
   ```  
3. Ensure sufficient resources for the build:  
   - **20 GB free disk space**  
   - **2 GB RAM**  

### Steps to Build the ISO  

1. **Clone the Repository**:  
   ```bash
   git clone https://github.com/Snigdha-OS/snigdhaos-archiso.git  
   cd snigdhaos-archiso  
   ```  

2. **Customize the ISO** (optional):  
   - Modify `configs/airootfs/` for custom scripts, configurations, or default settings.  
   - Update `configs/packages.x86_64` to include or exclude specific packages.  

3. **Build the ISO**:  
   Execute the build script:  
   ```bash
   ./scripts/build.sh  
   ```  

4. **Locate the ISO**:  
   The built ISO will be stored in the `out/` directory. 🎉  

5. **Test the ISO**:  
   - Use virtualization tools like VirtualBox, QEMU, or VMware to test the ISO.  
   - Alternatively, create a bootable USB using tools like `dd` or `Rufus`.  

## 🛠️ Advanced Customization  

Snigdha OS ArchISO provides deep customization options:  

### 🔧 **Adding Custom Packages**  
Add package names to `configs/packages.x86_64` to include them in the ISO. For example:  
```  
vim  
htop  
docker  
```  

### ⚙️ **Enabling/Disabling Services**  
Add custom systemd service configurations to `configs/services/`.  

### 📜 **Adding Startup Scripts**  
Place executable scripts in `configs/airootfs/usr/bin/` to include them in the live environment.  

### 📁 **Predefined User Settings**  
Customize the default user environment by modifying files under `configs/airootfs/home/`.  

## 🧪 Testing the ISO  

### Using VirtualBox  
1. Open VirtualBox and create a new virtual machine.  
2. Select the ISO file as the boot medium.  
3. Start the VM and test the live environment or installer.  

### Using QEMU  
Run the ISO in QEMU for quick testing:  
```bash
qemu-system-x86_64 -cdrom out/snigdhaos.iso -boot d -m 2048  
```  

## 🤝 Contributing  

Contributions are always welcome! Whether you find a bug, have an idea for improvement, or want to add new features, feel free to contribute.  

### Steps to Contribute  

1. **Fork the Repository**: 🍴  
2. **Create a Branch**:  
   ```bash
   git checkout -b feature-name  
   ```  

3. **Make Changes**: Modify files, fix bugs, or add features.  
4. **Test Your Changes**: Build and test the ISO locally to ensure stability.  
5. **Submit a Pull Request**: 🎯  

Check the [CONTRIBUTING.md](CONTRIBUTING.md) file for more details.  

## 🌟 Credits  

### 👨‍💻 Core Team  

- **Eshan Roy | eshanized** - Lead Developer and Maintainer  
- **RiO | d3v1l0n** - Contributor , Developer and Maintainer

**Snigdha OS ArchISO** is developed and maintained by **[TONMOY INFRASTRUCTURE](https://tonmoyinfrastructure.github.io/)**.  

## 📜 License  

This project is licensed under the [MIT License](LICENSE).  

## 💬 Support  

Have questions or need support?  

- **Report Issues**: [Open an issue](https://github.com/Snigdha-OS/snigdhaos-archiso/issues) for bugs or feature requests.  
- **Join the Community**: Share your experiences and ideas with other users and contributors.  
- **Spread the Word**: Star the repository ⭐ and share it with the Linux community!  

Let’s build a stable, efficient, and powerful Linux experience together. 💻✨  