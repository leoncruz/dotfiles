#! /usr/bin/fish

if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_user_key_bindings
    bind -M insert \ce accept-autosuggestion
end

set fish_greeting

set -Ux ANDROID_HOME ~/programs/android-sdk

set -Ux CHROME_EXECUTABLE /usr/bin/google-chrome-stable

fish_add_path /opt/flutter/bin
fish_add_path $ANDROID_HOME/emulator
fish_add_path $ANDROID_HOME/build-tools
fish_add_path $ANDROID_HOME/tools/bin
fish_add_path $ANDROID_HOME/platform-tools
fish_add_path $HOME/.poetry/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.npm-global/bin
fish_add_path $ANDROID_HOME/build-tools/30.0.2/
fish_add_path $ANDROID_HOME/build-tools/30.0.3/
fish_add_path $ANDROID_HOME/build-tools/31.0.0/


source ~/.asdf/asdf.fish
starship init fish | source
