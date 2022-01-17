#!/bin/bash
OS=$(uname -s)
echo $OS
if [ "$OS" = "Linux" ]; then
  OS=$(lsb_release -si)
fi
