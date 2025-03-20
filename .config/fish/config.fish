#! /usr/bin/fish

fish_add_path $HOME/.npm-global/bin

set -Ux EDITOR nvim

if status is-interactive
  and not set -q TMUX
    exec tmux
end

function fish_user_key_bindings
  bind -M insert \ce accept-autosuggestion
end

set fish_greeting

function be
  bundle exec $argv
end

function reload
  . ~/.config/fish/config.fish
end

~/.local/bin/mise activate fish | source

starship init fish | source
