#!/usr/bin/env bash
#
# zeekay/dot-xmonad
# My xmonad configuration.

pkg.install() {
    ellipsis.backup ~/.xmonad
    ellipsis.backup ~/.xmobarrc
    ellipsis.backup ~/.xinitrc
    ln -s $PKG_PATH ~/.xmonad
    ln -s $PKG_PATH/xmobarrc ~/.xmobarrc
    ln -s $PKG_PATH/xinitrc ~/.xinitrc
}
