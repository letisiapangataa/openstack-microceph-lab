# Cinder & Glance with Ceph (RBD)

## Configure Cinder to use Ceph RBD
1. On ctrl-01, install ceph-common:
   ```bash
   sudo apt install ceph-common -y
   ```
2. Configure `/var/snap/microstack/common/etc/cinder/cinder.conf` with RBD backend.
3. Restart Cinder services:
   ```bash
   sudo systemctl restart snap.microstack.cinder* 
   ```

## Configure Glance to use Ceph RBD
1. Edit `/var/snap/microstack/common/etc/glance/glance-api.conf` for RBD backend.
2. Restart Glance:
   ```bash
   sudo systemctl restart snap.microstack.glance-api
   ```

## Verify
- Create a volume and image, ensure they are stored in Ceph pools.
