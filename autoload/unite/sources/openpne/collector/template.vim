function! unite#sources#openpne#collector#template#candidates(source)
  let src = []
  let paths = ['**/templates/*.*']
  for path in paths
    for template in split(globpath(a:source.source__openpne_root, path), '\n')
      call add(src, {'word': template, 'kind': 'file', 'action__path': template})
    endfor
  endfor
  return src
endfunction
