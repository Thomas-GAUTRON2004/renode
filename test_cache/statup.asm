.section .text.startup
.global startup
startup:
    ldr sp, =__stack_end
    bl main
    bx lr
 