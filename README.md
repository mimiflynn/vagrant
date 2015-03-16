# Vagrant!

Currently configured for developing with the MEAN stack.

## Vagrant installation

This project includes a [Vagrant](https://www.vagrantup.com/) development server.

Ensure that [VirtualBox](https://www.virtualbox.org/) or your favorite virtualization software.

## Starting up Vagrant box

The dev environment requires the vagrant-berkshelf plugin:

```
vagrant plugin install vagrant-berkshelf
```

Besure to be in the `<root directory>/vagrant` directory and run:

```
vagrant up
vagrant ssh
```

### NGINX

Current proxy pass is set to port 3000.

```
proxy_pass http://127.0.0.1:3000;
```

### Shared directory

Current shared directory is the directory up from where this project has been cloned. In other words, all sibling directories will be shared within the VM.

