# Example Terraform for local VMs (libvirt)
terraform {
  required_providers {
    libvirt = {
      source = "dmacvicar/libvirt"
      version = ">= 0.6.14"
    }
  }
}

provider "libvirt" {
  uri = "qemu:///system"
}

resource "libvirt_network" "provider" {
  name = "provider-net"
  mode = "nat"
  addresses = ["192.168.100.0/24"]
}

resource "libvirt_network" "tenant" {
  name = "tenant-net"
  mode = "nat"
  addresses = ["10.10.10.0/24"]
}

# Add VM resources for ctrl-01, cmp-01, ceph-01..03 as needed
