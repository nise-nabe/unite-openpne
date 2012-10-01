function! unite#sources#openpne#collector#helper#candidates(source)
  let helpers = []
  let paths = ['**/helper/*.*']
  for path in paths
    for helper in split(globpath(a:source.source__openpne_root, path), '\n')
      call add(helpers, {'word': helper, 'kind': 'file', 'action__path': helper})
    endfor
  endfor
  return helpers
endfunction
