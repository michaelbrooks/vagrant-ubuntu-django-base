vagrant-ubuntu-django-base
==========================

Builds an Ubuntu-based base-box that is nice for Django projects.

To build the box:

```bash
$ vagrant up
$ vagrant package
```

This will create a `package.box` file that can be used with Vagrant.

To use this base box, refer to `michaelbrooks/ubuntu-django` in your Vagrantfile
or init with this:

```bash
$ vagrant init michaelbrooks/ubuntu-django
```
