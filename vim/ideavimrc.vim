set incsearch

" Case-insensitive searching.
set ignorecase

" But case-sensitive if expression contains a capital letter.
set smartcase

" Default to global substitutions on lines
set gdefault

set surround
set highlightedyank
set textobj-entire

" Use the system pasteboard
set clipboard

" relative line numbers
set relativenumber

" Make c-j to act the same as c-n
inoremap <C-j> <C-n>
inoremap <C-k> <C-p>

nnoremap <C-j> <C-n>
nnoremap <C-k> <C-p>

vnoremap <C-j> <C-n>
vnoremap <C-k> <C-p>

nnoremap Q <nop>

" better esc
imap fd <esc>
vno v <esc>

nnoremap <silent> <leader>/ :nohlsearch<CR>

" project based keybindings
nnoremap <space>pf :action GotoFile<CR>
nnoremap <space>pF :action SelectInProjectView<CR>
nnoremap <space>bb :action RecentFiles<CR>
nnoremap <C-b> :action RecentFiles<CR>
nnoremap <space>pt :action ActivateProjectToolWindow<CR>

nnoremap ,r :action RenameElement<CR>
nnoremap ,R :action RefactoringMenu<CR>

" window
nnoremap <space>wv :vsplit<CR>
nnoremap <space>wh :split<CR>
