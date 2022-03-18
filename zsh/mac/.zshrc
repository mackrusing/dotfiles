# .zshrc

# completion
# case insensitive completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

autoload -Uz compinit && compinit

# pure prompt & settings
zmodload zsh/nearcolor
autoload -U promptinit; promptinit

zstyle :prompt:pure:user color blue
zstyle :prompt:pure:host color blue
zstyle :prompt:pure:path color blue

zstyle :prompt:pure:git:branch color default
zstyle :prompt:pure:git:branch:cached color red
zstyle :prompt:pure:git:dirty color green
zstyle :prompt:pure:git:action color default
zstyle :prompt:pure:git:arrow color yellow
zstyle :prompt:pure:git:stash color yellow

zstyle :prompt:pure:execution_time color yellow
zstyle :prompt:pure:suspended_jobs color red

zstyle :prompt:pure:virtualenv color magenta
zstyle :prompt:pure:prompt:continuation color magenta

zstyle :prompt:pure:prompt:success color magenta
zstyle :prompt:pure:prompt:error color red

prompt pure

# on start
echo '\n\n\n'
neofetch
echo '\n'

# aliases
alias ls='ls --color'
alias la='ls -a'
