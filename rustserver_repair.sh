#!/bin/bash

# Define your Rust LGSM server directory
RUST_SERVER_DIR="/home/yourlinuxuser/lgsm/rustserver"
# Define User
USER="yourlinuxuser"

# Step 1: Disable crontab
echo "Disabling crontab..."
crontab -r
if [ $? -ne 0 ]; then
    echo "Failed to disable crontab."
    exit 1
fi

# Step 2: Stop the Rust server
echo "Stopping the Rust server..."
"${RUST_SERVER_DIR}/rustserver" stop
if [ $? -ne 0 ]; then
    echo "Failed to stop the Rust server."
    exit 1
fi

# Step 3: Update the server
echo "Updating the Rust server..."
"${RUST_SERVER_DIR}/rustserver" update
if [ $? -ne 0 ]; then
    echo "Failed to update the Rust server."
    exit 1
fi

# Step 4: Run mods-update (oxide)
# Comment this step out below if you don't have oxide/umod installed!
echo "Running mu..."
"${RUST_SERVER_DIR}/rustserver" mu
if [ $? -ne 0 ]; then
    echo "Failed to run mu."
    exit 1
fi

# Step 5: Re-enable crontab
echo "Re-enabling crontab..."
crontab "${RUST_SERVER_DIR}/config/crontab/lgsm-${USER}"
if [ $? -ne 0 ]; then
    echo "Failed to re-enable crontab."
    exit 1
fi

# Step 6: Start the Rust server
echo "Starting the Rust server..."
"${RUST_SERVER_DIR}/rustserver" start
if [ $? -ne 0 ]; then
    echo "Failed to start the Rust server."
    exit 1
fi

echo "Server was repaired successfully and will now start."
exit 0
