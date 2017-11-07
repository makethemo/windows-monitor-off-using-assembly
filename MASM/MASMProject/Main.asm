; Windows Monitor off using MASM.

.386
.model flat,stdcall
.stack 4096

ExitProcess proto,dwExitCode:dword
SendMessageA PROTO STDCALL :DWORD,:DWORD,:DWORD,:DWORD
SendMessage equ <SendMessageA>

.code
main proc
	invoke SendMessage,65535,274,61808,2
	invoke ExitProcess,0
main endp
end main
