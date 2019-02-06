# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.

# X :(
alias startx="startx -- -ardelay 250 -arinterval 30"

# mc :(
alias mplayer="mpv"

# youtube
alias youtube-dl-mp4="youtube-dl -o '%(playlist_index)s-%(title)s.%(ext)s' -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4'"

# rar
alias rra='rar a -ma5 -m5 -md1g -cl -r -s -tl'
alias rrm='rar m -ma5 -m5 -md1g -cl -r -s -tl'
alias rras='rar a -ma5 -m5 -md1g -r -s -tl'
alias rrms='rar m -ma5 -m5 -md1g -r -s -tl'

# virt ssh
alias vssh="ssh -o GlobalKnownHostsFile=/dev/null -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"

# git
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# private
source ~/.bashrc_priv
