# 1 "ia32_crt0.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "ia32_crt0.S"
 .file "ia32_crt0.S"

 .section .text
 .align 4
 .globl _start
 .type _start,@function
_start:
 call _init
 .align 4
 .globl __epos_app_entry
        .type __epos_app_entry,@function
__epos_app_entry:
        call __pre_main
 call main
 push %eax
 call _fini
 call _exit
