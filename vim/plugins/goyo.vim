Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

function! s:goyo_enter()
  silent !tmux set status off
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
  " ...
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
  " ...
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

noremap <Leader>tg :Goyo<CR>:echo 'Toggled Goyo'<CR>" Toggle goyo time
