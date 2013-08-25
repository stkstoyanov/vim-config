Installation
------------

Clone the repository with all of its submodules:
```
cd ~
git clone --recursive git@github.com:stkstoyanov/vim-config.git .vim
```

Create a symbolic link for the .vimrc file:

```
ln -s ~/.vim/vimrc ~/.vimrc
```

Clone all plugins to the local repository:

```
git submodule update --init
```
