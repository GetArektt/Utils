# NTP Time Synchronization Checker

Dual-booting from Windows to Linux can be a powerful combination, but the frustration of time synchronization issues often ruins the experience. This script is a simple solution to ensure your system's time is correctly synchronized with an NTP server, making your dual-booting experience smoother.

## Overview

This script is designed to help you verify if your system's time is accurately synchronized with the nearest NTP server. Accurate time synchronization is crucial for various applications and services, such as log timestamp accuracy, scheduled tasks, and more.

## How It Works

The script performs the following steps:

1. It retrieves the current time from a specified NTP server.
2. It compares the obtained time with your system's local time.
3. If the time difference is within an acceptable range, it confirms that your system's time is correctly synchronized. 

## Usage
1. Clone this repository to your local system.
`git clone https://github.com/GetArektt/Utils.git`

2. Navigate to the project directory.
`cd windows_linux_time_synchronizer`

3. Add script to crontab, so it can run automatically after reboot
`$ crontab -e`
`@reboot sh /path/to/windows_linux_time_synchronizer/time.sh`

In order for this to work, we need to ensure that the script is executable:
`$ chmod +x /path/to/windows_linux_time_synchronizer/time.sh
