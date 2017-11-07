; Windows Monitor off using NASM.

NULL	equ 0

global	Monitor_Off

extern	SendMessageA;, ExitProcess

section .text
Monitor_Off:
		enter	0, 0
		pushad
		
		sub		esp, 12
		mov		dword [esp+12], 2		; (LPARAM) 2
		mov		dword [esp+8], 61808	; SC_MONITORPOWER
		mov		dword [esp+4], 274		; WM_SYSCOMMAND
		mov		dword [esp], 65535		; HWND_BROADCAST
		call	SendMessageA
		
		popad
		leave
		
		ret
		
		;push	NULL
		;call	ExitProcess
