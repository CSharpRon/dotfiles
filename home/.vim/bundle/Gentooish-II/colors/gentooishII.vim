" Vim color file
" Name:    gentooishII.vim
" Author:  Brian Carper<brian@briancarper.net>
" Version: 0.3

set background=dark
hi clear
if exists("syntax_on")
   syntax reset
endif

if has('gui_running')
    hi Normal         gui=NONE   guifg=#cccccc   guibg=#191919

    hi IncSearch      gui=NONE   guifg=#000000   guibg=#8bff95
    hi Search         gui=NONE   guifg=#cccccc   guibg=#863132
    hi ErrorMsg       gui=NONE   guifg=#cccccc   guibg=#863132
    hi WarningMsg     gui=NONE   guifg=#cccccc   guibg=#863132
    hi ModeMsg        gui=NONE   guifg=#cccccc   guibg=NONE
    hi MoreMsg        gui=NONE   guifg=#cccccc   guibg=NONE
    hi Question       gui=NONE   guifg=#cccccc   guibg=NONE

    hi StatusLine     gui=BOLD   guifg=#cccccc   guibg=#333333
    hi User1          gui=BOLD   guifg=#999999   guibg=#333333
    hi User2          gui=BOLD   guifg=#8bff95   guibg=#333333
    hi StatusLineNC   gui=NONE   guifg=#999999   guibg=#333333
    hi VertSplit      gui=NONE   guifg=#cccccc   guibg=#333333

    hi WildMenu       gui=BOLD   guifg=#cf7dff   guibg=#1F0F29

    hi DiffText       gui=NONE   guifg=#000000  guibg=#4cd169
    hi DiffChange     gui=NONE   guifg=NONE     guibg=#541691
    hi DiffDelete     gui=NONE   guifg=#cccccc  guibg=#863132
    hi DiffAdd        gui=NONE   guifg=#cccccc  guibg=#306d30

    hi Cursor         gui=NONE   guifg=#000000   guibg=#8bff95

    hi Folded         gui=NONE   guifg=#aaa400   guibg=#000000
    hi FoldColumn     gui=NONE   guifg=#cccccc   guibg=#000000

    hi Directory      gui=NONE   guifg=#8bff95   guibg=NONE
    hi LineNr         gui=NONE   guifg=#bbbbbb   guibg=#222222
    hi NonText        gui=NONE   guifg=#555555   guibg=NONE
    hi SpecialKey     gui=NONE   guifg=#6f6f2f   guibg=NONE
    hi Title          gui=NONE   guifg=#9a383a   guibg=NONE
    hi Visual         gui=NONE   guifg=#cccccc   guibg=#1d474f

    hi Comment        gui=NONE   guifg=#666666   guibg=NONE
    hi Constant       gui=NONE   guifg=#b8bb00   guibg=NONE
    hi Boolean        gui=NONE   guifg=#00ff00   guibg=NONE
    hi String         gui=NONE   guifg=#5dff9e   guibg=#0f291a
    hi Error          gui=NONE   guifg=#990000   guibg=#000000
    hi Identifier     gui=NONE   guifg=#4cbbd1   guibg=NONE
    hi Ignore         gui=NONE   guifg=#555555
    hi Number         gui=NONE   guifg=#ddaa66   guibg=NONE
    hi PreProc        gui=NONE   guifg=#9a383a   guibg=NONE

    hi Special        gui=NONE   guifg=#ffcd8b   guibg=NONE

    hi Statement      gui=NONE   guifg=#4cd169   guibg=NONE
    hi Todo           gui=NONE   guifg=#cccccc   guibg=#863132
    hi Type           gui=NONE   guifg=#c476f1   guibg=NONE
    hi Underlined     gui=UNDERLINE   guifg=#cccccc   guibg=NONE

    hi Visual         gui=NONE   guifg=#ffffff   guibg=#6e4287
    hi VisualNOS      gui=NONE   guifg=#cccccc   guibg=#000000

    hi CursorLine     gui=NONE   guifg=NONE      guibg=#222222
    hi CursorColumn   gui=NONE   guifg=NONE      guibg=#222222

    hi lispList       gui=NONE   guifg=#555555

    if v:version >= 700
      hi Pmenu        gui=NONE   guifg=#cccccc   guibg=#222222
      hi PMenuSel     gui=BOLD   guifg=#c476f1   guibg=#000000
      hi PmenuSbar    gui=NONE   guifg=#cccccc   guibg=#000000
      hi PmenuThumb   gui=NONE   guifg=#cccccc   guibg=#333333

      hi SpellBad     gui=undercurl guisp=#cc6666
      hi SpellRare    gui=undercurl guisp=#cc66cc
      hi SpellLocal   gui=undercurl guisp=#cccc66
      hi SpellCap     gui=undercurl guisp=#66cccc

      hi MatchParen   gui=NONE      guifg=#ffffff   guibg=#005500
    endif
else
    " Dumped via CSApprox, then edited slightly
    " (http://www.vim.org/scripts/script.php?script_id=2390)
	hi Normal         ctermfg=250
	hi NonText        ctermfg=236
    hi SpecialKey     term=bold ctermfg=58
    hi Directory      term=bold ctermfg=120
    hi ErrorMsg       term=standout ctermfg=88 ctermbg=none
    hi IncSearch      term=reverse ctermfg=16 ctermbg=130
    hi Search         ctermbg=16 ctermfg=130
    hi MoreMsg        term=bold ctermfg=252
    hi ModeMsg        term=bold ctermfg=252
    hi LineNr         ctermfg=237
    hi Question       term=standout ctermfg=252
    hi StatusLine     ctermfg=238 ctermbg=235 cterm=none
    hi StatusLineNC   term=reverse cterm=bold ctermfg=240 ctermbg=236
    hi VertSplit      term=reverse ctermfg=252 ctermbg=236
    hi Title          term=bold ctermfg=95
    hi Visual         term=reverse ctermfg=252 ctermbg=60
    hi VisualNOS      term=bold ctermfg=252 ctermbg=16
    hi WarningMsg     term=standout ctermfg=209
    hi WildMenu       ctermfg=252 ctermbg=235
    hi Folded         ctermfg=240 ctermbg=NONE
    hi FoldColumn     ctermfg=240 ctermbg=NONE
    hi DiffAdd        term=bold ctermfg=252 ctermbg=59
    hi DiffChange     term=bold ctermbg=54
    hi DiffDelete     term=bold ctermfg=252 ctermbg=95
    hi DiffText       term=reverse ctermfg=16 ctermbg=77
    hi SignColumn     term=standout ctermfg=51 ctermbg=250
    hi TabLine        cterm=none ctermfg=none ctermbg=none
    hi TabLineSel     term=bold cterm=bold ctermbg=235
    hi TabLineFill    ctermfg=none ctermbg=none cterm=none
    hi Comment        cterm=italic ctermfg=245
    hi Constant       ctermfg=100
    hi Special        term=bold ctermfg=222
    hi Identifier     term=underline ctermfg=80 cterm=none
    hi Statement      term=bold ctermfg=77
    hi PreProc        ctermfg=95
    hi Type           ctermfg=150
    hi Underlined     term=underline cterm=underline ctermfg=252
    hi Ignore         ctermfg=240
    hi Error          term=reverse ctermfg=88 ctermbg=16
    hi Todo           term=standout ctermfg=252 ctermbg=95
    hi String         ctermfg=209
    hi Number         ctermfg=179
    hi Boolean        ctermfg=46
    hi User1          ctermfg=246 ctermbg=236
    hi User2          ctermfg=120 ctermbg=236
	hi Title          ctermfg=130
	hi htmlTitle      ctermfg=130
	hi htmlBold       ctermfg=101 cterm=none
	hi CursorLine     cterm=none
	hi CursorLineNr   ctermfg=250
    if v:version >= 700
        hi SpellBad       term=reverse cterm=undercurl ctermfg=167
        hi SpellCap       term=reverse cterm=undercurl ctermfg=80
        hi SpellRare      term=reverse cterm=undercurl ctermfg=170
        hi SpellLocal     term=underline cterm=undercurl ctermfg=185
        hi Pmenu          ctermfg=238 ctermbg=235
        hi PmenuSel       ctermfg=252 ctermbg=235
        hi PmenuSbar      ctermfg=252 ctermbg=16
        hi PmenuThumb     ctermfg=252 ctermbg=236
        hi MatchParen     cterm=bold ctermfg=255 ctermbg=none
    endif
endif


