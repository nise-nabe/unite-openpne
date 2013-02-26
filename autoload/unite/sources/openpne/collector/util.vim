function! unite#sources#openpne#collector#util#candidates(source)
  let src = []
  let paths = [
        \ '**/util/**/*.*',
        \ ]
  for path in paths
    for word in split(globpath(a:source.source__openpne_root, path), '\n')
      call add(src, {'word': word, 'kind': 'file', 'action__path': word})
    endfor
  endfor
  return src
endfunction
