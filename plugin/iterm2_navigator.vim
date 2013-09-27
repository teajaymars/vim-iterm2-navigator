function! SwitchWindow(key)
  let oldwindow = winnr()
  if a:key=='l'
    wincmd l
  elseif a:key=='k'
    wincmd k
  elseif a:key=='j'
    wincmd j
  elseif a:key=='h'
    wincmd h
  endif
  if oldwindow==winnr()
      if a:key=='l'
        let cmd = 'osascript ~/.vim/bundle/vim-iterm2-navigator/applescript/iterm2_l.scpt'
      elseif a:key=='k'
        let cmd = 'osascript ~/.vim/bundle/vim-iterm2-navigator/applescript/iterm2_k.scpt'
      elseif a:key=='j'
        let cmd = 'osascript ~/.vim/bundle/vim-iterm2-navigator/applescript/iterm2_j.scpt'
      elseif a:key=='h'
        let cmd = 'osascript ~/.vim/bundle/vim-iterm2-navigator/applescript/iterm2_h.scpt'
      endif
      silent call system(cmd)
  endif
endfunction
