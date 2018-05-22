
            ;  Muhammad Hamza 1602028
ExitProcess proto
					; GCD in RBX 
.data
pair1 QWORD 53
pair2 QWORD 17
.code
main proc
 ; (5,20)
mov RDX,0
mov RAX,5
mov RBX,20
	 push RAX
     push RBX
call Gcd_Two_Numbers
  ; (24,18)
mov RDX,0
mov RAX,24
mov RBX,18
	 push RAX
     push RBX
call Gcd_Two_Numbers
  ; (11,7)
  mov RDX,0
mov RAX,11
mov RBX,7
	 push RAX
     push RBX
call Gcd_Two_Numbers
  ; (432,226)
  mov RDX,0
mov RAX,432
mov RBX,226
	 push RAX
     push RBX
call Gcd_Two_Numbers
  ; (26,13)
  mov RDX,0
mov RAX,26
mov RBX,13
	 push RAX
     push RBX
call Gcd_Two_Numbers
CALL ExitProcess
main endp
    ;***** This function Find the GCD of Two No... *****


Gcd_Two_Numbers proc 
enter 0,0
mov RDX,0
  mov RAX,[rbp+24]
  mov RBX,[rbp+16]
  DIV RBX
  cmp RDX,0
  jz Lable
     push RBX
	 push RDX
	 call Gcd_Two_Numbers   
  Lable:
  leave
  ret 8
Gcd_Two_Numbers endp
end