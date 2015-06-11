# General Alias
#

# Reload Zsh
alias zource='. ~/.zshrc'

# clippie
alias clip="xclip -sel clip | echo ' => Copied to clipboard.'"

# compress junk
alias tarr="tar -czvf"
alias untarr="tar -zxvf"

# Remove the hosts that I don't want to keep around- in this case, only
# keep the first host. Like a boss.
alias clearhosts="head -2 ~/.ssh/known_hosts | tail -1 > ~/.ssh/known_hosts"
alias clearcloudhosts="sed '/amazonaws/d' ~/.ssh/known_hosts > /tmp/kh && mv /tmp/kh ~/.ssh/known_hosts"

#
# # Pipe my public key to my clipboard. Fuck you, pay me.
alias pubkey="more ~/.ssh/id_dsa.pub | xclip -sel clip | echo '=> Public key copied to pasteboard.'"

#alias spark="~/bin/spark/spark"

alias diclean='docker rmi $(docker images -q --filter "dangling=true")'
alias dclean='docker ps -a | grep -v '\''CONTAINER\|config\|data\|run'\'' | cut -c-12 | xargs docker rm'

alias compose='docker-compose'
alias fig='docker-compose'
