BITS 32	

extern printf
extern scanf
section .data
		year: db "Year",10, 0
		formt: db "%s",0
		nub: dd 0
		four: dd 0
		format :db "%d",10,0
		formaat: db "%d",10,0

section .text
	global main 

	main:
		mov dword[four],4
		push ebp
		mov ebp,esp
		
		push year
		push formt
		call printf

		push nub
		push format
		call scanf

		push dword[nub]
		push format
		call printf

		push ebx

		L:
		add nub,four
		push nub
		push format 
		call printf
		add ebx,1
		cmp ebx,20
		jne L


		L1:
		mov eax,nub
		mov ecx,4
		div ecx
		cmp edx,0
		jge L2
		je L
		

		L2:
		mov eax,nub
		mov ecx,3
		div ecx
		cmp edx,1
		jge L3
		add nub,3
		jmp L
		
		L3:
		mov eax,nub
		mov ecx,2
		div ecx
		cmp edx,2
		jge L4
		add nub,2
		jmp L

		L4:
		mov eax,nub
		mov ecx,3
		div ecx
		cmp edx,1
		add nub,1
		jmp L

leave 
ret