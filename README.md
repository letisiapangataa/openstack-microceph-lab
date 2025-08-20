# 📦 OpenStack MicroCeph Lab (ALP)

## Lab Goal
Prove you can design and operate an Ubuntu-based OpenStack environment with Ceph as the storage backend, including benchmarking and failure drills — the closest thing to Canonical’s day-to-day.

## Milestones
- M1: Single-node MicroStack up; launch first VM; floating IP works
- M2: Multi-node: add cmp-01; Live-migrate VMs
- M3: Deploy MicroCeph 3-node cluster; enable Cinder (RBD) & Glance on Ceph
- M4: Benchmark storage with fio (RBD) and document results
- M5: Failure drills: stop an OSD / reboot a node; verify data safety & VM continuity
- M6: Hardening & ops: RBAC, quotas, backups, scripted day-2 ops

## Repo Structure
```
openstack-microceph-lab/
├─ infra/
│  ├─ terraform/           # (optional) libvirt or cloud instances
│  └─ ansible/             # host bootstrap, pkg install, net setup
├─ stacks/
│  ├─ microstack/          # config, network, flavors, images
│  └─ microceph/           # ceph init/join, pools, crushmaps
├─ scripts/                # helper bash/python scripts
├─ docs/
│  ├─ 00-overview.md
│  ├─ 01-arch-diagram.drawio
│  ├─ 02-setup-ubuntu.md
│  ├─ 03-microstack.md
│  ├─ 04-microceph.md
│  ├─ 05-cinder-glance-ceph.md
│  ├─ 06-benchmark-fio.md
│  ├─ 07-failure-drills.md
│  └─ 08-operations.md
├─ examples/
│  ├─ networks.yml         # provider+tenant nets
│  ├─ flavors.yml
│  ├─ images.yml
│  └─ demo-instance.sh
├─ .github/workflows/validate.yml
└─ README.md
```

## Quick Start
See `docs/02-setup-ubuntu.md` for initial setup instructions.
