---
title       : Hello World!
author      : Deo Valiandro. M
date        : '2022-10-18'
signed-by   : Deo Valiandro. M <valiandrod@gmail.com>
layout      : default
---

Dari C:

```c
#include <stdio.h>

int main() {
  int x = 10;
  int y = 100;
  printf("x + y = %d", x + y);
  return 0;
}
```

menjadi assembly x86_64:

```nasm
section .data
    msg db      "hello, world!"

section .text
    global _start
_start:
    mov     rax, 1
    mov     rdi, 1
    mov     rsi, msg
    mov     rdx, 13
    syscall
    
    mov    rax, 60
    mov    rdi, 0
    syscall
```