# 01-simple-cluster

This will setup a simple CentOS cluster with VirtualBox provider using private network (i.e. host-only adapter)

- https://www.vagrantup.com/docs/multi-machine/
- https://www.vagrantup.com/docs/networking/private_network.html
- https://www.vagrantup.com/docs/virtualbox/configuration.html
- https://www.vagrantup.com/docs/virtualbox/networking.html


```
vagrant validate
vagrant up
vagrant status
vagrant ssh-config
vagrant ssh master
[vagrant@master ~]$ ip a
[vagrant@master ~]$ ping 192.168.100.1
[vagrant@master ~]$ ping 192.168.100.11
[vagrant@master ~]$ ping 192.168.100.12
[vagrant@master ~]$ exit
ping 192.168.100.10
ping 192.168.100.11
ping 192.168.100.12
vagrant destroy
```
