#!/bin/bash
sudo snap install microstack --classic --channel=rocky/edge
sudo microstack.init --auto
#sudo snap alias microstack.openstack openstack
wget http://cloud.centos.org/centos/7/images/CentOS-7-x86_64-Azure-1703.qcow2
microstack.openstack image create Centos7 --disk-format qcow2 --container-format bare --public --file CentOS-7-x86_64-Azure-1703.qcow2
microstack.launch Centos7 --name test --flavor 2
