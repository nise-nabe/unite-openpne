function! unite#sources#openpne#collector#action#candidates(source)
  let actions = []
  let paths = [
        \ 'apps/**/actions.class.php',
        \ 'lib/actions/*.php',
        \ 'plugins/op*Plugin/apps/**/actions.class.php',
        \ 'plugins/op*Plugin/lib/**/*Action.class.php',
        \ 'plugins/op*Plugin/lib/**/*Actions.class.php',
        \]
  for path in paths
    for action in split(globpath(a:source.source__openpne_root, path), '\n')
      call add(actions, {'word': action, 'kind': 'file', 'action__path': action})
    endfor
  endfor
  return actions
endfunction
