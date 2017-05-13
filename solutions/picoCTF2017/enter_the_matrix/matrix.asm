
matrix:     file format elf32-i386


Disassembly of section .init:

0804846c <_init>:
 804846c:	53                   	push   %ebx
 804846d:	83 ec 08             	sub    $0x8,%esp
 8048470:	e8 ab 01 00 00       	call   8048620 <__x86.get_pc_thunk.bx>
 8048475:	81 c3 83 1c 00 00    	add    $0x1c83,%ebx
 804847b:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8048481:	85 c0                	test   %eax,%eax
 8048483:	74 05                	je     804848a <_init+0x1e>
 8048485:	e8 86 00 00 00       	call   8048510 <__gmon_start__@plt>
 804848a:	83 c4 08             	add    $0x8,%esp
 804848d:	5b                   	pop    %ebx
 804848e:	c3                   	ret    

Disassembly of section .plt:

08048490 <setbuf@plt-0x10>:
 8048490:	ff 35 fc a0 04 08    	pushl  0x804a0fc
 8048496:	ff 25 00 a1 04 08    	jmp    *0x804a100
 804849c:	00 00                	add    %al,(%eax)
	...

080484a0 <setbuf@plt>:
 80484a0:	ff 25 04 a1 04 08    	jmp    *0x804a104
 80484a6:	68 00 00 00 00       	push   $0x0
 80484ab:	e9 e0 ff ff ff       	jmp    8048490 <_init+0x24>

080484b0 <printf@plt>:
 80484b0:	ff 25 08 a1 04 08    	jmp    *0x804a108
 80484b6:	68 08 00 00 00       	push   $0x8
 80484bb:	e9 d0 ff ff ff       	jmp    8048490 <_init+0x24>

080484c0 <free@plt>:
 80484c0:	ff 25 0c a1 04 08    	jmp    *0x804a10c
 80484c6:	68 10 00 00 00       	push   $0x10
 80484cb:	e9 c0 ff ff ff       	jmp    8048490 <_init+0x24>

080484d0 <fgets@plt>:
 80484d0:	ff 25 10 a1 04 08    	jmp    *0x804a110
 80484d6:	68 18 00 00 00       	push   $0x18
 80484db:	e9 b0 ff ff ff       	jmp    8048490 <_init+0x24>

080484e0 <__stack_chk_fail@plt>:
 80484e0:	ff 25 14 a1 04 08    	jmp    *0x804a114
 80484e6:	68 20 00 00 00       	push   $0x20
 80484eb:	e9 a0 ff ff ff       	jmp    8048490 <_init+0x24>

080484f0 <malloc@plt>:
 80484f0:	ff 25 18 a1 04 08    	jmp    *0x804a118
 80484f6:	68 28 00 00 00       	push   $0x28
 80484fb:	e9 90 ff ff ff       	jmp    8048490 <_init+0x24>

08048500 <puts@plt>:
 8048500:	ff 25 1c a1 04 08    	jmp    *0x804a11c
 8048506:	68 30 00 00 00       	push   $0x30
 804850b:	e9 80 ff ff ff       	jmp    8048490 <_init+0x24>

08048510 <__gmon_start__@plt>:
 8048510:	ff 25 20 a1 04 08    	jmp    *0x804a120
 8048516:	68 38 00 00 00       	push   $0x38
 804851b:	e9 70 ff ff ff       	jmp    8048490 <_init+0x24>

08048520 <exit@plt>:
 8048520:	ff 25 24 a1 04 08    	jmp    *0x804a124
 8048526:	68 40 00 00 00       	push   $0x40
 804852b:	e9 60 ff ff ff       	jmp    8048490 <_init+0x24>

08048530 <__libc_start_main@plt>:
 8048530:	ff 25 28 a1 04 08    	jmp    *0x804a128
 8048536:	68 48 00 00 00       	push   $0x48
 804853b:	e9 50 ff ff ff       	jmp    8048490 <_init+0x24>

08048540 <__isoc99_sscanf@plt>:
 8048540:	ff 25 2c a1 04 08    	jmp    *0x804a12c
 8048546:	68 50 00 00 00       	push   $0x50
 804854b:	e9 40 ff ff ff       	jmp    8048490 <_init+0x24>

08048550 <putchar@plt>:
 8048550:	ff 25 30 a1 04 08    	jmp    *0x804a130
 8048556:	68 58 00 00 00       	push   $0x58
 804855b:	e9 30 ff ff ff       	jmp    8048490 <_init+0x24>

08048560 <calloc@plt>:
 8048560:	ff 25 34 a1 04 08    	jmp    *0x804a134
 8048566:	68 60 00 00 00       	push   $0x60
 804856b:	e9 20 ff ff ff       	jmp    8048490 <_init+0x24>

Disassembly of section .text:

08048570 <main>:
 8048570:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8048574:	83 e4 f0             	and    $0xfffffff0,%esp
 8048577:	ff 71 fc             	pushl  -0x4(%ecx)
 804857a:	55                   	push   %ebp
 804857b:	89 e5                	mov    %esp,%ebp
 804857d:	53                   	push   %ebx
 804857e:	51                   	push   %ecx
 804857f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 8048585:	81 ec 98 00 00 00    	sub    $0x98,%esp
 804858b:	6a 00                	push   $0x0
 804858d:	ff 35 60 a1 04 08    	pushl  0x804a160
 8048593:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048599:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804859c:	31 c0                	xor    %eax,%eax
 804859e:	e8 fd fe ff ff       	call   80484a0 <setbuf@plt>
 80485a3:	c7 04 24 7c 90 04 08 	movl   $0x804907c,(%esp)
 80485aa:	e8 51 ff ff ff       	call   8048500 <puts@plt>
 80485af:	c7 04 24 80 91 04 08 	movl   $0x8049180,(%esp)
 80485b6:	e8 45 ff ff ff       	call   8048500 <puts@plt>
 80485bb:	83 c4 10             	add    $0x10,%esp
 80485be:	eb 0c                	jmp    80485cc <main+0x5c>
 80485c0:	83 ec 0c             	sub    $0xc,%esp
 80485c3:	53                   	push   %ebx
 80485c4:	e8 27 07 00 00       	call   8048cf0 <handle_command>
 80485c9:	83 c4 10             	add    $0x10,%esp
 80485cc:	83 ec 0c             	sub    $0xc,%esp
 80485cf:	68 93 90 04 08       	push   $0x8049093
 80485d4:	e8 d7 fe ff ff       	call   80484b0 <printf@plt>
 80485d9:	83 c4 0c             	add    $0xc,%esp
 80485dc:	ff 35 40 a1 04 08    	pushl  0x804a140
 80485e2:	68 80 00 00 00       	push   $0x80
 80485e7:	53                   	push   %ebx
 80485e8:	e8 e3 fe ff ff       	call   80484d0 <fgets@plt>
 80485ed:	83 c4 10             	add    $0x10,%esp
 80485f0:	85 c0                	test   %eax,%eax
 80485f2:	75 cc                	jne    80485c0 <main+0x50>
 80485f4:	e8 f7 00 00 00       	call   80486f0 <bye>

080485f9 <_start>:
 80485f9:	31 ed                	xor    %ebp,%ebp
 80485fb:	5e                   	pop    %esi
 80485fc:	89 e1                	mov    %esp,%ecx
 80485fe:	83 e4 f0             	and    $0xfffffff0,%esp
 8048601:	50                   	push   %eax
 8048602:	54                   	push   %esp
 8048603:	52                   	push   %edx
 8048604:	68 50 8f 04 08       	push   $0x8048f50
 8048609:	68 e0 8e 04 08       	push   $0x8048ee0
 804860e:	51                   	push   %ecx
 804860f:	56                   	push   %esi
 8048610:	68 70 85 04 08       	push   $0x8048570
 8048615:	e8 16 ff ff ff       	call   8048530 <__libc_start_main@plt>
 804861a:	f4                   	hlt    
 804861b:	66 90                	xchg   %ax,%ax
 804861d:	66 90                	xchg   %ax,%ax
 804861f:	90                   	nop

08048620 <__x86.get_pc_thunk.bx>:
 8048620:	8b 1c 24             	mov    (%esp),%ebx
 8048623:	c3                   	ret    
 8048624:	66 90                	xchg   %ax,%ax
 8048626:	66 90                	xchg   %ax,%ax
 8048628:	66 90                	xchg   %ax,%ax
 804862a:	66 90                	xchg   %ax,%ax
 804862c:	66 90                	xchg   %ax,%ax
 804862e:	66 90                	xchg   %ax,%ax

08048630 <deregister_tm_clones>:
 8048630:	b8 43 a1 04 08       	mov    $0x804a143,%eax
 8048635:	2d 40 a1 04 08       	sub    $0x804a140,%eax
 804863a:	83 f8 06             	cmp    $0x6,%eax
 804863d:	76 1a                	jbe    8048659 <deregister_tm_clones+0x29>
 804863f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048644:	85 c0                	test   %eax,%eax
 8048646:	74 11                	je     8048659 <deregister_tm_clones+0x29>
 8048648:	55                   	push   %ebp
 8048649:	89 e5                	mov    %esp,%ebp
 804864b:	83 ec 14             	sub    $0x14,%esp
 804864e:	68 40 a1 04 08       	push   $0x804a140
 8048653:	ff d0                	call   *%eax
 8048655:	83 c4 10             	add    $0x10,%esp
 8048658:	c9                   	leave  
 8048659:	f3 c3                	repz ret 
 804865b:	90                   	nop
 804865c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048660 <register_tm_clones>:
 8048660:	b8 40 a1 04 08       	mov    $0x804a140,%eax
 8048665:	2d 40 a1 04 08       	sub    $0x804a140,%eax
 804866a:	c1 f8 02             	sar    $0x2,%eax
 804866d:	89 c2                	mov    %eax,%edx
 804866f:	c1 ea 1f             	shr    $0x1f,%edx
 8048672:	01 d0                	add    %edx,%eax
 8048674:	d1 f8                	sar    %eax
 8048676:	74 1b                	je     8048693 <register_tm_clones+0x33>
 8048678:	ba 00 00 00 00       	mov    $0x0,%edx
 804867d:	85 d2                	test   %edx,%edx
 804867f:	74 12                	je     8048693 <register_tm_clones+0x33>
 8048681:	55                   	push   %ebp
 8048682:	89 e5                	mov    %esp,%ebp
 8048684:	83 ec 10             	sub    $0x10,%esp
 8048687:	50                   	push   %eax
 8048688:	68 40 a1 04 08       	push   $0x804a140
 804868d:	ff d2                	call   *%edx
 804868f:	83 c4 10             	add    $0x10,%esp
 8048692:	c9                   	leave  
 8048693:	f3 c3                	repz ret 
 8048695:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048699:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080486a0 <__do_global_dtors_aux>:
 80486a0:	80 3d 64 a1 04 08 00 	cmpb   $0x0,0x804a164
 80486a7:	75 13                	jne    80486bc <__do_global_dtors_aux+0x1c>
 80486a9:	55                   	push   %ebp
 80486aa:	89 e5                	mov    %esp,%ebp
 80486ac:	83 ec 08             	sub    $0x8,%esp
 80486af:	e8 7c ff ff ff       	call   8048630 <deregister_tm_clones>
 80486b4:	c6 05 64 a1 04 08 01 	movb   $0x1,0x804a164
 80486bb:	c9                   	leave  
 80486bc:	f3 c3                	repz ret 
 80486be:	66 90                	xchg   %ax,%ax

080486c0 <frame_dummy>:
 80486c0:	b8 08 a0 04 08       	mov    $0x804a008,%eax
 80486c5:	8b 10                	mov    (%eax),%edx
 80486c7:	85 d2                	test   %edx,%edx
 80486c9:	75 05                	jne    80486d0 <frame_dummy+0x10>
 80486cb:	eb 93                	jmp    8048660 <register_tm_clones>
 80486cd:	8d 76 00             	lea    0x0(%esi),%esi
 80486d0:	ba 00 00 00 00       	mov    $0x0,%edx
 80486d5:	85 d2                	test   %edx,%edx
 80486d7:	74 f2                	je     80486cb <frame_dummy+0xb>
 80486d9:	55                   	push   %ebp
 80486da:	89 e5                	mov    %esp,%ebp
 80486dc:	83 ec 14             	sub    $0x14,%esp
 80486df:	50                   	push   %eax
 80486e0:	ff d2                	call   *%edx
 80486e2:	83 c4 10             	add    $0x10,%esp
 80486e5:	c9                   	leave  
 80486e6:	e9 75 ff ff ff       	jmp    8048660 <register_tm_clones>
 80486eb:	66 90                	xchg   %ax,%ax
 80486ed:	66 90                	xchg   %ax,%ax
 80486ef:	90                   	nop

080486f0 <bye>:
 80486f0:	83 ec 28             	sub    $0x28,%esp
 80486f3:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80486f9:	89 44 24 18          	mov    %eax,0x18(%esp)
 80486fd:	31 c0                	xor    %eax,%eax
 80486ff:	68 70 8f 04 08       	push   $0x8048f70
 8048704:	e8 f7 fd ff ff       	call   8048500 <puts@plt>
 8048709:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048710:	e8 0b fe ff ff       	call   8048520 <exit@plt>
 8048715:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048719:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048720 <find_free_index>:
 8048720:	83 ec 1c             	sub    $0x1c,%esp
 8048723:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048729:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804872d:	31 c0                	xor    %eax,%eax
 804872f:	eb 11                	jmp    8048742 <find_free_index+0x22>
 8048731:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8048738:	83 c0 01             	add    $0x1,%eax
 804873b:	3d 00 02 00 00       	cmp    $0x200,%eax
 8048740:	74 1e                	je     8048760 <find_free_index+0x40>
 8048742:	8b 14 85 80 a1 04 08 	mov    0x804a180(,%eax,4),%edx
 8048749:	85 d2                	test   %edx,%edx
 804874b:	75 eb                	jne    8048738 <find_free_index+0x18>
 804874d:	8b 54 24 0c          	mov    0xc(%esp),%edx
 8048751:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 8048758:	75 0d                	jne    8048767 <find_free_index+0x47>
 804875a:	83 c4 1c             	add    $0x1c,%esp
 804875d:	c3                   	ret    
 804875e:	66 90                	xchg   %ax,%ax
 8048760:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8048765:	eb e6                	jmp    804874d <find_free_index+0x2d>
 8048767:	e8 74 fd ff ff       	call   80484e0 <__stack_chk_fail@plt>
 804876c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048770 <get_matrix>:
 8048770:	83 ec 1c             	sub    $0x1c,%esp
 8048773:	8b 44 24 20          	mov    0x20(%esp),%eax
 8048777:	65 8b 15 14 00 00 00 	mov    %gs:0x14,%edx
 804877e:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8048782:	31 d2                	xor    %edx,%edx
 8048784:	3d ff 01 00 00       	cmp    $0x1ff,%eax
 8048789:	77 1d                	ja     80487a8 <get_matrix+0x38>
 804878b:	8b 04 85 80 a1 04 08 	mov    0x804a180(,%eax,4),%eax
 8048792:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
 8048796:	65 33 0d 14 00 00 00 	xor    %gs:0x14,%ecx
 804879d:	75 0d                	jne    80487ac <get_matrix+0x3c>
 804879f:	83 c4 1c             	add    $0x1c,%esp
 80487a2:	c3                   	ret    
 80487a3:	90                   	nop
 80487a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80487a8:	31 c0                	xor    %eax,%eax
 80487aa:	eb e6                	jmp    8048792 <get_matrix+0x22>
 80487ac:	e8 2f fd ff ff       	call   80484e0 <__stack_chk_fail@plt>
 80487b1:	eb 0d                	jmp    80487c0 <handle_create>
 80487b3:	90                   	nop
 80487b4:	90                   	nop
 80487b5:	90                   	nop
 80487b6:	90                   	nop
 80487b7:	90                   	nop
 80487b8:	90                   	nop
 80487b9:	90                   	nop
 80487ba:	90                   	nop
 80487bb:	90                   	nop
 80487bc:	90                   	nop
 80487bd:	90                   	nop
 80487be:	90                   	nop
 80487bf:	90                   	nop

080487c0 <handle_create>:
 80487c0:	55                   	push   %ebp
 80487c1:	57                   	push   %edi
 80487c2:	56                   	push   %esi
 80487c3:	53                   	push   %ebx
 80487c4:	31 db                	xor    %ebx,%ebx
 80487c6:	83 ec 1c             	sub    $0x1c,%esp
 80487c9:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 80487cd:	8b 74 24 34          	mov    0x34(%esp),%esi
 80487d1:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80487d7:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80487db:	31 c0                	xor    %eax,%eax
 80487dd:	eb 0c                	jmp    80487eb <handle_create+0x2b>
 80487df:	90                   	nop
 80487e0:	83 c3 01             	add    $0x1,%ebx
 80487e3:	81 fb 00 02 00 00    	cmp    $0x200,%ebx
 80487e9:	74 75                	je     8048860 <handle_create+0xa0>
 80487eb:	8b 0c 9d 80 a1 04 08 	mov    0x804a180(,%ebx,4),%ecx
 80487f2:	85 c9                	test   %ecx,%ecx
 80487f4:	75 ea                	jne    80487e0 <handle_create+0x20>
 80487f6:	8d 45 ff             	lea    -0x1(%ebp),%eax
 80487f9:	3d 0f 27 00 00       	cmp    $0x270f,%eax
 80487fe:	77 79                	ja     8048879 <handle_create+0xb9>
 8048800:	8d 46 ff             	lea    -0x1(%esi),%eax
 8048803:	3d 0f 27 00 00       	cmp    $0x270f,%eax
 8048808:	0f 87 8a 00 00 00    	ja     8048898 <handle_create+0xd8>
 804880e:	83 ec 0c             	sub    $0xc,%esp
 8048811:	6a 0c                	push   $0xc
 8048813:	e8 d8 fc ff ff       	call   80484f0 <malloc@plt>
 8048818:	89 70 04             	mov    %esi,0x4(%eax)
 804881b:	89 28                	mov    %ebp,(%eax)
 804881d:	89 c7                	mov    %eax,%edi
 804881f:	0f af f5             	imul   %ebp,%esi
 8048822:	58                   	pop    %eax
 8048823:	5a                   	pop    %edx
 8048824:	6a 04                	push   $0x4
 8048826:	56                   	push   %esi
 8048827:	e8 34 fd ff ff       	call   8048560 <calloc@plt>
 804882c:	83 c4 10             	add    $0x10,%esp
 804882f:	89 47 08             	mov    %eax,0x8(%edi)
 8048832:	89 3c 9d 80 a1 04 08 	mov    %edi,0x804a180(,%ebx,4)
 8048839:	8b 44 24 0c          	mov    0xc(%esp),%eax
 804883d:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8048844:	75 4d                	jne    8048893 <handle_create+0xd3>
 8048846:	89 5c 24 34          	mov    %ebx,0x34(%esp)
 804884a:	c7 44 24 30 ec 90 04 	movl   $0x80490ec,0x30(%esp)
 8048851:	08 
 8048852:	83 c4 1c             	add    $0x1c,%esp
 8048855:	5b                   	pop    %ebx
 8048856:	5e                   	pop    %esi
 8048857:	5f                   	pop    %edi
 8048858:	5d                   	pop    %ebp
 8048859:	e9 52 fc ff ff       	jmp    80484b0 <printf@plt>
 804885e:	66 90                	xchg   %ax,%ax
 8048860:	83 ec 0c             	sub    $0xc,%esp
 8048863:	68 78 8f 04 08       	push   $0x8048f78
 8048868:	e8 93 fc ff ff       	call   8048500 <puts@plt>
 804886d:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 8048874:	e8 a7 fc ff ff       	call   8048520 <exit@plt>
 8048879:	83 ec 08             	sub    $0x8,%esp
 804887c:	55                   	push   %ebp
 804887d:	68 a4 90 04 08       	push   $0x80490a4
 8048882:	e8 29 fc ff ff       	call   80484b0 <printf@plt>
 8048887:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 804888e:	e8 8d fc ff ff       	call   8048520 <exit@plt>
 8048893:	e8 48 fc ff ff       	call   80484e0 <__stack_chk_fail@plt>
 8048898:	83 ec 08             	sub    $0x8,%esp
 804889b:	56                   	push   %esi
 804889c:	68 c8 90 04 08       	push   $0x80490c8
 80488a1:	e8 0a fc ff ff       	call   80484b0 <printf@plt>
 80488a6:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 80488ad:	e8 6e fc ff ff       	call   8048520 <exit@plt>
 80488b2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80488b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080488c0 <handle_destroy>:
 80488c0:	56                   	push   %esi
 80488c1:	53                   	push   %ebx
 80488c2:	83 ec 14             	sub    $0x14,%esp
 80488c5:	8b 5c 24 20          	mov    0x20(%esp),%ebx
 80488c9:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80488cf:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80488d3:	31 c0                	xor    %eax,%eax
 80488d5:	81 fb ff 01 00 00    	cmp    $0x1ff,%ebx
 80488db:	77 53                	ja     8048930 <handle_destroy+0x70>
 80488dd:	8b 34 9d 80 a1 04 08 	mov    0x804a180(,%ebx,4),%esi
 80488e4:	85 f6                	test   %esi,%esi
 80488e6:	74 48                	je     8048930 <handle_destroy+0x70>
 80488e8:	83 ec 0c             	sub    $0xc,%esp
 80488eb:	ff 76 08             	pushl  0x8(%esi)
 80488ee:	e8 cd fb ff ff       	call   80484c0 <free@plt>
 80488f3:	89 34 24             	mov    %esi,(%esp)
 80488f6:	e8 c5 fb ff ff       	call   80484c0 <free@plt>
 80488fb:	58                   	pop    %eax
 80488fc:	5a                   	pop    %edx
 80488fd:	53                   	push   %ebx
 80488fe:	68 10 91 04 08       	push   $0x8049110
 8048903:	c7 04 9d 80 a1 04 08 	movl   $0x0,0x804a180(,%ebx,4)
 804890a:	00 00 00 00 
 804890e:	e8 9d fb ff ff       	call   80484b0 <printf@plt>
 8048913:	83 c4 10             	add    $0x10,%esp
 8048916:	8b 44 24 0c          	mov    0xc(%esp),%eax
 804891a:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8048921:	75 26                	jne    8048949 <handle_destroy+0x89>
 8048923:	83 c4 14             	add    $0x14,%esp
 8048926:	5b                   	pop    %ebx
 8048927:	5e                   	pop    %esi
 8048928:	c3                   	ret    
 8048929:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8048930:	83 ec 0c             	sub    $0xc,%esp
 8048933:	68 8f 8f 04 08       	push   $0x8048f8f
 8048938:	e8 c3 fb ff ff       	call   8048500 <puts@plt>
 804893d:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 8048944:	e8 d7 fb ff ff       	call   8048520 <exit@plt>
 8048949:	e8 92 fb ff ff       	call   80484e0 <__stack_chk_fail@plt>
 804894e:	66 90                	xchg   %ax,%ax

08048950 <matrix_info>:
 8048950:	56                   	push   %esi
 8048951:	53                   	push   %ebx
 8048952:	b9 ad 8f 04 08       	mov    $0x8048fad,%ecx
 8048957:	83 ec 14             	sub    $0x14,%esp
 804895a:	8b 44 24 24          	mov    0x24(%esp),%eax
 804895e:	8b 5c 24 20          	mov    0x20(%esp),%ebx
 8048962:	65 8b 35 14 00 00 00 	mov    %gs:0x14,%esi
 8048969:	89 74 24 0c          	mov    %esi,0xc(%esp)
 804896d:	31 f6                	xor    %esi,%esi
 804896f:	8b 50 04             	mov    0x4(%eax),%edx
 8048972:	83 fa 01             	cmp    $0x1,%edx
 8048975:	74 05                	je     804897c <matrix_info+0x2c>
 8048977:	b9 a6 8f 04 08       	mov    $0x8048fa6,%ecx
 804897c:	8b 00                	mov    (%eax),%eax
 804897e:	83 f8 01             	cmp    $0x1,%eax
 8048981:	74 2d                	je     80489b0 <matrix_info+0x60>
 8048983:	be a6 8f 04 08       	mov    $0x8048fa6,%esi
 8048988:	83 ec 08             	sub    $0x8,%esp
 804898b:	51                   	push   %ecx
 804898c:	52                   	push   %edx
 804898d:	56                   	push   %esi
 804898e:	50                   	push   %eax
 804898f:	53                   	push   %ebx
 8048990:	68 34 91 04 08       	push   $0x8049134
 8048995:	e8 16 fb ff ff       	call   80484b0 <printf@plt>
 804899a:	83 c4 20             	add    $0x20,%esp
 804899d:	8b 44 24 0c          	mov    0xc(%esp),%eax
 80489a1:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 80489a8:	75 0d                	jne    80489b7 <matrix_info+0x67>
 80489aa:	83 c4 14             	add    $0x14,%esp
 80489ad:	5b                   	pop    %ebx
 80489ae:	5e                   	pop    %esi
 80489af:	c3                   	ret    
 80489b0:	be ad 8f 04 08       	mov    $0x8048fad,%esi
 80489b5:	eb d1                	jmp    8048988 <matrix_info+0x38>
 80489b7:	e8 24 fb ff ff       	call   80484e0 <__stack_chk_fail@plt>
 80489bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

080489c0 <handle_print>:
 80489c0:	55                   	push   %ebp
 80489c1:	57                   	push   %edi
 80489c2:	56                   	push   %esi
 80489c3:	53                   	push   %ebx
 80489c4:	83 ec 1c             	sub    $0x1c,%esp
 80489c7:	8b 44 24 30          	mov    0x30(%esp),%eax
 80489cb:	65 8b 15 14 00 00 00 	mov    %gs:0x14,%edx
 80489d2:	89 54 24 0c          	mov    %edx,0xc(%esp)
 80489d6:	31 d2                	xor    %edx,%edx
 80489d8:	3d ff 01 00 00       	cmp    $0x1ff,%eax
 80489dd:	0f 87 87 00 00 00    	ja     8048a6a <handle_print+0xaa>
 80489e3:	8b 3c 85 80 a1 04 08 	mov    0x804a180(,%eax,4),%edi
 80489ea:	85 ff                	test   %edi,%edi
 80489ec:	74 7c                	je     8048a6a <handle_print+0xaa>
 80489ee:	83 ec 08             	sub    $0x8,%esp
 80489f1:	31 ed                	xor    %ebp,%ebp
 80489f3:	57                   	push   %edi
 80489f4:	50                   	push   %eax
 80489f5:	e8 56 ff ff ff       	call   8048950 <matrix_info>
 80489fa:	8b 07                	mov    (%edi),%eax
 80489fc:	83 c4 10             	add    $0x10,%esp
 80489ff:	8b 77 08             	mov    0x8(%edi),%esi
 8048a02:	85 c0                	test   %eax,%eax
 8048a04:	7e 4f                	jle    8048a55 <handle_print+0x95>
 8048a06:	8d 76 00             	lea    0x0(%esi),%esi
 8048a09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 8048a10:	8b 57 04             	mov    0x4(%edi),%edx
 8048a13:	31 db                	xor    %ebx,%ebx
 8048a15:	85 d2                	test   %edx,%edx
 8048a17:	7e 28                	jle    8048a41 <handle_print+0x81>
 8048a19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8048a20:	83 c6 04             	add    $0x4,%esi
 8048a23:	d9 46 fc             	flds   -0x4(%esi)
 8048a26:	83 ec 0c             	sub    $0xc,%esp
 8048a29:	83 c3 01             	add    $0x1,%ebx
 8048a2c:	dd 1c 24             	fstpl  (%esp)
 8048a2f:	68 a8 8f 04 08       	push   $0x8048fa8
 8048a34:	e8 77 fa ff ff       	call   80484b0 <printf@plt>
 8048a39:	83 c4 10             	add    $0x10,%esp
 8048a3c:	39 5f 04             	cmp    %ebx,0x4(%edi)
 8048a3f:	7f df                	jg     8048a20 <handle_print+0x60>
 8048a41:	83 ec 0c             	sub    $0xc,%esp
 8048a44:	83 c5 01             	add    $0x1,%ebp
 8048a47:	6a 0a                	push   $0xa
 8048a49:	e8 02 fb ff ff       	call   8048550 <putchar@plt>
 8048a4e:	83 c4 10             	add    $0x10,%esp
 8048a51:	39 2f                	cmp    %ebp,(%edi)
 8048a53:	7f bb                	jg     8048a10 <handle_print+0x50>
 8048a55:	8b 44 24 0c          	mov    0xc(%esp),%eax
 8048a59:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8048a60:	75 21                	jne    8048a83 <handle_print+0xc3>
 8048a62:	83 c4 1c             	add    $0x1c,%esp
 8048a65:	5b                   	pop    %ebx
 8048a66:	5e                   	pop    %esi
 8048a67:	5f                   	pop    %edi
 8048a68:	5d                   	pop    %ebp
 8048a69:	c3                   	ret    
 8048a6a:	83 ec 0c             	sub    $0xc,%esp
 8048a6d:	68 8f 8f 04 08       	push   $0x8048f8f
 8048a72:	e8 89 fa ff ff       	call   8048500 <puts@plt>
 8048a77:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 8048a7e:	e8 9d fa ff ff       	call   8048520 <exit@plt>
 8048a83:	e8 58 fa ff ff       	call   80484e0 <__stack_chk_fail@plt>
 8048a88:	90                   	nop
 8048a89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08048a90 <handle_list>:
 8048a90:	53                   	push   %ebx
 8048a91:	31 db                	xor    %ebx,%ebx
 8048a93:	83 ec 18             	sub    $0x18,%esp
 8048a96:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048a9c:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048aa0:	31 c0                	xor    %eax,%eax
 8048aa2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048aa8:	8b 04 9d 80 a1 04 08 	mov    0x804a180(,%ebx,4),%eax
 8048aaf:	85 c0                	test   %eax,%eax
 8048ab1:	74 0d                	je     8048ac0 <handle_list+0x30>
 8048ab3:	83 ec 08             	sub    $0x8,%esp
 8048ab6:	50                   	push   %eax
 8048ab7:	53                   	push   %ebx
 8048ab8:	e8 93 fe ff ff       	call   8048950 <matrix_info>
 8048abd:	83 c4 10             	add    $0x10,%esp
 8048ac0:	83 c3 01             	add    $0x1,%ebx
 8048ac3:	81 fb 00 02 00 00    	cmp    $0x200,%ebx
 8048ac9:	75 dd                	jne    8048aa8 <handle_list+0x18>
 8048acb:	8b 44 24 0c          	mov    0xc(%esp),%eax
 8048acf:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8048ad6:	75 05                	jne    8048add <handle_list+0x4d>
 8048ad8:	83 c4 18             	add    $0x18,%esp
 8048adb:	5b                   	pop    %ebx
 8048adc:	c3                   	ret    
 8048add:	e8 fe f9 ff ff       	call   80484e0 <__stack_chk_fail@plt>
 8048ae2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8048ae9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048af0 <handle_get>:
 8048af0:	53                   	push   %ebx
 8048af1:	83 ec 18             	sub    $0x18,%esp
 8048af4:	8b 44 24 20          	mov    0x20(%esp),%eax
 8048af8:	8b 4c 24 24          	mov    0x24(%esp),%ecx
 8048afc:	65 8b 1d 14 00 00 00 	mov    %gs:0x14,%ebx
 8048b03:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
 8048b07:	31 db                	xor    %ebx,%ebx
 8048b09:	8b 54 24 28          	mov    0x28(%esp),%edx
 8048b0d:	3d ff 01 00 00       	cmp    $0x1ff,%eax
 8048b12:	77 54                	ja     8048b68 <handle_get+0x78>
 8048b14:	8b 1c 85 80 a1 04 08 	mov    0x804a180(,%eax,4),%ebx
 8048b1b:	85 db                	test   %ebx,%ebx
 8048b1d:	74 49                	je     8048b68 <handle_get+0x78>
 8048b1f:	85 c9                	test   %ecx,%ecx
 8048b21:	78 5e                	js     8048b81 <handle_get+0x91>
 8048b23:	8b 03                	mov    (%ebx),%eax
 8048b25:	39 c1                	cmp    %eax,%ecx
 8048b27:	7d 58                	jge    8048b81 <handle_get+0x91>
 8048b29:	85 d2                	test   %edx,%edx
 8048b2b:	78 6d                	js     8048b9a <handle_get+0xaa>
 8048b2d:	3b 53 04             	cmp    0x4(%ebx),%edx
 8048b30:	7d 68                	jge    8048b9a <handle_get+0xaa>
 8048b32:	0f af c1             	imul   %ecx,%eax
 8048b35:	8b 5b 08             	mov    0x8(%ebx),%ebx
 8048b38:	83 ec 14             	sub    $0x14,%esp
 8048b3b:	01 d0                	add    %edx,%eax
 8048b3d:	d9 04 83             	flds   (%ebx,%eax,4)
 8048b40:	dd 1c 24             	fstpl  (%esp)
 8048b43:	52                   	push   %edx
 8048b44:	51                   	push   %ecx
 8048b45:	68 e3 8f 04 08       	push   $0x8048fe3
 8048b4a:	e8 61 f9 ff ff       	call   80484b0 <printf@plt>
 8048b4f:	83 c4 20             	add    $0x20,%esp
 8048b52:	8b 44 24 0c          	mov    0xc(%esp),%eax
 8048b56:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8048b5d:	75 54                	jne    8048bb3 <handle_get+0xc3>
 8048b5f:	83 c4 18             	add    $0x18,%esp
 8048b62:	5b                   	pop    %ebx
 8048b63:	c3                   	ret    
 8048b64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048b68:	83 ec 0c             	sub    $0xc,%esp
 8048b6b:	68 8f 8f 04 08       	push   $0x8048f8f
 8048b70:	e8 8b f9 ff ff       	call   8048500 <puts@plt>
 8048b75:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 8048b7c:	e8 9f f9 ff ff       	call   8048520 <exit@plt>
 8048b81:	52                   	push   %edx
 8048b82:	52                   	push   %edx
 8048b83:	51                   	push   %ecx
 8048b84:	68 ae 8f 04 08       	push   $0x8048fae
 8048b89:	e8 22 f9 ff ff       	call   80484b0 <printf@plt>
 8048b8e:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 8048b95:	e8 86 f9 ff ff       	call   8048520 <exit@plt>
 8048b9a:	50                   	push   %eax
 8048b9b:	50                   	push   %eax
 8048b9c:	52                   	push   %edx
 8048b9d:	68 c7 8f 04 08       	push   $0x8048fc7
 8048ba2:	e8 09 f9 ff ff       	call   80484b0 <printf@plt>
 8048ba7:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 8048bae:	e8 6d f9 ff ff       	call   8048520 <exit@plt>
 8048bb3:	e8 28 f9 ff ff       	call   80484e0 <__stack_chk_fail@plt>
 8048bb8:	90                   	nop
 8048bb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08048bc0 <handle_set>:
 8048bc0:	53                   	push   %ebx
 8048bc1:	83 ec 18             	sub    $0x18,%esp
 8048bc4:	8b 44 24 20          	mov    0x20(%esp),%eax
 8048bc8:	8b 4c 24 24          	mov    0x24(%esp),%ecx
 8048bcc:	65 8b 1d 14 00 00 00 	mov    %gs:0x14,%ebx
 8048bd3:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
 8048bd7:	31 db                	xor    %ebx,%ebx
 8048bd9:	8b 54 24 28          	mov    0x28(%esp),%edx
 8048bdd:	d9 44 24 2c          	flds   0x2c(%esp)
 8048be1:	3d ff 01 00 00       	cmp    $0x1ff,%eax
 8048be6:	77 58                	ja     8048c40 <handle_set+0x80>
 8048be8:	8b 1c 85 80 a1 04 08 	mov    0x804a180(,%eax,4),%ebx
 8048bef:	85 db                	test   %ebx,%ebx
 8048bf1:	74 55                	je     8048c48 <handle_set+0x88>
 8048bf3:	85 c9                	test   %ecx,%ecx
 8048bf5:	78 72                	js     8048c69 <handle_set+0xa9>
 8048bf7:	8b 03                	mov    (%ebx),%eax
 8048bf9:	39 c1                	cmp    %eax,%ecx
 8048bfb:	7d 70                	jge    8048c6d <handle_set+0xad>
 8048bfd:	85 d2                	test   %edx,%edx
 8048bff:	0f 88 83 00 00 00    	js     8048c88 <handle_set+0xc8>
 8048c05:	3b 53 04             	cmp    0x4(%ebx),%edx
 8048c08:	0f 8d 7e 00 00 00    	jge    8048c8c <handle_set+0xcc>
 8048c0e:	0f af c1             	imul   %ecx,%eax
 8048c11:	8b 5b 08             	mov    0x8(%ebx),%ebx
 8048c14:	83 ec 14             	sub    $0x14,%esp
 8048c17:	01 d0                	add    %edx,%eax
 8048c19:	d9 14 83             	fsts   (%ebx,%eax,4)
 8048c1c:	dd 1c 24             	fstpl  (%esp)
 8048c1f:	52                   	push   %edx
 8048c20:	51                   	push   %ecx
 8048c21:	68 58 91 04 08       	push   $0x8049158
 8048c26:	e8 85 f8 ff ff       	call   80484b0 <printf@plt>
 8048c2b:	83 c4 20             	add    $0x20,%esp
 8048c2e:	8b 44 24 0c          	mov    0xc(%esp),%eax
 8048c32:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8048c39:	75 6c                	jne    8048ca7 <handle_set+0xe7>
 8048c3b:	83 c4 18             	add    $0x18,%esp
 8048c3e:	5b                   	pop    %ebx
 8048c3f:	c3                   	ret    
 8048c40:	dd d8                	fstp   %st(0)
 8048c42:	eb 0c                	jmp    8048c50 <handle_set+0x90>
 8048c44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048c48:	dd d8                	fstp   %st(0)
 8048c4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048c50:	83 ec 0c             	sub    $0xc,%esp
 8048c53:	68 8f 8f 04 08       	push   $0x8048f8f
 8048c58:	e8 a3 f8 ff ff       	call   8048500 <puts@plt>
 8048c5d:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 8048c64:	e8 b7 f8 ff ff       	call   8048520 <exit@plt>
 8048c69:	dd d8                	fstp   %st(0)
 8048c6b:	eb 02                	jmp    8048c6f <handle_set+0xaf>
 8048c6d:	dd d8                	fstp   %st(0)
 8048c6f:	52                   	push   %edx
 8048c70:	52                   	push   %edx
 8048c71:	51                   	push   %ecx
 8048c72:	68 fa 8f 04 08       	push   $0x8048ffa
 8048c77:	e8 34 f8 ff ff       	call   80484b0 <printf@plt>
 8048c7c:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 8048c83:	e8 98 f8 ff ff       	call   8048520 <exit@plt>
 8048c88:	dd d8                	fstp   %st(0)
 8048c8a:	eb 02                	jmp    8048c8e <handle_set+0xce>
 8048c8c:	dd d8                	fstp   %st(0)
 8048c8e:	50                   	push   %eax
 8048c8f:	50                   	push   %eax
 8048c90:	52                   	push   %edx
 8048c91:	68 13 90 04 08       	push   $0x8049013
 8048c96:	e8 15 f8 ff ff       	call   80484b0 <printf@plt>
 8048c9b:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 8048ca2:	e8 79 f8 ff ff       	call   8048520 <exit@plt>
 8048ca7:	e8 34 f8 ff ff       	call   80484e0 <__stack_chk_fail@plt>
 8048cac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048cb0 <usage>:
 8048cb0:	83 ec 28             	sub    $0x28,%esp
 8048cb3:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048cb9:	89 44 24 18          	mov    %eax,0x18(%esp)
 8048cbd:	31 c0                	xor    %eax,%eax
 8048cbf:	68 80 91 04 08       	push   $0x8049180
 8048cc4:	e8 37 f8 ff ff       	call   8048500 <puts@plt>
 8048cc9:	83 c4 10             	add    $0x10,%esp
 8048ccc:	8b 44 24 0c          	mov    0xc(%esp),%eax
 8048cd0:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8048cd7:	75 04                	jne    8048cdd <usage+0x2d>
 8048cd9:	83 c4 1c             	add    $0x1c,%esp
 8048cdc:	c3                   	ret    
 8048cdd:	e8 fe f7 ff ff       	call   80484e0 <__stack_chk_fail@plt>
 8048ce2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8048ce9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048cf0 <handle_command>:
 8048cf0:	55                   	push   %ebp
 8048cf1:	57                   	push   %edi
 8048cf2:	56                   	push   %esi
 8048cf3:	53                   	push   %ebx
 8048cf4:	83 ec 2c             	sub    $0x2c,%esp
 8048cf7:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048cfd:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 8048d01:	31 c0                	xor    %eax,%eax
 8048d03:	8d 44 24 14          	lea    0x14(%esp),%eax
 8048d07:	8b 5c 24 40          	mov    0x40(%esp),%ebx
 8048d0b:	50                   	push   %eax
 8048d0c:	8d 44 24 14          	lea    0x14(%esp),%eax
 8048d10:	50                   	push   %eax
 8048d11:	68 2f 90 04 08       	push   $0x804902f
 8048d16:	53                   	push   %ebx
 8048d17:	e8 24 f8 ff ff       	call   8048540 <__isoc99_sscanf@plt>
 8048d1c:	83 c4 10             	add    $0x10,%esp
 8048d1f:	83 f8 02             	cmp    $0x2,%eax
 8048d22:	0f 84 08 01 00 00    	je     8048e30 <handle_command+0x140>
 8048d28:	83 ec 04             	sub    $0x4,%esp
 8048d2b:	8d 6c 24 10          	lea    0x10(%esp),%ebp
 8048d2f:	55                   	push   %ebp
 8048d30:	68 3c 90 04 08       	push   $0x804903c
 8048d35:	53                   	push   %ebx
 8048d36:	e8 05 f8 ff ff       	call   8048540 <__isoc99_sscanf@plt>
 8048d3b:	83 c4 10             	add    $0x10,%esp
 8048d3e:	83 f8 01             	cmp    $0x1,%eax
 8048d41:	0f 84 19 01 00 00    	je     8048e60 <handle_command+0x170>
 8048d47:	bf 47 90 04 08       	mov    $0x8049047,%edi
 8048d4c:	b9 04 00 00 00       	mov    $0x4,%ecx
 8048d51:	89 de                	mov    %ebx,%esi
 8048d53:	f3 a6                	repz cmpsb %es:(%edi),%ds:(%esi)
 8048d55:	0f 84 c5 00 00 00    	je     8048e20 <handle_command+0x130>
 8048d5b:	83 ec 04             	sub    $0x4,%esp
 8048d5e:	55                   	push   %ebp
 8048d5f:	68 4c 90 04 08       	push   $0x804904c
 8048d64:	53                   	push   %ebx
 8048d65:	e8 d6 f7 ff ff       	call   8048540 <__isoc99_sscanf@plt>
 8048d6a:	83 c4 10             	add    $0x10,%esp
 8048d6d:	83 f8 02             	cmp    $0x2,%eax
 8048d70:	0f 84 d2 00 00 00    	je     8048e48 <handle_command+0x158>
 8048d76:	83 ec 0c             	sub    $0xc,%esp
 8048d79:	8d 44 24 20          	lea    0x20(%esp),%eax
 8048d7d:	50                   	push   %eax
 8048d7e:	8d 44 24 20          	lea    0x20(%esp),%eax
 8048d82:	50                   	push   %eax
 8048d83:	55                   	push   %ebp
 8048d84:	68 55 90 04 08       	push   $0x8049055
 8048d89:	53                   	push   %ebx
 8048d8a:	e8 b1 f7 ff ff       	call   8048540 <__isoc99_sscanf@plt>
 8048d8f:	83 c4 20             	add    $0x20,%esp
 8048d92:	83 f8 03             	cmp    $0x3,%eax
 8048d95:	0f 84 dd 00 00 00    	je     8048e78 <handle_command+0x188>
 8048d9b:	83 ec 08             	sub    $0x8,%esp
 8048d9e:	8d 44 24 20          	lea    0x20(%esp),%eax
 8048da2:	50                   	push   %eax
 8048da3:	8d 44 24 20          	lea    0x20(%esp),%eax
 8048da7:	50                   	push   %eax
 8048da8:	8d 44 24 20          	lea    0x20(%esp),%eax
 8048dac:	50                   	push   %eax
 8048dad:	55                   	push   %ebp
 8048dae:	68 62 90 04 08       	push   $0x8049062
 8048db3:	53                   	push   %ebx
 8048db4:	e8 87 f7 ff ff       	call   8048540 <__isoc99_sscanf@plt>
 8048db9:	83 c4 20             	add    $0x20,%esp
 8048dbc:	83 f8 04             	cmp    $0x4,%eax
 8048dbf:	0f 84 eb 00 00 00    	je     8048eb0 <handle_command+0x1c0>
 8048dc5:	bf 72 90 04 08       	mov    $0x8049072,%edi
 8048dca:	b9 04 00 00 00       	mov    $0x4,%ecx
 8048dcf:	89 de                	mov    %ebx,%esi
 8048dd1:	f3 a6                	repz cmpsb %es:(%edi),%ds:(%esi)
 8048dd3:	0f 84 bf 00 00 00    	je     8048e98 <handle_command+0x1a8>
 8048dd9:	bf 77 90 04 08       	mov    $0x8049077,%edi
 8048dde:	b9 04 00 00 00       	mov    $0x4,%ecx
 8048de3:	89 de                	mov    %ebx,%esi
 8048de5:	f3 a6                	repz cmpsb %es:(%edi),%ds:(%esi)
 8048de7:	0f 84 e5 00 00 00    	je     8048ed2 <handle_command+0x1e2>
 8048ded:	83 ec 08             	sub    $0x8,%esp
 8048df0:	53                   	push   %ebx
 8048df1:	68 0c 92 04 08       	push   $0x804920c
 8048df6:	e8 b5 f6 ff ff       	call   80484b0 <printf@plt>
 8048dfb:	83 c4 10             	add    $0x10,%esp
 8048dfe:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 8048e02:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8048e09:	0f 85 be 00 00 00    	jne    8048ecd <handle_command+0x1dd>
 8048e0f:	83 c4 2c             	add    $0x2c,%esp
 8048e12:	5b                   	pop    %ebx
 8048e13:	5e                   	pop    %esi
 8048e14:	5f                   	pop    %edi
 8048e15:	5d                   	pop    %ebp
 8048e16:	c3                   	ret    
 8048e17:	89 f6                	mov    %esi,%esi
 8048e19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 8048e20:	e8 6b fc ff ff       	call   8048a90 <handle_list>
 8048e25:	eb d7                	jmp    8048dfe <handle_command+0x10e>
 8048e27:	89 f6                	mov    %esi,%esi
 8048e29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 8048e30:	83 ec 08             	sub    $0x8,%esp
 8048e33:	ff 74 24 1c          	pushl  0x1c(%esp)
 8048e37:	ff 74 24 1c          	pushl  0x1c(%esp)
 8048e3b:	e8 80 f9 ff ff       	call   80487c0 <handle_create>
 8048e40:	83 c4 10             	add    $0x10,%esp
 8048e43:	eb b9                	jmp    8048dfe <handle_command+0x10e>
 8048e45:	8d 76 00             	lea    0x0(%esi),%esi
 8048e48:	83 ec 0c             	sub    $0xc,%esp
 8048e4b:	ff 74 24 18          	pushl  0x18(%esp)
 8048e4f:	e8 6c fb ff ff       	call   80489c0 <handle_print>
 8048e54:	83 c4 10             	add    $0x10,%esp
 8048e57:	eb a5                	jmp    8048dfe <handle_command+0x10e>
 8048e59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8048e60:	83 ec 0c             	sub    $0xc,%esp
 8048e63:	ff 74 24 18          	pushl  0x18(%esp)
 8048e67:	e8 54 fa ff ff       	call   80488c0 <handle_destroy>
 8048e6c:	83 c4 10             	add    $0x10,%esp
 8048e6f:	eb 8d                	jmp    8048dfe <handle_command+0x10e>
 8048e71:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8048e78:	83 ec 04             	sub    $0x4,%esp
 8048e7b:	ff 74 24 18          	pushl  0x18(%esp)
 8048e7f:	ff 74 24 18          	pushl  0x18(%esp)
 8048e83:	ff 74 24 18          	pushl  0x18(%esp)
 8048e87:	e8 64 fc ff ff       	call   8048af0 <handle_get>
 8048e8c:	83 c4 10             	add    $0x10,%esp
 8048e8f:	e9 6a ff ff ff       	jmp    8048dfe <handle_command+0x10e>
 8048e94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048e98:	83 ec 0c             	sub    $0xc,%esp
 8048e9b:	68 80 91 04 08       	push   $0x8049180
 8048ea0:	e8 5b f6 ff ff       	call   8048500 <puts@plt>
 8048ea5:	83 c4 10             	add    $0x10,%esp
 8048ea8:	e9 51 ff ff ff       	jmp    8048dfe <handle_command+0x10e>
 8048ead:	8d 76 00             	lea    0x0(%esi),%esi
 8048eb0:	ff 74 24 18          	pushl  0x18(%esp)
 8048eb4:	ff 74 24 18          	pushl  0x18(%esp)
 8048eb8:	ff 74 24 18          	pushl  0x18(%esp)
 8048ebc:	ff 74 24 18          	pushl  0x18(%esp)
 8048ec0:	e8 fb fc ff ff       	call   8048bc0 <handle_set>
 8048ec5:	83 c4 10             	add    $0x10,%esp
 8048ec8:	e9 31 ff ff ff       	jmp    8048dfe <handle_command+0x10e>
 8048ecd:	e8 0e f6 ff ff       	call   80484e0 <__stack_chk_fail@plt>
 8048ed2:	e8 19 f8 ff ff       	call   80486f0 <bye>
 8048ed7:	66 90                	xchg   %ax,%ax
 8048ed9:	66 90                	xchg   %ax,%ax
 8048edb:	66 90                	xchg   %ax,%ax
 8048edd:	66 90                	xchg   %ax,%ax
 8048edf:	90                   	nop

08048ee0 <__libc_csu_init>:
 8048ee0:	55                   	push   %ebp
 8048ee1:	57                   	push   %edi
 8048ee2:	31 ff                	xor    %edi,%edi
 8048ee4:	56                   	push   %esi
 8048ee5:	53                   	push   %ebx
 8048ee6:	e8 35 f7 ff ff       	call   8048620 <__x86.get_pc_thunk.bx>
 8048eeb:	81 c3 0d 12 00 00    	add    $0x120d,%ebx
 8048ef1:	83 ec 1c             	sub    $0x1c,%esp
 8048ef4:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 8048ef8:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 8048efe:	e8 69 f5 ff ff       	call   804846c <_init>
 8048f03:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 8048f09:	29 c6                	sub    %eax,%esi
 8048f0b:	c1 fe 02             	sar    $0x2,%esi
 8048f0e:	85 f6                	test   %esi,%esi
 8048f10:	74 27                	je     8048f39 <__libc_csu_init+0x59>
 8048f12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048f18:	8b 44 24 38          	mov    0x38(%esp),%eax
 8048f1c:	89 2c 24             	mov    %ebp,(%esp)
 8048f1f:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048f23:	8b 44 24 34          	mov    0x34(%esp),%eax
 8048f27:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048f2b:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 8048f32:	83 c7 01             	add    $0x1,%edi
 8048f35:	39 f7                	cmp    %esi,%edi
 8048f37:	75 df                	jne    8048f18 <__libc_csu_init+0x38>
 8048f39:	83 c4 1c             	add    $0x1c,%esp
 8048f3c:	5b                   	pop    %ebx
 8048f3d:	5e                   	pop    %esi
 8048f3e:	5f                   	pop    %edi
 8048f3f:	5d                   	pop    %ebp
 8048f40:	c3                   	ret    
 8048f41:	eb 0d                	jmp    8048f50 <__libc_csu_fini>
 8048f43:	90                   	nop
 8048f44:	90                   	nop
 8048f45:	90                   	nop
 8048f46:	90                   	nop
 8048f47:	90                   	nop
 8048f48:	90                   	nop
 8048f49:	90                   	nop
 8048f4a:	90                   	nop
 8048f4b:	90                   	nop
 8048f4c:	90                   	nop
 8048f4d:	90                   	nop
 8048f4e:	90                   	nop
 8048f4f:	90                   	nop

08048f50 <__libc_csu_fini>:
 8048f50:	f3 c3                	repz ret 

Disassembly of section .fini:

08048f54 <_fini>:
 8048f54:	53                   	push   %ebx
 8048f55:	83 ec 08             	sub    $0x8,%esp
 8048f58:	e8 c3 f6 ff ff       	call   8048620 <__x86.get_pc_thunk.bx>
 8048f5d:	81 c3 9b 11 00 00    	add    $0x119b,%ebx
 8048f63:	83 c4 08             	add    $0x8,%esp
 8048f66:	5b                   	pop    %ebx
 8048f67:	c3                   	ret    
