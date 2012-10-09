### =alias_start
# =command
alias eb='mvim --remote-tab-silent ~/.zshrc'
alias ebu='source ~/.zshrc'
alias eba='mvim --remote-tab-silent ~/.bash_aliases'
alias vim='mvim --remote-tab-silent'
alias ack='ack'
alias ll='ls -hlt'
alias lm='ls -al|more'
alias h='history'
alias rm='rm -i'
alias psag='ps aux | grep'
alias psa='ps aux'
alias pse='ps -ef'
alias cpwd='printf $PWD | pbcopy'
# alias high_history="history | awk '{CMD[$2]++;count++;} END { for (a in CMD )print CMD[ a ]" " CMD[ a ]/count*100 "% " a }' | grep -v "./" | column -c3 -s " " -t |sort -nr | nl | head -n10"

# =config
alias essh='mvim --remote-tab-silent ~/.ssh/config'
alias csshk='pbcopy < ~/.ssh/id_rsa.pub'
alias ehosts='sudo mvim --remote-tab-silent /etc/hosts'

# =snippets
alias srb='vim /home/binku/.vim/snippets/ruby.snippets'
alias serb='vim /home/binku/.vim/snippets/eruby.snippets'
alias sjs='vim /home/binku/.vim/snippets/javascript.snippets'

# =apt-get
alias aptl='sudo mvim --remote-tab-silent /etc/apt/sources.list'
alias apti='sudo apt-get install'
alias aptu='sudo apt-get update'

# =rails
alias ss='ruby script/server'
alias ss1='ruby script/server -p 3001'
alias ss2='ruby script/server -p 3002'
alias sc='ruby script/console'
alias bss='bundle exec rails s'
alias bsc='bundle exec rails c'
alias brut='bundle exec rake routes'
alias brdb='bundle exec rake db:migrate'
alias sa='ruby script/autospec'
alias sst='ruby script/server -e test -p 3001'
alias rinit='rake wando:init'
alias rtest='rake db:test:purge & rake db:test:clone'
alias rset='rake wando:reset'
alias rmodel='rake annotate_models'
alias rmg='rake db:migrate'
alias rg='ruby script/generate'
alias rc='rake cucumber:all'
alias ri='rake install'
alias rgm='ruby script/generate migration'
alias rgmd='ruby script/generate model'
alias upQorcms='rake tis:update_qorcms_gem'
alias rinit='rake db:drop && rake db:create && rake qorcms:db:migrate && rake db:migrate && rake db:seed'
alias init='rake db:drop && rake db:create && rake qorcms:db:migrate && rake db:migrate && rake db:seed && rake tis:populate'
alias pryc='pry -r ./config/environment.rb'

# =gem
alias gi='gem install'
alias gil='gem install -l --no-rdoc --no-ri'
alias gl="gem list | grep"

# rvm
alias rvms='rvm system'
alias rvmkz='rvm use 1.8.7-p358@kinzin'
alias rvmgg='rvm use 1.9.3-head@gogotree'
alias rvmlg='rvm use 1.9.3-head@lgame'
alias rvma='rvm use 1.9.3@account'

# =project
alias cdC='cd $HOME/Codes'
alias cdR='cd $HOME/Codes/Ruby'
alias cdr='cd $HOME/Codes/Rails'

# other
alias cdkz='cd $HOME/Codes/Rails/kinzin/'
alias cdgg='cd $HOME/Codes/Rails/gogotree/'
alias cdcc='cd $HOME/Codes/Rails/code_campo'
alias cdlg='cd $HOME/Codes/Rails/lgame/'
alias cdmn='cd $HOME/Codes/magento_new'
alias cdp='cd $HOME/Codes/Rails/paywith/'
alias cda='cd $HOME/Codes/Rails/accounting/'
alias cds='cd $HOME/Codes/Rails/smart_at/'

# Easwifi
alias cdet='cd $HOME/Codes/Easwift/test'
alias cdea='cd $HOME/Codes/Easwift/test_app'

# ThePlant
alias cdl='cd $HOME/Codes/ThePlant/lacoste'
alias cdot='cd $HOME/Codes/ThePlant/onitsukatiger'
alias cdtis='cd $HOME/Codes/ThePlant/tis'
alias cdq='cd $HOME/Codes/ThePlant/qor'

# =svn
alias svnu='svn up'
alias svnc='svn commit -m'
alias svns='svn status'
alias sca='svn commit app/ db/ ext/ public/ vendor/ config/locales/ config/routes.rb config/initializers/ doc/ lib/ script/ tmp/ -m'
alias sua='svn update app/ db/ ext/ public/ vendor/ config/locales/ config/routes.rb config/initializers/ doc/ lib/ script/ tmp/'
alias scapp='svn commit app/ -m'

# =git
alias gcm='git checkout master'
alias gadd='git add'
alias gc='git commit -m'
alias gcommit='rake && rake cucumber && git commit -m'
alias gs='tig status'
alias gb='git branch'
alias gpull='git pull --rebase'
alias gup='git pull --rebase'
alias glog='tig log'
alias gpush='git push'
alias gpre='git reset --soft HEAD^'
alias glog="git log --pretty=format:'-----------------------------------%h was %an, %ar, message: %s-----------------------------------' -p --color"
alias gstash="git stash show -p --color"

alias i='iciba'
alias s='gnome-screenshot -a'
alias p='mplayer'

# alias down='wget'
# alias dlo='wget -o'
# alias dl='axel -n 200'
# alias dlh='axel -n 300'
# alias dlo='axel -n 200 -o '
# alias dlho='axel -n 300 -o '
# alias r='tail'
# alias e='exit'

# =ssh
alias ssh_out='ssh -D 7070 kinzin@216.86.115.219'
# alias gout="ssh -D 7070 binku87@black.sshchina.com"
# alias ssh_cnex='ssh 172.17.21.108 -l huizhou'
# alias ssh_fetion='ssh hzfs123.vicp.net -l wando'
# alias ssh_apple='ssh 172.17.21.85 -l hzu'
# alias ssh_out='ssh -D 7070 binku87@black.sshchina.com'
# alias ssh_out='sshgfw'
# alias ssh_out='ssh ec2-user@ec2-184-72-205-69.compute-1.amazonaws.com -D 7070'
# alias ssh_tis='ssh tis@tis.theplant-dev.com'
# alias ssh_hs='ssh root@192.168.1.31'
# alias ssh_hsh='ssh root@opengoss.3322.org'
# alias ssh_hs='sshhuasi'
# alias ssh_hsh='sshhshome'
# alias ssh_d3='sshhsd3'
# alias ssh_el='ssh root@192.168.1.26'
# alias ssh_jx='ssh root@202.109.128.29'
# ssh= 'ssh -D 7070 binku87@black.sshchina.com'
# password:0660198759

# =ruijie
# alias ruijie='sudo ifconfig eth0 down && sudo ifconfig eth0 hw ether 00:E0:50:D5:14:41 && sudo ifconfig eth0 up && sudo ruijieclient'
# alias lab='sudo ifconfig eth0 down && sudo ifconfig eth0 hw ether 00:23:8B:D6:99:18 && sudo ifconfig eth0 up'
### =alias_end
