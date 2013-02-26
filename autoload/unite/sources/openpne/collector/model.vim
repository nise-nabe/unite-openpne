function! unite#sources#openpne#collector#model#candidates(source)
  let src = []
  let paths = ['/lib/model/', '/plugins/op*Plugin/lib/model/']
  for path in paths
    for model in split(globpath(a:source.source__openpne_root . path, '**/*.php'), '\n')
      call add(src, {'word': substitute(model, path . '/', '', ''), 'kind': 'file', 'action__path': model})
    endfor
  endfor
  return src
endfunction
