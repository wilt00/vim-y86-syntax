" Vim syntax file
" Language: y86 Assembly .ys
" Maintainer: Will Toher
" Latest Revision: 10 Oct 2017
" Filenames: *.ys

if exist("b:current_syntax")
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
hi def link y86Todo     Todo
hi def link y86Comment  Comment


