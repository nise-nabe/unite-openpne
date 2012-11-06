function! unite#sources#openpne#collector#lib#candidates(source)
  let libs = []
  let paths = [
        \ '**/lib/**/*.*',
        \ ]
  for path in paths
    for word in split(globpath(a:source.source__openpne_root, path), '\n')
      call add(libs, {'word': word, 'kind': 'file', 'action__path': word})
    endfor
  endfor
  return libs
endfunction
