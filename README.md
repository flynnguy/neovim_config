Migrating over to a pure nvim config.
Note: Uses [pyenv](https://github.com/pyenv/pyenv)

Clone this repo to `$HOME/.config/nvim`
Get Plug:
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

```
pyenv install 3.8.5 # Or whatever the latest is
pyenv virtualenv 3.8.5 neovim3 # Use same version as above
pyenv activate neovim3
pip install neovim
pip install flake8
pyenv which python  # Note the path, should be the same as in config
pyenv deactivate
```

Run `:PlugInstall` from inside vim
