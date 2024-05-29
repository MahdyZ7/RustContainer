#!/bin/bash

set -o errexit

chmod +x rust


# if the terminal is bash, add the application to the path
if [ -f ~/.bashrc ]; then
	if [ ! "$(cat ~/.bashrc | grep PATH=*:$(pwd))" ] ; then
		echo PATH=\$PATH:$(pwd) | tee -a  ~/.bashrc
	fi
	source ~/.bashrc
fi

# if the terminal is zsh, add the application to the path
if [ -f  ~/.zshrc ]; then
	if [ ! "$(cat ~/.zshrc | grep PATH=*:$(pwd))" ] ; then
		echo "export PATH=\$PATH:$(pwd)" >> ~/.zshrc
	fi
	source ~/.zshrc
fi

# if the terminal is csh, add the application to the path
if [ -f ~/.cshrc ]; then
	if [ ! "$(cat ~/.cshrc | grep PATH=*:$(pwd))" ] ; then
		echo "setenv PATH \$PATH:$(pwd)" >> ~/.cshrc
	fi
	source ~/.cshrc
fi