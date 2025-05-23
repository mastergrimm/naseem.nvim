--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require 'lush'
local hsl = lush.hsl

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
	local sym = injected_functions.sym
	return {
		-- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
		-- groups, mostly used for styling UI elements.
		-- Comment them out and add your own properties to override the defaults.
		-- An empty definition `{}` will clear all styling, leaving elements looking
		-- like the 'Normal' group.
		-- To be able to link to a group, it must already be defined, so you may have
		-- to reorder items as you go.
		--
		-- See :h highlight-groups
		--
		-- ColorColumn    { }, -- Columns set with 'colorcolumn'
		Conceal { bg = '#6d8ca9', fg = '#000000' }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor { bg = '#f1ffff', fg = '#000000' }, -- Character under the cursor
		CurSearch { bg = '#fff100', fg = '#000000', gui = 'bold' }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
		-- lCursor { reverse = true }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
		-- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
		-- CursorColumn   { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine { bg = '#1d2226' }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
		Directory {}, -- Directory names (and other special names in listings)
		DiffAdd { bg = '', fg = '#1f8113' }, -- Diff mode: Added line |diff.txt|
		DiffChange { bg = '', fg = '#8b008b' }, -- Diff mode: Changed line |diff.txt|
		DiffDelete { bg = '', fg = '#008b8b' }, -- Diff mode: Deleted line |diff.txt|
		DiffText { bg = '', fg = '#ff0000' }, -- Diff mode: Changed text within a changed line |diff.txt|
		-- EndOfBuffer    { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
		TermCursor {}, -- Cursor in a focused terminal
		TermCursorNC {}, -- Cursor in an unfocused terminal
		ErrorMsg { fg = '#f7563b', bg = '#221518' }, -- Error messages on the command line
		VertSplit { fg = '#2b2d2f', bg = '#2b2d2f' },
		-- Folded({}), -- Line used for closed folds
		-- FoldColumn     { }, -- 'foldcolumn'
		SignColumn {}, -- Column where |signs| are displayed
		-- IncSearch      { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		-- Substitute     { }, -- |:substitute| replacement text highlighting
		-- LineNr         { }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		LineNr { fg = '#858585' },
		-- LineNrAbove    { }, -- Line number for when the 'relativenumber' option is set, above the cursor line
		-- LineNrBelow    { }, -- Line number for when the 'relativenumber' option is set, below the cursor line
		CursorLineNr { fg = '#f1ffff', bg = '#1d2226' }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		-- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
		-- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
		-- MatchParen     { }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		-- ModeMsg        { }, -- 'showmode' message (e.g., "-- INSERT -- ")
		-- MsgArea        { }, -- Area for messages and cmdline
		-- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
		-- MoreMsg        { }, -- |more-prompt|
		NonText { fg = '#454752' }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal { bg = '#0b0e11', fg = '#f1ffff' }, -- Normal text
		NormalFloat { bg = '#13181d' }, -- Normal text in floating windows.
		FloatBorder { fg = '#676e7d', bg = '#13181d' }, -- Border of floating windows.
		-- NormalNC       { }, -- normal text in non-current windowshttps://01hxv7gewr38t1473fbjdyc4q9-ebad485c25afabf7f3db.myshopify.dev/shop#cart-aside
		Pmenu { bg = '#13181d' }, -- Popup menu: Normal item.
		PmenuSel { bg = '#12395e' }, -- Popup menu: Selected item.
		-- PmenuKind      { }, -- Popup menu: Normal item "kind"
		-- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
		-- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
		-- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
		PmenuSbar { bg = '#292929' }, -- Popup menu: Scrollbar.
		PmenuThumb { bg = '#494a4b' }, -- Popup menu: Thumb of the scrollbar.
		-- Question       { }, -- |hit-enter| prompt and yes/no questions
		-- QuickFixLine   { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search { bg = '#d5d071', fg = '#000000' }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
		-- SpecialKey     { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
		-- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		-- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		-- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		-- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
		-- StatusLine({ bg = "#0c0f12" }), -- Status line of current window
		-- StatusLineNC({}), -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine {}, -- Tab pages line, not active tab page label
		TabLineFill {}, -- Tab pages line, where there are no labels
		TabLineSel { bg = '#1a2f89' }, -- Tab pages line, active tab page label
		Title {}, -- Titles for output from ":set all", ":autocmd" etc.
		Visual { bg = '#1c3f6c' }, -- Visual mode selection
		VisualNOS { bg = '#1c3f6c' }, -- Visual mode selection when vim is "Not Owning the Selection".
		-- WarningMsg     { }, -- Warning messages
		-- Whitespace     { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		Winseparator { fg = '#2b2d2f' }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
		-- WildMenu       { }, -- Current match in 'wildmenu' completion
		WinBar { bg = '#07090b', gui = 'bold' }, -- Window bar of current window
		WinBarNC { gui = '' }, -- Window bar of not-current windows

		-- Common vim syntax groups used for all kinds of code and markup.
		-- Commented-out groups should chain up to their preferred (*) group
		-- by default.
		--
		-- See :h group-name
		--
		-- Uncomment and edit if you want more specific syntax highlighting.

		Comment { fg = '#637777', gui = 'italic' }, -- Any comment

		Constant { fg = '#ecc48d' }, -- (*) Any constant
		String { fg = '#ecc48d' }, --   A string constant: "this is a string"
		-- Character      { }, --   A character constant: 'c', '\n'
		-- Number         { }, --   A number constant: 234, 0xff
		-- Boolean        { }, --   A boolean constant: TRUE, false
		-- Float          { }, --   A floating point constant: 2.3e10

		Identifier { fg = '#85d1df' }, -- (*) Any variable name
		Function { fg = '#73aef1' }, --   Function name (also: methods for classes)

		Statement { fg = '#c792ea' }, -- (*) Any statement
		-- Conditional    { }, --   if, then, else, endif, switch, etc.
		-- Repeat         { }, --   for, do, while, etc.
		-- Label          { }, --   case, default, etc.
		-- Operator       { }, --   "sizeof", "+", "*", etc.
		-- Keyword        { }, --   any other keyword
		-- Exception      { }, --   try, catch, throw

		-- PreProc        { }, -- (*) Generic Preprocessor
		-- Include        { }, --   Preprocessor #include
		-- Define         { }, --   Preprocessor #define
		-- Macro          { }, --   Same as Define
		-- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

		Type { fg = '#f56c6c' }, -- (*) int, long, char, etc.
		-- StorageClass   { }, --   static, register, volatile, etc.
		-- Structure      { }, --   struct, union, enum, etc.
		-- Typedef        { }, --   A typedef

		Special { fg = '#e0ddcd' }, -- (*) Any special symbol
		-- SpecialChar    { }, --   Special character in a constant
		Tag { fg = '#caece6' }, --   You can use CTRL-] on this
		-- Delimiter      { }, --   Character that needs attention
		-- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
		-- Debug          { }, --   Debugging statements:

		Underlined { gui = 'underline' }, -- Text that stands out, HTML links
		-- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
		Error { bg = '#ff0000' }, -- Any erroneous construct
		Todo { bg = '#ecd420', fg = '#1e1e2e', gui = 'italic, bold' }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XX
		TodoBgNOTE { bg = '#89dceb', fg = '#1e1e2e', gui = 'italic, bold' }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XX
		TodoFgNOTE { fg = '#89dceb', gui = 'italic' }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XX
		TodoBgTODO { bg = '#ecd420', fg = '#1e1e2e', gui = 'italic, bold' }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XX
		TodoFgTODO { fg = '#ecd420', gui = 'italic' }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XX
		LazyButton { fg = '#fefefe', bg = '#3a4754' },
		LazyH1 { bg = '#0e5caa', gui = 'bold' },

		LazyNormal { bg = '#0a1219' },
		MasonNormal { bg = '#0a1219' },
		MasonMutedBlock { bg = '#515d6a' },
		MasonHighlightBlockBold { bg = '#0e5caa', gui = 'bold' },
		MasonHighlight { fg = '#89dceb' },
		IblIndent { fg = '#1d1f25' },
		IblScope { fg = '#444752' },
		SnacksIndent { fg = '#1d1f25' },
		SnacksScope { fg = '#444752' },

		SnacksPickerDir { fg = '#b1bae8' },

		-- Cmp Text
		CmpItemAbbrMatch { fg = '#569CD6' },
		CmpItemAbbrMatchFuzzy { fg = '#569CD6' },
		CmpItemKindFunction { fg = '#C586C0' },
		CmpItemKindMethod { fg = '#C586C0' },
		CmpItemKindVariable { fg = '#9CDCFE' },
		CmpItemKindKeyword { fg = '#D4D4D4' },

		-- Blink cmp
		BlinkCmpKindFunction { fg = '#C586C0' },
		BlinkCmpKindMethod { fg = '#C586C0' },
		BlinkCmpKindVariable { fg = '#9CDCFE' },
		BlinkCmpKindKeyword { fg = '#D4D4D4' },

		BlinkCmpMenu { bg = '#13181d' },

		--
		-- LspReferenceText            { } , -- Used for highlighting "text" references
		-- LspReferenceRead            { } , -- Used for highlighting "read" references
		-- LspReferenceWrite           { } , -- Used for highlighting "write" references
		-- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
		-- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
		-- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

		-- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
		--
		-- DiagnosticError            { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticWarn             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticInfo             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticHint({ fg = "#9f9d6f", bg = " #292925" }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticOk               { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticVirtualTextError { fg = '#db4b4b', bg = '#270f16' }, -- Used for "Error" diagnostic virtual text.
		DiagnosticVirtualTextWarn { fg = '#9f9d6f', bg = '#1f1f1c' }, -- Used for "Warn" diagnostic virtual text.
		DiagnosticVirtualTextInfo { fg = '#9f9d6f', bg = '#1f1f1c' }, -- Used for "Info" diagnostic virtual text.
		DiagnosticVirtualTextHint { fg = '#9f9d6f', bg = '#1f1f1c' }, -- Used for "Hint" diagnostic virtual text.
		-- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
		-- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
		-- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
		-- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
		-- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
		-- DiagnosticUnderlineOk      { } , -- Used to underline "Ok" diagnostics.
		-- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
		-- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
		-- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
		-- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
		-- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
		-- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
		-- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
		-- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
		-- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
		-- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.
		DiagnosticUnnecessary { fg = '#9bc5f6', gui = 'italic' },

		-- Tree-Sitter syntax groups.
		--
		-- See :h treesitter-highlight-groups, some groups may not be listed,
		-- submit a PR fix to lush-template!
		--
		-- Tree-Sitter groups are defined with an "@" symbol, which must be
		-- specially handled to be valid lua code, we do this via the special
		-- sym function. The following are all valid ways to call the sym function,
		-- for more details see https://www.lua.org/pil/5.html
		--
		-- sym("@text.literal")
		-- sym('@text.literal')
		-- sym"@text.literal"
		-- sym'@text.literal'
		--
		-- For more information see https://github.com/rktjmp/lush.nvim/issues/109

		-- sym"@text.literal"      { }, -- Comment
		-- sym"@text.reference"    { }, -- Identifier
		-- sym"@text.title"        { }, -- Title
		-- sym"@text.uri"          { }, -- Underlined
		-- sym"@text.underline"    { }, -- Underlined
		-- sym"@text.todo"         { }, -- Todo
		-- sym"@comment"           { }, -- Comment
		sym '@punctuation' { fg = '#63c6b4' }, -- Delimiter
		-- sym"@constant"          { }, -- Constant
		-- sym"@constant.builtin"  { }, -- Special
		-- sym"@constant.macro"    { }, -- Define
		-- sym"@define"            { }, -- Define
		-- sym"@macro"             { }, -- Macro
		-- sym"@string"            { }, -- String
		-- sym"@string.escape"     { }, -- SpecialChar
		-- sym"@string.special"    { }, -- SpecialChar
		-- sym"@character"         { }, -- Character
		-- sym"@character.special" { }, -- SpecialChar
		-- sym"@number"            { }, -- Number
		-- sym"@boolean"           { }, -- Boolean
		-- sym"@float"             { }, -- Float
		-- sym"@function"          { }, -- Function
		-- sym"@function.builtin"  { }, -- Special
		-- sym"@function.macro"    { }, -- Macro
		-- sym"@parameter"         { }, -- Identifier
		-- sym"@method"            { }, -- Function
		-- sym"@field"             { }, -- Identifier
		-- sym"@property"          { }, -- Identifier
		-- sym"@constructor"       { }, -- Special
		-- sym"@conditional"       { }, -- Conditional
		-- sym"@repeat"            { }, -- Repeat
		-- sym"@label"             { }, -- Label
		-- sym"@operator"          { }, -- Operator
		-- sym"@keyword"           { }, -- Keyword
		-- sym"@exception"         { }, -- Exception
		-- sym"@variable"          { }, -- Identifier
		-- sym"@type"              { }, -- Type
		-- sym"@type.definition"   { }, -- Typedef
		-- sym"@storageclass"      { }, -- StorageClass
		-- sym"@structure"         { }, -- Structure
		-- sym"@namespace"         { }, -- Identifier
		-- sym"@include"           { }, -- Include
		-- sym"@preproc"           { }, -- PreProc
		-- sym"@debug"             { }, -- Debug
		-- sym"@tag"               { }, -- Tag
		DashboardHeader { fg = '#c92b62' }, -- DashboardHeader
		SnacksDashboardHeader { fg = '#c92b62' }, -- DashboardHeader
		sym '@lsp.typemod.variable.defaultLibrary.javascript' { fg = '#63c6b4' },
		sym '@lsp.mod.defaultLibrary.lua' { fg = '#63c6b4' },
		sym '@lsp.type.parameter.javascript' { fg = '#d7dbe0' },
		sym '@tag.delimiter.html' { fg = '#63c6b4' },
		sym '@tag.delimiter.javascript' { fg = '#63c6b4' },
		sym '@tag.delimiter.svelte' { fg = '#63c6aa' },
		sym '@tag.delimiter.vue' { fg = '#63c6b4' },
		sym '@tag.attribute.html' { fg = '#c5e478' },
		sym '@tag.attribute.javascript' { fg = '#c5e478' },
		sym '@tag.attribute.vue' { fg = '#c5e478' },
		sym '@tag.attribute.svelte' { fg = '#c5e478' },
		sym '@punctuation.bracket.javascript' { fg = '#da70d6' },
		sym '@lsp.type.property.javascript' { fg = '#f56c6c' },
		sym '@variable.member.go' { fg = '#f56c6c' },
		sym '@lsp.typemod.property.declaration.typescriptreact' { fg = '#f56c6c' },
		sym '@function.method.call.javascript' { fg = '#9ac663' },
		sym '@lsp.type.property.lua' { fg = '#73aef1' },
		sym '@lsp.type.class.svelte' { fg = '#63c6aa' },
		sym '@type.builtin.typescript' { fg = '#f56c6c' },
	}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
