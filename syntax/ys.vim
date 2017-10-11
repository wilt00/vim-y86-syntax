" Vim syntax file
" Language: y86 Assembly .ys
" Maintainer: Will Toher
" Latest Revision: 10 Oct 2017
" Filenames: *.ys

if version < 600
    syntax clear
elseif exist("b:current_syntax")
    finish
endif

syn keyword y86Todo contained   TODO FIXME XXX NOTE
syn match y86Comment            "#.*$" contains y86Todo

syn keyword y86BasicInstructions       halt nop
syn keyword y86MoveInstructions        rrmovl irmovl rmmovl mrmovl
syn keyword y86OperationInstructions   addl subl andl xorl
syn keyword y86BranchInstructions      jmp jle jl je jne jge jg
syn keyword y86TransferInstructions    cmovle cmovl cmove cmovne cmovge cmovg
syn keyword y86StackInstructions       call ret pushl popl
syn keyword y86AssemblerDirectives     .pos .align .long .quad

syn keyword y86Registers   %eax %ecx %edx %ebx %esi %edi %esp %ebp

syn match y86Label "^.*:"
syn match y86Hex "0x[0-9]*"
syn match y86Literal "\$[0-9]*"

let b:current_syntax = "y86"

" hi def link y86Todo     Todo
" hi def link y86Comment  Comment
" hi def link y86Hex      Constant
" hi def link y86Literal  Constant
" hi def link y86BasicInstructions    Identifier

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_dis_syntax_inits")
  if version < 508
    let did_dis_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  " The default methods for highlighting.  Can be overridden later
  " Comment
  HiLink y86Comment     Comment
  " Constant: String, Character, Number, Boolean, Float
  HiLink y86Hex         Number
  HiLink y86Literal     Number
  " HiLink disString      String
  " Identifier: Function
  " HiLink disHexDump     Identifier
  HiLink y86BasicInstructions Identifier
  " Statement: Conditional, Repeat, Label, Operator, Keyword, Exception
  " HiLink disStatement	Statement
  HiLink y86Label       Label
  " PreProc: Include, Define, Macro, PreCondit
  " HiLink disData        Define
  " HiLink disMacro       Macro
  " Type: StorageClass, Structure, Typedef
  HiLink y86Registers   StorageClass
  " HiLink disTitle       Typedef
  " Special: SpecialChar, Tag, Delimiter, SpecialComment, Debug
  " HiLink disSpecial     SpecialChar
  " HiLink disSection     Special
  " Underlined
  " Ignore
  " Error
  HiLink y86Error       Error
  " Todo
  HiLink y86Todo        Todo

  delcommand HiLink
endif
