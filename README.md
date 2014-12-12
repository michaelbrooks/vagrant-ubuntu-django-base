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

What is included
----------------

- Ubuntu Precise x64 base machine
- Git, Emacs, a few other system packages
- MySQL 5.5
- Python 2.7 with pip
- virtualenv and virtualenvwrapper
- NodeJS v0.10.x from NodeSource
