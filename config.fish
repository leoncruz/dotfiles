#! /usr/bin/fish

if status is-interactive
  and not set -q TMUX
    exec tmux
end

function fish_user_key_bindings
  bind -M insert \ce accept-autosuggestion
end

set fish_greeting

set -Ux ANDROID_HOME ~/programs/android-sdk

set -Ux CHROME_EXECUTABLE /usr/bin/google-chrome-stable
set -Ux XDG_CONFIG_HOME ~/.config

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

function be
  bundle exec $argv
end

starship init fish | source
source ~/.asdf/asdf.fish

. ~/.asdf/plugins/java/set-java-home.fish
