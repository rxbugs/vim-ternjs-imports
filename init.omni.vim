call plug#begin(getcwd() . '/.plugged')

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

Plug 'shougo/deoplete.nvim', { 'do': function('DoRemote') }

Plug 'carlitux/deoplete-ternjs'
Plug 'ternjs/tern_for_vim'

let g:deoplete#enable_at_startup = 1
let g:tern#command = [getcwd() . './node_modules/.bin/tern']
let g:tern#arguments = ['--persistent']

call plug#end()

set omnifunc=syntaxcomplete#Complete
