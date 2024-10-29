

leader = ,

n = nzzzv
n = Nzzzv

:Nerdtreefind = F2
:NerdtreeToggle = F3
open edit expand tab = ,te
open edit = ,e
cnoremap <C-P><C-R>

:grep vim = ,f <Rgrep>
:terminal = ,sh
:lcd %:p:h = ,.
:expand = ,e  :e
:tabe ,te
:FixWhitespace

:split = ,h
:vsplit = ,v

:Gwrite = ,ga
:Git Commit --verbose = ,gc
:Git push = ,gsh
:Git pull = ,gll
:Git = ,gs
:Gvdiffsplit = ,gd
:Git blame = ,gb
:Git remove = ,gr

:OpenSession = ,so
:SaveSession = ,ss
:DeleteSession = ,sd
:CloseSession = ,sc

:tab = gt
S-tab = gT
:tabnew = S-t
:buffers = ,b
:FZF -m = ,e
:History = ,y
:TagBarToggle = F4

## buffer nav
:bp = ,z
:bp = ,q
:bn = ,x
:bn = ,w
:bd = ,c  (close)

# Clean search
:noh ,<space>


# Switch windows
<C-J><C-w> j
<C-J><C-w> k
<C-J><C-w> l
<C-J><C-w> h

# Jedi
go_to_assigniments = ,g
go_to_definitions = ,d
documentation = K
usages = ,n
rename = ,r
call_signatures = 0
completions = C-space
snippets expand = <tab>
snippets back = <C-b>

#vmap
>
<
J
K

YY = +y
p = +gP
XX = +x
