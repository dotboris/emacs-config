emacs-config
============

This is my personal set of configurations for emacs. This config makes use of
el-get to manage packages. The first time it's run it'll install el-get
automatically and install all packages.

Requirements
------------

You are going to need:

- Adobe's [Source code pro](https://github.com/adobe-fonts/source-code-pro) font
- Standard build tools
- A LaTeX distribution
- Git and Mercurial (mercurial is required to install evil)

Installation
------------

Check out the repository and run the install script.

    $ git clone https://github.com/beraboris/emacs-config.git ~/emacs-config
    $ cd ~/emacs-config
    $ ./install.sh

Customization
-------------

You can customize the installed packages by editing `packages.el`. A sample
`packages.el` is provided as `packages-sample.el`.

Layout
------

`init.el` is the main config file, it loads/installs el-get. Installs the
packages and specifies a bunch of options.

`packages.el` lists all the packages to be installed. These are installed with
`(el-get-bundle package-name-here)`.

`commands.el` contains a bunch of custom commands that make my life easier.

The `packages/` directory contains all the configuration files for the packages.
A file named `init-foobar.el` will be loaded when the `foobar`package is loaded.

The `recipes/` directory contains all the recipies to install packages that are
not in the official el-get "repositories".
