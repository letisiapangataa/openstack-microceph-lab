# Ubuntu Host Setup

## Requirements
- Ubuntu 22.04 or 24.04 LTS (recommended)
- Multipass or libvirt (for local VMs)
- Sudo/root access

## Steps
1. Update and upgrade:
   ```bash
   sudo apt update && sudo apt upgrade -y
   ```
2. Install Multipass (for local lab):
   ```bash
   sudo snap install multipass
   ```
   Or install libvirt:
   ```bash
   sudo apt install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virtinst -y
   ```
3. Clone this repo:
   ```bash
   git clone https://github.com/letisiapangataa/openstack-microceph-lab.git
   cd openstack-microceph-lab
   ```
4. Follow infra/terraform or infra/ansible for provisioning.
