function! unite#sources#openpne#collector#model#candidates(source)
  let src = []
  let paths = [
        \ '/lib/model/**/*.php',
        \ '/plugins/op*Plugin/lib/model/**/*.php'
        \]
  for path in paths
    for real_path in split(globpath(a:source.source__openpne_root, path), '\n')
      call add(src, {'word': substitute(real_path, a:source.source__openpne_root, '', 'g'), 'kind': 'file', 'action__path': real_path })
    endfor
  endfor
  return src
endfunction
