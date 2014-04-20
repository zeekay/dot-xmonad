#!/usr/bin/env bash

mod.install() {
    backup ~/.module
    backup ~/.xmobarrc
    backup ~/.xinitrc
    ln -s $mod_path ~/.xmonad
    ln -s $mod_path/xmobarrc ~/.xmobarrc
    ln -s $mod_path/xinitrc ~/.xinitrc
}
