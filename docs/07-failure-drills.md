# Failure Drills

## OSD Failure
1. Stop an OSD:
   ```bash
   sudo systemctl stop snap.microceph.daemon-osd@<id>.service
   ```
2. Observe Ceph health and recovery.

## Node Reboot
1. Reboot cmp-01 or ceph node:
   ```bash
   sudo reboot
   ```
2. Check VM and data continuity.

## Record
- Document steps, screenshots, and recovery metrics here.
