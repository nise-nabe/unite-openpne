function! unite#sources#openpne#collector#task#candidates(source)
  let tasks = []

  call add(tasks, {'word': 'symfony cc', 'kind': 'command', 'action__command': g:unite_openpne_execute_cmd . ' ' . a:source.source__openpne_root . '/symfony cc'})

  let paths = ['**/task/*.*']
  for path in paths
    for task in split(globpath(a:source.source__openpne_root, path), '\n')
      call add(tasks, {'word': task, 'kind': 'file', 'action__path': task})
    endfor
  endfor

  return tasks
endfunction
