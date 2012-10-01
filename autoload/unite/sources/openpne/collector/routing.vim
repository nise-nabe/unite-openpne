function! unite#sources#openpne#collector#routing#candidates(source)
  let routings = []
  let paths = [
        \ '**/routing/*.*',
        \ '**/routing.yml',
        \]
  for path in paths
    for routing in split(globpath(a:source.source__openpne_root, path), '\n')
      call add(routings, {'word': routing, 'kind': 'file', 'action__path': routing})
    endfor
  endfor
  return routings
endfunction
