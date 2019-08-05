# 01-simple-cluster

This will setup a simple CentOS cluster with VirtualBox provider using private network (i.e. host-only adapter)

## prerequisite

You should have a ssh key generated and located at your home directory i.e. `$HOME/.ssh/id_rsa.pub`. If this is not existed, generate one as follows.

```
cd 01-simple-cluster
bash gen-ssh-key.sh
```

## tute-01

- create a simple cluster
    ```
    vagrant validate
    vagrant up
    vagrant status
    vagrant ssh-config
    vagrant ssh master
    ```

- ssh from host into master
    ```
    ssh vagrant@172.16.10.10
    ssh vagrant@172.16.10.11
    ssh vagrant@172.16.10.12
    ```

- destroy the cluster
    ```
    vagrant destroy
    ```

## REF

- https://www.vagrantup.com/docs/multi-machine/
- https://www.vagrantup.com/docs/networking/private_network.html
- https://www.vagrantup.com/docs/virtualbox/configuration.html
- https://www.vagrantup.com/docs/virtualbox/networking.html
