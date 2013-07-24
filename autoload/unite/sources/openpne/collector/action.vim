function! unite#sources#openpne#collector#action#candidates(source)
  let src = []
  let paths = [
        \ 'apps/**/actions.class.php',
        \ 'lib/action/*.php',
        \ 'plugins/op*Plugin/apps/**/*actions.class.php',
        \ 'plugins/op*Plugin/apps/**/*Actions.class.php',
        \ 'plugins/op*Plugin/lib/**/*Action.class.php',
        \ 'plugins/op*Plugin/lib/**/*Actions.class.php',
        \]
  for path in paths
    for real_path in split(globpath(a:source.source__openpne_root, path), '\n')
      call add(src, {'word': substitute(real_path, a:source.source__openpne_root, '', 'g'), 'kind': 'file', 'action__path': real_path })
    endfor
  endfor
  return src
endfunction
