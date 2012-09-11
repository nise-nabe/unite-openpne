let s:source = {}

function! unite#sources#openpne#define()
  let list = []
  let names = ["model"]
  for val in names
    let source = copy(s:source)
    let source.description = 'conditates from ' . val . ' list'
    let source.name = 'openpne/' . val
    call add(list , source)
  endfor
  return list
endfunction

function! s:source.gather_candidates(args, context)
  let models = []
  let path = 'lib/model/'
  for model in split(globpath(path, '**/*.php'), '\n')
    call add(models, {'word': substitute(model, path . '/', '', ''), 'kind': 'file', 'action__path': model})
  endfor
  return models
endfunction
