#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -f ~/.bashrc ]; then
	if [[ "who | grep "tty"" ]]; then
		Hyprland
	fi
fi
