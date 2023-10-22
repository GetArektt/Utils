Add script to crontab, so it can run automatically after reboot

`$ crontab -e`

`@reboot sh /path/to/windows_linux_time_synchronizer/time.sh`

In order for this to work, we need to ensure that the script is executable:
`$ chmod +x /path/to/windows_linux_time_synchronizer/time.sh