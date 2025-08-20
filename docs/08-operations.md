# Operations & Hardening

## RBAC & Quotas
- Configure OpenStack RBAC for projects/users.
- Set quotas for compute, storage, and network resources.

## Backups
- Backup control-plane DB:
  ```bash
  sudo microstack.openstack db backup save /path/to/backup.sql
  ```
- Store backups securely (offsite or cloud).

## Scripted Day-2 Ops
- Use Ansible playbooks for patching, upgrades, and capacity checks.

## Security
- Enable AppArmor, SSH key auth, and security groups.
- Review and apply OpenStack/Ceph hardening guides.

## Monitoring
- Integrate Prometheus/Grafana for metrics (optional).
