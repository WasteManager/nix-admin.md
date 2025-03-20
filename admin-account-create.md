# If one needs to create additional administrative accounts on a Rhel 9 machine
# as root
  - sud useradd - m -s /bin/bash admin-account # Creates the User account, -m: creates a home directory (/home/admin-account), -s /bin/bash: sets a the default shell to bash
  - sudo passwd admin-account #sets password
  - sudo usermod-aG wheel admin-account # Adds the user to the sudoeers file, to grant admin-account full root privileges, add i the wheel group
  - (Optional) Enable passwordless sudo access
  - sudo visudo # opens sudoers files
  - admin-account ALL=(ALL) NOPASSWD:ALL # add this line at the bottom
  - (Verify access)
  - as the created account, escalate priv via: sudo -s
  - Sudo whoami #output should be root
