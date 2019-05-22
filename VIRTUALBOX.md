# VirtualBox VBoxManage

- https://www.virtualbox.org/manual/
- https://www.virtualbox.org/manual/ch08.html

```
VBoxManage help
VBoxManage list vms
VBoxManage showvminfo master
VBoxManage showvminfo master --details
VBoxManage modifyvm master --groups simple-cluster
```

### vboxnet issue when using Cisco VPN on host

When using Cisco AnyConnect VPN on macOS, VirtualBox vboxnet host-only interface connection will get dropout and, no longer ping-able or ssh-able to host to VMs. When this happens, a reboot to host machine work. But, a better yet, just stop all VMs, remove vboxnet and recreate again, to avoid rebooting host machine.

```
vagrant status
vagrant halt
ifconfig -a
VBoxManage list hostonlyifs
VBoxManage hostonlyif remove vboxnet0
vagrant up
```

### Vagrant VirtualBox NatNetwork Issue

- https://www.virtualbox.org/manual/ch06.html#networkingmodes
- https://github.com/hashicorp/vagrant/issues/2779

```
def nat(config)
    config.vm.provider "virtualbox" do |v|
      v.customize ["modifyvm", :id, "--nic2", "natnetwork", "--nat-network2", "test", "--nictype2", "virtio"]
    end
end

Vagrant.configure(2) do |config|
    config.vm.define "example", autostart: true do |build_example|
        nat(config)
        build_example.vm.box = $box
        build_example.vm.network "forwarded_port", guest: 80, host: 8080
        build_example.vm.network "forwarded_port", guest: 443, host: 8443
    end
end
```
