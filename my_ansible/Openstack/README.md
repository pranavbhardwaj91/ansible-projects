This playbook deploys 3 node architecture. It contains 3 roles named as controller, compute1, network. These 3 roles will get deployed on 3 different nodes.
In hosts file there is one group defined as con. Mark the 0th position in con group with the ip address of the controller node, 1st position with the ip address of the compute1 node and 2nd position with the ip address of the network node.

The interfaces in the respective nodes can be kept as host only. For Ex - Managment Network - Host Only, Tunnel Network - Host Only, External Network - Bridged/NAT. Along with 
these interfaces keep one interface in each node as NAT to download the packages from internet. Before proceeding check the connectivity of each node with each other by ping.
Switch on the three nodes to deploy the openstack and enter the following command.

controller]# ansible-playbook site.yml

This will deploy 3 node openstack architecture. When the playbook has finished executing reboot the nodes in the order controller, compute1 and neutron.
