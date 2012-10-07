alias sshhomer='ssh emile@homer.fatbeehive.com'
alias sshbrix='ssh emile@brix.fatbeehive.com'
alias sshfalco='ssh -p 6007 emile@falco.fatbeehive.com'
alias sshmicko='ssh emile@micko.fatbeehive.com'
alias sshnearly='ssh korpzone_emileswarts@ssh.phx.nearlyfreespeech.net'
alias sshnearlyvim='ssh korpzone_myvimcommands@ssh.phx.nearlyfreespeech.net'
alias sshdev='ssh emile@192.168.1.126'

alias sshfsbrix='sshfs emile@brix.fatbeehive.com:/server/www/ ~/srv/brix/'
alias sshfshomer='sshfs emile@homer.fatbeehive.com:/server/www/ ~/srv/homer/'
alias sshfsfalco='sshfs -p 6007 emile@falco.fatbeehive.com:/server/www ~/srv/falco/'
alias sshfsmicko='sshfs emile@micko.fatbeehive.com:/server/www ~/srv/micko/'
alias sshfsnearly='sshfs korpzone_emileswarts@ssh.phx.nearlyfreespeech.net:/ ~/srv/nearly/'
alias sshfsnearlyvim='sshfs korpzone_myvimcommands@ssh.phx.nearlyfreespeech.net:/ ~/srv/nearlyvim/'

alias ubrix='fusermount -z -u ~/srv/brix'
alias uhomer='fusermount -z -u ~/srv/homer'
alias ufalco='fusermount -z -u ~/srv/falco'
alias umicko='fusermount -z -u ~/srv/micko'

#gmail accounts
#korpzone@gmail.com
alias muttkp='mutt -F ~/.muttrc_kp'

#emile.swarts123@gmail.com
alias muttem='mutt -F ~/.muttrc_em'

#emilefabeehive@gmail.com
alias muttemfb='mutt -F ~/.muttrc_fbgmail'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -al'

alias ack='ack-grep'

#Firefox
alias ff='firefox &'
alias fff='/usr/bin/firefox-4.0 &'

#take notes
alias note='vim ~/notes/client.txt'

#for sshfs
alias lhomer='~/remoteserv/HOMER'
alias lbrix='~/remoteserv/BRIX'

#vimrecordsession
#alias vi='vim -w $HOME/vimrecord '

#cd
alias ..='../'
alias ...='../../'
alias ....='../../../'

alias xx='exit'
