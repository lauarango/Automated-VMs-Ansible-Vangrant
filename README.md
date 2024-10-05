# Automate your virtual lab environment with Ansible and Vagrant
I show you how you can easily automate a full lab environment containing multiple virtual machines using Vagrant and Ansible.

We will use the free and open-source software Ansible by Red Hat, and the free and open-source software Vagrant by Hashicorp.

**Ansible**:
Project Homepage: https://www.ansible.com/
Documentation: https://docs.ansible.com/

**Vagrant**:
Project Homepage: https://www.vagrantup.com/
Documentation: https://www.vagrantup.com/docså
Find Boxes: https://app.vagrantup.com/boxes/search

Video: https://youtu.be/7Di0twyxw1M

## Prerequisites

- Linux, macOS or Windows 10, 11 with WSL2 (Debian or Ubuntu)
- Linux Server for testing

## Installation and Configuration

1. Use Vagrant with Ansible on Windows 10, 11

If you’re running Vagrant on Linux, you can skip this part. But if you’re running Vagrant on Windows with VirtualBox or Hyper-V, you have a problem. Because Ansible is not running on Windows, you will need to run Vagrant with Ansible scripts on a Linux machine. Luckily, you can do this pretty easily with the Windows Subsystem for Linux (WSL2). Because the trick is to install Vagrant on your WSL machine and on your Windows 10, too. Note, that it needs to be installed exactly in the same version and it’s still considered a beta version at this time.

To install Vagrant on WSL just simply download the latest version at https://releases.hashicorp.com/vagrant/.

```bash
wget https://releases.hashicorp.com/vagrant/2.2.10/vagrant_2.2.10_x86_64.deb

sudo apt install ./vagrant_2.2.10_x86_64.deb
```

Next, you need to add a few environment variables according to https://www.vagrantup.com/docs/other/wsl.html. If you’re running bash, simply add them to your .bashrc file. On zsh you need to place them in your .zshrc file.

```
VAGRANT_WSL_WINDOWS_ACCESS_USER_HOME_PATH=/mnt/c/Users/<your-personal-folder>
VAGRANT_WSL_ENABLE_WINDOWS_ACCESS=1
```

On Windows 10, 11 with Hyper-V, set the default provider with the following environment variable.

```
VAGRANT_DEFAULT_PROVIDER=hyperv
```

Check if Vagrant is running on your WSL2 and can communicate to the Hypervisor on your Windows 10 by executing the vagrant command. If and error shows up, you probably haven’t loaded the environment variables correctly.

2. Install Ansible

```
sudo apt-add-repository ppa:ansible/ansible

sudo apt update

sudo apt install ansible
```



```powershell
vagrant global-status --prune
```
