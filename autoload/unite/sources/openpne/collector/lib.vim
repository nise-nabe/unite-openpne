function! unite#sources#openpne#collector#lib#candidates(source)
  let src = []
  let paths = [
        \ '**/lib/**/*.*',
        \ ]
  for path in paths
    for word in split(globpath(a:source.source__openpne_root, path), '\n')
      call add(src, {'word': word, 'kind': 'file', 'action__path': word})
    endfor
  endfor
  return src
endfunction
