function! unite#sources#openpne#collector#task#candidates(source)
  let src = []

  call add(src, {'word': 'symfony cc', 'kind': 'command', 'action__command': g:unite_openpne_execute_cmd . ' ' . a:source.source__openpne_root . '/symfony cc'})
  call add(src, {'word': 'symfony doctrine:build-model', 'kind': 'command', 'action__command': g:unite_openpne_execute_cmd . ' ' . a:source.source__openpne_root . '/symfony doctrine:build-form'})
  call add(src, {'word': 'symfony doctrine:build-form', 'kind': 'command', 'action__command': g:unite_openpne_execute_cmd . ' ' . a:source.source__openpne_root . '/symfony doctrine:build-form'})
  call add(src, {'word': 'symfony doctrine:build-filter', 'kind': 'command', 'action__command': g:unite_openpne_execute_cmd . ' ' . a:source.source__openpne_root . '/symfony doctrine:build-form'})
  call add(src, {'word': 'symfony plugin:publish-assets', 'kind': 'command', 'action__command': g:unite_openpne_execute_cmd . ' ' . a:source.source__openpne_root . '/symfony doctrine:build-form'})
  call add(src, {'word': 'symfony project:clear-controllers', 'kind': 'command', 'action__command': g:unite_openpne_execute_cmd . ' ' . a:source.source__openpne_root . '/symfony doctrine:build-form'})
  call add(src, {'word': 'symfony app:route pc_frontend', 'kind': 'command', 'action__command': g:unite_openpne_execute_cmd . ' ' . a:source.source__openpne_root . '/symfony doctrine:build-form'})

  let paths = ['**/task/*.*']
  for path in paths
    for real_path in split(globpath(a:source.source__openpne_root, path), '\n')
      call add(src, {'word': substitute(real_path, a:source.source__openpne_root, '', 'g'), 'kind': 'file', 'action__path': real_path })
    endfor
  endfor
  return src
endfunction
