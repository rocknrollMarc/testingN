To use this:

The images are set up for VirtualBox, Parallels, and Rackspace
You have to install:
1. VirtualBox or Parallels
2. Vagrant
3. Vagrant plugin for paralells or Rackspace (depending on what you want to do), so for rackspace:
vagrant plugin install vagrant-rackspace

4. Add the box for Rackspace (if needed):
vagrant box add dummy https://github.com/mitchellh/vagrant-rackspace/raw/master/dummy.box

go into the folder of the one you want, and then run:

vagrant up  (--provider=rackspace or --provider=parallels if you are in there)

REMEMBER: Destroy the Rackspace instances when finsihed