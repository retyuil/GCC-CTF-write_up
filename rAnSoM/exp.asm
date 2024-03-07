
ransom:     file format elf32-i386


Disassembly of section .text:

08049000 <_start>:
 8049000:	31 c0                	xor    %eax,%eax
 8049002:	40                   	inc    %eax
 8049003:	40                   	inc    %eax
 8049004:	40                   	inc    %eax
 8049005:	40                   	inc    %eax
 8049006:	40                   	inc    %eax
 8049007:	bb 00 a0 04 08       	mov    $0x804a000,%ebx
 804900c:	31 c9                	xor    %ecx,%ecx
 804900e:	cd 80                	int    $0x80
 8049010:	a3 a2 a5 04 08       	mov    %eax,0x804a5a2
 8049015:	31 c0                	xor    %eax,%eax
 8049017:	40                   	inc    %eax
 8049018:	40                   	inc    %eax
 8049019:	40                   	inc    %eax
 804901a:	8b 1d a2 a5 04 08    	mov    0x804a5a2,%ebx
 8049020:	b9 a2 a1 04 08       	mov    $0x804a1a2,%ecx
 8049025:	ba 00 04 00 00       	mov    $0x400,%edx
 804902a:	cd 80                	int    $0x80
 804902c:	31 c0                	xor    %eax,%eax
 804902e:	40                   	inc    %eax
 804902f:	40                   	inc    %eax
 8049030:	40                   	inc    %eax
 8049031:	40                   	inc    %eax
 8049032:	40                   	inc    %eax
 8049033:	40                   	inc    %eax
 8049034:	8b 1d a2 a5 04 08    	mov    0x804a5a2,%ebx
 804903a:	cd 80                	int    $0x80
 804903c:	be a2 a1 04 08       	mov    $0x804a1a2,%esi    ;Ouverture du fichier secrets.txt et chargement de son contenue en mémoire.

 8049041:	31 c0                	xor    %eax,%eax
 80490bd:	bb 1c a0 04 08       	mov    $0x804a01c,%ebx
 80490c2:	cd 80                	int    $0x80      ;Chargement du nom du systeme en mémoire. dans le registre ebx.
 80490c4:	83 c3 41             	add    $0x41,%ebx
 80490c7:	31 c9                	xor    %ecx,%ecx




080490c9 <le013758b006e104e>:
 80490c9:	8a 06                	mov    (%esi),%al
 80490cb:	8a 14 0b             	mov    (%ebx,%ecx,1),%dl
 80490ce:	3c 00                	cmp    $0x0,%al
 80490d0:	74 1b                	je     80490ed <ld6b0cc60e20f8f45> ;  vérifie que le contenue de secrets.txt n'est pas vie i.e le chiffrement est finie.




 80490d2:	30 d0                	xor    %dl,%al ;(xor al i.e dernière lettre du secret avec kali[-1] )
 80490d4:	fe c0                	inc    %al ;"Dernière lettre  += 1"
 80490d6:	88 06                	mov    %al,(%esi) ;la première lettre devient = dernière lettre ^kali[-1] +  1
 80490d8:	50                   	push   %eax ; dernière lettre ^kali[-1] +  1 sur la pile.
 80490d9:	eb 01                	jmp    80490dc <le013758b006e104e+0x13>

loc_80490DC:
inc     esi; esi += 1 
pop     eax ;eax = eax ?
push    eax ;eax sur la stack.
jmp     short loc_80490E2

loc_80490E2:
inc     ecx ;
pop     eax ; sert à rien
cmp     ecx, 6 ; fait l'opération avec le xor 6 fois.
jl      short le013758b006e104e




 80490db:	b0 46                	mov    $0x46,%al
 80490dd:	58                   	pop    %eax
 80490de:	50                   	push   %eax
 80490df:	eb 01                	jmp    80490e2 <le013758b006e104e+0x19>
 80490e1:	b0 41                	mov    $0x41,%al
 80490e3:	58                   	pop    %eax
 80490e4:	83 f9 06             	cmp    $0x6,%ecx
 80490e7:	7c e0                	jl     80490c9 <le013758b006e104e>
 80490e9:	31 c9                	xor    %ecx,%ecx
 80490eb:	eb dc                	jmp    80490c9 <le013758b006e104e>

080490ed <ld6b0cc60e20f8f45>:
 80490ed:	31 c0                	xor    %eax,%eax
 80490ef:	40                   	inc    %eax
 80490f0:	40                   	inc    %eax
 80490f1:	40                   	inc    %eax
 80490f2:	40                   	inc    %eax
 80490f3:	40                   	inc    %eax
 80490f4:	40                   	inc    %eax
 80490f5:	40                   	inc    %eax
 80490f6:	40                   	inc    %eax
 80490f7:	bb 0c a0 04 08       	mov    $0x804a00c,%ebx
 80490fc:	b9 b6 01 00 00       	mov    $0x1b6,%ecx
 8049101:	cd 80                	int    $0x80
 8049103:	a3 a6 a5 04 08       	mov    %eax,0x804a5a6
 8049108:	31 c0                	xor    %eax,%eax
 804910a:	40                   	inc    %eax
 804910b:	40                   	inc    %eax
 804910c:	40                   	inc    %eax
 804910d:	40                   	inc    %eax
 804910e:	8b 1d a6 a5 04 08    	mov    0x804a5a6,%ebx
 8049114:	b9 a2 a1 04 08       	mov    $0x804a1a2,%ecx
 8049119:	ba 12 00 00 00       	mov    $0x12,%edx
 804911e:	cd 80                	int    $0x80
 8049120:	31 c0                	xor    %eax,%eax
 8049122:	40                   	inc    %eax
 8049123:	40                   	inc    %eax
 8049124:	40                   	inc    %eax
 8049125:	40                   	inc    %eax
 8049126:	40                   	inc    %eax
 8049127:	40                   	inc    %eax
 8049128:	8b 1d a6 a5 04 08    	mov    0x804a5a6,%ebx
 804912e:	cd 80                	int    $0x80
 8049130:	31 c0                	xor    %eax,%eax
 8049132:	40                   	inc    %eax
 8049133:	31 db                	xor    %ebx,%ebx
 8049135:	cd 80                	int    $0x80

Disassembly of section .data:

0804a000 <secret_filename>:
 804a000:	73 65                	jae    804a067 <_edata+0x4b>
 804a002:	63 72 65             	arpl   %si,0x65(%edx)
 804a005:	74 73                	je     804a07a <_edata+0x5e>
 804a007:	2e 74 78             	je,pn  804a082 <_edata+0x66>
 804a00a:	74 00                	je     804a00c <enc_filename>

0804a00c <enc_filename>:
 804a00c:	73 65                	jae    804a073 <_edata+0x57>
 804a00e:	63 72 65             	arpl   %si,0x65(%edx)
 804a011:	74 73                	je     804a086 <_edata+0x6a>
 804a013:	2e 74 78             	je,pn  804a08e <_edata+0x72>
 804a016:	74 2e                	je     804a046 <_edata+0x2a>
 804a018:	65 6e                	outsb  %gs:(%esi),(%dx)
 804a01a:	63 00                	arpl   %ax,(%eax)

Disassembly of section .bss:

0804a01c <__bss_start>:
	...

0804a1a2 <secret_content>:
	...

0804a5a2 <secret_fd>:
 804a5a2:	00 00                	add    %al,(%eax)
	...

0804a5a6 <enc_fd>:
 804a5a6:	00 00                	add    %al,(%eax)
 804a5a8:	00 00                	add    %al,(%eax)
	...
