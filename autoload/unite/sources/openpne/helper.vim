function! unite#sources#openpne#helper#get_openpne_root()
  let root = s:shellslash(simplify(fnamemodify(expand('%:p'), ':p:s?[\/]$??')))
  let previous = ""
  while root !=# previous
    let dir = s:sub(root, '[\/]$', '') . '/symfony'
    let type = getftype(dir)
    if type ==# 'file'
      return root
    endif
    let previous = root
    let root = fnamemodify(root, ':h')
  endwhile
  return 0
endfunction

function! unite#sources#openpne#helper#get_openpne_plugin_root()
  let root = s:shellslash(simplify(fnamemodify(expand('%:p'), ':p:s?[\/]$??')))
  let previous = ""
  while root !=# previous
    let dir = s:sub(root, '[\/]$', '')
    let type = getftype(dir)
    if type ==# "dir" && fnamemodify(root, ":t") =~ "op.*Plugin"
      return root
    endif
    let previous = root
    let root = fnamemodify(root, ':h')
  endwhile
  return 0
endfunction
function! s:sub(str,pat,rep) abort
  return substitute(a:str,'\v\C'.a:pat,a:rep,'')
endfunction

function! s:gsub(str,pat,rep) abort
  return substitute(a:str,'\v\C'.a:pat,a:rep,'g')
endfunction

function! s:shellslash(path)
  if exists('+shellslash') && !&shellslash
    return s:gsub(a:path,'\\','/')
  else
    return a:path
  endif
endfunction
