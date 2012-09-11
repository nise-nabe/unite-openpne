function! unite#sources#openpne#collector#command#candidates(source)
  return [{'word': 'symfony cc', 'kind': 'command', 'action__command': g:unite_openpne_execute_cmd . ' ' . a:source.source__openpne_root . '/symfony cc'}]
endfunction
