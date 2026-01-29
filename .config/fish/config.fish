if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias v='$EDITOR'
alias st='systemctl-tui'
alias ps='pacsea'
alias hyprc='nvim ~/.config/hypr/hyprland.conf'
alias vimc='nvim ~/.config/nvim/init.lua'
alias kittyc='nvim ~/.config/kitty/kitty.conf'
alias fishc='nvim ~/.config/fish/config.fish'
alias waybarc='nvim ~/.config/waybar/config.jsonc'
alias zombies='ps axo pid=,stat= | awk \'$2~/^Z/ { print $1 }\''
alias cat='bat --style=plain --paging=never'
alias bat='bat --style=plain --paging=never'
alias tokei='tokei'
alias shutdown='systemctl poweroff'
alias reboot='systemctl reboot'

alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Helpful aliases
alias l='eza -lh --icons=auto' # long list
alias ls='eza -1 --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias lt='eza --icons=auto --tree' # list folder as tree
alias un='$aurhelper -Rns' # uninstall package
alias up='$aurhelper -Syu' # update system/package/aur
alias pl='$aurhelper -Qs' # list installed package
alias pa='$aurhelper -Ss' # list available package
alias pc='$aurhelper -Sc' # remove unused cache
alias po='$aurhelper -Qtdq | $aurhelper -Rns -' # remove unused packages, also try > $aurhelper -Qqd | $aurhelper -Rsu --print -

abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'

abbr mkdir 'mkdir -p'

# NVM
alias nla='nvm list available'
alias nil='nvm install lts'
alias nul='nvm use lts'
alias nila='nvm install latest'
alias nula='nvm use latest'
alias nl='nvm list'

# Git
alias g='git'
alias gi='git init'
alias ga='git add'
alias gaa='git add .'
alias gac='git add . && git commit -m'
alias gs='git status'
alias gV='git --version'
alias gp='git push'
alias gP='git pull'
alias gl='git log --oneline --decorate'
alias glg='git log --oneline --graph --decorate'

# Bun
alias b='bun'
alias bx='bunx --bun'
alias bi='bun install'
alias ba='bun add'
alias bad='bun add -d'
alias br='bun remove'
alias bu='bun update'
alias bui='bun update -i'
alias bd='bun --bun run dev'
alias bcv='bun create vite'
alias bcr='bun create rsbuild@latest'
alias bcn='bun create next-app --empty --ts --tailwind --biome --react-compiler --app --use-bun --src-dir --no-import-alias --skip-install'
alias bct='bun create @tanstack/start@latest'
alias bca='bun create astro@latest'

# Pnpm
alias p='pnpm'
alias px='pnpm dlx'
# alias pi='pnpm install --prefer-offline'
alias pi='pnpm install'
alias pin='pnpm init'
alias pa='pnpm add'
alias pad='pnpm add -D'
alias pag='pnpm add -g'
alias pc='pnpm create'

alias pcv='pnpm create vite@latest'
alias pcn='pnpm create create-next-app@latest --empty --ts --tailwind --biome --react-compiler --app --use-pnpm --src-dir --no-import-alias --skip-install'
alias pcr='pnpm create rsbuild@latest'
alias pca='pnpm create astro@latest'

alias psp='pnpm store prune'
alias pp='pnpm prune'
alias pl='pnpm list'
alias plg='pnpm list -g'
alias pr='pnpm remove'
alias prg='pnpm remove -g'
alias pu='pnpm update'
alias pug='pnpm update -g'

alias pb='pnpm run build'
alias pd='pnpm run dev'
#alias ps='pnpm run start'
alias pt='pnpm run test'

set -gx QT_QPA_PLATFORMTHEME qt6ct
set -gx EDITOR nvim

set EDITOR nvim
set aurhelper yay

starship init fish | source
zoxide init fish | source
~/.local/bin/mise activate fish | source
