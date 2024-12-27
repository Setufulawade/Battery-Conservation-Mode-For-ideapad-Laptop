# Battery Conservation Mode Manager

![Bash](https://img.shields.io/badge/Bash-Script-blue.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)

## 📖 Overview
This Bash script allows users to manage the battery conservation mode on Lenovo IdeaPad laptops. Conservation mode helps preserve battery health by limiting the maximum charge to 60% when enabled.

---

## 🛠️ Features
- **Check Current Mode**: Detects if conservation mode is enabled or disabled.
- **Enable Conservation Mode**: Limits battery charge to 60%.
- **Disable Conservation Mode**: Allows the battery to charge fully.
- **Interactive User Prompt**: Offers easy options to enable, disable, or keep the current mode.

---

## 🚀 Usage
1. **Clone or Download the Script**:
   ```bash
   git clone https://github.com/your-username/battery-conservation-manager.git
   
2. **Download the Script:**
   Download conservation.sh to your desired location.
3. **Get the Current Location**
   Open a terminal and run the following command to get the path of your current location:
   ```sh
   pwd
4. **Create a Symbolic Link**
   Create a system link to make the script easily accessible:
   ```sh
   sudo ln -s /path/to/conservation.sh /usr/local/bin/battery-conservation
5. **Run the Command**
    You can now switch between modes by running the following command in your terminal:
   ```sh
   battery-conservation
