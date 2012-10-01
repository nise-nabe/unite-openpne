function! unite#sources#openpne#collector#form#candidates(source)
  let forms = []
  let paths = ['**/form/*.*']
  for path in paths
    for form in split(globpath(a:source.source__openpne_root, path), '\n')
      call add(forms, {'word': form, 'kind': 'file', 'action__path': form})
    endfor
  endfor
  return forms
endfunction
