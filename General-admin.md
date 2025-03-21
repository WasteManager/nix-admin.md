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
