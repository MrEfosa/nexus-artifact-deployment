#!/bin/bash

set -e

echo "=== Nexus Installation Script Starting ==="

# Update system
echo "Updating system packages..."
sudo apt update -y

# Install Java
echo "Installing Java..."
sudo apt install -y openjdk-17-jdk wget

# Create nexus user if it doesn't exist
NEXUS_USER="nexus"

if id "$NEXUS_USER" &>/dev/null; then
    echo "User $NEXUS_USER already exists"
else
    echo "Creating nexus user..."
    sudo adduser --disabled-password --gecos "" $NEXUS_USER
fi

# Download Nexus
echo "Downloading Nexus Repository Manager..."
cd /opt
sudo wget -O /opt/nexus.tar.gz https://download.sonatype.com/nexus/3/nexus-unix-x86-64-3.78.0-14.tar.gz


echo "Extracting Nexus..."
sudo tar -xzf nexus.tar.gz

# Rename extracted folder to nexus
NEXUS_DIR=$(ls | grep nexus- | head -n 1)
sudo mv "$NEXUS_DIR" nexus

# Set ownership
echo "Setting permissions..."
sudo chown -R $NEXUS_USER:$NEXUS_USER /opt/nexus
sudo chown -R $NEXUS_USER:$NEXUS_USER /opt/sonatype-work

# Configure Nexus to run as nexus user
echo "Configuring Nexus runtime user..."
echo 'run_as_user="nexus"' | sudo tee /opt/nexus/bin/nexus.rc

# Start Nexus
echo "Starting Nexus..."
sudo -u $NEXUS_USER /opt/nexus/bin/nexus start

echo ""
echo "=== Nexus Installation Complete ==="
echo "Access Nexus at: http://YOUR_SERVER_IP:8081"
echo "Initial admin password location:"
echo "/opt/sonatype-work/nexus3/admin.password"
echo ""

