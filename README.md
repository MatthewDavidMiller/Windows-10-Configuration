# Scripts
This repository contains scripts I have created.

Copyright (c) Matthew David Miller. All rights reserved.

[Licensed under the MIT License.](LICENSE)

## Windows Scripts:

### Large Scripts:

[configure_windows_10.ps1](windows_scripts/configure_windows_10.ps1) - Powershell script to configure Windows 10 settings I use such as disabling telemetry, disabling cortana, and configuring the firewall.

[configure_wsl.sh](windows_scripts/configure_wsl.sh) - Bash script to configure WSL.

[windows_server_configuration.ps1](windows_scripts/windows_server_configuration.ps1) - Powershell script to configure Windows Server.

### Small Scripts:

[7z_batch_compress.ps1](windows_scripts/7z_batch_compress.ps1) - Powershell script to batch compress files and folders to a 7z archive.

[batch_process_hard_links.bat](windows_scripts/batch_process_hard_links.bat) - Simple script to make hard links of all files from where the script is run from.

[printer_restart.bat](windows_scripts/printer_restart.bat) - Script to restart print spooler and clear temporary files from the spooler.

[robocopy_backup.bat](windows_scripts/robocopy_backup.bat) - Script to copy a directory to another location.

[tar_batch_process_files.bat](windows_scripts/tar_batch_process_files.bat) - Places all folders in a tar archive from where the script is run from.

[view_hard_links.bat](windows_scripts/view_hard_links.bat) - Simple script to see all the hard links of files from where the script is run from.

[wsl_restart.bat](windows_scripts/wsl_restart.bat) - Simple script to restart Windows Subsystem for Linux.

## Linux Scripts:

### Large Scripts:

[arch_linux_install.sh](linux_scripts/arch_linux_install.sh) - Bash script to automate the install of Arch Linux.

[arch_linux_configure.sh](linux_scripts/arch_linux_configure.sh) - Bash script to automate the configuration of Arch Linux.

[debian_server_install.sh](linux_scripts/debian_server_install.sh) - Bash script to automate the install of debian servers.

[nas_server_configure.sh](linux_scripts/nas_server_configure.sh) - Bash script to automate the configuration of a nas.

[omada_controller_configure.sh](linux_scripts/omada_controller_configure.sh) - A bash script to configure TP Link Omada Controller.

[openwrt_configure.sh](linux_scripts/openwrt_configure.sh) - Bash script to automate the configuration of a router.

[pihole_server_configure.sh](linux_scripts/pihole_server_configure.sh) - Bash script to automate the configuration of a pihole server.

[proxmox_configure.sh](linux_scripts/proxmox_configure.sh) - Bash script to automate the configuration of a proxmox setup.

[vpn_server_configure.sh](linux_scripts/vpn_server_configure.sh) - Bash script to automate the configuration of a vpn server.

### Small Scripts:

[apt_package_updates.sh](linux_scripts/apt_package_updates.sh) - A bash script to update the packages on Debian based distros.

[backup_configs.sh](linux_scripts/backup_configs.sh) - A bash script to tar the /etc and /home directory.  Used to automate backing up config files.

[delete_logs.py](linux_scripts/delete_logs.py) - Simple python script to delete some logs files after going over a certain size.

[email_ip_address.py](linux_scripts/email_ip_address.py) - A simple python script to send an email with the ip address of the device that ran the script.

[email_on_vpn_connections.py](linux_scripts/email_on_vpn_connections.py) - Python script to send out an email.

[email_on_vpn_connections.sh](linux_scripts/email_on_vpn_connections.sh) - A bash script that checks the openvpn log file for a certain keyword and sends out an email.

[network_reconnect.sh](linux_scripts/network_reconnect.sh) - A bash script that restarts a network interface if it can't ping the gateway.

[rsync_backups.sh](linux_scripts/rsync_backups.sh) - Bash script to backup files with rsync.

[updates.py](linux_scripts/updates.py) - Python script to update packages with the apt-get package manager.
