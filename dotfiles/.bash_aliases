# path aliases
alias ..='cd ..'

# code
alias code='cd ~/b2d'
alias site='cd ~/b2d/website'
alias out='cd ~/outhouse/'

# apps
alias st='open -a SourceTree '

#git
rebase() {
    git rebase -i HEAD~$1
}

alias g='git'
alias gr=rebase
alias gs='git status'
alias gp='git pull '
alias gpp='git pull origin master'
alias cdweb="cd ~/code/website"
alias co="git co"
alias cob="git co -b"
alias spec="lab -g"
alias specd="node --debug-brk node_modules/lab/bin/lab -g"
alias push="git push -u origin HEAD"
alias cmp="git fetch origin master:master && git checkout master"
alias upmaster="git fetch origin master:master"
alias diffmaster="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative master.."
alias vssh_debug="vagrant ssh -- -L 5858:127.0.0.1:5858"

# Existing site
alias ssh-proda='ssh -i FarmstrKeyQ22014.pem ec2-user@ec2-54-212-229-141.us-west-2.compute.amazonaws.com'
alias ssh-prodb='ssh -i FarmstrKeyQ22014.pem ec2-user@ec2-54-185-56-250.us-west-2.compute.amazonaws.com'
alias ssh-brood='ssh -i FarmstrSandboxKeyQ22014.pem ec2-user@ec2-50-112-44-154.us-west-2.compute.amazonaws.com'

#other
alias ni="node-inspector --preload false"
alias npmls='npm ls --depth=0'
