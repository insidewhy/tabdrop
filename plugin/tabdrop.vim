function s:TabDropHelper(file, here)
  let visible = {}
  for t in range(1, tabpagenr('$'))
    for b in tabpagebuflist(t)
      if bufname(b) == a:file
        if a:here
          let current = tabpagenr()
          exec "tabnext " . t
          exec "tabmove " . (current - 1)
        else
          exec "tabnext " . t
        endif
        return
      endif
    endfor
  endfor
  exec "tabnew " . a:file
endfunction

function s:TabDrop(file)
  if exists(":drop")
    exec "tab drop " . a:file
  else
    call s:TabDropHelper(a:file, 0)
  end
endfunction

function s:TabDropHere(file)
  call s:TabDropHelper(a:file, 1)
endfunction

command -nargs=1 -complete=file TabDrop call s:TabDrop(<q-args>)
command -nargs=1 -complete=file TabDropHere call s:TabDropHere(<q-args>)
