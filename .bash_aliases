alias wr='nohup /home/nelson/.WebRatio/WebRatio'
alias aptana='nohup /home/nelson/.Aptana_Studio_3/AptanaStudio3'
alias phinx='vendor/bin/phinx'
alias phake='vendor/bin/phake'
#alias pugdebug='nohup ~/.pugdebug/pugdebug &> /dev/null &'
alias dklatest='docker run -p 80:80 -v /home/nelson/workspace/:/var/www/html/ nerones/simple-php-apache-dev:5.5.23'

alias tdev='tmux -f ~/.dev.tmux.conf attach -t dev'
alias tdev54='tmux -f ~/.dev54.tmux.conf attach -t dev'
alias tnative='cd ~/workspace/ecupro/ecupro && tmux -f ~/.dev.native.tmux.conf attach -t dev'
#alias tnative='tmux -f ~/.dev.native.tmux.conf attach -t dev'

#Laravel aliases

alias pa='php artisan'

alias pads='php artisan db:seed'
alias padv='php artisan db:seed --class DevSeeder'

alias pam="php artisan migrate"
alias pamf="php artisan migrate:fresh"
alias pamfs="php artisan migrate:fresh --seed"
alias pamr="php artisan migrate:refresh"
alias pamroll="php artisan migrate:rollback"

alias pamc='php artisan make:controller'
alias pame='php artisan make:event'
alias pammo='php artisan make:model'
alias pamm='php artisan make:migration'
alias pams='php artisan make:seed'

# Docker compose
alias dct='docker compose stop'
alias dcu='docker compose up'
alias dcud='docker compose up -d'
