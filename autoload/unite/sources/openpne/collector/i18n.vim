function! unite#sources#openpne#collector#i18n#candidates(source)
  let src = []
  let paths = ['apps/**/i18n/*.*', 'plugins/op*Plugin/**/i18n/*.*']
  for path in paths
    for real_path in split(globpath(a:source.source__openpne_root, path), '\n')
      call add(src, {'word': substitute(real_path, a:source.source__openpne_root, '', 'g'), 'kind': 'file', 'action__path': real_path })
    endfor
  endfor
  return src
endfunction
