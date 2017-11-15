```
=========================
|   DKAN VAGRANT BOX    |
|      Ver 1.0.0        |
| --------------------- |
|  If it doesn't work,  |
|     blame Obama.      |
=========================
```

# DKAN Vagrant Box
Setting up a docker environment can be tricky, and following the DKAN documentation can take a while. If you want to spin up a local DKAN environment super quickly then this is the repository for you!

---

## Prerequisites
1. You must have [Vagrant](https://www.vagrantup.com/) installed.
2. A virtual machine package for Vagrant to run off (we **strongly** recommend [Virtualbox](https://www.virtualbox.org/wiki/Downloads)).

## Steps
1. Run: `cd ~/ && git clone https://github.com/UKDataServiceOpen/dkan-vagrant-box.git && cd dkan-vagrant-box && vagrant up`

Once Vagrant has downloaded and install the repository and dependencies, you should be able to view your DKAN environment at [http://192.168.33.10](http://192.168.33.10).

To stop your DKAN box from running you'll need to run `vagrant halt`. You should probably take a look at the [Vagrant documentation](https://www.vagrantup.com/docs/) if you're not familiar with this stuff. But, as a quick refresher here's a few commands you'll likely use a lot:

| Command | Result |
| ------- | ------ |
| `vagrant up` | Launches a Vagrant box by looking for a `VagrantFile` within your current directory |
| `vagrant halt` | Stops the Vagrant box. If there isn't a `VagrantFile` in your current directory then Vagrant will higher up the directory chain until it finds one. |
| `vagrant destroy` | Stops the Vagrant box AND deletes all it's content. The files on your host machine will not get deleted. |

## Configuration Details
### Database Specific
| Field | Value |
|---|---|
| Database Name | `dkan` |
| Database Username | `root` |
| Database Password | `root` |

### DKAN Specific
| Field | Value |
|---|---|
| Username | `admin` |
| Password | `dkan` |
| Default Country | none |
| Default Timezone | GMT |
| Check for updates automatically | false |
| Receive email notifications | false |
