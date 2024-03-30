" Vim syntax file
" Language: nas
" Author: dflat2

if exists("b:current_syntax")
	finish
endif

let b:current_syntax = "nas"

" Comments
syntax match nasComment "//.*$"
highlight link nasComment Comment

" Actions
syntax match nasAction "^\s*\w\+"
highlight link nasAction String

" Labels
syntax match nasLabel "#.*$"
syntax keyword nasLabelEnd quit terminate jump goto
highlight link nasLabel Function
highlight link nasLabelEnd Function

" if/ifnot
syntax keyword nasStatement if ifnot
highlight link nasStatement Statement

" Packages
syntax keyword nasPackage msgDelayMultiplayer MBCoords MBX MBY MBZ PlayerX PlayerY PlayerZ PlayerPX PlayerPY PlayerPZ PlayerYaw PlayerPitch cef runArg0 runA  rg1 runArg2 runArg3 runArg4 runArg5 runArg6 runArg7 epochMS mobile webclient
highlight link nasPackage Identifier

" Constants
syntax keyword nasConstant true false
syntax match nasNumber "\d\+\(\.\d*\)\?\|\.\d\+"
highlight link nasConstant Constant
highlight link nasNumber Constant

" Operators
syntax match nasOperator "|=|"
highlight link nasOperator Operator
