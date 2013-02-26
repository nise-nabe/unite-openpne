function! unite#sources#openpne#collector#config#candidates(source)
  let src = []
  let paths = ['**/config/*.*']
  for path in paths
    for config in split(globpath(a:source.source__openpne_root, path), '\n')
      call add(src, {'word': config, 'kind': 'file', 'action__path': config})
    endfor
  endfor
  return src
endfunction
