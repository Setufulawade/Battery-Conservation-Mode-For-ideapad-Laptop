#!/bin/bash

BOLD_RED='\033[1;31m'
BOLD_GREEN='\033[1;32m'
BOLD='\033[1m'
RESET='\033[0m'

CONSERVATION_MODE_PATH="/sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode"

# Function to check if the conservation mode file exists
check_file_existence() {
    if [ ! -f "$CONSERVATION_MODE_PATH" ]; then
        echo "Conservation mode file not found at $CONSERVATION_MODE_PATH"
        exit 1
    fi
}

# Function to get the current conservation mode
get_current_mode() {
    cat "$CONSERVATION_MODE_PATH"
}

# Function to enable conservation mode
enable_conservation_mode() {
    echo 1 | sudo tee "$CONSERVATION_MODE_PATH" > /dev/null
    echo -e "Battery is now in ${BOLD_GREEN} Conservation ${RESET} mode."
}

# Function to disable conservation mode
disable_conservation_mode() {
    echo 0 | sudo tee "$CONSERVATION_MODE_PATH" > /dev/null
    echo -e "Battery is now in ${BOLD_RED} Charging ${RESET} mode."
}

# Function to prompt user for action
prompt_user() {
    echo "Do you want to enable, disable, or keep the current battery conservation mode?"
    echo " "
    echo "Enter 'e' to enable"
    echo "Enter 'd' to disable"
    echo "Enter 'k' to keep current mode"
    read -r user_input

    if [ "$user_input" == "e" ]; then
        enable_conservation_mode
    elif [ "$user_input" == "d" ]; then
        disable_conservation_mode
    elif [ "$user_input" == "k" ]; then
        echo "No changes made to the battery conservation mode."
    else
        echo "Invalid input. Please enter '1' to enable, '0' to disable, or 'k' to keep the current mode."
        exit 1
    fi
}

# Main script logic
check_file_existence

current_mode=$(get_current_mode)

if [ "$current_mode" -eq 1 ]; then
    echo -e "Battery is currently in ${BOLD_GREEN} Conservation ${RESET} mode."
else
    echo -e  "Battery is currently ${BOLD_RED} Charging ${RESET} mode."
fi

prompt_user

