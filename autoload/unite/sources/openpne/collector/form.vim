function! unite#sources#openpne#collector#form#candidates(source)
  let src = []
  let paths = ['**/form/**/*.*']
  for path in paths
    for form in split(globpath(a:source.source__openpne_root, path), '\n')
      call add(src, {'word': form, 'kind': 'file', 'action__path': form})
    endfor
  endfor
  return src
endfunction
