


call plug#begin('~/.vim/plugged')
Plug 'shaunsingh/nord.nvim'
Plug 'ldelossa/vimdark'
Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'tpope/vim-fugitive'


Plug 'jaredgorski/spacecamp'
Plug '9leks/ayu-vim'

Plug 'owickstrom/vim-colors-paramount'
Plug 'sheerun/vim-polyglot'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'alvan/vim-closetag'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'preservim/vimux'

Plug 'HenryNewcomer/vim-theme-papaya'
Plug  'romannmk/ambiance-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vwxyutarooo/nerdtree-devicons-syntax'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'ryanoasis/vim-devicons'

if has('nvim') || has('patch-8.0.902')
	Plug 'mhinz/vim-signify'
else
	Plug 'mhinz/vim-signify', { 'branch': 'legacy'  }
endif

Plug 'yggdroot/indentline'
Plug 'preservim/nerdcommenter'
Plug 'mattn/emmet-vim'
Plug 'ghifarit53/tokyonight-vim'

Plug 'christoomey/vim-tmux-navigator'

Plug 'wakatime/vim-wakatime'


Plug 'chriskempson/base16-vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main'  }

Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'

Plug 'joshdick/onedark.vim'

"Plug 'haze/anis.vim'
"Plug 'jacoborus/tender.vim'
"Plug 'cocopon/iceberg.vim'
call plug#end()
