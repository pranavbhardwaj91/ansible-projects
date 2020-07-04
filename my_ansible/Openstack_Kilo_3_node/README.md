openstack kilo installation on Ubuntu 14.04 

This ansible code is for openstack kilo installation ( Ubuntu) , equivalent official manual steps are available in http://docs.openstack.org/kilo/install-guide/install/apt/content/ch_overview.html

Lab scenarios :

Server type - VM ( vitual box): Number of Nodes: 3 (vm) + 1 base machine with ansible CM

    controller - 3GB ram , 2 network card (eth0 - 10.0.0.11) for management , 20GB HD, eth1	 -  NAT
    Neutron - 2 GB , 4 Network card ( eth0- 10.0.0.21 , eth1 -10.0.1.21 , eth2 - ext-tun, eth3 - NAT)
    Compute - 3 GB , 2core processor , 20 GB HD , 3 network card (eth0 10.0.0.31 , eth1- 10.0.1.31, eth2 - NAT)

This playbook deploys 3 node architecture. It contains 3 roles named as controller, compute1, network. These 3 roles will get deployed on 3 different nodes.
In hosts file there is one group defined as con. Mark the 0th position in con group with the ip address of the controller node, 1st position with the ip address of the compute1 node and2nd position with the ip address of the network node.

ansible]# ansible-playbook site.yml

This will deploy 3 node openstack architecture. When the playbook has finished executing reboot the nodes in the order controller, compute1 and neutron.

Initial Network Configuration needs to be done manually.
