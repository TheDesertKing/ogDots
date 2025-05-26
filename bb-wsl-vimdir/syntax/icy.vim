".*\zs means it catches last occurence
syntax match Saveto /\(V\|>\| \)>.*/ contained contains=Timeout,Sleep,Variable
syntax match Condition /if (.\{-})/ contained contains=Variable 
syntax match Timeout / tout[^ ]*/ contained
syntax match Sleep / slp[^ ]*/ contained
syntax match Variable  /%%.\{-}%%/ contained
syntax match Remote /^R.*/ contains=Saveto,Condition,Timeout,Sleep,Variable
syntax match Internal /^I.*/ contains=Saveto,Condition,Timeout,Sleep,Variable
syntax match Local /^L.*/ contains=Saveto,Condition,Timeout,Sleep,Variable
syntax match Waitfor /^&.*/ contains=Variable
syntax match Comment /^#.*/ contains=Variable
syntax match Status /^\*.*/ contains=Variable


"hi def link Saveto String
"hi Condition ctermfg=139
"hi def link Remote Orange
"hi def link Internal Boolean
"hi def link Local Structure
"hi def link Status Function
"hi def link Comment Comment
"hi def link Waitfor Function

highlight Saveto ctermfg=209
highlight Condition ctermfg=139
highlight Remote ctermfg=152
highlight Internal ctermfg=173
highlight Local ctermfg=149
highlight Status ctermfg=115
highlight Comment ctermfg=141
highlight Waitfor ctermfg=222
highlight Sleep ctermfg=138
highlight Timeout ctermfg=223
highlight Variable ctermfg=109
