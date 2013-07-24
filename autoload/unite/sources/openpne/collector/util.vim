function! unite#sources#openpne#collector#util#candidates(source)
  let src = []
  let paths = [
        \ '**/util/**/*.*',
        \ ]
  for path in paths
    for real_path in split(globpath(a:source.source__openpne_root, path), '\n')
      call add(src, {'word': substitute(real_path, a:source.source__openpne_root, '', 'g'), 'kind': 'file', 'action__path': real_path })
    endfor
  endfor
  return src
endfunction
