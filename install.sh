#!/bin/sh

cd $(dirname $0)

cp packages-sample.el packages.el

if ! grep -q 'GENERATED BY EMACS-CONFIG' ~/.emacs 2> /dev/null; then
    checkout_dir=$(pwd)

    echo ';; GENERATED BY EMACS-CONFIG' >> ~/.emacs
    echo "(load-file \"$checkout_dir/init.el\")" >> ~/.emacs

    echo 'Installed to your ~/.emacs file. Please verify that everything is OK.'
fi
