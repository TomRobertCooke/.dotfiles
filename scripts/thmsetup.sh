#!/usr/bin/env bash

sudo --validate

read -r -p "ctf name: " CTF_NAME
export CTF_TITLE="ctf_$CTF_NAME"

export CTF_DIR="$HOME/temp/ctf/$CTF_NAME"

if [[ ! -d "$CTF_DIR" ]]; then
    mkdir -p $CTF_DIR
fi

tmux new-session -d -s "$CTF_TITLE" -c "$CTF_DIR"
tmux new-session -d -s "ctf-background" -n "openvpn" "sudo openvpn ~/thm-config/tomc.ovpn"

tmux move-window -s "$CTF_TITLE":0 -t "$CTF_TITLE":1
tmux new-window -t "$CTF_TITLE":2 -c $CTF_DIR "nvim notes.md"

tmux attach-session -t "$CTF_TITLE":1
