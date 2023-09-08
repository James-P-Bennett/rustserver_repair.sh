# rustserver_repair.sh
Automatically repairs and updates troublesome LGSM Rust servers

This script automates the process of repairing and updating your Rust LGSM server. It performs the following tasks:

1. Disables the crontab.
2. Stops the Rust server.
3. Updates the Rust server.
4. Runs mods-update (umod update).
5. Re-enables the crontab.
6. Starts the Rust server.

## IMPORTANT!

**You must define USER and RUST_SERVER_DIR**
```
# Define your Rust LGSM server directory
RUST_SERVER_DIR="/home/yourusername/lgsm/rustserver"
# Define User
USER="yourusername"
```

## Usage
Follow these steps to use the script:
1. Login/SSH into server as the rust user
2. Run ```./rustserver_repair.sh```

## Install

Follow these steps to install the script:

1. **Download the Script**: Download the script `rustserver_repair.sh` from this repository.

2. **Navigate to Your Server Directory**: Open a terminal and navigate to the directory where your Rust LGSM server is installed. You can use the `cd` command to change directories. Replace `yourusername` with your actual username.

    ```
    cd /home/yourusername/lgsm/rustserver
    ```

3. **Make the Script Executable**: Make the script executable using the `chmod` command:

    ```bash
    chmod +x rustserver_repair.sh
    ```

4. **Run the Script**: Execute the script to perform the repair and wipe tasks:

    ```bash
    ./rustserver_repair.sh
    ```


5. **Completion**: Once the script completes successfully, your Rust server should be repaired, updated, and starting.

## Notes

- Replace `yourusername` with your actual username in the commands as needed.

- Ensure that the script file `rustserver_repair.sh` is located in the correct directory where your Rust LGSM server files are installed.

- This script is designed for modded Rust servers running the Umod/Oxide framework.

- Use this script at your own risk and make sure to take backups of your server data before running it.

Please report any issues or provide feedback on this script.
