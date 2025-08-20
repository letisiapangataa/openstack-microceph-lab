#!/bin/bash
# Backup OpenStack control-plane DB
sudo microstack.openstack db backup save /tmp/openstack-db-backup.sql
