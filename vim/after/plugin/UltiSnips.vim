call UltiSnips#map_keys#MapKeys()

xunmap <Tab>
xnoremap <Tab> >gv

exec "xnoremap <silent> T :call UltiSnips#SaveLastVisualSelection()<cr>gvs"

let did_UltiSnips_after=1
