
------------------------------------------------------------------------------
-- файл для цветовой схемы zenbones/neobones
~/.local/share/nvim/site/pack/packer/start/zenbones.nvim/colors/neobones.vim
------------------------------------------------------------------------------

let g:colors_name = 'neobones'

let s:italics = (&t_ZH != '' && &t_ZH != '[7m') || has('gui_running') || has('nvim')

if &background ==# 'dark'
    " dark start
    highlight Normal guifg=#FFFFFF guibg=#0F191F guisp=NONE gui=NONE cterm=NONE
    highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight BufferVisible guifg=#D1E0DA guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight BufferVisibleIndex guifg=#D1E0DA guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight BufferVisibleSign guifg=#D1E0DA guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight CmpItemAbbr guifg=#A7B3AE guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight CmpItemAbbrDeprecated guifg=#6E7673 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight CmpItemAbbrMatch guifg=#C6D5CF guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight CmpItemAbbrMatchFuzzy guifg=#B1BEB9 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight CmpItemKind guifg=#939E99 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight CmpItemMenu guifg=#86908C guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight CocMarkdownLink guifg=#66A5AD guibg=NONE guisp=NONE gui=underline cterm=underline
    highlight ColorColumn guifg=NONE guibg=#20303A guisp=NONE gui=NONE cterm=NONE
    highlight! link LspReferenceRead ColorColumn
    highlight! link LspReferenceText ColorColumn
    highlight! link LspReferenceWrite ColorColumn
    highlight Comment guifg=#7BA9C5 guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight Conceal guifg=#86908C guibg=NONE guisp=NONE gui=bold,italic cterm=bold,italic
    highlight Constant guifg=#FFFFFF guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link TroubleSource Constant
    highlight! link WhichKeyValue Constant
    highlight Cursor guifg=#0F191F guibg=#CEDDD7 guisp=NONE gui=NONE cterm=NONE
    highlight! link TermCursor Cursor
    highlight CursorLine guifg=NONE guibg=#152128 guisp=NONE gui=NONE cterm=NONE
    highlight! link CocMenuSel CursorLine
    highlight! link CursorColumn CursorLine
    highlight! link NeogitDiffContextHighlight CursorLine
    highlight! link TelescopeSelection CursorLine
    highlight CursorLineNr guifg=#F0F080 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Delimiter guifg=#FFFFFF guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link markdownLinkTextDelimiter Delimiter
    highlight! link NeogitNotificationError DiagnosticError
    highlight DiagnosticHint guifg=#B279A7 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticInfo guifg=#8190D4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link NeogitNotificationInfo DiagnosticInfo
    highlight DiagnosticSignError guifg=#DE6E7C guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocErrorSign DiagnosticSignError
    highlight DiagnosticSignHint guifg=#B279A7 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocHintSign DiagnosticSignHint
    highlight DiagnosticSignInfo guifg=#8190D4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocInfoSign DiagnosticSignInfo
    highlight DiagnosticSignWarn guifg=#B77E64 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocWarningSign DiagnosticSignWarn
    highlight DiagnosticUnderlineError guifg=NONE guibg=NONE guisp=#DE6E7C gui=undercurl cterm=undercurl
    highlight! link CocErrorHighlight DiagnosticUnderlineError
    highlight DiagnosticUnderlineHint guifg=NONE guibg=NONE guisp=#B279A7 gui=undercurl cterm=undercurl
    highlight! link CocHintHighlight DiagnosticUnderlineHint
    highlight DiagnosticUnderlineInfo guifg=NONE guibg=NONE guisp=#8190D4 gui=undercurl cterm=undercurl
    highlight! link CocInfoHighlight DiagnosticUnderlineInfo
    highlight DiagnosticUnderlineWarn guifg=NONE guibg=NONE guisp=#B77E64 gui=undercurl cterm=undercurl
    highlight! link CocWarningHighlight DiagnosticUnderlineWarn
    highlight DiagnosticVirtualTextError guifg=#DE6E7C guibg=#251E1E guisp=NONE gui=NONE cterm=NONE
    highlight! link CocErrorVirtualText DiagnosticVirtualTextError
    highlight DiagnosticVirtualTextHint guifg=#B279A7 guibg=#231E22 guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticVirtualTextInfo guifg=#8190D4 guibg=#1F1F24 guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticVirtualTextWarn guifg=#B77E64 guibg=#221F1E guisp=NONE gui=NONE cterm=NONE
    highlight! link CocWarningVitualText DiagnosticVirtualTextWarn
    highlight! link NeogitNotificationWarning DiagnosticWarn
    highlight DiffAdd guifg=NONE guibg=#1C2C19 guisp=NONE gui=NONE cterm=NONE
    highlight! link NeogitDiffAddHighlight DiffAdd
    highlight DiffChange guifg=NONE guibg=#1F2645 guisp=NONE gui=NONE cterm=NONE
    highlight DiffDelete guifg=NONE guibg=#3B2023 guisp=NONE gui=NONE cterm=NONE
    highlight! link NeogitDiffDeleteHighlight DiffDelete
    highlight DiffText guifg=#C6D5CF guibg=#343F6D guisp=NONE gui=NONE cterm=NONE
    highlight Directory guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Error guifg=#DE6E7C guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link DiagnosticError Error
    highlight! link ErrorMsg Error
    highlight! link MasonError Error
    highlight FloatBorder guifg=#1F3E56 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FoldColumn guifg=#466273 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Folded guifg=#7BA9C5 guibg=#24353F guisp=NONE gui=NONE cterm=NONE
    highlight Function guifg=#FFFFFF guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link TroubleNormal Function
    highlight! link TroubleText Function
    highlight GitSignsAdd guifg=#90FF6B guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link GitGutterAdd GitSignsAdd
    highlight GitSignsChange guifg=#8190D4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link GitGutterChange GitSignsChange
    highlight GitSignsDelete guifg=#DE6E7C guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link GitGutterDelete GitSignsDelete
    highlight HopNextKey guifg=#B279A7 guibg=NONE guisp=NONE gui=bold,underline cterm=bold,underline
    highlight HopNextKey1 guifg=#66A5AD guibg=NONE guisp=NONE gui=bold,underline cterm=bold,underline
    highlight HopNextKey2 guifg=#8190D4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight HopUnmatched guifg=#536977 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight Identifier guifg=#FFFFFF guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight IncSearch guifg=#0F191F guibg=#FFFF90 guisp=NONE gui=bold cterm=bold
    highlight! link CurSearch IncSearch
    highlight! link LeapLabelSelected IncSearch
    highlight IndentBlanklineChar guifg=#28343C guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight LeapLabelPrimary guifg=#000000 guibg=#FFFF90 guisp=NONE gui=bold,nocombine cterm=bold,nocombine
    highlight LeapLabelSecondary guifg=#000000 guibg=#FFFF90 guisp=NONE gui=bold,nocombine cterm=bold,nocombine
    highlight LeapMatch guifg=NONE guibg=NONE guisp=NONE gui=bold,underline,nocombine cterm=bold,underline,nocombine
    highlight LineNr guifg=#F4F474 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocCodeLens LineNr
    highlight! link LspCodeLens LineNr
    highlight! link NeogitHunkHeader LineNr
    highlight! link SignColumn LineNr
    highlight MasonHeader guifg=#0F191F guibg=#B77E64 guisp=NONE gui=bold cterm=bold
    highlight MasonHighlight guifg=#8190D4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight MasonHighlightBlock guifg=#0F191F guibg=#8190D4 guisp=NONE gui=NONE cterm=NONE
    highlight MasonHighlightBlockBold guifg=#0F191F guibg=#8190D4 guisp=NONE gui=bold cterm=bold
    highlight MasonHighlightBlockBoldSecondary guifg=#0F191F guibg=#B77E64 guisp=NONE gui=bold cterm=bold
    highlight MasonHighlightBlockSecondary guifg=#0F191F guibg=#B77E64 guisp=NONE gui=NONE cterm=NONE
    highlight MasonHighlightSecondary guifg=#B77E64 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight MasonMuted guifg=#939E99 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight MasonMutedBlock guifg=#0F191F guibg=#939E99 guisp=NONE gui=NONE cterm=NONE
    highlight MasonMutedBlockBold guifg=#0F191F guibg=#939E99 guisp=NONE gui=bold cterm=bold
    highlight MoreMsg guifg=#90FF6B guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link Question MoreMsg
    highlight NeogitHunkHeaderHighlight guifg=#C6D5CF guibg=#152128 guisp=NONE gui=bold cterm=bold
    highlight! link NnnNormalNC NnnNormal
    highlight! link NnnVertSplit NnnWinSeparator
    highlight NonText guifg=#3E5868 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link EndOfBuffer NonText
    highlight! link Whitespace NonText
    highlight NormalFloat guifg=NONE guibg=#FFFFFF guisp=NONE gui=NONE cterm=NONE
    highlight Number guifg=#FFFFFF guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link Boolean Number
    highlight NvimTreeCursorLine guifg=NONE guibg=#18252D guisp=NONE gui=NONE cterm=NONE
    highlight! link NvimTreeCursorColumn NvimTreeCursorLine
    highlight NvimTreeNormal guifg=#C6D5CF guibg=#141F26 guisp=NONE gui=NONE cterm=NONE
    highlight! link NnnNormal NvimTreeNormal
    highlight NvimTreeRootFolder guifg=#8190D4 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight NvimTreeSpecialFile guifg=#B279A7 guibg=NONE guisp=NONE gui=underline cterm=underline
    highlight NvimTreeSymlink guifg=#8190D4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight NvimTreeWinSeparator guifg=bg guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link NnnWinSeparator NvimTreeWinSeparator
    highlight Pmenu guifg=NONE guibg=#1D2C35 guisp=NONE gui=NONE cterm=NONE
    highlight PmenuSbar guifg=NONE guibg=#405A6B guisp=NONE gui=NONE cterm=NONE
    highlight PmenuSel guifg=NONE guibg=#304552 guisp=NONE gui=NONE cterm=NONE
    highlight PmenuThumb guifg=NONE guibg=#60869D guisp=NONE gui=NONE cterm=NONE
    highlight Search guifg=#FFFFAF guibg=#000000 guisp=NONE gui=NONE cterm=NONE
    highlight! link CocSearch Search
    highlight! link MatchParen Search
    highlight! link Sneak Search
    highlight SneakLabelMask guifg=#B279A7 guibg=#B279A7 guisp=NONE gui=NONE cterm=NONE
    highlight Special guifg=#FFFFFF guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link WhichKeyGroup Special
    highlight! link helpHyperTextEntry Special
    highlight SpecialComment guifg=#536977 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight SpecialKey guifg=#FFFFFF guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight SpellBad guifg=#CB7A83 guibg=NONE guisp=NONE gui=undercurl cterm=undercurl
    highlight! link CocSelectedText SpellBad
    highlight SpellCap guifg=#CB7A83 guibg=NONE guisp=NONE gui=undercurl cterm=undercurl
    highlight! link SpellLocal SpellCap
    highlight SpellRare guifg=#CB7A83 guibg=NONE guisp=NONE gui=undercurl cterm=undercurl
    highlight Statement guifg=#FFFFFF guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link PreProc Statement
    highlight! link WhichKey Statement
    highlight StatusLine guifg=#C6D5CF guibg=#20303A guisp=NONE gui=NONE cterm=NONE
    highlight! link TabLine StatusLine
    highlight StatusLineNC guifg=#D1E0DA guibg=#18252D guisp=NONE gui=NONE cterm=NONE
    highlight! link TabLineFill StatusLineNC
    highlight TabLineSel guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link BufferCurrent TabLineSel
    highlight TelescopeBorder guifg=#597B91 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight TelescopeMatching guifg=#B279A7 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight TelescopeSelectionCaret guifg=#DE6E7C guibg=#152128 guisp=NONE gui=NONE cterm=NONE
    highlight Title guifg=#C6D5CF guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Todo guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Type guifg=#FFFFFF guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link helpSpecial Type
    highlight! link markdownCode Type
    highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline cterm=underline
    highlight VertSplit guifg=#466273 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link WinSeparator VertSplit
    highlight Visual guifg=#000000 guibg=#E3E3E3 guisp=NONE gui=NONE cterm=NONE
    highlight WarningMsg guifg=#B77E64 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link DiagnosticWarn WarningMsg
    highlight! link gitcommitOverflow WarningMsg
    highlight WhichKeySeparator guifg=#466273 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight WildMenu guifg=#0F191F guibg=#B279A7 guisp=NONE gui=NONE cterm=NONE
    highlight! link SneakLabel WildMenu
    highlight diffAdded guifg=#90FF6B guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link NvimTreeGitNew diffAdded
    highlight diffChanged guifg=#8190D4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link NvimTreeGitDirty diffChanged
    highlight diffFile guifg=#B77E64 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight diffIndexLine guifg=#B77E64 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight diffLine guifg=#B279A7 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight diffNewFile guifg=#90FF6B guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight diffOldFile guifg=#DE6E7C guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight diffRemoved guifg=#DE6E7C guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link NvimTreeGitDeleted diffRemoved
    highlight helpHyperTextJump guifg=#8FC77E guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link helpOption helpHyperTextJump
    highlight! link markdownUrl helpHyperTextJump
    highlight lCursor guifg=#0F191F guibg=#818B87 guisp=NONE gui=NONE cterm=NONE
    highlight! link TermCursorNC lCursor
    highlight markdownLinkText guifg=#A7B3AE guibg=NONE guisp=NONE gui=underline cterm=underline
    " dark end

    if !s:italics
        " no italics dark start
        " This codeblock is auto-generated by shipwright.nvim
        highlight Boolean gui=NONE cterm=NONE
        highlight Comment gui=NONE cterm=NONE
        highlight Constant gui=NONE cterm=NONE
        highlight Number gui=NONE cterm=NONE
        highlight SpecialKey gui=NONE cterm=NONE
        highlight TroubleSource gui=NONE cterm=NONE
        highlight WhichKeyValue gui=NONE cterm=NONE
        highlight diffNewFile gui=NONE cterm=NONE
        highlight diffOldFile gui=NONE cterm=NONE
        " no italics dark end
    endif

endif
