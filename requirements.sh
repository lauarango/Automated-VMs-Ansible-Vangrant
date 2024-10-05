#!/bin/bash

# List of required packages
REQUIRED_PACKAGES=("wget" "curl" "git" "vagrant" "ansible")

# Function to check if a package is installed
is_installed() {
    dpkg -l | grep -qw "$1"
}

# Function to install a package
install_package() {
    if is_installed "$1"; then
        echo "$1 is already installed."
    else
        echo "Installing $1..."
        sudo apt-get install -y "$1"
    fi
}

# Update package lists
echo "Updating package lists..."
sudo apt-get update

# Install required packages
for package in "${REQUIRED_PACKAGES[@]}"; do
    install_package "$package"
done

# Final message
echo "All required packages are installed."
