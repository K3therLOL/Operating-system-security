
raw.run:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 62 2f 00 00    	push   0x2f62(%rip)        # 3f88 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 64 2f 00 00    	jmp    *0x2f64(%rip)        # 3f90 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)
    1030:	f3 0f 1e fa          	endbr64
    1034:	68 00 00 00 00       	push   $0x0
    1039:	e9 e2 ff ff ff       	jmp    1020 <_init+0x20>
    103e:	66 90                	xchg   %ax,%ax
    1040:	f3 0f 1e fa          	endbr64
    1044:	68 01 00 00 00       	push   $0x1
    1049:	e9 d2 ff ff ff       	jmp    1020 <_init+0x20>
    104e:	66 90                	xchg   %ax,%ax
    1050:	f3 0f 1e fa          	endbr64
    1054:	68 02 00 00 00       	push   $0x2
    1059:	e9 c2 ff ff ff       	jmp    1020 <_init+0x20>
    105e:	66 90                	xchg   %ax,%ax
    1060:	f3 0f 1e fa          	endbr64
    1064:	68 03 00 00 00       	push   $0x3
    1069:	e9 b2 ff ff ff       	jmp    1020 <_init+0x20>
    106e:	66 90                	xchg   %ax,%ax
    1070:	f3 0f 1e fa          	endbr64
    1074:	68 04 00 00 00       	push   $0x4
    1079:	e9 a2 ff ff ff       	jmp    1020 <_init+0x20>
    107e:	66 90                	xchg   %ax,%ax
    1080:	f3 0f 1e fa          	endbr64
    1084:	68 05 00 00 00       	push   $0x5
    1089:	e9 92 ff ff ff       	jmp    1020 <_init+0x20>
    108e:	66 90                	xchg   %ax,%ax
    1090:	f3 0f 1e fa          	endbr64
    1094:	68 06 00 00 00       	push   $0x6
    1099:	e9 82 ff ff ff       	jmp    1020 <_init+0x20>
    109e:	66 90                	xchg   %ax,%ax
    10a0:	f3 0f 1e fa          	endbr64
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	e9 72 ff ff ff       	jmp    1020 <_init+0x20>
    10ae:	66 90                	xchg   %ax,%ax

Disassembly of section .plt.got:

00000000000010b0 <__cxa_finalize@plt>:
    10b0:	f3 0f 1e fa          	endbr64
    10b4:	ff 25 3e 2f 00 00    	jmp    *0x2f3e(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010c0 <puts@plt>:
    10c0:	f3 0f 1e fa          	endbr64
    10c4:	ff 25 ce 2e 00 00    	jmp    *0x2ece(%rip)        # 3f98 <puts@GLIBC_2.2.5>
    10ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000010d0 <write@plt>:
    10d0:	f3 0f 1e fa          	endbr64
    10d4:	ff 25 c6 2e 00 00    	jmp    *0x2ec6(%rip)        # 3fa0 <write@GLIBC_2.2.5>
    10da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000010e0 <__stack_chk_fail@plt>:
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	ff 25 be 2e 00 00    	jmp    *0x2ebe(%rip)        # 3fa8 <__stack_chk_fail@GLIBC_2.4>
    10ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000010f0 <close@plt>:
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	ff 25 b6 2e 00 00    	jmp    *0x2eb6(%rip)        # 3fb0 <close@GLIBC_2.2.5>
    10fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001100 <read@plt>:
    1100:	f3 0f 1e fa          	endbr64
    1104:	ff 25 ae 2e 00 00    	jmp    *0x2eae(%rip)        # 3fb8 <read@GLIBC_2.2.5>
    110a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001110 <open@plt>:
    1110:	f3 0f 1e fa          	endbr64
    1114:	ff 25 a6 2e 00 00    	jmp    *0x2ea6(%rip)        # 3fc0 <open@GLIBC_2.2.5>
    111a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001120 <perror@plt>:
    1120:	f3 0f 1e fa          	endbr64
    1124:	ff 25 9e 2e 00 00    	jmp    *0x2e9e(%rip)        # 3fc8 <perror@GLIBC_2.2.5>
    112a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001130 <sleep@plt>:
    1130:	f3 0f 1e fa          	endbr64
    1134:	ff 25 96 2e 00 00    	jmp    *0x2e96(%rip)        # 3fd0 <sleep@GLIBC_2.2.5>
    113a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001140 <_start>:
    1140:	f3 0f 1e fa          	endbr64
    1144:	31 ed                	xor    %ebp,%ebp
    1146:	49 89 d1             	mov    %rdx,%r9
    1149:	5e                   	pop    %rsi
    114a:	48 89 e2             	mov    %rsp,%rdx
    114d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1151:	50                   	push   %rax
    1152:	54                   	push   %rsp
    1153:	45 31 c0             	xor    %r8d,%r8d
    1156:	31 c9                	xor    %ecx,%ecx
    1158:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 1229 <main>
    115f:	ff 15 73 2e 00 00    	call   *0x2e73(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1165:	f4                   	hlt
    1166:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    116d:	00 00 00 

0000000000001170 <deregister_tm_clones>:
    1170:	48 8d 3d 99 2e 00 00 	lea    0x2e99(%rip),%rdi        # 4010 <__TMC_END__>
    1177:	48 8d 05 92 2e 00 00 	lea    0x2e92(%rip),%rax        # 4010 <__TMC_END__>
    117e:	48 39 f8             	cmp    %rdi,%rax
    1181:	74 15                	je     1198 <deregister_tm_clones+0x28>
    1183:	48 8b 05 56 2e 00 00 	mov    0x2e56(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    118a:	48 85 c0             	test   %rax,%rax
    118d:	74 09                	je     1198 <deregister_tm_clones+0x28>
    118f:	ff e0                	jmp    *%rax
    1191:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1198:	c3                   	ret
    1199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011a0 <register_tm_clones>:
    11a0:	48 8d 3d 69 2e 00 00 	lea    0x2e69(%rip),%rdi        # 4010 <__TMC_END__>
    11a7:	48 8d 35 62 2e 00 00 	lea    0x2e62(%rip),%rsi        # 4010 <__TMC_END__>
    11ae:	48 29 fe             	sub    %rdi,%rsi
    11b1:	48 89 f0             	mov    %rsi,%rax
    11b4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    11b8:	48 c1 f8 03          	sar    $0x3,%rax
    11bc:	48 01 c6             	add    %rax,%rsi
    11bf:	48 d1 fe             	sar    $1,%rsi
    11c2:	74 14                	je     11d8 <register_tm_clones+0x38>
    11c4:	48 8b 05 25 2e 00 00 	mov    0x2e25(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    11cb:	48 85 c0             	test   %rax,%rax
    11ce:	74 08                	je     11d8 <register_tm_clones+0x38>
    11d0:	ff e0                	jmp    *%rax
    11d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    11d8:	c3                   	ret
    11d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011e0 <__do_global_dtors_aux>:
    11e0:	f3 0f 1e fa          	endbr64
    11e4:	80 3d 25 2e 00 00 00 	cmpb   $0x0,0x2e25(%rip)        # 4010 <__TMC_END__>
    11eb:	75 2b                	jne    1218 <__do_global_dtors_aux+0x38>
    11ed:	55                   	push   %rbp
    11ee:	48 83 3d 02 2e 00 00 	cmpq   $0x0,0x2e02(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    11f5:	00 
    11f6:	48 89 e5             	mov    %rsp,%rbp
    11f9:	74 0c                	je     1207 <__do_global_dtors_aux+0x27>
    11fb:	48 8b 3d 06 2e 00 00 	mov    0x2e06(%rip),%rdi        # 4008 <__dso_handle>
    1202:	e8 a9 fe ff ff       	call   10b0 <__cxa_finalize@plt>
    1207:	e8 64 ff ff ff       	call   1170 <deregister_tm_clones>
    120c:	c6 05 fd 2d 00 00 01 	movb   $0x1,0x2dfd(%rip)        # 4010 <__TMC_END__>
    1213:	5d                   	pop    %rbp
    1214:	c3                   	ret
    1215:	0f 1f 00             	nopl   (%rax)
    1218:	c3                   	ret
    1219:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001220 <frame_dummy>:
    1220:	f3 0f 1e fa          	endbr64
    1224:	e9 77 ff ff ff       	jmp    11a0 <register_tm_clones>

0000000000001229 <main>:
    1229:	f3 0f 1e fa          	endbr64
    122d:	55                   	push   %rbp
    122e:	48 89 e5             	mov    %rsp,%rbp
    1231:	48 81 ec b0 00 00 00 	sub    $0xb0,%rsp
    1238:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    123f:	00 00 
    1241:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1245:	31 c0                	xor    %eax,%eax
    1247:	48 8d 05 b6 0d 00 00 	lea    0xdb6(%rip),%rax        # 2004 <_IO_stdin_used+0x4>
    124e:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
    1255:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
    125c:	ba a4 01 00 00       	mov    $0x1a4,%edx
    1261:	be 41 02 00 00       	mov    $0x241,%esi
    1266:	48 89 c7             	mov    %rax,%rdi
    1269:	b8 00 00 00 00       	mov    $0x0,%eax
    126e:	e8 9d fe ff ff       	call   1110 <open@plt>
    1273:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%rbp)
    1279:	83 bd 58 ff ff ff ff 	cmpl   $0xffffffff,-0xa8(%rbp)
    1280:	75 19                	jne    129b <main+0x72>
    1282:	48 8d 05 81 0d 00 00 	lea    0xd81(%rip),%rax        # 200a <_IO_stdin_used+0xa>
    1289:	48 89 c7             	mov    %rax,%rdi
    128c:	e8 8f fe ff ff       	call   1120 <perror@plt>
    1291:	b8 01 00 00 00       	mov    $0x1,%eax
    1296:	e9 25 01 00 00       	jmp    13c0 <main+0x197>
    129b:	8b 85 58 ff ff ff    	mov    -0xa8(%rbp),%eax
    12a1:	ba 06 00 00 00       	mov    $0x6,%edx
    12a6:	48 8d 0d 69 0d 00 00 	lea    0xd69(%rip),%rcx        # 2016 <_IO_stdin_used+0x16>
    12ad:	48 89 ce             	mov    %rcx,%rsi
    12b0:	89 c7                	mov    %eax,%edi
    12b2:	e8 19 fe ff ff       	call   10d0 <write@plt>
    12b7:	48 83 f8 06          	cmp    $0x6,%rax
    12bb:	74 26                	je     12e3 <main+0xba>
    12bd:	48 8d 05 58 0d 00 00 	lea    0xd58(%rip),%rax        # 201c <_IO_stdin_used+0x1c>
    12c4:	48 89 c7             	mov    %rax,%rdi
    12c7:	e8 54 fe ff ff       	call   1120 <perror@plt>
    12cc:	8b 85 58 ff ff ff    	mov    -0xa8(%rbp),%eax
    12d2:	89 c7                	mov    %eax,%edi
    12d4:	e8 17 fe ff ff       	call   10f0 <close@plt>
    12d9:	b8 01 00 00 00       	mov    $0x1,%eax
    12de:	e9 dd 00 00 00       	jmp    13c0 <main+0x197>
    12e3:	8b 85 58 ff ff ff    	mov    -0xa8(%rbp),%eax
    12e9:	89 c7                	mov    %eax,%edi
    12eb:	e8 00 fe ff ff       	call   10f0 <close@plt>
    12f0:	bf 0a 00 00 00       	mov    $0xa,%edi
    12f5:	e8 36 fe ff ff       	call   1130 <sleep@plt>
    12fa:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
    1301:	be 00 00 00 00       	mov    $0x0,%esi
    1306:	48 89 c7             	mov    %rax,%rdi
    1309:	b8 00 00 00 00       	mov    $0x0,%eax
    130e:	e8 fd fd ff ff       	call   1110 <open@plt>
    1313:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%rbp)
    1319:	83 bd 5c ff ff ff ff 	cmpl   $0xffffffff,-0xa4(%rbp)
    1320:	75 19                	jne    133b <main+0x112>
    1322:	48 8d 05 f9 0c 00 00 	lea    0xcf9(%rip),%rax        # 2022 <_IO_stdin_used+0x22>
    1329:	48 89 c7             	mov    %rax,%rdi
    132c:	e8 ef fd ff ff       	call   1120 <perror@plt>
    1331:	b8 01 00 00 00       	mov    $0x1,%eax
    1336:	e9 85 00 00 00       	jmp    13c0 <main+0x197>
    133b:	48 8d 8d 70 ff ff ff 	lea    -0x90(%rbp),%rcx
    1342:	8b 85 5c ff ff ff    	mov    -0xa4(%rbp),%eax
    1348:	ba 7f 00 00 00       	mov    $0x7f,%edx
    134d:	48 89 ce             	mov    %rcx,%rsi
    1350:	89 c7                	mov    %eax,%edi
    1352:	e8 a9 fd ff ff       	call   1100 <read@plt>
    1357:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    135e:	48 83 bd 68 ff ff ff 	cmpq   $0x0,-0x98(%rbp)
    1365:	00 
    1366:	79 23                	jns    138b <main+0x162>
    1368:	48 8d 05 b8 0c 00 00 	lea    0xcb8(%rip),%rax        # 2027 <_IO_stdin_used+0x27>
    136f:	48 89 c7             	mov    %rax,%rdi
    1372:	e8 a9 fd ff ff       	call   1120 <perror@plt>
    1377:	8b 85 5c ff ff ff    	mov    -0xa4(%rbp),%eax
    137d:	89 c7                	mov    %eax,%edi
    137f:	e8 6c fd ff ff       	call   10f0 <close@plt>
    1384:	b8 01 00 00 00       	mov    $0x1,%eax
    1389:	eb 35                	jmp    13c0 <main+0x197>
    138b:	48 8d 95 70 ff ff ff 	lea    -0x90(%rbp),%rdx
    1392:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    1399:	48 01 d0             	add    %rdx,%rax
    139c:	c6 00 00             	movb   $0x0,(%rax)
    139f:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
    13a6:	48 89 c7             	mov    %rax,%rdi
    13a9:	e8 12 fd ff ff       	call   10c0 <puts@plt>
    13ae:	8b 85 5c ff ff ff    	mov    -0xa4(%rbp),%eax
    13b4:	89 c7                	mov    %eax,%edi
    13b6:	e8 35 fd ff ff       	call   10f0 <close@plt>
    13bb:	b8 00 00 00 00       	mov    $0x0,%eax
    13c0:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    13c4:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    13cb:	00 00 
    13cd:	74 05                	je     13d4 <main+0x1ab>
    13cf:	e8 0c fd ff ff       	call   10e0 <__stack_chk_fail@plt>
    13d4:	c9                   	leave
    13d5:	c3                   	ret

Disassembly of section .fini:

00000000000013d8 <_fini>:
    13d8:	f3 0f 1e fa          	endbr64
    13dc:	48 83 ec 08          	sub    $0x8,%rsp
    13e0:	48 83 c4 08          	add    $0x8,%rsp
    13e4:	c3                   	ret
