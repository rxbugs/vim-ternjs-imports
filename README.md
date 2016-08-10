# Repo to reproduce tern autocompletion bug

See:

- https://github.com/carlitux/deoplete-ternjs/issues/25
- https://asciinema.org/a/1d8jq2va1dpp4uat2e8nb4y3p
- https://asciinema.org/a/brkv2of697nhbigcmy7k749f5

### Steps after cloning this

Install vim-plug

```
$ curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Install tern

```
npm install tern
```

Run Neovim

```
nvim -u init.vim
```

Install plugins

```
:PlugInstall
```

Exit nvim and reopen with

```
nvim -u init.vim index.js
```

Each on a new line:

- Type `myF`: popup will appear.
- Try to type `import '`: no popup appears.

Run

```
:inoremap <expr> <C-Q> deoplete#manual_complete()
```

Then try `import '` and then `<C-Q>` and select a module.
Also try `import './o` and then `<C-Q>` and select the other module.

Try the same with `init.omni.vim` but compare with inserting from `<C-X><C-O>`.

### Tested with

- Python 3.5.2 with python-neovim host (required for deoplete)
- NVIM 0.1.4
- Node 6.3.1
- Tern 0.19.0
