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
    for action in split(globpath(a:source.source__openpne_root, path), '\n')
      call add(src, {'word': action, 'kind': 'file', 'action__path': action})
    endfor
  endfor
  return src
endfunction
