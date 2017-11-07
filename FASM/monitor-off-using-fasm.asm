; Windows monitor off using FASM.

include 'win32ax.inc'

.code

start:
    enter   0,0
    pushad

    invoke  SendMessage,65535,274,61808,2

    popad
    leave
    mov     eax, 0
    retn
.end start
