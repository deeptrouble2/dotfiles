# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="af-magic"

# Example aliases
alias zshconfig="vi ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"
SVN_SHOW_BRANCH="true"
# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git svn)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/home/deepak/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/opt/wios/bin:/home/deepak/scripts/:/sbin:/usr/sbin

export PATH=~/bin:$PATH:/opt/wios/bin:/home/deepak/scripts/:/sbin:/usr/sbin
export LD_LIBRARY_PATH=/usr/local/lib:/usr/lib:/lib:$LD_LIBRARY_PATH:/usr/local/lib/:/opt/wios/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/lib/x86_64-linux-gnu/
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/deepak/work/nxagent/nx-X11/exports/lib/:/home/deepak/work/nxagent/nxcomp:/home/deepak/work/nxagent/nxcompext:/home/deepak/work/nxagent/nxcompshad
# generic stuff
alias vi='vim'
alias rm='rm -i'
alias ll='ls -l'
alias cp='cp -i'
alias mv='mv -i'
alias uiuc='sudo mount -t davfs https://netfiles.uiuc.edu/deepakm /media/netfiles/'

#shortcuts to jump back across directories
alias ..='cd ..'
alias ...='cd ../..'
alias 3='cd ../../..'
alias 4='cd ../../../..'
alias 5='cd ../../../../..'
alias work='cd /home/deepak/work'
alias map='cd /home/deepak/map/src/'
alias rim='cd /home/deepak/map/src/sys/cc2/rim'
alias pyssm='cd /home/deepak/map/src/sys/cfgd/pyssm'
alias ssm='cd /home/deepak/map/src/sys/ssm'
alias ssim='cd /home/deepak/map/tools/simtools/smartsim/'
alias cfgd='cd /home/deepak/map/src/sys/cfgd'
alias dpd='cd /home/deepak/map/src/sys/dpd2'
alias mapsh='cd /home/deepak/map/src/sys/ZebOS/mapsh'
alias test='cd /home/deepak/test'
alias src='source ~/.bash_profile'
alias cmap4='telnet 192.168.0.200 2006'
alias cmap3='telnet 192.168.0.200 2005'
alias cmap2='telnet 192.168.0.200 2004'
alias cmap='telnet 192.168.0.200 2002'
alias cqs5='telnet 192.168.0.200 2001'
alias cqs1='telnet 192.168.0.200 2003'

alias tmap4='telnet 192.168.0.60'
alias tmap3='telnet 192.168.0.50'
alias tmap2='telnet 192.168.0.40'
alias tmap='telnet 192.168.0.30'
alias tqs5='telnet 192.168.0.10'
alias tqs1='ssh root@192.168.0.20'
alias tlcap='telnet 192.168.0.70'
alias talps='telnet 192.168.0.13'



#grep that excludes useless stuff (.svn_base, binaries etc)  - thanks Nic!
alias sgrep='egrep --exclude-from ~/.sgrep-exclude'

#shortcuts for building for WiOS
alias qs5on='/home/deepak/scripts/qs5on.sh'
alias qs5off='/home/deepak/scripts/qs5off.sh'

alias qs1on='/home/deepak/scripts/qs1on.sh'
alias qs1off='/home/deepak/scripts/qs1off.sh'

alias mapon='/home/deepak/scripts/mapon.sh'
alias mapoff='/home/deepak/scripts/mapoff.sh'

alias map2on='/home/deepak/scripts/map2on.sh'
alias map2off='/home/deepak/scripts/map2off.sh'

alias map3on='/home/deepak/scripts/map3on.sh'
alias map3off='/home/deepak/scripts/map3off.sh'

alias map4on='/home/deepak/scripts/map4on.sh'
alias map4off='/home/deepak/scripts/map4off.sh'

alias vidall='/home/deepak/scripts/vidall.sh'
alias makea='make all'
alias make2='make TARGET=ws2000'
alias make5='make TARGET=ws5100'
alias makeu='make TARGET=uml'
alias mq='make TARGET=qs5'
alias mn='make TARGET=nuxi'
alias mqa='make TARGET=qs5 APN=1'
alias mqq='make TARGET=qs2'
alias ma='make TARGET=ap7131'
alias mapp='make TARGET=ap7131 PARALLEL=0'
alias mk='make TARGET=khepri'
alias ml='make TARGET=lcap'
alias mf='make TARGET=qs1'
alias mr='make TARGET=falcon'
alias mrp='make TARGET=falcon PARALLEL=0'
alias mal='make TARGET=alps'
alias mfp='make TARGET=qs1 PARALLEL=0'
alias mfs='make TARGET=qs1 SSM=1'
alias mas='make TARGET=ap7131 SSM=1'
alias mm='make TARGET=mcn'
alias mall='make TARGET=qs1;make TARGET=ap7131'
alias mallclean='make TARGET=qs1 clean;make TARGET=ap7131 clean'
alias mallclobber='make TARGET=qs1 clobber;make TARGET=ap7131 clobber'
alias apnrestart='/home/deepak/es3k.pl --ip=192.168.0.75 --port=10 --action=OFF;/home/deepak/es3k.pl --ip=192.168.0.75 --port=10 --action=ON'
alias aprestart='/home/deepak/es3k.pl --ip=192.168.0.75 --port=8 --action=OFF;/home/deepak/es3k.pl --ip=192.168.0.75 --port=8 --action=ON'

alias switcht="sudo cp /etc/inetd.conf.trunk /etc/inetd.conf;sudo /etc/init.d/openbsd-inetd restart;sudo rm /qs1;sudo ln -s /home/deepak/11wte/out/qs1/root /qs1;sudo /etc/init.d/nfs-user-server restart"

alias switchmap="sudo cp /etc/inetd.conf.map /etc/inetd.conf; sudo rm /qs5; sudo ln -s /home/deepak/map/out/qs5/root /qs5;sudo /etc/init.d/openbsd-inetd restart;sudo /etc/init.d/nfs-user-server restart"

alias switchw="sudo cp /etc/inetd.conf.wios2trunk /etc/inetd.conf;sudo /etc/init.d/openbsd-inetd restart;sudo rm /qs5;sudo ln -s /home/deepak/wios2trunk/out/qs5/root /qs5;sudo /etc/init.d/nfs-user-server restart"
alias mapswitch="sudo /etc/init.d/nfs-user-server restart; sudo /etc/init.d/openbsd-inetd restart"

alias ss='svn status | grep -v tags | grep -v results.log | grep -v cscope.out| grep -v applet| grep -v "X " |grep -v Performing'
alias gs='git status -s | grep " M"'
alias si='svn info'
alias vid='vi -u /home/deepak/.vimdiffrc -c "SVNVimDiff"'
alias sup='svn update'
alias nfs='sudo service nfs-kernel-server restart'
alias svn ci='nocorrect svn ci'

# whenever you update bashrc
alias bashup='. ~/.bashrc'

# see how many files are still open (useful at the end of the day,
# so you dont leave a file open (& possibly unsaved) in some hidden
# tab in some hidden terminal.
alias allvi='ps -ef | grep vi | grep deepak | grep -v grep'

# wireless specific shortcuts-to-code
WIOS_CODEBASE=/home/deepak/map/src/sys
alias cc='cd $WIOS_CODEBASE/cc/'
alias dp='cd $WIOS_CODEBASE/../dataplane'
alias out5='cd $WIOS_CODEBASE/../../out/ws5100/root/usr/sbin/'
alias pkt='cd $WIOS_CODEBASE/cc/pktdrvr'
alias inc='cd $WIOS_CODEBASE/cc/include'
alias cinc='cd $WIOS_CODEBASE/cc/ccserver/include'
export SVN_EDITOR=vim
export http_proxy=http://wwwgate0.mot.com:1080
export https_proxy=http://wwwgate0.mot.com:1080
#disp=`echo $SSH_CLIENT | awk '{ print $1 }'`
export TERM=xterm-256color
#export DISPLAY=$disp:0


