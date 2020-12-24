if has('nvim') && executable('nvr')
  let $VISUAL="nvr -cc --remote-wait + 'set bufhidden=wipe'"
endif
