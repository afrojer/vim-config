set gfn=Monospace\ 9
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set visualbell t_vb=

so ~/.vim/gvimrc.mine

if !empty(glob("~/.vim/gvimrc.mine.private"))
	so ~/.vim/gvimrc.mine.private
end
