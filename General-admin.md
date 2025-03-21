# If you need to check how much space is on server
dh -h

# to update from repo
  - yum check-update
  - yum update

# When trying to check update and you get this error: unable to read consumer identity this system is not registered with an entitlement server
  - sudo -s
  - vim /etc/yum/pluginconf.d/subscription-manager.conf
  - change 1 to 0, save and exit (wq)
  - yum -y update

# If getting the following error when trying to update server and repo has been updated (error: failed to download metadata for repo X: GPG verification is enabled but gpg signature is not available. this may be an error or the repo does not support GPG. Verification: status code: 404)
  - sudo -s
  - cd /
  - cd etc
  - cd yum.repos.d
  - vim local.repos
  - # change repo_gpgcheck 1's to 0's
  - yum -y update

# If you cannot ssh into a vm that is hosted in azure
  - restart VM in azure

# If when updating nix servers after repo has been updated and you get an error such as No available modular metadata for modular package
  - sudo -s
  - yum update --refresh OR yum clean packages

# to check list of services available
  - firewallcmd-cmd --list-services

# check and see if a cert is expired
  - openssl x509 -enddate -noout -in (absolute file path to cert)

# Show partitions
lsblk

###  System Information
| Command | Description |
|--------|-------------|
| `uname -a` | Shows system information (kernel, architecture, etc.) |
| `hostnamectl` | View or set hostname |
| `uptime` | How long the system has been running |
| `top` / `htop` | Real-time system performance |
| `vmstat` | Memory, CPU, IO stats |
| `dmesg` | Boot and kernel-related logs |
| `lsb_release -a` | OS version (install `redhat-lsb` if missing) |
| `cat /etc/redhat-release` | Shows RHEL version |

---

### Package Management (DNF/YUM)
| Command | Description |
|--------|-------------|
| `dnf update` | Updates all packages |
| `dnf install <pkg>` | Installs a package |
| `dnf remove <pkg>` | Removes a package |
| `dnf list installed` | Lists installed packages |
| `dnf search <term>` | Searches for a package |
| `dnf info <pkg>` | Info about a package |
| `rpm -qa` | List all RPM packages |
| `rpm -ql <pkg>` | List files in an RPM package |

---

###  File & Directory Management
| Command | Description |
|--------|-------------|
| `ls -lah` | List with details |
| `cd /path/to/dir` | Change directory |
| `mkdir -p dir` | Make directory (recursive) |
| `rm -rf file/dir` | Remove file or directory |
| `cp -av source dest` | Copy with attributes |
| `mv source dest` | Move or rename |
| `find /path -name "*.log"` | Search for files |
| `du -sh *` | Size of files/directories |
| `df -h` | Disk space usage |

---

### User & Permission Management
| Command | Description |
|--------|-------------|
| `useradd <username>` | Create new user |
| `passwd <username>` | Set user password |
| `usermod -aG group user` | Add user to group |
| `id <user>` | Show user/group IDs |
| `chmod 755 file` | Change permissions |
| `chown user:group file` | Change ownership |
| `groups <username>` | Show groups user belongs to |

---

### SELinux & Firewalld
| Command | Description |
|--------|-------------|
| `getenforce` | Check SELinux mode |
| `setenforce 0` | Temporarily disable SELinux (Permissive) |
| `sestatus` | Detailed SELinux status |
| `semanage port -l` | List SELinux ports (need policycoreutils-python) |
| `firewall-cmd --state` | Check firewalld status |
| `firewall-cmd --add-port=80/tcp --permanent` | Open port |
| `firewall-cmd --reload` | Reload firewalld rules |

---

###  System Services (Systemd)
| Command | Description |
|--------|-------------|
| `systemctl status <service>` | Status of a service |
| `systemctl start <service>` | Start a service |
| `systemctl stop <service>` | Stop a service |
| `systemctl restart <service>` | Restart a service |
| `systemctl enable <service>` | Enable at boot |
| `systemctl disable <service>` | Disable at boot |
| `journalctl -xe` | View system logs |

---

### Networking
| Command | Description |
|--------|-------------|
| `ip a` or `ip addr` | Show IP addresses |
| `ip r` or `ip route` | Show routing table |
| `nmcli` | Manage NetworkManager connections |
| `ping <host>` | Check connectivity |
| `ss -tuln` | Listening ports and sockets |
| `curl <url>` | Fetch HTTP content |
| `scp user@host:/file .` | Secure copy |
| `rsync -avz src dest` | Efficient file transfer |

---

###  Shell & Logs
| Command | Description |
|--------|-------------|
| `history` | Show command history |
| `tail -f /var/log/messages` | Live system logs |
| `tail -n 100 /var/log/secure` | Security logs |
| `journalctl -u <service>` | Logs for a service |
| `alias ll='ls -lah'` | Create shell alias |

---

###  Pro Tips
- Use `man <command>` to read the manual page for any command.
- Combine commands with `|` and `&&` for powerful one-liners.
- Set up `aliases` in `~/.bashrc` or `~/.bash_profile` to speed up workflow.
- `watch -n 1 <cmd>` to run a command every second (live monitoring).
