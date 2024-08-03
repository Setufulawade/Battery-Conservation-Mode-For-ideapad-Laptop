# Battery-Conservation-Mode-For-ideapad-Laptop
this script lets you switch between conservation mode and charging mode on linux for lenovo ideapad gaming 3

#HOW TO USE
1. **Download the Script:**
   Download conservation.sh to your desired location.
2. **Get the Current Location**
   Open a terminal and run the following command to get the path of your current location:
   ```sh
   pwd
4. **Create a Symbolic Link**
   Create a system link to make the script easily accessible:
   ```sh
   sudo ln -s /path/to/conservation.sh /usr/local/bin/battery-conservation
6. **Run the Command**
    You can now switch between modes by running the following command in your terminal:
   ```sh
   battery-conservation
