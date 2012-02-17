#!/bin/sh

echo "setting up xmonad config"

# if setup is run from dot-files/setup.sh use basedir provided
if [ "$repo_basedir" ]; then
    basedir=$repo_basedir
else
    basedir="$( cd -P "$( dirname "$0" )" && pwd )"
fi

# remove previous configuration and link to destination if not cloned directly there
echo "...removing previous configuration"
if [ "$basedir" != "$HOME/.xmonad" ]; then
    rm -rf ~/.xmonad
    echo "...linking ~/.xmonad"
    ln -s $basedir ~/.xmonad
fi

echo "...linking ~/.xmobarrc and ~/.xinitrc"
rm ~/.xmobarrc
rm ~/.xinitrc
ln -s $basedir/xmobarrc ~/.xmobarrc
ln -s $basedir/xinitrc ~/.xinitrc

echo '...done!'
