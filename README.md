```
=========================
| UKDS DKAN VAGRANT BOX |
|    Version 1.0.4.     |
| --------------------- |
|  If it doesn't work,  |
|     blame Obama.      |
=========================
```

# DKAN Vagrant Box
This project is intended to contains all the files necessary to quickly set up your own DKAN environment using Vagrant.

---

## Steps
1. Run: `cd ~/ && git clone https://github.com/UKDataServiceOpen/dkan-vagrant-box.git && cd dkan-vagrant-box && vagrant up`

Once Vagrant has downloaded and install the repository and dependencies, you should be able to view your DKAN environment at [http://192.168.33.10](http://192.168.33.10).

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
