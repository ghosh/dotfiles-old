# ---------------------------------
# zShell Config
# ---------------------------------

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# See ambidexter.zsh-theme in .oh-my-zsh/themes/
ZSH_THEME="ambidexter"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git svn composer sublime laravel5 vagrant z npm bower brew zsh-navigation-tools)

source $ZSH/oh-my-zsh.sh

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-default.dark.sh"
[[ -s $BASE16_SHELL ]] && . $BASE16_SHELL

# Set default editior as vim
export EDITOR='vim'

# don't check for new mail
MAILCHECK=0
MAIL=0


# ---------------------------------
# ALIASES
# ---------------------------------


# Dotfiles --------------------------------
alias zshconfig="vim ~/.zshrc"            # zsh Config
alias vimconfig="vim ~/.vimrc"            # vim Config
alias tmuxconfig="vim ~/.tmux.conf"       # tmux Config
alias gitconfig="git config -e --global"  # git Config

alias zshreload=". ~/.zshrc"             # zsh Reload


# Mac System Commans --------------------------------
alias killDS="find . -name '*.DS_Store' -type f -delete"    # Removes all .DS_Store files from dir and subdirs

alias hiddenFilesShow='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hiddenFilesHide='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Sketch Commands --------------------------------
alias sketchmem="sudo du -sh /.DocumentRevisions-V100"


# Dev Environtment --------------------------------

# Vagrant Shortcut
alias v="vagrant"

# Artisan Aliases
alias artisan="php artisan"
alias art="php artisan"

alias phpunit="./vendor/bin/phpunit"
alias unit="./vendor/bin/phpunit"

# MAMP SQL
alias sql="/Applications/MAMP/Library/bin/mysql --host=localhost -uroot -proot"

# Tmux -----------------------------------------
alias tkill="tmux kill-session -t"

# SVN ---------------------------------------------

# add everything that needs to be added based on results of svn status
alias svnadd="svn st | grep \? | awk '''{print \"svn add \"$2 }''' | bash" 

# show svn status, sans the noise from externals
alias svnst='svn st --ignore-externals'

# Others -----------------------------------------

# Runs a custom PHP server
alias serve="php -S localhost:8888"

# Other Aliases
alias c="clear"
alias remove="rm -rf"




# ---------------------------------
# PATH Configs
# ---------------------------------
export PATH=$PATH:/bin:/usr/bin:/usr/local/bin

# Defining and adding MAMP php to path (Comment and uncomment to toggle)
export MAMP_PHP=/Applications/MAMP/bin/php/php5.6.10/bin
export PATH="$MAMP_PHP:$PATH"

#As mentioned by Brew Doctor
#export PATH="/usr/local/bin:$PATH"

# For Homestead
#export PATH=~/.composer/vendor/bin:$PATH

#PATH=~/.composer/vendor/bin:$PATH

# ---------------------------------
# Grunt Tab Completion
# ---------------------------------
#eval "$(grunt --completion=zsh)"


#export NVM_DIR="/Users/Ghosh/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
