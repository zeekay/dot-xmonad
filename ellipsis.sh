#!/usr/bin/env bash

mod.install() {
    ellipsis.backup ~/.module
    ellipsis.backup ~/.xmobarrc
    ellipsis.backup ~/.xinitrc
    ln -s $mod_path ~/.xmonad
    ln -s $mod_path/xmobarrc ~/.xmobarrc
    ln -s $mod_path/xinitrc ~/.xinitrc
}
