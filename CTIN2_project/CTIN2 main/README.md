# CTIN2 (Alpha 0.1)

**CTIN2** is a lightweight emulator that runs x86 Windows applications inside [Termux](https://f-droid.org/packages/com.termux/) using [Wine](https://www.winehq.org/) and [Box64](https://github.com/ptitSeb/box64).  
This is an experimental ALPHA version, under active development.

## 📦 Features
- Runs 32-bit and some 64-bit Windows apps on Android
- Based on Wine and Box64
- Terminal-based UI (dialog)
- No root required

## 📲 Installation

Paste this command in Termux:

```bash
curl -s -o ~/x https://raw.githubusercontent.com/CTIN2-project/CTIN2/main/ctin2-install.sh && bash ~/x
```

## 🔧 Requirements
- Android 10+
- Termux (with storage permission)
- At least 2GB RAM

## 📁 Project Structure
```
~/ctin2/
├── bin/         → Contains box64 binary
├── wine/        → Wine extracted environment
├── ctin2        → Main launcher script
├── ctin2-launcher.sh → Shortcut to launch from anywhere
```

## 👤 Author
CTIN2-project

## 🚧 Status
This is an Alpha version. Use at your own risk.

## 📷 Preview
Coming soon...
