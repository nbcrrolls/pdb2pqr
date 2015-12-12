.. hightlight:: rst

Pdb2pqr  Roll
================

.. contents::

Introduction
----------------
This roll installs pdb2pqr - Poisson-Boltzmann electrostatics calculations
software plus precompid apbs libraries ``./pdb2pka/_apbslib.so``

Requirements
--------------
Download networkx :: 

    https://pypi.python.org/packages/source/n/networkx/networkx-1.10.tar.gz
    https://pypi.python.org/packages/source/d/decorator/decorator-4.0.4.tar.gz

Execute ``bootstrap.sh`` to create v.20.0.0 distro tar.gz file. 
pdb2pqr-2.0.0.tar.gz

Building
-----------
To build the roll execute: ::

    # make roll 2>&1 | tee build.log

Installing
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#. A roll can be added during a frontend build as any other roll.

#. A roll can be added to the existing frontend. 
   Execute all commands from roll top level directory  ::

   # rocks add roll *.iso
   # rocks enable roll pdb2pqr 
   # (cd /export/rocks/install; rocks create distro)  
   # rocks run roll pdb2pqr > add-roll.sh  
   # bash add-roll.sh 2>&1 | tee install.log

What is installed 
-------------------

On opal-server  node: ::

    /etc/httpd/conf.d/pdb2pqr.conf
    /opt/opal/deployed/pdb2pqr_*.xml (2 versions)
    /var/www/html/pdb2pqr/index.html (redirect to current version X)
    ln -s /share/opal/pdb2pqr/tmp /opt/pdb2pqr_X/tmp (for each version X)


On opal-server and compute nodes: ::

    /etc/cron.daily/pdb2pqr-job-cleanup
    /etc/profile.d/pdb2pqr.csh
    /etc/profile.d/pdb2pqr.sh


