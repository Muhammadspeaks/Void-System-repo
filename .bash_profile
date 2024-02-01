# .bash_profile

# ██████╗  █████╗ ███████╗██╗  ██╗
# ██╔══██╗██╔══██╗██╔════╝██║  ██║
# ██████╔╝███████║███████╗███████║
# ██╔══██╗██╔══██║╚════██║██╔══██║
# ██████╔╝██║  ██║███████║██║  ██║
# ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
#
# ██████╗ ██████╗  ██████╗ ███████╗██╗██╗     ███████╗
# ██╔══██╗██╔══██╗██╔═══██╗██╔════╝██║██║     ██╔════╝
# ██████╔╝██████╔╝██║   ██║█████╗  ██║██║     █████╗
# ██╔═══╝ ██╔══██╗██║   ██║██╔══╝  ██║██║     ██╔══╝
# ██║     ██║  ██║╚██████╔╝██║     ██║███████╗███████╗
# ╚═╝     ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝╚══════╝


# Bash profile intiates in an non-interactive shell (Log-in Shell).
# After loggin imeddiatly, bash_profile runs all the following commands:


# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

# Starting X-server (Startx)
# First condition "! $DISPLAY" checks if there is a Xorg-server up or not
# If up then Do not open startx.
# Second Condition "$(tty) = "/dev/tty1"" checks if the output of the 
# command "tty" equals "/dev/tty1". if equals one, then Do not open startx.

[[ ! $DISPLAY && $(tty) = "/dev/tty1" ]] && startx


