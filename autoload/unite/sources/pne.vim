call unite#util#set_default('g:unite_openpne_execute_cmd' , 'VimShellExecute')

let s:source = {}

function! unite#sources#pne#define()
  let rel_path = 'autoload/unite/sources/openpne/collector/*.vim'
  let names = map(split(globpath(&runtimepath, rel_path), "\<NL>") ,
        \ 'fnamemodify(v:val , ":t:r")')
  let list = []
  for val in names
    let source = copy(s:source)
    let source.description = 'conditates from ' . val . ' list'
    let source.name = 'pne/' . val
    call add(list , source)
  endfor
  return list
endfunction

function! s:source.gather_candidates(args, context)
  let openpne_root = unite#sources#openpne#helper#get_openpne_root()
  if openpne_root ==# ''
    let openpne_root = unite#sources#openpne#helper#get_openpne_plugin_root()
  endif
  let func_name = 'unite#sources#openpne#collector#' . substitute(self.name, 'pne/', '', '') . '#candidates'
  let self.source__openpne_root = openpne_root
  return {func_name}(self)
endfunction
