# english-su.com

## Get started with vagrant

### Install Vagrant

Download and install [Vagrant](https://www.vagrantup.com/downloads.html)
Download and install Oracle's [VirtualBox](https://www.virtualbox.org)

### Start virtual machine

Run this command in this directory
```
vagrant up
```

### Preview the site
Login to vagrant and run the `hugo` server

```
vagrant ssh
cd /vagrant
hugo -w server --theme=hugo_theme_robust --buildDrafts --bind="0.0.0.0"
```
