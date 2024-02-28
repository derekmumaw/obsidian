nmap j gj
nmap k gk
nmap 0 :g0
nmap $ :gDollar
nmap [[ :pHead
nmap ]] :nHead

vmap j gj
vmap k gk

" Yank to system clipboard
set clipboard=unnamed

" Smarter o and O (inserting prefix for markdown lists)
exmap blankBelow obcommand obsidian-editor-shortcuts:insertLineBelow
exmap blankAbove obcommand obsidian-editor-shortcuts:insertLineAbove
nmap &a& :blankAbove
nmap &b& :blankBelow
nmap o &b&i
nmap O &a&i