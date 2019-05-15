# vagrant-tute

Vagrant tutorials

```
brew cask install vagrant
```

Vagrant Providers (i.e. choice of virtualization)

- https://www.vagrantup.com/docs/providers/


Vagrant Box

Every Vagrant development environment requires a box. You can search for boxes at https://vagrantcloud.com/search

```
vagrant box help
vagrant box list
vagrant box add -h
vagrant box add ubuntu/bionic64 --provider virtualbox
vagrant box add centos/7 --provider virtualbox
vagrant box remove centos/7 --box-version 1710.01
...
mkdir 00-centos
vagrant init centos/7
vagrant up
vagrant status
vagrant ssh
vagrant destroy
...
mkdir 00-ubuntu
vagrant init ubuntu/bionic64
vagrant up
vagrant status
vagrant ssh
vagrant destroy
```

