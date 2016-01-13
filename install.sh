#!/bin/bash

export INSTALL_HOME=$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)

if [ $UID != 0 ]; then
  echo "please run as root"
  exit 1
fi

# create btrfs subvolumes
echo "creating btrfs subvolumes"
$INSTALL_HOME/install/create-subvolumes.sh

# snyc resources
echo "sync files"
$INSTALL_HOME/install/sync-files.sh

# install repository keys
echo "install repository keys"
$INSTALL_HOME/install/apt-keys.sh

# install packages
echo "install missing packages"
$INSTALL_HOME/install/apt-packages.sh

# install etcd
echo "install etcd"
$INSTALL_HOME/install/install-etcd.sh

# prepare environment
echo "prepare environment"
$INSTALL_HOME/install/prepare-environment.sh

# build base containers
echo "build base container"
$INSTALL_HOME/containers/install-containers.sh "base-containers"

# generate ssl certificates
echo "generate ssl certificates"
$INSTALL_HOME/install/ssl.sh

# build containers
echo "build app container"
$INSTALL_HOME/containers/install-containers.sh "app-containers"

# start etcd, create overlay network cesnet1 and reboot
docker start etcd
sleep 5
docker network create --driver overlay cesnet1
sleep 5
reboot
