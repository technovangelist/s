#!/bin/bash
OS=$(uname -s)
if [ "$OS" = "Linux" ]; then
  OS=$(lsb_release -si)
fi
echo $OS
select level in min max
do
echo "You have chosen $OS-$level"
done

