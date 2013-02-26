function! unite#sources#openpne#collector#schema#candidates(source)
  let src = []
  let paths = ['**/schema.yml']
  for path in paths
    for config in split(globpath(a:source.source__openpne_root, path), '\n')
      call add(src, {'word': config, 'kind': 'file', 'action__path': config})
    endfor
  endfor
  return src
endfunction
