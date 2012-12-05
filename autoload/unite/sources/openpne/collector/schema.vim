function! unite#sources#openpne#collector#schema#candidates(source)
  let configs = []
  let paths = ['**/schema.yml']
  for path in paths
    for config in split(globpath(a:source.source__openpne_root, path), '\n')
      call add(configs, {'word': config, 'kind': 'file', 'action__path': config})
    endfor
  endfor
  return configs
endfunction
