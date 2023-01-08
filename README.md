# nois.vim
Vim plugin that provides [Nois][nois] syntax highlighting.

## Installation

For activating the full functionality, this plugin requires either the plugin
manager or the `.vimrc` to have the following:

```vim
syntax enable
filetype plugin indent on
```

Most plugin managers don't do this automatically, so these statements are
usually added by users in their `vimrc` _right after_ the plugin manager load
section.

### [Vim8 packages][vim8]

```sh
git clone https://github.com/ivanjermakov/nois.vim ~/.vim/pack/plugins/start/nois.vim
```

### [Vundle][vundle]

```vim
Plugin 'ivanjermakov/nois.vim'
```

### [Pathogen][pathogen]

```sh
git clone --depth=1 https://github.com/ivanjermakov/nois.vim.git ~/.vim/bundle/nois.vim
```

### [vim-plug][vim-plug]

```vim
Plug 'ivanjermakov/nois.vim'
```

### [dein.vim][dein]

```vim
call dein#add('ivanjermakov/nois.vim')
```

### [NeoBundle][neobundle]

```vim
NeoBundle 'ivanjermakov/nois.vim'
```

[nois]: https://github.com/nois-lang/nois
[vim8]: http://vimhelp.appspot.com/repeat.txt.html#packages
[vundle]: https://github.com/gmarik/vundle
[pathogen]: https://github.com/tpope/vim-pathogen
[vim-plug]: https://github.com/junegunn/vim-plug
[dein]: https://github.com/Shougo/dein.vim
[neobundle]: https://github.com/Shougo/neobundle.vim
