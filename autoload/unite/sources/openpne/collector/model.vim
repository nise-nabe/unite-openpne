function! unite#sources#openpne#collector#model#candidates(source)
  let models = []
  let paths = ['/lib/model/', '/plugins/op*Plugin/lib/model/']
  for path in paths
    for model in split(globpath(a:source.source__openpne_root . path, '**/*.php'), '\n')
      call add(models, {'word': substitute(model, path . '/', '', ''), 'kind': 'file', 'action__path': model})
    endfor
  endfor
  return models
endfunction
