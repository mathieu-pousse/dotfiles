# remap prefix from 'C-b' to 'C-w'
unbind C-b
set-option -g prefix C-w
bind-key C-w send-prefix

set -g mouse on

bind-key v split-window -h
bind-key s split-window -v
