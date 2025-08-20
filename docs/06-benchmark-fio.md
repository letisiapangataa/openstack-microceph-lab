# Benchmarking Ceph RBD with fio

## Install fio
```bash
sudo apt install fio -y
```

## Run fio against RBD volume
Example:
```bash
fio --name=randwrite --ioengine=rbd --rw=randwrite --bs=4k --numjobs=4 --size=1G --pool=volumes --runtime=60 --group_reporting
```

## Test matrix
- Random/sequential read/write
- Vary iodepth, block size, jobs

## Document results
- Paste output and summary in this doc.
