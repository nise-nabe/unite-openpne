function! unite#sources#openpne#collector#i18n#candidates(source)
  let i18ns = []
  let paths = ['apps/**/i18n/*.*', 'plugins/op*Plugin/**/i18n/*.*']
  for path in paths
    for i18n in split(globpath(a:source.source__openpne_root, path), '\n')
      call add(i18ns, {'word': i18n, 'kind': 'file', 'action__path': i18n})
    endfor
  endfor
  return i18ns
endfunction
