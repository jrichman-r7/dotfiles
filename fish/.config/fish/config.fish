if status is-interactive
# Commands to run in interactive sessions can go here
end
starship init fish | source

abbr -a dot 'cd ~/dotfiles'
abbr -a dotst 'cd ~/dotfiles; and git status'
abbr -a dotc 'cd ~/dotfiles; and git add -A; and git commit'
abbr -a stowr 'cd ~/dotfiles; and stow -R'

