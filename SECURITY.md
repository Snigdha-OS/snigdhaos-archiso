# Security Policy 🔐

At **Snigdha OS ArchISO**, we take security seriously and strive to maintain a secure, trustworthy project for all users and contributors. This document outlines our approach to security and how to report security vulnerabilities responsibly.

## Supported Versions 📅

We follow a rolling release model for **Snigdha OS ArchISO**, which means that we continuously update our project to include the latest security patches and features. For any version-specific security issues, we recommend using the most recent release of **Snigdha OS ArchISO** to ensure that you have the latest fixes and improvements.

## Security Practices 🔒

We follow standard best practices to ensure the security of the **Snigdha OS ArchISO** project:

- **Up-to-date Dependencies**: We strive to keep all dependencies up to date to mitigate any known vulnerabilities. Regular updates and patching are key to ensuring the project's security.
  
- **Secure Code Contributions**: All contributors are encouraged to follow secure coding practices, such as avoiding hardcoded credentials, sanitizing user inputs, and following the principle of least privilege.

- **Use of Secure Boot**: We recommend users to enable **Secure Boot** in their UEFI firmware settings for extra protection against boot-level attacks.

- **Regular Audits**: We conduct periodic audits of the project's source code and build processes to identify potential vulnerabilities and address them promptly.

## Reporting Security Vulnerabilities 📝

If you discover a security vulnerability in **Snigdha OS ArchISO**, please follow the steps below to report it:

1. **Do not disclose the vulnerability publicly**: To ensure the security of all users, we request that you do not disclose any security vulnerabilities publicly until they have been resolved.

2. **Open a private issue**: We encourage you to open a private issue in this repository by using the "Security" label. This will allow us to keep the conversation confidential.

3. **Provide details**: When reporting a security vulnerability, please include the following information:
   - A description of the vulnerability and the potential impact
   - Steps to reproduce the issue, if applicable
   - Any suggested fixes or mitigation strategies

4. **Contact us via email**: If you need a more secure method of communication, feel free to email us at **[insert email address]** with your findings. We will treat your report with the highest priority.

Once we receive your report, we will verify the issue and work on releasing a fix or mitigation as soon as possible. We will also acknowledge your contribution and credit you for your discovery.

## Security Updates 📦

After a security vulnerability is reported and fixed, we will:

- **Release a new version**: If necessary, we will release an updated ISO or package containing the fix.
- **Post an update**: We will post an update in the repository (and any relevant communication channels) detailing the fix and its impact on users.
- **Notify affected users**: If the vulnerability is critical, we will notify affected users directly (via GitHub or other communication channels).

## Best Security Practices for Users 🛡️

As a user of **Snigdha OS ArchISO**, you should follow these best practices to help ensure your system remains secure:

1. **Keep your system updated**: Run `pacman -Syu` regularly to install the latest security patches for the operating system and applications.
  
2. **Use strong passwords**: Ensure that user passwords are complex and unique to each system.

3. **Enable a firewall**: Use a firewall to protect your system from unauthorized access.

4. **Disable unnecessary services**: Reduce the attack surface by disabling services and daemons that are not required.

5. **Review configurations carefully**: Review any configurations, especially in `/etc/`, for security issues and ensure they are hardened.

## Security Related Issues 🚨

If you encounter a security issue or believe that your account or device might be compromised, we recommend you take the following actions:

- **Immediately disconnect from the network**: If you suspect your device is compromised, disconnect it from the network to prevent further damage.
- **Run a malware scan**: Use appropriate tools to check for malicious files or processes on your system.
- **Contact us**: Let us know immediately if you suspect an issue with the repository itself or any of our release artifacts.

## Acknowledgements 🙏

We would like to thank all of our contributors and users for their vigilance in keeping **Snigdha OS ArchISO** secure. Special thanks to those who have reported security issues responsibly and helped us maintain the integrity of the project.

### Thank you for helping us make **Snigdha OS ArchISO** more secure! 🔐
