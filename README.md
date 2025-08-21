# ♾️ OpenStack MicroCeph Lab (Applied Lab Project)

This lab project explores how to set up and operate an **Ubuntu-based OpenStack environment** with **Ceph as the storage backend**. The goal is to gain hands-on experience with OpenStack services, Ceph storage integration, and day-2 operations. It covers deploying **MicroStack** and **MicroCeph**, connecting **Cinder** and **Glance** to Ceph, running storage benchmarks, and practicing failure recovery scenarios. This lab is designed for **learning, repeatability, and documentation** rather than production use.

For a lab overview : https://letisiapangataa.github.io/posts/openstack-ceph-lab/

---

## Learning Milestones  
- Launch a single-node MicroStack instance; deploy first VM and test floating IP  
- Add a compute node (`cmp-01`) and practice VM live migration  
- Deploy a 3-node MicroCeph cluster; integrate Cinder (RBD) and Glance with Ceph storage  
- Benchmark storage performance with `fio` (RBD) and record results  
- Run failure drills (e.g. stop an OSD, reboot a node) and observe VM/data continuity  
- Explore hardening & operations — RBAC, quotas, backups, and scripted day-2 tasks  

---

## Repo Structure  
```

openstack-microceph-lab/
├─ infra/
│  ├─ terraform/           # optional: libvirt or cloud instance provisioning
│  └─ ansible/             # host bootstrap, package install, network setup
├─ stacks/
│  ├─ microstack/          # configs: networks, flavors, images
│  └─ microceph/           # ceph init/join, pools, crushmaps
├─ scripts/                # helper bash/python scripts
├─ docs/
│  ├─ 00-overview\.md
│  ├─ 01-arch-diagram.drawio
│  ├─ 02-setup-ubuntu.md
│  ├─ 03-microstack.md
│  ├─ 04-microceph.md
│  ├─ 05-cinder-glance-ceph.md
│  ├─ 06-benchmark-fio.md
│  ├─ 07-failure-drills.md
│  └─ 08-operations.md
├─ examples/
│  ├─ networks.yml         # provider + tenant network configs
│  ├─ flavors.yml
│  ├─ images.yml
│  └─ demo-instance.sh
├─ .github/workflows/validate.yml
└─ README.md

```

---

## Quick Start  
1. Prepare an Ubuntu 22.04 host or VMs.  
2. Follow setup steps in [`docs/02-setup-ubuntu.md`](docs/02-setup-ubuntu.md).  
3. Deploy MicroStack and MicroCeph, then work through the milestone exercises.  

---

## Notes  
- This project is intended for **learning and experimentation**.  
- It focuses on understanding **how OpenStack and Ceph interact** and practicing operational tasks in a safe lab setup.  
