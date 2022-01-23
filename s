#!/bin/bash
OS=$(uname -s)
if [ "$OS" = "Linux" ]; then
  OS=$(lsb_release -si)
fi
echo $OS

