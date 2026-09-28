# 📜 Linux & Systems Automation Scripts

A collection of Bash and Python scripts designed for Linux system administration, task automation, and maintenance. Developed as part of my ASIR studies and practical laboratory testing.

---

## 🛠️ Scripts Overview

### 1. 💾 `system-backup.sh` (Automated System Backup)
- **Description:** Bash script that compresses critical system directories (`/etc`, `/var/log`, custom lab folders) into a timestamped `.tar.gz` archive.
- **Features:**
  - Automated timestamp naming (`YYYY-MM-DD`).
  - Destination check and error handling.
  - Disk space status output.

### 2. 👤 `user-management.sh` (Batch User Provisioning)
- **Description:** Automation tool to onboard multiple system users from a CSV or list, setting up default permissions and home directories.

---

## 🚀 How to Run the Scripts

1. Clone the repository:
  bash
  git clone https://github.com/tu-usuario/asir-scripts-automation.git
  cd asir-scripts-automation

2. Grant execution permissions:
  bash
  chmod +x system-backup.sh

3. Run with root privileges:
  bash
  sudo ./system-backup.sh
