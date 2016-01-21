# puppetdev
[Development Build Status](https://travis-ci.org/cvquesty/puppetdev.svg?branch=development)
#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with puppetdev](#setup)
    * [What puppetdev affects](#what-puppetdev-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with puppetdev](#beginning-with-puppetdev)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

This module was built for a very narrow focus, but I realized it might be useful to others, so I went ahead and tidied it up for publishing on the Puppet Forge.

Its entire purpose is to configure a prebuilt "as I like it" vim editor environment for working on Puppet code.  Certainly, there are a number of Vim Puppet plugins out there, and I do use some of the more popular, but what this does is adds funcitonality to vim such that it becomes a powerful IDE.

I would say the most effective use case would be to apply to a node for user X when the node is a centralized development host for use in a secure corporate environment.  Often times a company will not allow desktop virtualization, so using tools like Vagrant is completely out of the question.  However, the company will build a development environment for you in the data center.

When this scenario occurs, PuppetDev is there to give you a large amount of functionality within Vim for working with Puppet code.

## Module Description

This module's main "claim to fame" is the lack of needing a GUI to work on Puppet code at a high level.

## Setup

Seeing as this is a standard Puppet module, follow the rules for classifying a node as found in the Puppet Documentation [here](http://docs.puppetlabs.com/pe/latest/console_classes_groups_getting_started.html).

### What puppetdev affects

* Installs the "vim-enhanced" package to gain additional colorschemes and features.
* Creates the specified user's .vim directory, and installs Pathogen into Vim
* Adds the Pathogen required "bundle" directory for installing plugins
* Installs all used modules into Pathogen
* Creates a custom .vimrc for the user

### Setup Requirements

No special requirements observed at this time, except for the needed [stdlib](https://forge.puppetlabs.com/puppetlabs/stdlib) and [vcsrepo](https://forge.puppetlabs.com/puppetlabs/vcsrepo) modules as dependencies.

### Beginning with puppetdev

To use PuppetDev, simply install the module and then apply it to a node as per the above mentioned classification process.  You can go with my default user listed, or pass in whatever user you wish as a parameter.

## Usage

"Usage" is a strong word since no further action is required than the above configuration steps.  One it applies, the user you passed in will now have an awesome IDE to work on Puppet from.

## Reference

Since the actions performed are for a single, specific user, no exhaustive reference is needed at this time  If folks decide to contribute to the project, then more documentaiton may be necessary at that time, but as for now usage is rather straightforward.

## Limitations

This module was only ever tested on RedHat family products, so your particular mileage may vary.  If you find bugs, by all means let me know or create a pull request to fix them, and I'll gladly review and incorporate your work/ideas.

## Development

If you would like to contribute, you are more than welcome to the party.  Simply clone the repo, make your edits, and open a pull request to me, and I will engage you right away.

## Release Notes/Contributors/Etc

This is the initial release of PuppetDev.  I'm new at this, so please be kind.  :)
