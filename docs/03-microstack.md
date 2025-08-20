# MicroStack Setup

## Install MicroStack
On ctrl-01 node:
```bash
sudo snap install microstack --devmode --beta
```

## Initialize MicroStack
```bash
sudo microstack init --auto --control
```

## Enable services
```bash
sudo microstack enable neutron
sudo microstack enable cinder
sudo microstack enable glance
sudo microstack enable nova
```

## Access OpenStack
Get the dashboard URL and credentials:
```bash
sudo microstack.openstack dashboard list
```

## Next Steps
- Add compute nodes (see docs)
- Configure networks, images, flavors
