#!/bin/bash

if [[ $REMOTE_CONTAINERS ]]; then
  sudo apt update && sudo apt install -y zsh
fi