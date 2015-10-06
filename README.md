## Dotfiles, Brews, Casks

For OSX for now. Ensure that this is cloned to `~/.dotfiles`.

### Dotfiles
To install dotfiles:

    $ make dofiles

Symbolic links will be created under your home directory.

### Brews and Casks
To install brew and casks:

    $ make brews



## Notes

For now sets up zsh as the default shell using prezto (https://github.com/briandela/prezto/ - fork of https://github.com/sorin-ionescu/prezto/).

Still uses `.powerline-shell.py` for the shell instead of one of the built in prezto shells (https://github.com/milkbikis/powerline-shell).


Inspired by https://github.com/eczarny/dotfiles/

## TODO
- Configure sublime plugins (e.g. http://stackoverflow.com/questions/19529999/add-package-control-in-sublime-text-3-through-the-command-line, https://github.com/mrmartineau/SublimeTextSetupWiki/issues/3 )
- Configure iterm2