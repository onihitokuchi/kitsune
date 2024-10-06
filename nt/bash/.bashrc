eval $(ssh-agent) >/dev/null 2>&1
ssh-add "$HOME/.ssh/id_rsa" >/dev/null 2>&1

alias ls='eza -al --color=always --group-directories-first'
alias la='eza -a --color=always --group-directories-first'
alias ll='eza -l --color=always --group-directories-first'
alias lt='eza -aT --color=always --group-directories-first'

alias tinker="php artisan tinker"

# eval $(ssh-agent) && ssh-add "$HOME/.ssh/<path>";
# ssh-keygen -t rsa -b 4096 -C "<email>"

# eval $(ssh-agent) >/dev/null 2>&1
# ssh-add "$HOME/.ssh/<path>" >/dev/null 2>&1

# convert <input> -define icon:sizes=16,24,32,48,64,128,256 <name>.ico

# yt-dlp --keep-video -f bestaudio --extract-audio --audio-format mp3 <url>
