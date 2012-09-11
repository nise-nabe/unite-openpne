function! unite#sources#openpne#collector#model#candidates(source)
  let models = []
  let path = '/lib/model/'
  for model in split(globpath(a:source.source__openpne_root . path, '**/*.php'), '\n')
    call add(models, {'word': substitute(model, path . '/', '', ''), 'kind': 'file', 'action__path': model})
  endfor
  return models
endfunction
