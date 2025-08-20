# MicroCeph Setup

## Install MicroCeph
On each ceph-[01..03] node:
```bash
sudo snap install microceph --devmode --beta
```

## Initialize cluster (on ceph-01):
```bash
sudo microceph cluster init
```

## Join other nodes (on ceph-02, ceph-03):
```bash
sudo microceph cluster join <ceph-01-ip>
```

## Create pools for OpenStack:
```bash
sudo microceph pool create volumes
sudo microceph pool create images
```

## Check cluster health:
```bash
sudo microceph status
```
