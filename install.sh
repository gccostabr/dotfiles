#!/bin/sh

function setFileInPlace 
{

  if [ -h $1 ]; then
    echo "Removing old link for $1"
    rm $1
  elif [ -f $1 ]; then
    echo "Moving $1 to $1.old"
    mv $1 $1.old
  fi
  echo "Linking $2 to $1..."
  ln -s $2 $1

}

setFileInPlace ~/.gitconfig gitconfig
setFileInPlace ~/.bash_profile bash_profile
setFileInPlace ~/.vimrc vimrc

echo
echo
echo "Done!"
echo


