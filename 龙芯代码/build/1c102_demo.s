
1c102_demo.elf:     file format elf32-loongarch
1c102_demo.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	143800af 	lu12i.w	$r15,114693(0x1c005)
1c00000c:	03b151ef 	ori	$r15,$r15,0xc54
1c000010:	001035f0 	add.w	$r16,$r15,$r13
1c000014:	2880020f 	ld.w	$r15,$r16,0
1c000018:	00103590 	add.w	$r16,$r12,$r13
1c00001c:	2980020f 	st.w	$r15,$r16,0
1c000020:	028011ad 	addi.w	$r13,$r13,4(0x4)

1c000024 <LoopCopyDataInit>:
LoopCopyDataInit():
1c000024:	1500002c 	lu12i.w	$r12,-524287(0x80001)
1c000028:	0380018c 	ori	$r12,$r12,0x0
1c00002c:	1500002f 	lu12i.w	$r15,-524287(0x80001)
1c000030:	038081ef 	ori	$r15,$r15,0x20
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	038991ad 	ori	$r13,$r13,0x264
1c00004c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c00005c <cpu_init_start>

1c000050 <LoopFillZerobss>:
LoopFillZerobss():
1c000050:	29800180 	st.w	$r0,$r12,0
1c000054:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000058:	5ffff9ac 	bne	$r13,$r12,-8(0x3fff8) # 1c000050 <LoopFillZerobss>

1c00005c <cpu_init_start>:
cpu_init_start():
1c00005c:	1438002c 	lu12i.w	$r12,114689(0x1c001)
1c000060:	0400302c 	csrwr	$r12,0xc
1c000064:	0015000c 	move	$r12,$r0
1c000068:	0400102c 	csrwr	$r12,0x4
1c00006c:	1400002c 	lu12i.w	$r12,1(0x1)
1c000070:	03bffd8c 	ori	$r12,$r12,0xfff
1c000074:	0400118c 	csrxchg	$r12,$r12,0x4
1c000078:	15ffe3ec 	lu12i.w	$r12,-225(0xfff1f)
1c00007c:	03bffd8c 	ori	$r12,$r12,0xfff
1c000080:	0406442c 	csrwr	$r12,0x191
1c000084:	14eca06c 	lu12i.w	$r12,484611(0x76503)
1c000088:	0388418c 	ori	$r12,$r12,0x210
1c00008c:	0406402c 	csrwr	$r12,0x190
1c000090:	0380200c 	ori	$r12,$r0,0x8
1c000094:	04000180 	csrxchg	$r0,$r12,0x0
1c000098:	15000023 	lu12i.w	$r3,-524287(0x80001)
1c00009c:	03bdf063 	ori	$r3,$r3,0xf7c
1c0000a0:	54132400 	bl	4900(0x1324) # 1c0013c4 <bsp_init>
1c0000a4:	03400000 	andi	$r0,$r0,0x0
1c0000a8:	4c000020 	jirl	$r0,$r1,0

1c0000ac <cpu_wait>:
cpu_wait():
1c0000ac:	06488000 	idle	0x0
1c0000b0:	4c000020 	jirl	$r0,$r1,0
	...

1c000800 <m4_flash_4k>:
m4_flash_4k():
1c000800:	140007ec 	lu12i.w	$r12,63(0x3f)
1c000804:	03be018c 	ori	$r12,$r12,0xf80
1c000808:	157fcc0d 	lu12i.w	$r13,-262560(0xbfe60)
1c00080c:	0014b08c 	and	$r12,$r4,$r12
1c000810:	038061af 	ori	$r15,$r13,0x18
1c000814:	02804010 	addi.w	$r16,$r0,16(0x10)
1c000818:	1540000e 	lu12i.w	$r14,-393216(0xa0000)
1c00081c:	298001f0 	st.w	$r16,$r15,0
1c000820:	0015398e 	or	$r14,$r12,$r14
1c000824:	298001ae 	st.w	$r14,$r13,0
1c000828:	1480000f 	lu12i.w	$r15,262144(0x40000)
1c00082c:	14b54aae 	lu12i.w	$r14,371285(0x5aa55)
1c000830:	0396a9ce 	ori	$r14,$r14,0x5aa
1c000834:	298001af 	st.w	$r15,$r13,0
1c000838:	15c0000f 	lu12i.w	$r15,-131072(0xe0000)
1c00083c:	2980008e 	st.w	$r14,$r4,0
1c000840:	00153d8c 	or	$r12,$r12,$r15
1c000844:	298001ac 	st.w	$r12,$r13,0
1c000848:	4c000020 	jirl	$r0,$r1,0
	...

1c001000 <DEFAULT_INT_HANDLER>:
DEFAULT_INT_HANDLER():
1c001000:	0400c435 	csrwr	$r21,0x31
1c001004:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c001008:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c00100c:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c001010:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c001014:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c001018:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c00101c:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001020:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001024:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c001028:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c00102c:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001030:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c001034:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001038:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c00103c:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001040:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c001044:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001048:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c00104c:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001050:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c001054:	0400140c 	csrrd	$r12,0x5
1c001058:	036ef18d 	andi	$r13,$r12,0xbbc
1c00105c:	400065a0 	beqz	$r13,100(0x64) # 1c0010c0 <exception_core_check>

1c001060 <exception_pmu>:
exception_pmu():
1c001060:	0340118d 	andi	$r13,$r12,0x4
1c001064:	44002da0 	bnez	$r13,44(0x2c) # 1c001090 <wake_label>
1c001068:	0340218d 	andi	$r13,$r12,0x8
1c00106c:	44002da0 	bnez	$r13,44(0x2c) # 1c001098 <touch_label>
1c001070:	0340418d 	andi	$r13,$r12,0x10
1c001074:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a0 <uart2_label>
1c001078:	0340818d 	andi	$r13,$r12,0x20
1c00107c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a8 <bcc_label>
1c001080:	0342018d 	andi	$r13,$r12,0x80
1c001084:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b0 <exint_label>
1c001088:	0360018d 	andi	$r13,$r12,0x800
1c00108c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b8 <timer_label>

1c001090 <wake_label>:
wake_label():
1c001090:	54356800 	bl	13672(0x3568) # 1c0045f8 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	5435b000 	bl	13744(0x35b0) # 1c004648 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	54363c00 	bl	13884(0x363c) # 1c0046dc <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	54367000 	bl	13936(0x3670) # 1c004718 <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	54349000 	bl	13456(0x3490) # 1c004540 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	54384000 	bl	14400(0x3840) # 1c0048f8 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	54372800 	bl	14120(0x3728) # 1c0047f0 <intc_handler>
1c0010cc:	50000400 	b	4(0x4) # 1c0010d0 <exception_exit>

1c0010d0 <exception_exit>:
exception_exit():
1c0010d0:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0010d4:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0010d8:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0010dc:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0010e0:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0010e4:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0010e8:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0010ec:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0010f0:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0010f4:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0010f8:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0010fc:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c001100:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c001104:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c001108:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c00110c:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c001110:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001114:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001118:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c00111c:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c001120:	0400c415 	csrrd	$r21,0x31
1c001124:	06483800 	ertn

1c001128 <serial_out>:
serial_out():
1c001128:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c00112c:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c001130:	03408108 	andi	$r8,$r8,0x20
1c001134:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c001128 <serial_out>
1c001138:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00113c:	29000184 	st.b	$r4,$r12,0
1c001140:	4c000020 	jirl	$r0,$r1,0

1c001144 <outputaddr>:
outputaddr():
1c001144:	02bff063 	addi.w	$r3,$r3,-4(0xffc)
1c001148:	29800061 	st.w	$r1,$r3,0
1c00114c:	1cc80006 	pcaddu12i	$r6,409600(0x64000)
1c001150:	28bae0c6 	ld.w	$r6,$r6,-328(0xeb8)
1c001154:	15e0000d 	lu12i.w	$r13,-65536(0xf0000)
1c001158:	0380200e 	ori	$r14,$r0,0x8
1c00115c:	0380700f 	ori	$r15,$r0,0x1c
1c001160:	03800085 	ori	$r5,$r4,0x0
1c001164:	58002dc0 	beq	$r14,$r0,44(0x2c) # 1c001190 <outputaddr+0x4c>
1c001168:	0014b4ac 	and	$r12,$r5,$r13
1c00116c:	0017bd8c 	srl.w	$r12,$r12,$r15
1c001170:	0010198c 	add.w	$r12,$r12,$r6
1c001174:	2a000190 	ld.bu	$r16,$r12,0
1c001178:	03800204 	ori	$r4,$r16,0x0
1c00117c:	57ffafff 	bl	-84(0xfffffac) # 1c001128 <serial_out>
1c001180:	004491ad 	srli.w	$r13,$r13,0x4
1c001184:	02bff1ef 	addi.w	$r15,$r15,-4(0xffc)
1c001188:	02bffdce 	addi.w	$r14,$r14,-1(0xfff)
1c00118c:	53ffdbff 	b	-40(0xfffffd8) # 1c001164 <outputaddr+0x20>
1c001190:	03802804 	ori	$r4,$r0,0xa
1c001194:	57ff97ff 	bl	-108(0xfffff94) # 1c001128 <serial_out>
1c001198:	28800061 	ld.w	$r1,$r3,0
1c00119c:	02801063 	addi.w	$r3,$r3,4(0x4)
1c0011a0:	4c000020 	jirl	$r0,$r1,0

1c0011a4 <outputstring>:
outputstring():
1c0011a4:	00150089 	move	$r9,$r4
1c0011a8:	2a00012c 	ld.bu	$r12,$r9,0
1c0011ac:	58002580 	beq	$r12,$r0,36(0x24) # 1c0011d0 <outputstring+0x2c>
1c0011b0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011b4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011b8:	03408108 	andi	$r8,$r8,0x20
1c0011bc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011b0 <outputstring+0xc>
1c0011c0:	157fd007 	lu12i.w	$r7,-262528(0xbfe80)
1c0011c4:	290000ec 	st.b	$r12,$r7,0
1c0011c8:	02800529 	addi.w	$r9,$r9,1(0x1)
1c0011cc:	53ffdfff 	b	-36(0xfffffdc) # 1c0011a8 <outputstring+0x4>
1c0011d0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011d4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011d8:	03410108 	andi	$r8,$r8,0x40
1c0011dc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011d0 <outputstring+0x2c>
1c0011e0:	4c000020 	jirl	$r0,$r1,0

1c0011e4 <cpu_sleep>:
cpu_sleep():
1c0011e4:	0400c435 	csrwr	$r21,0x31
1c0011e8:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0011ec:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c0011f0:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c0011f4:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c0011f8:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c0011fc:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c001200:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001204:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001208:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c00120c:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c001210:	29bf62b7 	st.w	$r23,$r21,-40(0xfd8)
1c001214:	29bf52b8 	st.w	$r24,$r21,-44(0xfd4)
1c001218:	29bf42b9 	st.w	$r25,$r21,-48(0xfd0)
1c00121c:	29bf32ba 	st.w	$r26,$r21,-52(0xfcc)
1c001220:	29bf22bb 	st.w	$r27,$r21,-56(0xfc8)
1c001224:	29bf12bc 	st.w	$r28,$r21,-60(0xfc4)
1c001228:	29bf02bd 	st.w	$r29,$r21,-64(0xfc0)
1c00122c:	29bef2be 	st.w	$r30,$r21,-68(0xfbc)
1c001230:	29bee2bf 	st.w	$r31,$r21,-72(0xfb8)
1c001234:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001238:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c00123c:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001240:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c001244:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001248:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c00124c:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001250:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c001254:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001258:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c00125c:	29be32a2 	st.w	$r2,$r21,-116(0xf8c)
1c001260:	29be22b6 	st.w	$r22,$r21,-120(0xf88)
1c001264:	028002ac 	addi.w	$r12,$r21,0
1c001268:	0400c415 	csrrd	$r21,0x31
1c00126c:	29be1195 	st.w	$r21,$r12,-124(0xf84)
1c001270:	38720000 	dbar	0x0
1c001274:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c001278:	2880f1ac 	ld.w	$r12,$r13,60(0x3c)
1c00127c:	0340058c 	andi	$r12,$r12,0x1
1c001280:	43fff99f 	beqz	$r12,-8(0x7ffff8) # 1c001278 <cpu_sleep+0x94>
1c001284:	2980f1ac 	st.w	$r12,$r13,60(0x3c)
1c001288:	06488000 	idle	0x0

1c00128c <wakeup_reset>:
wakeup_reset():
1c00128c:	1cc80004 	pcaddu12i	$r4,409600(0x64000)
1c001290:	28b62084 	ld.w	$r4,$r4,-632(0xd88)
1c001294:	57ff13ff 	bl	-240(0xfffff10) # 1c0011a4 <outputstring>
1c001298:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c00129c:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0012a0:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0012a4:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0012a8:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0012ac:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0012b0:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0012b4:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0012b8:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0012bc:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0012c0:	28bf62b7 	ld.w	$r23,$r21,-40(0xfd8)
1c0012c4:	28bf52b8 	ld.w	$r24,$r21,-44(0xfd4)
1c0012c8:	28bf42b9 	ld.w	$r25,$r21,-48(0xfd0)
1c0012cc:	28bf32ba 	ld.w	$r26,$r21,-52(0xfcc)
1c0012d0:	28bf22bb 	ld.w	$r27,$r21,-56(0xfc8)
1c0012d4:	28bf12bc 	ld.w	$r28,$r21,-60(0xfc4)
1c0012d8:	28bf02bd 	ld.w	$r29,$r21,-64(0xfc0)
1c0012dc:	28bef2be 	ld.w	$r30,$r21,-68(0xfbc)
1c0012e0:	28bee2bf 	ld.w	$r31,$r21,-72(0xfb8)
1c0012e4:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0012e8:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c0012ec:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c0012f0:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c0012f4:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c0012f8:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c0012fc:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001300:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001304:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c001308:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c00130c:	28be32a2 	ld.w	$r2,$r21,-116(0xf8c)
1c001310:	28be22b6 	ld.w	$r22,$r21,-120(0xf88)
1c001314:	28be12b5 	ld.w	$r21,$r21,-124(0xf84)
1c001318:	0400c42c 	csrwr	$r12,0x31
1c00131c:	0380100c 	ori	$r12,$r0,0x4
1c001320:	0400018c 	csrxchg	$r12,$r12,0x0
1c001324:	0400c40c 	csrrd	$r12,0x31
1c001328:	4c000020 	jirl	$r0,$r1,0

1c00132c <GPIOInit>:
GPIOInit():
1c00132c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001330:	29803061 	st.w	$r1,$r3,12(0xc)
1c001334:	29802076 	st.w	$r22,$r3,8(0x8)
1c001338:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00133c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001340:	140001ec 	lu12i.w	$r12,15(0xf)
1c001344:	03bffd85 	ori	$r5,$r12,0xfff
1c001348:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00134c:	03804184 	ori	$r4,$r12,0x10
1c001350:	54017000 	bl	368(0x170) # 1c0014c0 <AFIO_RemapConfig>
1c001354:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001358:	140001ec 	lu12i.w	$r12,15(0xf)
1c00135c:	03bffd85 	ori	$r5,$r12,0xfff
1c001360:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001364:	03805184 	ori	$r4,$r12,0x14
1c001368:	54015800 	bl	344(0x158) # 1c0014c0 <AFIO_RemapConfig>
1c00136c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001370:	140001ec 	lu12i.w	$r12,15(0xf)
1c001374:	03bcfd85 	ori	$r5,$r12,0xf3f
1c001378:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00137c:	03806184 	ori	$r4,$r12,0x18
1c001380:	54014000 	bl	320(0x140) # 1c0014c0 <AFIO_RemapConfig>
1c001384:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001388:	02830005 	addi.w	$r5,$r0,192(0xc0)
1c00138c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001390:	03806184 	ori	$r4,$r12,0x18
1c001394:	54012c00 	bl	300(0x12c) # 1c0014c0 <AFIO_RemapConfig>
1c001398:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00139c:	140001ec 	lu12i.w	$r12,15(0xf)
1c0013a0:	03bffd85 	ori	$r5,$r12,0xfff
1c0013a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0013a8:	03807184 	ori	$r4,$r12,0x1c
1c0013ac:	54011400 	bl	276(0x114) # 1c0014c0 <AFIO_RemapConfig>
1c0013b0:	03400000 	andi	$r0,$r0,0x0
1c0013b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0013b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0013bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0013c0:	4c000020 	jirl	$r0,$r1,0

1c0013c4 <bsp_init>:
bsp_init():
1c0013c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0013c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0013cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0013d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0013d4:	541c2c00 	bl	7212(0x1c2c) # 1c003000 <DisableInt>
1c0013d8:	541b8c00 	bl	7052(0x1b8c) # 1c002f64 <SystemClockInit>
1c0013dc:	57ff53ff 	bl	-176(0xfffff50) # 1c00132c <GPIOInit>
1c0013e0:	54231400 	bl	8980(0x2314) # 1c0036f4 <WdgInit>
1c0013e4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0013e8:	54225400 	bl	8788(0x2254) # 1c00363c <WDG_SetWatchDog>
1c0013ec:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013f0:	03880184 	ori	$r4,$r12,0x200
1c0013f4:	5414fc00 	bl	5372(0x14fc) # 1c0028f0 <Uart1_init>
1c0013f8:	541dfc00 	bl	7676(0x1dfc) # 1c0031f4 <ls1x_logo>
1c0013fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001400:	0380118c 	ori	$r12,$r12,0x4
1c001404:	2880018e 	ld.w	$r14,$r12,0
1c001408:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00140c:	0380118c 	ori	$r12,$r12,0x4
1c001410:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c001414:	001535cd 	or	$r13,$r14,$r13
1c001418:	2980018d 	st.w	$r13,$r12,0
1c00141c:	541c0800 	bl	7176(0x1c08) # 1c003024 <EnableInt>
1c001420:	541e9c00 	bl	7836(0x1e9c) # 1c0032bc <open_count>
1c001424:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001428:	541c6400 	bl	7268(0x1c64) # 1c00308c <Wake_Set>
1c00142c:	54229c00 	bl	8860(0x229c) # 1c0036c8 <WDG_DogFeed>
1c001430:	541d0800 	bl	7432(0x1d08) # 1c003138 <PMU_GetRstRrc>
1c001434:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001438:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00143c:	44003180 	bnez	$r12,48(0x30) # 1c00146c <bsp_init+0xa8>
1c001440:	1c000084 	pcaddu12i	$r4,4(0x4)
1c001444:	02ad7084 	addi.w	$r4,$r4,-1188(0xb5c)
1c001448:	54085800 	bl	2136(0x858) # 1c001ca0 <myprintf>
1c00144c:	541d5800 	bl	7512(0x1d58) # 1c0031a4 <PMU_GetBootSpiStatus>
1c001450:	0015008c 	move	$r12,$r4
1c001454:	40001180 	beqz	$r12,16(0x10) # 1c001464 <bsp_init+0xa0>
1c001458:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00145c:	02ad5084 	addi.w	$r4,$r4,-1196(0xb54)
1c001460:	54084000 	bl	2112(0x840) # 1c001ca0 <myprintf>
1c001464:	5434cc00 	bl	13516(0x34cc) # 1c004930 <main>
1c001468:	50004000 	b	64(0x40) # 1c0014a8 <bsp_init+0xe4>
1c00146c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001470:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001474:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00148c <bsp_init+0xc8>
1c001478:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00147c:	02ad0084 	addi.w	$r4,$r4,-1216(0xb40)
1c001480:	54082000 	bl	2080(0x820) # 1c001ca0 <myprintf>
1c001484:	5434ac00 	bl	13484(0x34ac) # 1c004930 <main>
1c001488:	50002000 	b	32(0x20) # 1c0014a8 <bsp_init+0xe4>
1c00148c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001490:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001494:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0014a8 <bsp_init+0xe4>
1c001498:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00149c:	02acc084 	addi.w	$r4,$r4,-1232(0xb30)
1c0014a0:	54080000 	bl	2048(0x800) # 1c001ca0 <myprintf>
1c0014a4:	57fd43ff 	bl	-704(0xffffd40) # 1c0011e4 <cpu_sleep>
1c0014a8:	0015000c 	move	$r12,$r0
1c0014ac:	00150184 	move	$r4,$r12
1c0014b0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0014b4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0014b8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0014bc:	4c000020 	jirl	$r0,$r1,0

1c0014c0 <AFIO_RemapConfig>:
AFIO_RemapConfig():
1c0014c0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0014c4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0014c8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0014cc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0014d0:	001500ac 	move	$r12,$r5
1c0014d4:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0014d8:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c0014dc:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0014e0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0014e4:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0014e8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0014ec:	2880018c 	ld.w	$r12,$r12,0
1c0014f0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0014f4:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c0014f8:	50006c00 	b	108(0x6c) # 1c001564 <AFIO_RemapConfig+0xa4>
1c0014fc:	2a7f6acd 	ld.hu	$r13,$r22,-38(0xfda)
1c001500:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001504:	001831ac 	sra.w	$r12,$r13,$r12
1c001508:	0340058c 	andi	$r12,$r12,0x1
1c00150c:	40004d80 	beqz	$r12,76(0x4c) # 1c001558 <AFIO_RemapConfig+0x98>
1c001510:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001514:	0040858c 	slli.w	$r12,$r12,0x1
1c001518:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00151c:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c001520:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001524:	001731ac 	sll.w	$r12,$r13,$r12
1c001528:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c00152c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001530:	0014300c 	nor	$r12,$r0,$r12
1c001534:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001538:	0014b1ac 	and	$r12,$r13,$r12
1c00153c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001540:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c001544:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001548:	001731ac 	sll.w	$r12,$r13,$r12
1c00154c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001550:	001531ac 	or	$r12,$r13,$r12
1c001554:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001558:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c00155c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001560:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c001564:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001568:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c00156c:	6fff918d 	bgeu	$r12,$r13,-112(0x3ff90) # 1c0014fc <AFIO_RemapConfig+0x3c>
1c001570:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001574:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001578:	2980018d 	st.w	$r13,$r12,0
1c00157c:	03400000 	andi	$r0,$r0,0x0
1c001580:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001584:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001588:	4c000020 	jirl	$r0,$r1,0

1c00158c <gpio_write_pin>:
gpio_write_pin():
1c00158c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001590:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001594:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001598:	0015008c 	move	$r12,$r4
1c00159c:	001500ad 	move	$r13,$r5
1c0015a0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0015a4:	001501ac 	move	$r12,$r13
1c0015a8:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0015ac:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c0015b0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0015b4:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c0015d8 <gpio_write_pin+0x4c>
1c0015b8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015c0:	0382018c 	ori	$r12,$r12,0x80
1c0015c4:	001031ac 	add.w	$r12,$r13,$r12
1c0015c8:	0015018d 	move	$r13,$r12
1c0015cc:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0015d0:	290001ac 	st.b	$r12,$r13,0
1c0015d4:	50002000 	b	32(0x20) # 1c0015f4 <gpio_write_pin+0x68>
1c0015d8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015e0:	0382018c 	ori	$r12,$r12,0x80
1c0015e4:	001031ac 	add.w	$r12,$r13,$r12
1c0015e8:	0015018d 	move	$r13,$r12
1c0015ec:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0015f0:	290001ac 	st.b	$r12,$r13,0
1c0015f4:	03400000 	andi	$r0,$r0,0x0
1c0015f8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0015fc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001600:	4c000020 	jirl	$r0,$r1,0

1c001604 <gpio_pin_remap>:
gpio_pin_remap():
1c001604:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001608:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00160c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001610:	0015008c 	move	$r12,$r4
1c001614:	001500ad 	move	$r13,$r5
1c001618:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c00161c:	001501ac 	move	$r12,$r13
1c001620:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c001624:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001628:	0044918c 	srli.w	$r12,$r12,0x4
1c00162c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001630:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001634:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001638:	03403d8c 	andi	$r12,$r12,0xf
1c00163c:	0040858c 	slli.w	$r12,$r12,0x1
1c001640:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001644:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001648:	0280fc0c 	addi.w	$r12,$r0,63(0x3f)
1c00164c:	6801b58d 	bltu	$r12,$r13,436(0x1b4) # 1c001800 <gpio_pin_remap+0x1fc>
1c001650:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001654:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001658:	580089ac 	beq	$r13,$r12,136(0x88) # 1c0016e0 <gpio_pin_remap+0xdc>
1c00165c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001660:	40002180 	beqz	$r12,32(0x20) # 1c001680 <gpio_pin_remap+0x7c>
1c001664:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001668:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c00166c:	5800d5ac 	beq	$r13,$r12,212(0xd4) # 1c001740 <gpio_pin_remap+0x13c>
1c001670:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001674:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c001678:	580129ac 	beq	$r13,$r12,296(0x128) # 1c0017a0 <gpio_pin_remap+0x19c>
1c00167c:	50018800 	b	392(0x188) # 1c001804 <gpio_pin_remap+0x200>
1c001680:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001684:	0380418c 	ori	$r12,$r12,0x10
1c001688:	2880018d 	ld.w	$r13,$r12,0
1c00168c:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c001690:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001694:	001731cc 	sll.w	$r12,$r14,$r12
1c001698:	0014300c 	nor	$r12,$r0,$r12
1c00169c:	0015018e 	move	$r14,$r12
1c0016a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016a4:	0380418c 	ori	$r12,$r12,0x10
1c0016a8:	0014b9ad 	and	$r13,$r13,$r14
1c0016ac:	2980018d 	st.w	$r13,$r12,0
1c0016b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016b4:	0380418c 	ori	$r12,$r12,0x10
1c0016b8:	2880018d 	ld.w	$r13,$r12,0
1c0016bc:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0016c0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0016c4:	001731cc 	sll.w	$r12,$r14,$r12
1c0016c8:	0015018e 	move	$r14,$r12
1c0016cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016d0:	0380418c 	ori	$r12,$r12,0x10
1c0016d4:	001539ad 	or	$r13,$r13,$r14
1c0016d8:	2980018d 	st.w	$r13,$r12,0
1c0016dc:	50012800 	b	296(0x128) # 1c001804 <gpio_pin_remap+0x200>
1c0016e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016e4:	0380518c 	ori	$r12,$r12,0x14
1c0016e8:	2880018d 	ld.w	$r13,$r12,0
1c0016ec:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0016f0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0016f4:	001731cc 	sll.w	$r12,$r14,$r12
1c0016f8:	0014300c 	nor	$r12,$r0,$r12
1c0016fc:	0015018e 	move	$r14,$r12
1c001700:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001704:	0380518c 	ori	$r12,$r12,0x14
1c001708:	0014b9ad 	and	$r13,$r13,$r14
1c00170c:	2980018d 	st.w	$r13,$r12,0
1c001710:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001714:	0380518c 	ori	$r12,$r12,0x14
1c001718:	2880018d 	ld.w	$r13,$r12,0
1c00171c:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001720:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001724:	001731cc 	sll.w	$r12,$r14,$r12
1c001728:	0015018e 	move	$r14,$r12
1c00172c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001730:	0380518c 	ori	$r12,$r12,0x14
1c001734:	001539ad 	or	$r13,$r13,$r14
1c001738:	2980018d 	st.w	$r13,$r12,0
1c00173c:	5000c800 	b	200(0xc8) # 1c001804 <gpio_pin_remap+0x200>
1c001740:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001744:	0380618c 	ori	$r12,$r12,0x18
1c001748:	2880018d 	ld.w	$r13,$r12,0
1c00174c:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c001750:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001754:	001731cc 	sll.w	$r12,$r14,$r12
1c001758:	0014300c 	nor	$r12,$r0,$r12
1c00175c:	0015018e 	move	$r14,$r12
1c001760:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001764:	0380618c 	ori	$r12,$r12,0x18
1c001768:	0014b9ad 	and	$r13,$r13,$r14
1c00176c:	2980018d 	st.w	$r13,$r12,0
1c001770:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001774:	0380618c 	ori	$r12,$r12,0x18
1c001778:	2880018d 	ld.w	$r13,$r12,0
1c00177c:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001780:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001784:	001731cc 	sll.w	$r12,$r14,$r12
1c001788:	0015018e 	move	$r14,$r12
1c00178c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001790:	0380618c 	ori	$r12,$r12,0x18
1c001794:	001539ad 	or	$r13,$r13,$r14
1c001798:	2980018d 	st.w	$r13,$r12,0
1c00179c:	50006800 	b	104(0x68) # 1c001804 <gpio_pin_remap+0x200>
1c0017a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017a4:	0380718c 	ori	$r12,$r12,0x1c
1c0017a8:	2880018d 	ld.w	$r13,$r12,0
1c0017ac:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0017b0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017b4:	001731cc 	sll.w	$r12,$r14,$r12
1c0017b8:	0014300c 	nor	$r12,$r0,$r12
1c0017bc:	0015018e 	move	$r14,$r12
1c0017c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017c4:	0380718c 	ori	$r12,$r12,0x1c
1c0017c8:	0014b9ad 	and	$r13,$r13,$r14
1c0017cc:	2980018d 	st.w	$r13,$r12,0
1c0017d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017d4:	0380718c 	ori	$r12,$r12,0x1c
1c0017d8:	2880018d 	ld.w	$r13,$r12,0
1c0017dc:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0017e0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017e4:	001731cc 	sll.w	$r12,$r14,$r12
1c0017e8:	0015018e 	move	$r14,$r12
1c0017ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017f0:	0380718c 	ori	$r12,$r12,0x1c
1c0017f4:	001539ad 	or	$r13,$r13,$r14
1c0017f8:	2980018d 	st.w	$r13,$r12,0
1c0017fc:	50000800 	b	8(0x8) # 1c001804 <gpio_pin_remap+0x200>
1c001800:	03400000 	andi	$r0,$r0,0x0
1c001804:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001808:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00180c:	4c000020 	jirl	$r0,$r1,0

1c001810 <myputchar>:
myputchar():
1c001810:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001814:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001818:	29806076 	st.w	$r22,$r3,24(0x18)
1c00181c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001820:	0015008c 	move	$r12,$r4
1c001824:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001828:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00182c:	00150185 	move	$r5,$r12
1c001830:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c001834:	54102400 	bl	4132(0x1024) # 1c002858 <UART_SendData>
1c001838:	03400000 	andi	$r0,$r0,0x0
1c00183c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001840:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001844:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001848:	4c000020 	jirl	$r0,$r1,0

1c00184c <myputchar2>:
myputchar2():
1c00184c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001850:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001854:	29806076 	st.w	$r22,$r3,24(0x18)
1c001858:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00185c:	0015008c 	move	$r12,$r4
1c001860:	001500ad 	move	$r13,$r5
1c001864:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001868:	001501ac 	move	$r12,$r13
1c00186c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c001870:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001874:	44001580 	bnez	$r12,20(0x14) # 1c001888 <myputchar2+0x3c>
1c001878:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00187c:	00150184 	move	$r4,$r12
1c001880:	5410f400 	bl	4340(0x10f4) # 1c002974 <Uart0_send>
1c001884:	50003800 	b	56(0x38) # 1c0018bc <myputchar2+0x70>
1c001888:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00188c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001890:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0018a4 <myputchar2+0x58>
1c001894:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c001898:	00150184 	move	$r4,$r12
1c00189c:	54111400 	bl	4372(0x1114) # 1c0029b0 <Uart1_send>
1c0018a0:	50001c00 	b	28(0x1c) # 1c0018bc <myputchar2+0x70>
1c0018a4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0018a8:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0018ac:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0018bc <myputchar2+0x70>
1c0018b0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0018b4:	00150184 	move	$r4,$r12
1c0018b8:	54113400 	bl	4404(0x1134) # 1c0029ec <Uart2_send>
1c0018bc:	03400000 	andi	$r0,$r0,0x0
1c0018c0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0018c4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0018c8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0018cc:	4c000020 	jirl	$r0,$r1,0

1c0018d0 <printbase>:
printbase():
1c0018d0:	02be4063 	addi.w	$r3,$r3,-112(0xf90)
1c0018d4:	2981b061 	st.w	$r1,$r3,108(0x6c)
1c0018d8:	2981a076 	st.w	$r22,$r3,104(0x68)
1c0018dc:	0281c076 	addi.w	$r22,$r3,112(0x70)
1c0018e0:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c0018e4:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c0018e8:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c0018ec:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c0018f0:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c0018f4:	40002580 	beqz	$r12,36(0x24) # 1c001918 <printbase+0x48>
1c0018f8:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0018fc:	64001d80 	bge	$r12,$r0,28(0x1c) # 1c001918 <printbase+0x48>
1c001900:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001904:	0011300c 	sub.w	$r12,$r0,$r12
1c001908:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00190c:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c001910:	57ff03ff 	bl	-256(0xfffff00) # 1c001810 <myputchar>
1c001914:	50000c00 	b	12(0xc) # 1c001920 <printbase+0x50>
1c001918:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c00191c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001920:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001924:	50005000 	b	80(0x50) # 1c001974 <printbase+0xa4>
1c001928:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c00192c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001930:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001934:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00193c <printbase+0x6c>
1c001938:	002a0007 	break	0x7
1c00193c:	00005dcc 	ext.w.b	$r12,$r14
1c001940:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001944:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c001948:	001035cd 	add.w	$r13,$r14,$r13
1c00194c:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c001950:	28be52cd 	ld.w	$r13,$r22,-108(0xf94)
1c001954:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c001958:	002135cc 	div.wu	$r12,$r14,$r13
1c00195c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001964 <printbase+0x94>
1c001960:	002a0007 	break	0x7
1c001964:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001968:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00196c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001970:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001974:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001978:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c001928 <printbase+0x58>
1c00197c:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001980:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001984:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c001988:	001231ad 	slt	$r13,$r13,$r12
1c00198c:	0013b5ce 	masknez	$r14,$r14,$r13
1c001990:	0013358c 	maskeqz	$r12,$r12,$r13
1c001994:	001531cc 	or	$r12,$r14,$r12
1c001998:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00199c:	50007400 	b	116(0x74) # 1c001a10 <printbase+0x140>
1c0019a0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0019a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0019a8:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c0019c4 <printbase+0xf4>
1c0019ac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0019b0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0019b4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0019b8:	001031ac 	add.w	$r12,$r13,$r12
1c0019bc:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c0019c0:	50000800 	b	8(0x8) # 1c0019c8 <printbase+0xf8>
1c0019c4:	0015000c 	move	$r12,$r0
1c0019c8:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0019cc:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c0019d0:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c0019d4:	6000198d 	blt	$r12,$r13,24(0x18) # 1c0019ec <printbase+0x11c>
1c0019d8:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0019dc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0019e0:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c0019e4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0019e8:	50001400 	b	20(0x14) # 1c0019fc <printbase+0x12c>
1c0019ec:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0019f0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0019f4:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c0019f8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0019fc:	00150184 	move	$r4,$r12
1c001a00:	57fe13ff 	bl	-496(0xffffe10) # 1c001810 <myputchar>
1c001a04:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001a08:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001a0c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001a10:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001a14:	63ff8c0c 	blt	$r0,$r12,-116(0x3ff8c) # 1c0019a0 <printbase+0xd0>
1c001a18:	0015000c 	move	$r12,$r0
1c001a1c:	00150184 	move	$r4,$r12
1c001a20:	2881b061 	ld.w	$r1,$r3,108(0x6c)
1c001a24:	2881a076 	ld.w	$r22,$r3,104(0x68)
1c001a28:	0281c063 	addi.w	$r3,$r3,112(0x70)
1c001a2c:	4c000020 	jirl	$r0,$r1,0

1c001a30 <printbase2>:
printbase2():
1c001a30:	02be0063 	addi.w	$r3,$r3,-128(0xf80)
1c001a34:	2981f061 	st.w	$r1,$r3,124(0x7c)
1c001a38:	2981e076 	st.w	$r22,$r3,120(0x78)
1c001a3c:	02820076 	addi.w	$r22,$r3,128(0x80)
1c001a40:	0015008c 	move	$r12,$r4
1c001a44:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c001a48:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c001a4c:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c001a50:	29be32c8 	st.w	$r8,$r22,-116(0xf8c)
1c001a54:	293e7ecc 	st.b	$r12,$r22,-97(0xf9f)
1c001a58:	28be32cc 	ld.w	$r12,$r22,-116(0xf8c)
1c001a5c:	40002d80 	beqz	$r12,44(0x2c) # 1c001a88 <printbase2+0x58>
1c001a60:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001a64:	64002580 	bge	$r12,$r0,36(0x24) # 1c001a88 <printbase2+0x58>
1c001a68:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001a6c:	0011300c 	sub.w	$r12,$r0,$r12
1c001a70:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a74:	2a3e7ecc 	ld.bu	$r12,$r22,-97(0xf9f)
1c001a78:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c001a7c:	00150184 	move	$r4,$r12
1c001a80:	57fdcfff 	bl	-564(0xffffdcc) # 1c00184c <myputchar2>
1c001a84:	50000c00 	b	12(0xc) # 1c001a90 <printbase2+0x60>
1c001a88:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001a8c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a90:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001a94:	50005000 	b	80(0x50) # 1c001ae4 <printbase2+0xb4>
1c001a98:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c001a9c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001aa0:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001aa4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001aac <printbase2+0x7c>
1c001aa8:	002a0007 	break	0x7
1c001aac:	00005dcc 	ext.w.b	$r12,$r14
1c001ab0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001ab4:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c001ab8:	001035cd 	add.w	$r13,$r14,$r13
1c001abc:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c001ac0:	28be42cd 	ld.w	$r13,$r22,-112(0xf90)
1c001ac4:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c001ac8:	002135cc 	div.wu	$r12,$r14,$r13
1c001acc:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001ad4 <printbase2+0xa4>
1c001ad0:	002a0007 	break	0x7
1c001ad4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001ad8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001adc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ae0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ae4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001ae8:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c001a98 <printbase2+0x68>
1c001aec:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c001af0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001af4:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c001af8:	001231ad 	slt	$r13,$r13,$r12
1c001afc:	0013b5ce 	masknez	$r14,$r14,$r13
1c001b00:	0013358c 	maskeqz	$r12,$r12,$r13
1c001b04:	001531cc 	or	$r12,$r14,$r12
1c001b08:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b0c:	50007c00 	b	124(0x7c) # 1c001b88 <printbase2+0x158>
1c001b10:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001b14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b18:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c001b34 <printbase2+0x104>
1c001b1c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b20:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001b24:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c001b28:	001031ac 	add.w	$r12,$r13,$r12
1c001b2c:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c001b30:	50000800 	b	8(0x8) # 1c001b38 <printbase2+0x108>
1c001b34:	0015000c 	move	$r12,$r0
1c001b38:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001b3c:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c001b40:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001b44:	6000198d 	blt	$r12,$r13,24(0x18) # 1c001b5c <printbase2+0x12c>
1c001b48:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001b4c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b50:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c001b54:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b58:	50001400 	b	20(0x14) # 1c001b6c <printbase2+0x13c>
1c001b5c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001b60:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b64:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c001b68:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b6c:	2a3e7ecd 	ld.bu	$r13,$r22,-97(0xf9f)
1c001b70:	00150185 	move	$r5,$r12
1c001b74:	001501a4 	move	$r4,$r13
1c001b78:	57fcd7ff 	bl	-812(0xffffcd4) # 1c00184c <myputchar2>
1c001b7c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b80:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001b84:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b88:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b8c:	63ff840c 	blt	$r0,$r12,-124(0x3ff84) # 1c001b10 <printbase2+0xe0>
1c001b90:	0015000c 	move	$r12,$r0
1c001b94:	00150184 	move	$r4,$r12
1c001b98:	2881f061 	ld.w	$r1,$r3,124(0x7c)
1c001b9c:	2881e076 	ld.w	$r22,$r3,120(0x78)
1c001ba0:	02820063 	addi.w	$r3,$r3,128(0x80)
1c001ba4:	4c000020 	jirl	$r0,$r1,0

1c001ba8 <puts>:
puts():
1c001ba8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001bac:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001bb0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001bb4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001bb8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001bbc:	50003000 	b	48(0x30) # 1c001bec <puts+0x44>
1c001bc0:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001bc4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001bc8:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001bd4 <puts+0x2c>
1c001bcc:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001bd0:	57fc43ff 	bl	-960(0xffffc40) # 1c001810 <myputchar>
1c001bd4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001bd8:	00150184 	move	$r4,$r12
1c001bdc:	57fc37ff 	bl	-972(0xffffc34) # 1c001810 <myputchar>
1c001be0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001be4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001be8:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001bec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001bf0:	2a00018c 	ld.bu	$r12,$r12,0
1c001bf4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001bf8:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001bfc:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c001bc0 <puts+0x18>
1c001c00:	0015000c 	move	$r12,$r0
1c001c04:	00150184 	move	$r4,$r12
1c001c08:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001c0c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001c10:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001c14:	4c000020 	jirl	$r0,$r1,0

1c001c18 <puts2>:
puts2():
1c001c18:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001c1c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001c20:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001c24:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001c28:	0015008c 	move	$r12,$r4
1c001c2c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001c30:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c001c34:	50004000 	b	64(0x40) # 1c001c74 <puts2+0x5c>
1c001c38:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001c3c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001c40:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c001c54 <puts2+0x3c>
1c001c44:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001c48:	02803405 	addi.w	$r5,$r0,13(0xd)
1c001c4c:	00150184 	move	$r4,$r12
1c001c50:	57fbffff 	bl	-1028(0xffffbfc) # 1c00184c <myputchar2>
1c001c54:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001c58:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001c5c:	001501a5 	move	$r5,$r13
1c001c60:	00150184 	move	$r4,$r12
1c001c64:	57fbebff 	bl	-1048(0xffffbe8) # 1c00184c <myputchar2>
1c001c68:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001c6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c70:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c001c74:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001c78:	2a00018c 	ld.bu	$r12,$r12,0
1c001c7c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001c80:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001c84:	47ffb59f 	bnez	$r12,-76(0x7fffb4) # 1c001c38 <puts2+0x20>
1c001c88:	0015000c 	move	$r12,$r0
1c001c8c:	00150184 	move	$r4,$r12
1c001c90:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001c94:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001c98:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001c9c:	4c000020 	jirl	$r0,$r1,0

1c001ca0 <myprintf>:
myprintf():
1c001ca0:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001ca4:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c001ca8:	2980e076 	st.w	$r22,$r3,56(0x38)
1c001cac:	02810076 	addi.w	$r22,$r3,64(0x40)
1c001cb0:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c001cb4:	298012c5 	st.w	$r5,$r22,4(0x4)
1c001cb8:	298022c6 	st.w	$r6,$r22,8(0x8)
1c001cbc:	298032c7 	st.w	$r7,$r22,12(0xc)
1c001cc0:	298042c8 	st.w	$r8,$r22,16(0x10)
1c001cc4:	298052c9 	st.w	$r9,$r22,20(0x14)
1c001cc8:	298062ca 	st.w	$r10,$r22,24(0x18)
1c001ccc:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c001cd0:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c001cd4:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c001cd8:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001cdc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001ce0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001ce4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001ce8:	50033000 	b	816(0x330) # 1c002018 <myprintf+0x378>
1c001cec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001cf0:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001cf4:	001031ac 	add.w	$r12,$r13,$r12
1c001cf8:	2a00018c 	ld.bu	$r12,$r12,0
1c001cfc:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001d00:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001d04:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c001d08:	5c02e5ac 	bne	$r13,$r12,740(0x2e4) # 1c001fec <myprintf+0x34c>
1c001d0c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001d10:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001d14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d18:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d1c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001d20:	001031ac 	add.w	$r12,$r13,$r12
1c001d24:	2800018c 	ld.b	$r12,$r12,0
1c001d28:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c001d2c:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c001d30:	6802adac 	bltu	$r13,$r12,684(0x2ac) # 1c001fdc <myprintf+0x33c>
1c001d34:	0040898d 	slli.w	$r13,$r12,0x2
1c001d38:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c001d3c:	028a718c 	addi.w	$r12,$r12,668(0x29c)
1c001d40:	001031ac 	add.w	$r12,$r13,$r12
1c001d44:	2880018c 	ld.w	$r12,$r12,0
1c001d48:	4c000180 	jirl	$r0,$r12,0
1c001d4c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d50:	2880018c 	ld.w	$r12,$r12,0
1c001d54:	00150184 	move	$r4,$r12
1c001d58:	57fe53ff 	bl	-432(0xffffe50) # 1c001ba8 <puts>
1c001d5c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d60:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d64:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d70:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d74:	50029800 	b	664(0x298) # 1c00200c <myprintf+0x36c>
1c001d78:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d7c:	2880018c 	ld.w	$r12,$r12,0
1c001d80:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001d84:	00150184 	move	$r4,$r12
1c001d88:	57fa8bff 	bl	-1400(0xffffa88) # 1c001810 <myputchar>
1c001d8c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d90:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d94:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d9c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001da0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001da4:	50026800 	b	616(0x268) # 1c00200c <myprintf+0x36c>
1c001da8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001dac:	2880018c 	ld.w	$r12,$r12,0
1c001db0:	00150007 	move	$r7,$r0
1c001db4:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001db8:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001dbc:	00150184 	move	$r4,$r12
1c001dc0:	57fb13ff 	bl	-1264(0xffffb10) # 1c0018d0 <printbase>
1c001dc4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001dc8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001dcc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001dd0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001dd4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dd8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ddc:	50023000 	b	560(0x230) # 1c00200c <myprintf+0x36c>
1c001de0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001de4:	2880018c 	ld.w	$r12,$r12,0
1c001de8:	02800407 	addi.w	$r7,$r0,1(0x1)
1c001dec:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001df0:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001df4:	00150184 	move	$r4,$r12
1c001df8:	57fadbff 	bl	-1320(0xffffad8) # 1c0018d0 <printbase>
1c001dfc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e00:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001e04:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001e08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e0c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e10:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e14:	5001f800 	b	504(0x1f8) # 1c00200c <myprintf+0x36c>
1c001e18:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e1c:	2880018c 	ld.w	$r12,$r12,0
1c001e20:	00150007 	move	$r7,$r0
1c001e24:	02802006 	addi.w	$r6,$r0,8(0x8)
1c001e28:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001e2c:	00150184 	move	$r4,$r12
1c001e30:	57faa3ff 	bl	-1376(0xffffaa0) # 1c0018d0 <printbase>
1c001e34:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e38:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001e3c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001e40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e44:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e48:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e4c:	5001c000 	b	448(0x1c0) # 1c00200c <myprintf+0x36c>
1c001e50:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e54:	2880018c 	ld.w	$r12,$r12,0
1c001e58:	00150007 	move	$r7,$r0
1c001e5c:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001e60:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001e64:	00150184 	move	$r4,$r12
1c001e68:	57fa6bff 	bl	-1432(0xffffa68) # 1c0018d0 <printbase>
1c001e6c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e70:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001e74:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001e78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e7c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e80:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e84:	50018800 	b	392(0x188) # 1c00200c <myprintf+0x36c>
1c001e88:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e8c:	2880018c 	ld.w	$r12,$r12,0
1c001e90:	00150007 	move	$r7,$r0
1c001e94:	02804006 	addi.w	$r6,$r0,16(0x10)
1c001e98:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001e9c:	00150184 	move	$r4,$r12
1c001ea0:	57fa33ff 	bl	-1488(0xffffa30) # 1c0018d0 <printbase>
1c001ea4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001ea8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001eac:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001eb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001eb4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001eb8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ebc:	50015000 	b	336(0x150) # 1c00200c <myprintf+0x36c>
1c001ec0:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001ec4:	57f94fff 	bl	-1716(0xffff94c) # 1c001810 <myputchar>
1c001ec8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ecc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ed0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ed4:	50013800 	b	312(0x138) # 1c00200c <myprintf+0x36c>
1c001ed8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001edc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ee0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ee4:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001ee8:	50003c00 	b	60(0x3c) # 1c001f24 <myprintf+0x284>
1c001eec:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001ef0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001ef4:	001c31ad 	mul.w	$r13,$r13,$r12
1c001ef8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001efc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f00:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001f04:	001031cc 	add.w	$r12,$r14,$r12
1c001f08:	2800018c 	ld.b	$r12,$r12,0
1c001f0c:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001f10:	001031ac 	add.w	$r12,$r13,$r12
1c001f14:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001f18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f1c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f20:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f2c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001f30:	001031ac 	add.w	$r12,$r13,$r12
1c001f34:	2800018d 	ld.b	$r13,$r12,0
1c001f38:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001f3c:	67fdd98d 	bge	$r12,$r13,-552(0x3fdd8) # 1c001d14 <myprintf+0x74>
1c001f40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f44:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f48:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001f4c:	001031ac 	add.w	$r12,$r13,$r12
1c001f50:	2800018d 	ld.b	$r13,$r12,0
1c001f54:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001f58:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001eec <myprintf+0x24c>
1c001f5c:	53fdbbff 	b	-584(0xffffdb8) # 1c001d14 <myprintf+0x74>
1c001f60:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001f64:	50003c00 	b	60(0x3c) # 1c001fa0 <myprintf+0x300>
1c001f68:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001f6c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001f70:	001c31ad 	mul.w	$r13,$r13,$r12
1c001f74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f78:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f7c:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001f80:	001031cc 	add.w	$r12,$r14,$r12
1c001f84:	2800018c 	ld.b	$r12,$r12,0
1c001f88:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001f8c:	001031ac 	add.w	$r12,$r13,$r12
1c001f90:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001f94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f98:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f9c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001fa0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fa4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001fa8:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001fac:	001031ac 	add.w	$r12,$r13,$r12
1c001fb0:	2800018d 	ld.b	$r13,$r12,0
1c001fb4:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001fb8:	67fd5d8d 	bge	$r12,$r13,-676(0x3fd5c) # 1c001d14 <myprintf+0x74>
1c001fbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fc0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001fc4:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001fc8:	001031ac 	add.w	$r12,$r13,$r12
1c001fcc:	2800018d 	ld.b	$r13,$r12,0
1c001fd0:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001fd4:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001f68 <myprintf+0x2c8>
1c001fd8:	53fd3fff 	b	-708(0xffffd3c) # 1c001d14 <myprintf+0x74>
1c001fdc:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001fe0:	57f833ff 	bl	-2000(0xffff830) # 1c001810 <myputchar>
1c001fe4:	03400000 	andi	$r0,$r0,0x0
1c001fe8:	50002400 	b	36(0x24) # 1c00200c <myprintf+0x36c>
1c001fec:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001ff0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001ff4:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c002000 <myprintf+0x360>
1c001ff8:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001ffc:	57f817ff 	bl	-2028(0xffff814) # 1c001810 <myputchar>
1c002000:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c002004:	00150184 	move	$r4,$r12
1c002008:	57f80bff 	bl	-2040(0xffff808) # 1c001810 <myputchar>
1c00200c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002010:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002014:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002018:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00201c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c002020:	001031ac 	add.w	$r12,$r13,$r12
1c002024:	2800018c 	ld.b	$r12,$r12,0
1c002028:	47fcc59f 	bnez	$r12,-828(0x7ffcc4) # 1c001cec <myprintf+0x4c>
1c00202c:	0015000c 	move	$r12,$r0
1c002030:	00150184 	move	$r4,$r12
1c002034:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c002038:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c00203c:	02818063 	addi.w	$r3,$r3,96(0x60)
1c002040:	4c000020 	jirl	$r0,$r1,0

1c002044 <myprintf2>:
myprintf2():
1c002044:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c002048:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c00204c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c002050:	02810076 	addi.w	$r22,$r3,64(0x40)
1c002054:	0015008c 	move	$r12,$r4
1c002058:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c00205c:	298022c6 	st.w	$r6,$r22,8(0x8)
1c002060:	298032c7 	st.w	$r7,$r22,12(0xc)
1c002064:	298042c8 	st.w	$r8,$r22,16(0x10)
1c002068:	298052c9 	st.w	$r9,$r22,20(0x14)
1c00206c:	298062ca 	st.w	$r10,$r22,24(0x18)
1c002070:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c002074:	293f3ecc 	st.b	$r12,$r22,-49(0xfcf)
1c002078:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c00207c:	02bfa18c 	addi.w	$r12,$r12,-24(0xfe8)
1c002080:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c002084:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002088:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00208c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002090:	50039c00 	b	924(0x39c) # 1c00242c <myprintf2+0x3e8>
1c002094:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002098:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c00209c:	001031ac 	add.w	$r12,$r13,$r12
1c0020a0:	2a00018c 	ld.bu	$r12,$r12,0
1c0020a4:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c0020a8:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c0020ac:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c0020b0:	5c0341ac 	bne	$r13,$r12,832(0x340) # 1c0023f0 <myprintf2+0x3ac>
1c0020b4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0020b8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0020bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020c0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0020c4:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c0020c8:	001031ac 	add.w	$r12,$r13,$r12
1c0020cc:	2800018c 	ld.b	$r12,$r12,0
1c0020d0:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c0020d4:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c0020d8:	680301ac 	bltu	$r13,$r12,768(0x300) # 1c0023d8 <myprintf2+0x394>
1c0020dc:	0040898d 	slli.w	$r13,$r12,0x2
1c0020e0:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c0020e4:	0281118c 	addi.w	$r12,$r12,68(0x44)
1c0020e8:	001031ac 	add.w	$r12,$r13,$r12
1c0020ec:	2880018c 	ld.w	$r12,$r12,0
1c0020f0:	4c000180 	jirl	$r0,$r12,0
1c0020f4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0020f8:	2880018d 	ld.w	$r13,$r12,0
1c0020fc:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002100:	001501a5 	move	$r5,$r13
1c002104:	00150184 	move	$r4,$r12
1c002108:	57fb13ff 	bl	-1264(0xffffb10) # 1c001c18 <puts2>
1c00210c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002110:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002114:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002118:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00211c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002120:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002124:	5002fc00 	b	764(0x2fc) # 1c002420 <myprintf2+0x3dc>
1c002128:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00212c:	2880018c 	ld.w	$r12,$r12,0
1c002130:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002134:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002138:	001501a5 	move	$r5,$r13
1c00213c:	00150184 	move	$r4,$r12
1c002140:	57f70fff 	bl	-2292(0xffff70c) # 1c00184c <myputchar2>
1c002144:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002148:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00214c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002150:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002154:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002158:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00215c:	5002c400 	b	708(0x2c4) # 1c002420 <myprintf2+0x3dc>
1c002160:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002164:	2880018c 	ld.w	$r12,$r12,0
1c002168:	0015018d 	move	$r13,$r12
1c00216c:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002170:	00150008 	move	$r8,$r0
1c002174:	02802807 	addi.w	$r7,$r0,10(0xa)
1c002178:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c00217c:	001501a5 	move	$r5,$r13
1c002180:	00150184 	move	$r4,$r12
1c002184:	57f8afff 	bl	-1876(0xffff8ac) # 1c001a30 <printbase2>
1c002188:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00218c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002190:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002194:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002198:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00219c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0021a0:	50028000 	b	640(0x280) # 1c002420 <myprintf2+0x3dc>
1c0021a4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0021a8:	2880018c 	ld.w	$r12,$r12,0
1c0021ac:	0015018d 	move	$r13,$r12
1c0021b0:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c0021b4:	02800408 	addi.w	$r8,$r0,1(0x1)
1c0021b8:	02802807 	addi.w	$r7,$r0,10(0xa)
1c0021bc:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c0021c0:	001501a5 	move	$r5,$r13
1c0021c4:	00150184 	move	$r4,$r12
1c0021c8:	57f86bff 	bl	-1944(0xffff868) # 1c001a30 <printbase2>
1c0021cc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0021d0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0021d4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0021d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021dc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0021e0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0021e4:	50023c00 	b	572(0x23c) # 1c002420 <myprintf2+0x3dc>
1c0021e8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0021ec:	2880018c 	ld.w	$r12,$r12,0
1c0021f0:	0015018d 	move	$r13,$r12
1c0021f4:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c0021f8:	00150008 	move	$r8,$r0
1c0021fc:	02802007 	addi.w	$r7,$r0,8(0x8)
1c002200:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c002204:	001501a5 	move	$r5,$r13
1c002208:	00150184 	move	$r4,$r12
1c00220c:	57f827ff 	bl	-2012(0xffff824) # 1c001a30 <printbase2>
1c002210:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002214:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002218:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00221c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002220:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002224:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002228:	5001f800 	b	504(0x1f8) # 1c002420 <myprintf2+0x3dc>
1c00222c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002230:	2880018c 	ld.w	$r12,$r12,0
1c002234:	0015018d 	move	$r13,$r12
1c002238:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c00223c:	00150008 	move	$r8,$r0
1c002240:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002244:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c002248:	001501a5 	move	$r5,$r13
1c00224c:	00150184 	move	$r4,$r12
1c002250:	57f7e3ff 	bl	-2080(0xffff7e0) # 1c001a30 <printbase2>
1c002254:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002258:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00225c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002260:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002264:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002268:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00226c:	5001b400 	b	436(0x1b4) # 1c002420 <myprintf2+0x3dc>
1c002270:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002274:	2880018c 	ld.w	$r12,$r12,0
1c002278:	0015018d 	move	$r13,$r12
1c00227c:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002280:	00150008 	move	$r8,$r0
1c002284:	02804007 	addi.w	$r7,$r0,16(0x10)
1c002288:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c00228c:	001501a5 	move	$r5,$r13
1c002290:	00150184 	move	$r4,$r12
1c002294:	57f79fff 	bl	-2148(0xffff79c) # 1c001a30 <printbase2>
1c002298:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00229c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0022a0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0022a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022a8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022ac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022b0:	50017000 	b	368(0x170) # 1c002420 <myprintf2+0x3dc>
1c0022b4:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c0022b8:	02809405 	addi.w	$r5,$r0,37(0x25)
1c0022bc:	00150184 	move	$r4,$r12
1c0022c0:	57f58fff 	bl	-2676(0xffff58c) # 1c00184c <myputchar2>
1c0022c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022c8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022cc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022d0:	50015000 	b	336(0x150) # 1c002420 <myprintf2+0x3dc>
1c0022d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022dc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022e0:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0022e4:	50003c00 	b	60(0x3c) # 1c002320 <myprintf2+0x2dc>
1c0022e8:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0022ec:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0022f0:	001c31ad 	mul.w	$r13,$r13,$r12
1c0022f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022f8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022fc:	28bf22ce 	ld.w	$r14,$r22,-56(0xfc8)
1c002300:	001031cc 	add.w	$r12,$r14,$r12
1c002304:	2800018c 	ld.b	$r12,$r12,0
1c002308:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c00230c:	001031ac 	add.w	$r12,$r13,$r12
1c002310:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002314:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002318:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00231c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002320:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002324:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002328:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c00232c:	001031ac 	add.w	$r12,$r13,$r12
1c002330:	2800018d 	ld.b	$r13,$r12,0
1c002334:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c002338:	67fd858d 	bge	$r12,$r13,-636(0x3fd84) # 1c0020bc <myprintf2+0x78>
1c00233c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002340:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002344:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c002348:	001031ac 	add.w	$r12,$r13,$r12
1c00234c:	2800018d 	ld.b	$r13,$r12,0
1c002350:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c002354:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c0022e8 <myprintf2+0x2a4>
1c002358:	53fd67ff 	b	-668(0xffffd64) # 1c0020bc <myprintf2+0x78>
1c00235c:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002360:	50003c00 	b	60(0x3c) # 1c00239c <myprintf2+0x358>
1c002364:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c002368:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c00236c:	001c31ad 	mul.w	$r13,$r13,$r12
1c002370:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002374:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002378:	28bf22ce 	ld.w	$r14,$r22,-56(0xfc8)
1c00237c:	001031cc 	add.w	$r12,$r14,$r12
1c002380:	2800018c 	ld.b	$r12,$r12,0
1c002384:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c002388:	001031ac 	add.w	$r12,$r13,$r12
1c00238c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002390:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002394:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002398:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00239c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023a4:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c0023a8:	001031ac 	add.w	$r12,$r13,$r12
1c0023ac:	2800018d 	ld.b	$r13,$r12,0
1c0023b0:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c0023b4:	67fd098d 	bge	$r12,$r13,-760(0x3fd08) # 1c0020bc <myprintf2+0x78>
1c0023b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023bc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023c0:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c0023c4:	001031ac 	add.w	$r12,$r13,$r12
1c0023c8:	2800018d 	ld.b	$r13,$r12,0
1c0023cc:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c0023d0:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c002364 <myprintf2+0x320>
1c0023d4:	53fcebff 	b	-792(0xffffce8) # 1c0020bc <myprintf2+0x78>
1c0023d8:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c0023dc:	02809405 	addi.w	$r5,$r0,37(0x25)
1c0023e0:	00150184 	move	$r4,$r12
1c0023e4:	57f46bff 	bl	-2968(0xffff468) # 1c00184c <myputchar2>
1c0023e8:	03400000 	andi	$r0,$r0,0x0
1c0023ec:	50003400 	b	52(0x34) # 1c002420 <myprintf2+0x3dc>
1c0023f0:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c0023f4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0023f8:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c00240c <myprintf2+0x3c8>
1c0023fc:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002400:	02803405 	addi.w	$r5,$r0,13(0xd)
1c002404:	00150184 	move	$r4,$r12
1c002408:	57f447ff 	bl	-3004(0xffff444) # 1c00184c <myputchar2>
1c00240c:	2a3f8ecd 	ld.bu	$r13,$r22,-29(0xfe3)
1c002410:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002414:	001501a5 	move	$r5,$r13
1c002418:	00150184 	move	$r4,$r12
1c00241c:	57f433ff 	bl	-3024(0xffff430) # 1c00184c <myputchar2>
1c002420:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002424:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002428:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00242c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002430:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c002434:	001031ac 	add.w	$r12,$r13,$r12
1c002438:	2800018c 	ld.b	$r12,$r12,0
1c00243c:	47fc599f 	bnez	$r12,-936(0x7ffc58) # 1c002094 <myprintf2+0x50>
1c002440:	0015000c 	move	$r12,$r0
1c002444:	00150184 	move	$r4,$r12
1c002448:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c00244c:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c002450:	02818063 	addi.w	$r3,$r3,96(0x60)
1c002454:	4c000020 	jirl	$r0,$r1,0

1c002458 <UART_Init>:
UART_Init():
1c002458:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00245c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002460:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002464:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002468:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00246c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002470:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002474:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002478:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c00247c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002480:	03403d8c 	andi	$r12,$r12,0xf
1c002484:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002488:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00248c:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c002490:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002494:	0044918c 	srli.w	$r12,$r12,0x4
1c002498:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c00249c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0024a0:	40000d80 	beqz	$r12,12(0xc) # 1c0024ac <UART_Init+0x54>
1c0024a4:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c0024a8:	44001980 	bnez	$r12,24(0x18) # 1c0024c0 <UART_Init+0x68>
1c0024ac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0024b0:	0280e00d 	addi.w	$r13,$r0,56(0x38)
1c0024b4:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0024b8:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c0024bc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0024c0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0024c4:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c0024c8:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0024e0 <UART_Init+0x88>
1c0024cc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0024d0:	02808c0d 	addi.w	$r13,$r0,35(0x23)
1c0024d4:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0024d8:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0024dc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0024e0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0024e4:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c0024e8:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0024ec:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0024f0:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0024f4:	580011ac 	beq	$r13,$r12,16(0x10) # 1c002504 <UART_Init+0xac>
1c0024f8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0024fc:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c002500:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c002560 <UART_Init+0x108>
1c002504:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002508:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00250c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002510:	2880018c 	ld.w	$r12,$r12,0
1c002514:	002131ae 	div.wu	$r14,$r13,$r12
1c002518:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002520 <UART_Init+0xc8>
1c00251c:	002a0007 	break	0x7
1c002520:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002524:	002135cc 	div.wu	$r12,$r14,$r13
1c002528:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002530 <UART_Init+0xd8>
1c00252c:	002a0007 	break	0x7
1c002530:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002534:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002538:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00253c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002540:	2880018e 	ld.w	$r14,$r12,0
1c002544:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002548:	001c31ce 	mul.w	$r14,$r14,$r12
1c00254c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002550:	001c31cc 	mul.w	$r12,$r14,$r12
1c002554:	001131ac 	sub.w	$r12,$r13,$r12
1c002558:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00255c:	50005400 	b	84(0x54) # 1c0025b0 <UART_Init+0x158>
1c002560:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002564:	2880018c 	ld.w	$r12,$r12,0
1c002568:	1400010d 	lu12i.w	$r13,8(0x8)
1c00256c:	002131ae 	div.wu	$r14,$r13,$r12
1c002570:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002578 <UART_Init+0x120>
1c002574:	002a0007 	break	0x7
1c002578:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00257c:	002135cc 	div.wu	$r12,$r14,$r13
1c002580:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002588 <UART_Init+0x130>
1c002584:	002a0007 	break	0x7
1c002588:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00258c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002590:	2880018d 	ld.w	$r13,$r12,0
1c002594:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002598:	001c31ad 	mul.w	$r13,$r13,$r12
1c00259c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0025a0:	001c31ac 	mul.w	$r12,$r13,$r12
1c0025a4:	1400010d 	lu12i.w	$r13,8(0x8)
1c0025a8:	001131ac 	sub.w	$r12,$r13,$r12
1c0025ac:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0025b0:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0025b4:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c0025b8:	001c31ad 	mul.w	$r13,$r13,$r12
1c0025bc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0025c0:	2880018c 	ld.w	$r12,$r12,0
1c0025c4:	002131ae 	div.wu	$r14,$r13,$r12
1c0025c8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0025d0 <UART_Init+0x178>
1c0025cc:	002a0007 	break	0x7
1c0025d0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0025d4:	002135cc 	div.wu	$r12,$r14,$r13
1c0025d8:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0025e0 <UART_Init+0x188>
1c0025dc:	002a0007 	break	0x7
1c0025e0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0025e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025e8:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0025ec:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0025f0:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c0025f4:	001531ac 	or	$r12,$r13,$r12
1c0025f8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0025fc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002600:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002604:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002608:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00260c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002610:	2900018d 	st.b	$r13,$r12,0
1c002614:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002618:	0044a18c 	srli.w	$r12,$r12,0x8
1c00261c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002620:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002624:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002628:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00262c:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002630:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002634:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002638:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00263c:	2900098d 	st.b	$r13,$r12,2(0x2)
1c002640:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002644:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002648:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00264c:	0341fd8c 	andi	$r12,$r12,0x7f
1c002650:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002654:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002658:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00265c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002660:	29000580 	st.b	$r0,$r12,1(0x1)
1c002664:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002668:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c00266c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002670:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002674:	2a00298c 	ld.bu	$r12,$r12,10(0xa)
1c002678:	001531ac 	or	$r12,$r13,$r12
1c00267c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002680:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002684:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002688:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00268c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002690:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002694:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002698:	2a00358c 	ld.bu	$r12,$r12,13(0xd)
1c00269c:	001531ac 	or	$r12,$r13,$r12
1c0026a0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026a4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026a8:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0026ac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026b0:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0026b4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026b8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026bc:	2a00398c 	ld.bu	$r12,$r12,14(0xe)
1c0026c0:	001531ac 	or	$r12,$r13,$r12
1c0026c4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026c8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026cc:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0026d0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026d4:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0026d8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026dc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026e0:	2a002d8c 	ld.bu	$r12,$r12,11(0xb)
1c0026e4:	001531ac 	or	$r12,$r13,$r12
1c0026e8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026ec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026f0:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0026f4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026f8:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0026fc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002700:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002704:	2a003d8c 	ld.bu	$r12,$r12,15(0xf)
1c002708:	001531ac 	or	$r12,$r13,$r12
1c00270c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002710:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002714:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002718:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00271c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002720:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002724:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002728:	2a00318c 	ld.bu	$r12,$r12,12(0xc)
1c00272c:	001531ac 	or	$r12,$r13,$r12
1c002730:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002734:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002738:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00273c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002740:	2a00018c 	ld.bu	$r12,$r12,0
1c002744:	03400000 	andi	$r0,$r0,0x0
1c002748:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00274c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002750:	4c000020 	jirl	$r0,$r1,0

1c002754 <UART_StructInit>:
UART_StructInit():
1c002754:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002758:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00275c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002760:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002764:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002768:	1400038d 	lu12i.w	$r13,28(0x1c)
1c00276c:	038801ad 	ori	$r13,$r13,0x200
1c002770:	2980018d 	st.w	$r13,$r12,0
1c002774:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002778:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c00277c:	038801ad 	ori	$r13,$r13,0x200
1c002780:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002784:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002788:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c00278c:	2900298d 	st.b	$r13,$r12,10(0xa)
1c002790:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002794:	29002d80 	st.b	$r0,$r12,11(0xb)
1c002798:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00279c:	29003580 	st.b	$r0,$r12,13(0xd)
1c0027a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027a4:	29003180 	st.b	$r0,$r12,12(0xc)
1c0027a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027ac:	29003d80 	st.b	$r0,$r12,15(0xf)
1c0027b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027b4:	29003980 	st.b	$r0,$r12,14(0xe)
1c0027b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027bc:	29402180 	st.h	$r0,$r12,8(0x8)
1c0027c0:	03400000 	andi	$r0,$r0,0x0
1c0027c4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0027c8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0027cc:	4c000020 	jirl	$r0,$r1,0

1c0027d0 <UART_ITConfig>:
UART_ITConfig():
1c0027d0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0027d4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0027d8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0027dc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0027e0:	001500ac 	move	$r12,$r5
1c0027e4:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c0027e8:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0027ec:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0027f0:	40002980 	beqz	$r12,40(0x28) # 1c002818 <UART_ITConfig+0x48>
1c0027f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027f8:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0027fc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002800:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c002804:	001531ac 	or	$r12,$r13,$r12
1c002808:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00280c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002810:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002814:	50003400 	b	52(0x34) # 1c002848 <UART_ITConfig+0x78>
1c002818:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00281c:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002820:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002824:	00005d8d 	ext.w.b	$r13,$r12
1c002828:	283faecc 	ld.b	$r12,$r22,-21(0xfeb)
1c00282c:	0014300c 	nor	$r12,$r0,$r12
1c002830:	00005d8c 	ext.w.b	$r12,$r12
1c002834:	0014b1ac 	and	$r12,$r13,$r12
1c002838:	00005d8c 	ext.w.b	$r12,$r12
1c00283c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002840:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002844:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002848:	03400000 	andi	$r0,$r0,0x0
1c00284c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002850:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002854:	4c000020 	jirl	$r0,$r1,0

1c002858 <UART_SendData>:
UART_SendData():
1c002858:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00285c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002860:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002864:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002868:	001500ac 	move	$r12,$r5
1c00286c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c002870:	03400000 	andi	$r0,$r0,0x0
1c002874:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002878:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c00287c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002880:	0340818c 	andi	$r12,$r12,0x20
1c002884:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002874 <UART_SendData+0x1c>
1c002888:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00288c:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c002890:	2900018d 	st.b	$r13,$r12,0
1c002894:	03400000 	andi	$r0,$r0,0x0
1c002898:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00289c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0028a0:	4c000020 	jirl	$r0,$r1,0

1c0028a4 <UART_ReceiveData>:
UART_ReceiveData():
1c0028a4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0028a8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0028ac:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0028b0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0028b4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0028b8:	03400000 	andi	$r0,$r0,0x0
1c0028bc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028c0:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0028c4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0028c8:	0340058c 	andi	$r12,$r12,0x1
1c0028cc:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0028bc <UART_ReceiveData+0x18>
1c0028d0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028d4:	2a00018c 	ld.bu	$r12,$r12,0
1c0028d8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0028dc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0028e0:	00150184 	move	$r4,$r12
1c0028e4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0028e8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0028ec:	4c000020 	jirl	$r0,$r1,0

1c0028f0 <Uart1_init>:
Uart1_init():
1c0028f0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0028f4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0028f8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0028fc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002900:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002904:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002908:	02802004 	addi.w	$r4,$r0,8(0x8)
1c00290c:	57ecfbff 	bl	-4872(0xfffecf8) # 1c001604 <gpio_pin_remap>
1c002910:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002914:	02802404 	addi.w	$r4,$r0,9(0x9)
1c002918:	57ecefff 	bl	-4884(0xfffecec) # 1c001604 <gpio_pin_remap>
1c00291c:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002920:	00150184 	move	$r4,$r12
1c002924:	57fe33ff 	bl	-464(0xffffe30) # 1c002754 <UART_StructInit>
1c002928:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c00292c:	289b918c 	ld.w	$r12,$r12,1764(0x6e4)
1c002930:	2880018c 	ld.w	$r12,$r12,0
1c002934:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002938:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00293c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002940:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002944:	00150185 	move	$r5,$r12
1c002948:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c00294c:	57fb0fff 	bl	-1268(0xffffb0c) # 1c002458 <UART_Init>
1c002950:	00150006 	move	$r6,$r0
1c002954:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002958:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c00295c:	57fe77ff 	bl	-396(0xffffe74) # 1c0027d0 <UART_ITConfig>
1c002960:	03400000 	andi	$r0,$r0,0x0
1c002964:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002968:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00296c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002970:	4c000020 	jirl	$r0,$r1,0

1c002974 <Uart0_send>:
Uart0_send():
1c002974:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002978:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00297c:	29806076 	st.w	$r22,$r3,24(0x18)
1c002980:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002984:	0015008c 	move	$r12,$r4
1c002988:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00298c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002990:	00150185 	move	$r5,$r12
1c002994:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002998:	57fec3ff 	bl	-320(0xffffec0) # 1c002858 <UART_SendData>
1c00299c:	03400000 	andi	$r0,$r0,0x0
1c0029a0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0029a4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0029a8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0029ac:	4c000020 	jirl	$r0,$r1,0

1c0029b0 <Uart1_send>:
Uart1_send():
1c0029b0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0029b4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0029b8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0029bc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0029c0:	0015008c 	move	$r12,$r4
1c0029c4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0029c8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0029cc:	00150185 	move	$r5,$r12
1c0029d0:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c0029d4:	57fe87ff 	bl	-380(0xffffe84) # 1c002858 <UART_SendData>
1c0029d8:	03400000 	andi	$r0,$r0,0x0
1c0029dc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0029e0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0029e4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0029e8:	4c000020 	jirl	$r0,$r1,0

1c0029ec <Uart2_send>:
Uart2_send():
1c0029ec:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0029f0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0029f4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0029f8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0029fc:	0015008c 	move	$r12,$r4
1c002a00:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002a04:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002a08:	00150185 	move	$r5,$r12
1c002a0c:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c002a10:	57fe4bff 	bl	-440(0xffffe48) # 1c002858 <UART_SendData>
1c002a14:	03400000 	andi	$r0,$r0,0x0
1c002a18:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002a1c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002a20:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002a24:	4c000020 	jirl	$r0,$r1,0

1c002a28 <CLOCK_WaitForHSEStartUp>:
CLOCK_WaitForHSEStartUp():
1c002a28:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002a2c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002a30:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002a34:	1400006c 	lu12i.w	$r12,3(0x3)
1c002a38:	03ba018c 	ori	$r12,$r12,0xe80
1c002a3c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002a40:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002a44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002a48:	2880018d 	ld.w	$r13,$r12,0
1c002a4c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002a50:	038101ad 	ori	$r13,$r13,0x40
1c002a54:	2980018d 	st.w	$r13,$r12,0
1c002a58:	03400000 	andi	$r0,$r0,0x0
1c002a5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002a60:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002a64:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002a68:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c002a5c <CLOCK_WaitForHSEStartUp+0x34>
1c002a6c:	50001c00 	b	28(0x1c) # 1c002a88 <CLOCK_WaitForHSEStartUp+0x60>
1c002a70:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002a74:	2880018e 	ld.w	$r14,$r12,0
1c002a78:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002a7c:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002a80:	0014b5cd 	and	$r13,$r14,$r13
1c002a84:	2980018d 	st.w	$r13,$r12,0
1c002a88:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002a8c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002a90:	63ffe180 	blt	$r12,$r0,-32(0x3ffe0) # 1c002a70 <CLOCK_WaitForHSEStartUp+0x48>
1c002a94:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002a98:	2880018d 	ld.w	$r13,$r12,0
1c002a9c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002aa0:	038201ad 	ori	$r13,$r13,0x80
1c002aa4:	2980018d 	st.w	$r13,$r12,0
1c002aa8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002aac:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002ab0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002ab4:	00150184 	move	$r4,$r12
1c002ab8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002abc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002ac0:	4c000020 	jirl	$r0,$r1,0

1c002ac4 <CLOCK_WaitForLSEStartUp>:
CLOCK_WaitForLSEStartUp():
1c002ac4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002ac8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002acc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002ad0:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002ad4:	50008800 	b	136(0x88) # 1c002b5c <CLOCK_WaitForLSEStartUp+0x98>
1c002ad8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002adc:	2880018e 	ld.w	$r14,$r12,0
1c002ae0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ae4:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002ae8:	0014b5cd 	and	$r13,$r14,$r13
1c002aec:	2980018d 	st.w	$r13,$r12,0
1c002af0:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002af4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002af8:	50001400 	b	20(0x14) # 1c002b0c <CLOCK_WaitForLSEStartUp+0x48>
1c002afc:	03400000 	andi	$r0,$r0,0x0
1c002b00:	03400000 	andi	$r0,$r0,0x0
1c002b04:	03400000 	andi	$r0,$r0,0x0
1c002b08:	03400000 	andi	$r0,$r0,0x0
1c002b0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b10:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002b14:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002b18:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002afc <CLOCK_WaitForLSEStartUp+0x38>
1c002b1c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b20:	2880018d 	ld.w	$r13,$r12,0
1c002b24:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b28:	038081ad 	ori	$r13,$r13,0x20
1c002b2c:	2980018d 	st.w	$r13,$r12,0
1c002b30:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002b34:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002b38:	50001400 	b	20(0x14) # 1c002b4c <CLOCK_WaitForLSEStartUp+0x88>
1c002b3c:	03400000 	andi	$r0,$r0,0x0
1c002b40:	03400000 	andi	$r0,$r0,0x0
1c002b44:	03400000 	andi	$r0,$r0,0x0
1c002b48:	03400000 	andi	$r0,$r0,0x0
1c002b4c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b50:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002b54:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002b58:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002b3c <CLOCK_WaitForLSEStartUp+0x78>
1c002b5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b60:	0380118c 	ori	$r12,$r12,0x4
1c002b64:	2880018d 	ld.w	$r13,$r12,0
1c002b68:	1420000c 	lu12i.w	$r12,65536(0x10000)
1c002b6c:	0014b1ac 	and	$r12,$r13,$r12
1c002b70:	43ff699f 	beqz	$r12,-152(0x7fff68) # 1c002ad8 <CLOCK_WaitForLSEStartUp+0x14>
1c002b74:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b78:	0380118c 	ori	$r12,$r12,0x4
1c002b7c:	2880018d 	ld.w	$r13,$r12,0
1c002b80:	1440000c 	lu12i.w	$r12,131072(0x20000)
1c002b84:	0014b1ac 	and	$r12,$r13,$r12
1c002b88:	47ff519f 	bnez	$r12,-176(0x7fff50) # 1c002ad8 <CLOCK_WaitForLSEStartUp+0x14>
1c002b8c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002b90:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002b94:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002b98:	00150184 	move	$r4,$r12
1c002b9c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002ba0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002ba4:	4c000020 	jirl	$r0,$r1,0

1c002ba8 <CLOCK_HSEConfig>:
CLOCK_HSEConfig():
1c002ba8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002bac:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002bb0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002bb4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002bb8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002bbc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002bc0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bc4:	2880018e 	ld.w	$r14,$r12,0
1c002bc8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002bcc:	0014300d 	nor	$r13,$r0,$r12
1c002bd0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bd4:	0014b5cd 	and	$r13,$r14,$r13
1c002bd8:	2980018d 	st.w	$r13,$r12,0
1c002bdc:	1400002c 	lu12i.w	$r12,1(0x1)
1c002be0:	03b4bd8c 	ori	$r12,$r12,0xd2f
1c002be4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002be8:	50001400 	b	20(0x14) # 1c002bfc <CLOCK_HSEConfig+0x54>
1c002bec:	03400000 	andi	$r0,$r0,0x0
1c002bf0:	03400000 	andi	$r0,$r0,0x0
1c002bf4:	03400000 	andi	$r0,$r0,0x0
1c002bf8:	03400000 	andi	$r0,$r0,0x0
1c002bfc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002c00:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002c04:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002c08:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002bec <CLOCK_HSEConfig+0x44>
1c002c0c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002c10:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002c14:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002c24 <CLOCK_HSEConfig+0x7c>
1c002c18:	57fe13ff 	bl	-496(0xffffe10) # 1c002a28 <CLOCK_WaitForHSEStartUp>
1c002c1c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002c20:	50002400 	b	36(0x24) # 1c002c44 <CLOCK_HSEConfig+0x9c>
1c002c24:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c28:	2880018e 	ld.w	$r14,$r12,0
1c002c2c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c30:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002c34:	0014b5cd 	and	$r13,$r14,$r13
1c002c38:	2980018d 	st.w	$r13,$r12,0
1c002c3c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002c40:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002c44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c48:	00150184 	move	$r4,$r12
1c002c4c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002c50:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002c54:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002c58:	4c000020 	jirl	$r0,$r1,0

1c002c5c <CLOCK_LSEConfig>:
CLOCK_LSEConfig():
1c002c5c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002c60:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002c64:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002c68:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002c6c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002c70:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002c74:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002c78:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c002c7c:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002c8c <CLOCK_LSEConfig+0x30>
1c002c80:	57fe47ff 	bl	-444(0xffffe44) # 1c002ac4 <CLOCK_WaitForLSEStartUp>
1c002c84:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002c88:	50002400 	b	36(0x24) # 1c002cac <CLOCK_LSEConfig+0x50>
1c002c8c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c90:	2880018e 	ld.w	$r14,$r12,0
1c002c94:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c98:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002c9c:	0014b5cd 	and	$r13,$r14,$r13
1c002ca0:	2980018d 	st.w	$r13,$r12,0
1c002ca4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002ca8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002cac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002cb0:	00150184 	move	$r4,$r12
1c002cb4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002cb8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002cbc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002cc0:	4c000020 	jirl	$r0,$r1,0

1c002cc4 <CLOCK_StructInit>:
CLOCK_StructInit():
1c002cc4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002cc8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002ccc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002cd0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002cd4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002cd8:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c002cdc:	2980018d 	st.w	$r13,$r12,0
1c002ce0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ce4:	0282000d 	addi.w	$r13,$r0,128(0x80)
1c002ce8:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002cec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002cf0:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c002cf4:	2980218d 	st.w	$r13,$r12,8(0x8)
1c002cf8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002cfc:	29803180 	st.w	$r0,$r12,12(0xc)
1c002d00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d04:	29804180 	st.w	$r0,$r12,16(0x10)
1c002d08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d0c:	29805180 	st.w	$r0,$r12,20(0x14)
1c002d10:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d14:	29806180 	st.w	$r0,$r12,24(0x18)
1c002d18:	03400000 	andi	$r0,$r0,0x0
1c002d1c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002d20:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002d24:	4c000020 	jirl	$r0,$r1,0

1c002d28 <CLOCK_Init>:
CLOCK_Init():
1c002d28:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002d2c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002d30:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002d34:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002d38:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002d3c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002d40:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d44:	2880018e 	ld.w	$r14,$r12,0
1c002d48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d4c:	02b3fc0d 	addi.w	$r13,$r0,-769(0xcff)
1c002d50:	0014b5cd 	and	$r13,$r14,$r13
1c002d54:	2980018d 	st.w	$r13,$r12,0
1c002d58:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d5c:	2880018e 	ld.w	$r14,$r12,0
1c002d60:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002d64:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c002d68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d6c:	001535cd 	or	$r13,$r14,$r13
1c002d70:	2980018d 	st.w	$r13,$r12,0
1c002d74:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d78:	2880018e 	ld.w	$r14,$r12,0
1c002d7c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d80:	02bfbc0d 	addi.w	$r13,$r0,-17(0xfef)
1c002d84:	0014b5cd 	and	$r13,$r14,$r13
1c002d88:	2980018d 	st.w	$r13,$r12,0
1c002d8c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d90:	2880018e 	ld.w	$r14,$r12,0
1c002d94:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002d98:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c002d9c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002da0:	001535cd 	or	$r13,$r14,$r13
1c002da4:	2980018d 	st.w	$r13,$r12,0
1c002da8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002dac:	2880018e 	ld.w	$r14,$r12,0
1c002db0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002db4:	15ffffed 	lu12i.w	$r13,-1(0xfffff)
1c002db8:	039ffdad 	ori	$r13,$r13,0x7ff
1c002dbc:	0014b5cd 	and	$r13,$r14,$r13
1c002dc0:	2980018d 	st.w	$r13,$r12,0
1c002dc4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002dc8:	2880018e 	ld.w	$r14,$r12,0
1c002dcc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002dd0:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c002dd4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002dd8:	001535cd 	or	$r13,$r14,$r13
1c002ddc:	2980018d 	st.w	$r13,$r12,0
1c002de0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002de4:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002de8:	00150184 	move	$r4,$r12
1c002dec:	57fdbfff 	bl	-580(0xffffdbc) # 1c002ba8 <CLOCK_HSEConfig>
1c002df0:	0015008d 	move	$r13,$r4
1c002df4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002df8:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002e04 <CLOCK_Init+0xdc>
1c002dfc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e00:	50015000 	b	336(0x150) # 1c002f50 <CLOCK_Init+0x228>
1c002e04:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e08:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c002e0c:	00150184 	move	$r4,$r12
1c002e10:	57fe4fff 	bl	-436(0xffffe4c) # 1c002c5c <CLOCK_LSEConfig>
1c002e14:	0015008d 	move	$r13,$r4
1c002e18:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002e1c:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002e28 <CLOCK_Init+0x100>
1c002e20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e24:	50012c00 	b	300(0x12c) # 1c002f50 <CLOCK_Init+0x228>
1c002e28:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e2c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002e30:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002e34:	5800fdac 	beq	$r13,$r12,252(0xfc) # 1c002f30 <CLOCK_Init+0x208>
1c002e38:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e3c:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c002e40:	4000a180 	beqz	$r12,160(0xa0) # 1c002ee0 <CLOCK_Init+0x1b8>
1c002e44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e48:	2880018e 	ld.w	$r14,$r12,0
1c002e4c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e50:	15efffed 	lu12i.w	$r13,-32769(0xf7fff)
1c002e54:	03bffdad 	ori	$r13,$r13,0xfff
1c002e58:	0014b5cd 	and	$r13,$r14,$r13
1c002e5c:	2980018d 	st.w	$r13,$r12,0
1c002e60:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e64:	2880018e 	ld.w	$r14,$r12,0
1c002e68:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e6c:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c002e70:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e74:	001535cd 	or	$r13,$r14,$r13
1c002e78:	2980018d 	st.w	$r13,$r12,0
1c002e7c:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002e80:	0386c18c 	ori	$r12,$r12,0x1b0
1c002e84:	2880018c 	ld.w	$r12,$r12,0
1c002e88:	40004180 	beqz	$r12,64(0x40) # 1c002ec8 <CLOCK_Init+0x1a0>
1c002e8c:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002e90:	0386c18c 	ori	$r12,$r12,0x1b0
1c002e94:	2880018c 	ld.w	$r12,$r12,0
1c002e98:	0040898e 	slli.w	$r14,$r12,0x2
1c002e9c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002ea0:	002031cd 	div.w	$r13,$r14,$r12
1c002ea4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002eac <CLOCK_Init+0x184>
1c002ea8:	002a0007 	break	0x7
1c002eac:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c002eb0:	001c31ac 	mul.w	$r12,$r13,$r12
1c002eb4:	0015018d 	move	$r13,$r12
1c002eb8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002ebc:	0285918c 	addi.w	$r12,$r12,356(0x164)
1c002ec0:	2980018d 	st.w	$r13,$r12,0
1c002ec4:	50008000 	b	128(0x80) # 1c002f44 <CLOCK_Init+0x21c>
1c002ec8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002ecc:	0285518c 	addi.w	$r12,$r12,340(0x154)
1c002ed0:	1401458d 	lu12i.w	$r13,2604(0xa2c)
1c002ed4:	038fe1ad 	ori	$r13,$r13,0x3f8
1c002ed8:	2980018d 	st.w	$r13,$r12,0
1c002edc:	50006800 	b	104(0x68) # 1c002f44 <CLOCK_Init+0x21c>
1c002ee0:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002ee4:	0386c18c 	ori	$r12,$r12,0x1b0
1c002ee8:	2880018c 	ld.w	$r12,$r12,0
1c002eec:	40002d80 	beqz	$r12,44(0x2c) # 1c002f18 <CLOCK_Init+0x1f0>
1c002ef0:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002ef4:	0386c18c 	ori	$r12,$r12,0x1b0
1c002ef8:	2880018d 	ld.w	$r13,$r12,0
1c002efc:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c002f00:	001c31ac 	mul.w	$r12,$r13,$r12
1c002f04:	0015018d 	move	$r13,$r12
1c002f08:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002f0c:	0284518c 	addi.w	$r12,$r12,276(0x114)
1c002f10:	2980018d 	st.w	$r13,$r12,0
1c002f14:	50003000 	b	48(0x30) # 1c002f44 <CLOCK_Init+0x21c>
1c002f18:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002f1c:	0284118c 	addi.w	$r12,$r12,260(0x104)
1c002f20:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c002f24:	038801ad 	ori	$r13,$r13,0x200
1c002f28:	2980018d 	st.w	$r13,$r12,0
1c002f2c:	50001800 	b	24(0x18) # 1c002f44 <CLOCK_Init+0x21c>
1c002f30:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002f34:	0283b18c 	addi.w	$r12,$r12,236(0xec)
1c002f38:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c002f3c:	038801ad 	ori	$r13,$r13,0x200
1c002f40:	2980018d 	st.w	$r13,$r12,0
1c002f44:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002f48:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002f4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f50:	00150184 	move	$r4,$r12
1c002f54:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002f58:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002f5c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002f60:	4c000020 	jirl	$r0,$r1,0

1c002f64 <SystemClockInit>:
SystemClockInit():
1c002f64:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002f68:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002f6c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002f70:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002f74:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c002f78:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c002f7c:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c002f80:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c002f84:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002f88:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002f8c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002f90:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c002f94:	00150184 	move	$r4,$r12
1c002f98:	57fd2fff 	bl	-724(0xffffd2c) # 1c002cc4 <CLOCK_StructInit>
1c002f9c:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c002fa0:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c002fa4:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002fa8:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c002fac:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c002fb0:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c002fb4:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c002fb8:	0284000c 	addi.w	$r12,$r0,256(0x100)
1c002fbc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002fc0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002fc4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002fc8:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c002fcc:	00150184 	move	$r4,$r12
1c002fd0:	57fd5bff 	bl	-680(0xffffd58) # 1c002d28 <CLOCK_Init>
1c002fd4:	0015008d 	move	$r13,$r4
1c002fd8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002fdc:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002fe8 <SystemClockInit+0x84>
1c002fe0:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002fe4:	50000800 	b	8(0x8) # 1c002fec <SystemClockInit+0x88>
1c002fe8:	0015000c 	move	$r12,$r0
1c002fec:	00150184 	move	$r4,$r12
1c002ff0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002ff4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002ff8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002ffc:	4c000020 	jirl	$r0,$r1,0

1c003000 <DisableInt>:
DisableInt():
1c003000:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003004:	29803076 	st.w	$r22,$r3,12(0xc)
1c003008:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00300c:	0380100c 	ori	$r12,$r0,0x4
1c003010:	04000180 	csrxchg	$r0,$r12,0x0
1c003014:	03400000 	andi	$r0,$r0,0x0
1c003018:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00301c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003020:	4c000020 	jirl	$r0,$r1,0

1c003024 <EnableInt>:
EnableInt():
1c003024:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003028:	29803076 	st.w	$r22,$r3,12(0xc)
1c00302c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003030:	0380100c 	ori	$r12,$r0,0x4
1c003034:	0400018c 	csrxchg	$r12,$r12,0x0
1c003038:	03400000 	andi	$r0,$r0,0x0
1c00303c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003040:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003044:	4c000020 	jirl	$r0,$r1,0

1c003048 <Set_Timer_stop>:
Set_Timer_stop():
1c003048:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00304c:	29803076 	st.w	$r22,$r3,12(0xc)
1c003050:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003054:	04010420 	csrwr	$r0,0x41
1c003058:	03400000 	andi	$r0,$r0,0x0
1c00305c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003060:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003064:	4c000020 	jirl	$r0,$r1,0

1c003068 <Set_Timer_clear>:
Set_Timer_clear():
1c003068:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00306c:	29803076 	st.w	$r22,$r3,12(0xc)
1c003070:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003074:	0380040c 	ori	$r12,$r0,0x1
1c003078:	0401102c 	csrwr	$r12,0x44
1c00307c:	03400000 	andi	$r0,$r0,0x0
1c003080:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003084:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003088:	4c000020 	jirl	$r0,$r1,0

1c00308c <Wake_Set>:
Wake_Set():
1c00308c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003090:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003094:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003098:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00309c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0030a0:	40006980 	beqz	$r12,104(0x68) # 1c003108 <Wake_Set+0x7c>
1c0030a4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0030a8:	0040a18c 	slli.w	$r12,$r12,0x8
1c0030ac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0030b0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0030b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0030b8:	0380218c 	ori	$r12,$r12,0x8
1c0030bc:	2880018d 	ld.w	$r13,$r12,0
1c0030c0:	14001fec 	lu12i.w	$r12,255(0xff)
1c0030c4:	03bffd8c 	ori	$r12,$r12,0xfff
1c0030c8:	0014b1ac 	and	$r12,$r13,$r12
1c0030cc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0030d0:	001031ac 	add.w	$r12,$r13,$r12
1c0030d4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0030d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0030dc:	0380318c 	ori	$r12,$r12,0xc
1c0030e0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0030e4:	2980018d 	st.w	$r13,$r12,0
1c0030e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0030ec:	0380118c 	ori	$r12,$r12,0x4
1c0030f0:	2880018d 	ld.w	$r13,$r12,0
1c0030f4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0030f8:	0380118c 	ori	$r12,$r12,0x4
1c0030fc:	038601ad 	ori	$r13,$r13,0x180
1c003100:	2980018d 	st.w	$r13,$r12,0
1c003104:	50002400 	b	36(0x24) # 1c003128 <Wake_Set+0x9c>
1c003108:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00310c:	0380118c 	ori	$r12,$r12,0x4
1c003110:	2880018e 	ld.w	$r14,$r12,0
1c003114:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003118:	0380118c 	ori	$r12,$r12,0x4
1c00311c:	02b9fc0d 	addi.w	$r13,$r0,-385(0xe7f)
1c003120:	0014b5cd 	and	$r13,$r14,$r13
1c003124:	2980018d 	st.w	$r13,$r12,0
1c003128:	03400000 	andi	$r0,$r0,0x0
1c00312c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003130:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003134:	4c000020 	jirl	$r0,$r1,0

1c003138 <PMU_GetRstRrc>:
PMU_GetRstRrc():
1c003138:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00313c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003140:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003144:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003148:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00314c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003150:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003154:	0014b1ac 	and	$r12,$r13,$r12
1c003158:	44000d80 	bnez	$r12,12(0xc) # 1c003164 <PMU_GetRstRrc+0x2c>
1c00315c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003160:	50003000 	b	48(0x30) # 1c003190 <PMU_GetRstRrc+0x58>
1c003164:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003168:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00316c:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003170:	0014b1ad 	and	$r13,$r13,$r12
1c003174:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003178:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c003188 <PMU_GetRstRrc+0x50>
1c00317c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c003180:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003184:	50000c00 	b	12(0xc) # 1c003190 <PMU_GetRstRrc+0x58>
1c003188:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00318c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003190:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003194:	00150184 	move	$r4,$r12
1c003198:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00319c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0031a0:	4c000020 	jirl	$r0,$r1,0

1c0031a4 <PMU_GetBootSpiStatus>:
PMU_GetBootSpiStatus():
1c0031a4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0031a8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0031ac:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0031b0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0031b4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0031b8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0031bc:	0380198c 	ori	$r12,$r12,0x6
1c0031c0:	2a00018c 	ld.bu	$r12,$r12,0
1c0031c4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0031c8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0031cc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0031d0:	0340058c 	andi	$r12,$r12,0x1
1c0031d4:	40000d80 	beqz	$r12,12(0xc) # 1c0031e0 <PMU_GetBootSpiStatus+0x3c>
1c0031d8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0031dc:	50000800 	b	8(0x8) # 1c0031e4 <PMU_GetBootSpiStatus+0x40>
1c0031e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0031e4:	00150184 	move	$r4,$r12
1c0031e8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0031ec:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0031f0:	4c000020 	jirl	$r0,$r1,0

1c0031f4 <ls1x_logo>:
ls1x_logo():
1c0031f4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0031f8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0031fc:	29802076 	st.w	$r22,$r3,8(0x8)
1c003200:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003204:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003208:	0281c084 	addi.w	$r4,$r4,112(0x70)
1c00320c:	57ea97ff 	bl	-5484(0xfffea94) # 1c001ca0 <myprintf>
1c003210:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003214:	0281a084 	addi.w	$r4,$r4,104(0x68)
1c003218:	57ea8bff 	bl	-5496(0xfffea88) # 1c001ca0 <myprintf>
1c00321c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003220:	02830084 	addi.w	$r4,$r4,192(0xc0)
1c003224:	57ea7fff 	bl	-5508(0xfffea7c) # 1c001ca0 <myprintf>
1c003228:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00322c:	02846084 	addi.w	$r4,$r4,280(0x118)
1c003230:	57ea73ff 	bl	-5520(0xfffea70) # 1c001ca0 <myprintf>
1c003234:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003238:	0285c084 	addi.w	$r4,$r4,368(0x170)
1c00323c:	57ea67ff 	bl	-5532(0xfffea64) # 1c001ca0 <myprintf>
1c003240:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003244:	02872084 	addi.w	$r4,$r4,456(0x1c8)
1c003248:	57ea5bff 	bl	-5544(0xfffea58) # 1c001ca0 <myprintf>
1c00324c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003250:	02888084 	addi.w	$r4,$r4,544(0x220)
1c003254:	57ea4fff 	bl	-5556(0xfffea4c) # 1c001ca0 <myprintf>
1c003258:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00325c:	0289e084 	addi.w	$r4,$r4,632(0x278)
1c003260:	57ea43ff 	bl	-5568(0xfffea40) # 1c001ca0 <myprintf>
1c003264:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003268:	028b4084 	addi.w	$r4,$r4,720(0x2d0)
1c00326c:	57ea37ff 	bl	-5580(0xfffea34) # 1c001ca0 <myprintf>
1c003270:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003274:	028ca084 	addi.w	$r4,$r4,808(0x328)
1c003278:	57ea2bff 	bl	-5592(0xfffea28) # 1c001ca0 <myprintf>
1c00327c:	03400000 	andi	$r0,$r0,0x0
1c003280:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003284:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003288:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00328c:	4c000020 	jirl	$r0,$r1,0

1c003290 <get_count>:
get_count():
1c003290:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003294:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003298:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00329c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0032a0:	0000600c 	rdtimel.w	$r12,$r0
1c0032a4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0032a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0032ac:	00150184 	move	$r4,$r12
1c0032b0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0032b4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0032b8:	4c000020 	jirl	$r0,$r1,0

1c0032bc <open_count>:
open_count():
1c0032bc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0032c0:	29803076 	st.w	$r22,$r3,12(0xc)
1c0032c4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0032c8:	0380400c 	ori	$r12,$r0,0x10
1c0032cc:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c0032d0:	03400000 	andi	$r0,$r0,0x0
1c0032d4:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0032d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0032dc:	4c000020 	jirl	$r0,$r1,0

1c0032e0 <start_count>:
start_count():
1c0032e0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0032e4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0032e8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0032ec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0032f0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0032f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0032f8:	29800180 	st.w	$r0,$r12,0
1c0032fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003300:	29801180 	st.w	$r0,$r12,4(0x4)
1c003304:	57ff8fff 	bl	-116(0xfffff8c) # 1c003290 <get_count>
1c003308:	0015008d 	move	$r13,$r4
1c00330c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003310:	2980018d 	st.w	$r13,$r12,0
1c003314:	03400000 	andi	$r0,$r0,0x0
1c003318:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00331c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003320:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003324:	4c000020 	jirl	$r0,$r1,0

1c003328 <stop_count>:
stop_count():
1c003328:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00332c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003330:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003334:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003338:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00333c:	57ff57ff 	bl	-172(0xfffff54) # 1c003290 <get_count>
1c003340:	0015008d 	move	$r13,$r4
1c003344:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003348:	2980118d 	st.w	$r13,$r12,4(0x4)
1c00334c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003350:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003354:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003358:	2880018c 	ld.w	$r12,$r12,0
1c00335c:	68001dac 	bltu	$r13,$r12,28(0x1c) # 1c003378 <stop_count+0x50>
1c003360:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003364:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003368:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00336c:	2880018c 	ld.w	$r12,$r12,0
1c003370:	001131ac 	sub.w	$r12,$r13,$r12
1c003374:	50002800 	b	40(0x28) # 1c00339c <stop_count+0x74>
1c003378:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c00337c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003380:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003384:	2880018c 	ld.w	$r12,$r12,0
1c003388:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00338c:	001131ad 	sub.w	$r13,$r13,$r12
1c003390:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003394:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c003398:	001031ac 	add.w	$r12,$r13,$r12
1c00339c:	00150184 	move	$r4,$r12
1c0033a0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0033a4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0033a8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0033ac:	4c000020 	jirl	$r0,$r1,0

1c0033b0 <delay_cycle>:
delay_cycle():
1c0033b0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0033b4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0033b8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0033bc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0033c0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0033c4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0033c8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0033cc:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0033d0:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c0033d4:	00150184 	move	$r4,$r12
1c0033d8:	57ff0bff 	bl	-248(0xfffff08) # 1c0032e0 <start_count>
1c0033dc:	50001400 	b	20(0x14) # 1c0033f0 <delay_cycle+0x40>
1c0033e0:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c0033e4:	00150184 	move	$r4,$r12
1c0033e8:	57ff43ff 	bl	-192(0xfffff40) # 1c003328 <stop_count>
1c0033ec:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0033f0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0033f4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0033f8:	6bffe9ac 	bltu	$r13,$r12,-24(0x3ffe8) # 1c0033e0 <delay_cycle+0x30>
1c0033fc:	03400000 	andi	$r0,$r0,0x0
1c003400:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003404:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003408:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00340c:	4c000020 	jirl	$r0,$r1,0

1c003410 <delay_ms>:
delay_ms():
1c003410:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003414:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003418:	29806076 	st.w	$r22,$r3,24(0x18)
1c00341c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003420:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003424:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003428:	1400002c 	lu12i.w	$r12,1(0x1)
1c00342c:	03bd018c 	ori	$r12,$r12,0xf40
1c003430:	001c31ac 	mul.w	$r12,$r13,$r12
1c003434:	00150184 	move	$r4,$r12
1c003438:	57ff7bff 	bl	-136(0xfffff78) # 1c0033b0 <delay_cycle>
1c00343c:	03400000 	andi	$r0,$r0,0x0
1c003440:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003444:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003448:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00344c:	4c000020 	jirl	$r0,$r1,0

1c003450 <memset>:
memset():
1c003450:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003454:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003458:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00345c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003460:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003464:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c003468:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00346c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003470:	50001c00 	b	28(0x1c) # 1c00348c <memset+0x3c>
1c003474:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003478:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c00347c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003480:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c003484:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003488:	2900018d 	st.b	$r13,$r12,0
1c00348c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c003490:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003494:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c003498:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c003474 <memset+0x24>
1c00349c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034a0:	00150184 	move	$r4,$r12
1c0034a4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0034a8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0034ac:	4c000020 	jirl	$r0,$r1,0

1c0034b0 <pstrstr>:
pstrstr():
1c0034b0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0034b4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0034b8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0034bc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0034c0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0034c4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034c8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0034cc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0034d0:	2800018c 	ld.b	$r12,$r12,0
1c0034d4:	44008580 	bnez	$r12,132(0x84) # 1c003558 <pstrstr+0xa8>
1c0034d8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034dc:	50008c00 	b	140(0x8c) # 1c003568 <pstrstr+0xb8>
1c0034e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034e4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0034e8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0034ec:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0034f0:	50001c00 	b	28(0x1c) # 1c00350c <pstrstr+0x5c>
1c0034f4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0034f8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0034fc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003500:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003504:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003508:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00350c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003510:	2800018c 	ld.b	$r12,$r12,0
1c003514:	40002580 	beqz	$r12,36(0x24) # 1c003538 <pstrstr+0x88>
1c003518:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00351c:	2800018c 	ld.b	$r12,$r12,0
1c003520:	40001980 	beqz	$r12,24(0x18) # 1c003538 <pstrstr+0x88>
1c003524:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003528:	2800018d 	ld.b	$r13,$r12,0
1c00352c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003530:	2800018c 	ld.b	$r12,$r12,0
1c003534:	5bffc1ac 	beq	$r13,$r12,-64(0x3ffc0) # 1c0034f4 <pstrstr+0x44>
1c003538:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00353c:	2800018c 	ld.b	$r12,$r12,0
1c003540:	44000d80 	bnez	$r12,12(0xc) # 1c00354c <pstrstr+0x9c>
1c003544:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003548:	50002000 	b	32(0x20) # 1c003568 <pstrstr+0xb8>
1c00354c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003550:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003554:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003558:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00355c:	2800018c 	ld.b	$r12,$r12,0
1c003560:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1c0034e0 <pstrstr+0x30>
1c003564:	0015000c 	move	$r12,$r0
1c003568:	00150184 	move	$r4,$r12
1c00356c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003570:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003574:	4c000020 	jirl	$r0,$r1,0

1c003578 <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c003578:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00357c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003580:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003584:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003588:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c00358c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003590:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c003594:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003598:	001531ad 	or	$r13,$r13,$r12
1c00359c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0035a0:	2980318d 	st.w	$r13,$r12,12(0xc)
1c0035a4:	03400000 	andi	$r0,$r0,0x0
1c0035a8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0035ac:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0035b0:	4c000020 	jirl	$r0,$r1,0

1c0035b4 <WDG_getOddValue>:
WDG_getOddValue():
1c0035b4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0035b8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0035bc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0035c0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0035c4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0035c8:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0035cc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0035d0:	50003800 	b	56(0x38) # 1c003608 <WDG_getOddValue+0x54>
1c0035d4:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0035d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0035dc:	001731ac 	sll.w	$r12,$r13,$r12
1c0035e0:	0015018d 	move	$r13,$r12
1c0035e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0035e8:	0014b1ac 	and	$r12,$r13,$r12
1c0035ec:	40001180 	beqz	$r12,16(0x10) # 1c0035fc <WDG_getOddValue+0x48>
1c0035f0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0035f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0035f8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0035fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003600:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003604:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003608:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00360c:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c003610:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c0035d4 <WDG_getOddValue+0x20>
1c003614:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003618:	0340058c 	andi	$r12,$r12,0x1
1c00361c:	44000d80 	bnez	$r12,12(0xc) # 1c003628 <WDG_getOddValue+0x74>
1c003620:	1400010c 	lu12i.w	$r12,8(0x8)
1c003624:	50000800 	b	8(0x8) # 1c00362c <WDG_getOddValue+0x78>
1c003628:	0015000c 	move	$r12,$r0
1c00362c:	00150184 	move	$r4,$r12
1c003630:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003634:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003638:	4c000020 	jirl	$r0,$r1,0

1c00363c <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c00363c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003640:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003644:	29806076 	st.w	$r22,$r3,24(0x18)
1c003648:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00364c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003650:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003654:	140000ec 	lu12i.w	$r12,7(0x7)
1c003658:	03bffd8c 	ori	$r12,$r12,0xfff
1c00365c:	0014b1ac 	and	$r12,$r13,$r12
1c003660:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003664:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c003668:	57ff4fff 	bl	-180(0xfffff4c) # 1c0035b4 <WDG_getOddValue>
1c00366c:	0015008c 	move	$r12,$r4
1c003670:	0015018d 	move	$r13,$r12
1c003674:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003678:	0015358c 	or	$r12,$r12,$r13
1c00367c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003680:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003684:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003688:	0396a9ad 	ori	$r13,$r13,0x5aa
1c00368c:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c003690:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003694:	0014300c 	nor	$r12,$r0,$r12
1c003698:	0040c18c 	slli.w	$r12,$r12,0x10
1c00369c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0036a0:	001531ac 	or	$r12,$r13,$r12
1c0036a4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0036a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0036ac:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0036b0:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c0036b4:	03400000 	andi	$r0,$r0,0x0
1c0036b8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0036bc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0036c0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0036c4:	4c000020 	jirl	$r0,$r1,0

1c0036c8 <WDG_DogFeed>:
WDG_DogFeed():
1c0036c8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0036cc:	29803076 	st.w	$r22,$r3,12(0xc)
1c0036d0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0036d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0036d8:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c0036dc:	0396a9ad 	ori	$r13,$r13,0x5aa
1c0036e0:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c0036e4:	03400000 	andi	$r0,$r0,0x0
1c0036e8:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0036ec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0036f0:	4c000020 	jirl	$r0,$r1,0

1c0036f4 <WdgInit>:
WdgInit():
1c0036f4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0036f8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0036fc:	29802076 	st.w	$r22,$r3,8(0x8)
1c003700:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003704:	150000ec 	lu12i.w	$r12,-524281(0x80007)
1c003708:	03bffd84 	ori	$r4,$r12,0xfff
1c00370c:	57ff33ff 	bl	-208(0xfffff30) # 1c00363c <WDG_SetWatchDog>
1c003710:	03400000 	andi	$r0,$r0,0x0
1c003714:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003718:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00371c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003720:	4c000020 	jirl	$r0,$r1,0

1c003724 <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c003724:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003728:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00372c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003730:	0015008c 	move	$r12,$r4
1c003734:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003738:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c00373c:	0040898c 	slli.w	$r12,$r12,0x2
1c003740:	0015018d 	move	$r13,$r12
1c003744:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003748:	0381018c 	ori	$r12,$r12,0x40
1c00374c:	001031ac 	add.w	$r12,$r13,$r12
1c003750:	2880018c 	ld.w	$r12,$r12,0
1c003754:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003758:	037ffd8c 	andi	$r12,$r12,0xfff
1c00375c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003760:	00150184 	move	$r4,$r12
1c003764:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003768:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00376c:	4c000020 	jirl	$r0,$r1,0

1c003770 <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c003770:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003774:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003778:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00377c:	0015008c 	move	$r12,$r4
1c003780:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003784:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003788:	0040898c 	slli.w	$r12,$r12,0x2
1c00378c:	0015018d 	move	$r13,$r12
1c003790:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003794:	0382018c 	ori	$r12,$r12,0x80
1c003798:	001031ac 	add.w	$r12,$r13,$r12
1c00379c:	2880018c 	ld.w	$r12,$r12,0
1c0037a0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0037a4:	037ffd8c 	andi	$r12,$r12,0xfff
1c0037a8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0037ac:	00150184 	move	$r4,$r12
1c0037b0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0037b4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0037b8:	4c000020 	jirl	$r0,$r1,0

1c0037bc <Printf_KeyChannel>:
Printf_KeyChannel():
1c0037bc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0037c0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0037c4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0037c8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0037cc:	0015008c 	move	$r12,$r4
1c0037d0:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0037d4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0037d8:	50003400 	b	52(0x34) # 1c00380c <Printf_KeyChannel+0x50>
1c0037dc:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c0037e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037e4:	001831ac 	sra.w	$r12,$r13,$r12
1c0037e8:	0340058c 	andi	$r12,$r12,0x1
1c0037ec:	40001580 	beqz	$r12,20(0x14) # 1c003800 <Printf_KeyChannel+0x44>
1c0037f0:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c0037f4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0037f8:	02b82084 	addi.w	$r4,$r4,-504(0xe08)
1c0037fc:	57e4a7ff 	bl	-7004(0xfffe4a4) # 1c001ca0 <myprintf>
1c003800:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003804:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003808:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00380c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003810:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003814:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c0037dc <Printf_KeyChannel+0x20>
1c003818:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00381c:	02b7a084 	addi.w	$r4,$r4,-536(0xde8)
1c003820:	57e483ff 	bl	-7040(0xfffe480) # 1c001ca0 <myprintf>
1c003824:	03400000 	andi	$r0,$r0,0x0
1c003828:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00382c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003830:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003834:	4c000020 	jirl	$r0,$r1,0

1c003838 <Printf_KeyType>:
Printf_KeyType():
1c003838:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00383c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003840:	29806076 	st.w	$r22,$r3,24(0x18)
1c003844:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003848:	0015008c 	move	$r12,$r4
1c00384c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003850:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003854:	0340058c 	andi	$r12,$r12,0x1
1c003858:	40001180 	beqz	$r12,16(0x10) # 1c003868 <Printf_KeyType+0x30>
1c00385c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003860:	02b6a084 	addi.w	$r4,$r4,-600(0xda8)
1c003864:	57e43fff 	bl	-7108(0xfffe43c) # 1c001ca0 <myprintf>
1c003868:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00386c:	0340098c 	andi	$r12,$r12,0x2
1c003870:	40001180 	beqz	$r12,16(0x10) # 1c003880 <Printf_KeyType+0x48>
1c003874:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003878:	02b66084 	addi.w	$r4,$r4,-616(0xd98)
1c00387c:	57e427ff 	bl	-7132(0xfffe424) # 1c001ca0 <myprintf>
1c003880:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003884:	0340118c 	andi	$r12,$r12,0x4
1c003888:	40001180 	beqz	$r12,16(0x10) # 1c003898 <Printf_KeyType+0x60>
1c00388c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003890:	02b62084 	addi.w	$r4,$r4,-632(0xd88)
1c003894:	57e40fff 	bl	-7156(0xfffe40c) # 1c001ca0 <myprintf>
1c003898:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00389c:	0340218c 	andi	$r12,$r12,0x8
1c0038a0:	40001180 	beqz	$r12,16(0x10) # 1c0038b0 <Printf_KeyType+0x78>
1c0038a4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0038a8:	02b5f084 	addi.w	$r4,$r4,-644(0xd7c)
1c0038ac:	57e3f7ff 	bl	-7180(0xfffe3f4) # 1c001ca0 <myprintf>
1c0038b0:	03400000 	andi	$r0,$r0,0x0
1c0038b4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0038b8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0038bc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0038c0:	4c000020 	jirl	$r0,$r1,0

1c0038c4 <Printf_KeyVal>:
Printf_KeyVal():
1c0038c4:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c0038c8:	2982b061 	st.w	$r1,$r3,172(0xac)
1c0038cc:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c0038d0:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c0038d4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0038d8:	5000d800 	b	216(0xd8) # 1c0039b0 <Printf_KeyVal+0xec>
1c0038dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038e0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0038e4:	00150184 	move	$r4,$r12
1c0038e8:	57fe8bff 	bl	-376(0xffffe88) # 1c003770 <TOUCH_GetCountValue>
1c0038ec:	0015008c 	move	$r12,$r4
1c0038f0:	0015018d 	move	$r13,$r12
1c0038f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038f8:	0040898c 	slli.w	$r12,$r12,0x2
1c0038fc:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003900:	001031cc 	add.w	$r12,$r14,$r12
1c003904:	29bdb18d 	st.w	$r13,$r12,-148(0xf6c)
1c003908:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00390c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003910:	00150184 	move	$r4,$r12
1c003914:	57fe13ff 	bl	-496(0xffffe10) # 1c003724 <TOUCH_GetBaseVal>
1c003918:	0015008c 	move	$r12,$r4
1c00391c:	0015018d 	move	$r13,$r12
1c003920:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003924:	0040898c 	slli.w	$r12,$r12,0x2
1c003928:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c00392c:	001031cc 	add.w	$r12,$r14,$r12
1c003930:	29be718d 	st.w	$r13,$r12,-100(0xf9c)
1c003934:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003938:	0040898c 	slli.w	$r12,$r12,0x2
1c00393c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003940:	001031ac 	add.w	$r12,$r13,$r12
1c003944:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003948:	40004980 	beqz	$r12,72(0x48) # 1c003990 <Printf_KeyVal+0xcc>
1c00394c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003950:	0040898c 	slli.w	$r12,$r12,0x2
1c003954:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003958:	001031ac 	add.w	$r12,$r13,$r12
1c00395c:	28be718d 	ld.w	$r13,$r12,-100(0xf9c)
1c003960:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003964:	0040898c 	slli.w	$r12,$r12,0x2
1c003968:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c00396c:	001031cc 	add.w	$r12,$r14,$r12
1c003970:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003974:	001131ad 	sub.w	$r13,$r13,$r12
1c003978:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00397c:	0040898c 	slli.w	$r12,$r12,0x2
1c003980:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003984:	001031cc 	add.w	$r12,$r14,$r12
1c003988:	29bf318d 	st.w	$r13,$r12,-52(0xfcc)
1c00398c:	50001800 	b	24(0x18) # 1c0039a4 <Printf_KeyVal+0xe0>
1c003990:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003994:	0040898c 	slli.w	$r12,$r12,0x2
1c003998:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c00399c:	001031ac 	add.w	$r12,$r13,$r12
1c0039a0:	29bf3180 	st.w	$r0,$r12,-52(0xfcc)
1c0039a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039a8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0039ac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0039b0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0039b4:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0039b8:	67ff258d 	bge	$r12,$r13,-220(0x3ff24) # 1c0038dc <Printf_KeyVal+0x18>
1c0039bc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0039c0:	02b1c084 	addi.w	$r4,$r4,-912(0xc70)
1c0039c4:	57e2dfff 	bl	-7460(0xfffe2dc) # 1c001ca0 <myprintf>
1c0039c8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0039cc:	02b23084 	addi.w	$r4,$r4,-884(0xc8c)
1c0039d0:	57e2d3ff 	bl	-7472(0xfffe2d0) # 1c001ca0 <myprintf>
1c0039d4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0039d8:	50003400 	b	52(0x34) # 1c003a0c <Printf_KeyVal+0x148>
1c0039dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039e0:	0040898c 	slli.w	$r12,$r12,0x2
1c0039e4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0039e8:	001031ac 	add.w	$r12,$r13,$r12
1c0039ec:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c0039f0:	00150185 	move	$r5,$r12
1c0039f4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0039f8:	02b1a084 	addi.w	$r4,$r4,-920(0xc68)
1c0039fc:	57e2a7ff 	bl	-7516(0xfffe2a4) # 1c001ca0 <myprintf>
1c003a00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a04:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003a08:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003a0c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003a10:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003a14:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c0039dc <Printf_KeyVal+0x118>
1c003a18:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003a1c:	02b13084 	addi.w	$r4,$r4,-948(0xc4c)
1c003a20:	57e283ff 	bl	-7552(0xfffe280) # 1c001ca0 <myprintf>
1c003a24:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003a28:	50003400 	b	52(0x34) # 1c003a5c <Printf_KeyVal+0x198>
1c003a2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a30:	0040898c 	slli.w	$r12,$r12,0x2
1c003a34:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003a38:	001031ac 	add.w	$r12,$r13,$r12
1c003a3c:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003a40:	00150185 	move	$r5,$r12
1c003a44:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003a48:	02b06084 	addi.w	$r4,$r4,-1000(0xc18)
1c003a4c:	57e257ff 	bl	-7596(0xfffe254) # 1c001ca0 <myprintf>
1c003a50:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a54:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003a58:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003a5c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003a60:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003a64:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003a2c <Printf_KeyVal+0x168>
1c003a68:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003a6c:	02b02084 	addi.w	$r4,$r4,-1016(0xc08)
1c003a70:	57e233ff 	bl	-7632(0xfffe230) # 1c001ca0 <myprintf>
1c003a74:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003a78:	50007400 	b	116(0x74) # 1c003aec <Printf_KeyVal+0x228>
1c003a7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a80:	0040898c 	slli.w	$r12,$r12,0x2
1c003a84:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003a88:	001031ac 	add.w	$r12,$r13,$r12
1c003a8c:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003a90:	64002d80 	bge	$r12,$r0,44(0x2c) # 1c003abc <Printf_KeyVal+0x1f8>
1c003a94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a98:	0040898c 	slli.w	$r12,$r12,0x2
1c003a9c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003aa0:	001031ac 	add.w	$r12,$r13,$r12
1c003aa4:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003aa8:	00150185 	move	$r5,$r12
1c003aac:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003ab0:	02af4084 	addi.w	$r4,$r4,-1072(0xbd0)
1c003ab4:	57e1efff 	bl	-7700(0xfffe1ec) # 1c001ca0 <myprintf>
1c003ab8:	50002800 	b	40(0x28) # 1c003ae0 <Printf_KeyVal+0x21c>
1c003abc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ac0:	0040898c 	slli.w	$r12,$r12,0x2
1c003ac4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003ac8:	001031ac 	add.w	$r12,$r13,$r12
1c003acc:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003ad0:	00150185 	move	$r5,$r12
1c003ad4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003ad8:	02aec084 	addi.w	$r4,$r4,-1104(0xbb0)
1c003adc:	57e1c7ff 	bl	-7740(0xfffe1c4) # 1c001ca0 <myprintf>
1c003ae0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ae4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003ae8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003aec:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003af0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003af4:	67ff898d 	bge	$r12,$r13,-120(0x3ff88) # 1c003a7c <Printf_KeyVal+0x1b8>
1c003af8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003afc:	02ac2084 	addi.w	$r4,$r4,-1272(0xb08)
1c003b00:	57e1a3ff 	bl	-7776(0xfffe1a0) # 1c001ca0 <myprintf>
1c003b04:	03400000 	andi	$r0,$r0,0x0
1c003b08:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c003b0c:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c003b10:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c003b14:	4c000020 	jirl	$r0,$r1,0

1c003b18 <TIM_GetITStatus>:
TIM_GetITStatus():
1c003b18:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003b1c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003b20:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003b24:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003b28:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003b2c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003b30:	2880018d 	ld.w	$r13,$r12,0
1c003b34:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003b38:	0014b1ac 	and	$r12,$r13,$r12
1c003b3c:	40001180 	beqz	$r12,16(0x10) # 1c003b4c <TIM_GetITStatus+0x34>
1c003b40:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003b44:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003b48:	50000800 	b	8(0x8) # 1c003b50 <TIM_GetITStatus+0x38>
1c003b4c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003b50:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b54:	00150184 	move	$r4,$r12
1c003b58:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003b5c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003b60:	4c000020 	jirl	$r0,$r1,0

1c003b64 <TIM_ClearIT>:
TIM_ClearIT():
1c003b64:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003b68:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003b6c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003b70:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003b74:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003b78:	2880018e 	ld.w	$r14,$r12,0
1c003b7c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003b80:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003b84:	001535cd 	or	$r13,$r14,$r13
1c003b88:	2980018d 	st.w	$r13,$r12,0
1c003b8c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003b90:	03800d8c 	ori	$r12,$r12,0x3
1c003b94:	2a00018c 	ld.bu	$r12,$r12,0
1c003b98:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003b9c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003ba0:	03800d8c 	ori	$r12,$r12,0x3
1c003ba4:	038005ad 	ori	$r13,$r13,0x1
1c003ba8:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003bac:	2900018d 	st.b	$r13,$r12,0
1c003bb0:	03400000 	andi	$r0,$r0,0x0
1c003bb4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003bb8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003bbc:	4c000020 	jirl	$r0,$r1,0

1c003bc0 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c003bc0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003bc4:	29803061 	st.w	$r1,$r3,12(0xc)
1c003bc8:	29802076 	st.w	$r22,$r3,8(0x8)
1c003bcc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003bd0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003bd4:	02b0c0c6 	addi.w	$r6,$r6,-976(0xc30)
1c003bd8:	02804c05 	addi.w	$r5,$r0,19(0x13)
1c003bdc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003be0:	02aac084 	addi.w	$r4,$r4,-1360(0xab0)
1c003be4:	57e0bfff 	bl	-8004(0xfffe0bc) # 1c001ca0 <myprintf>
1c003be8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003bec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003bf0:	03808184 	ori	$r4,$r12,0x20
1c003bf4:	57f987ff 	bl	-1660(0xffff984) # 1c003578 <EXTI_ClearITPendingBit>
1c003bf8:	03400000 	andi	$r0,$r0,0x0
1c003bfc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003c00:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003c04:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003c08:	4c000020 	jirl	$r0,$r1,0

1c003c0c <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c003c0c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003c10:	29803061 	st.w	$r1,$r3,12(0xc)
1c003c14:	29802076 	st.w	$r22,$r3,8(0x8)
1c003c18:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003c1c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003c20:	02aff0c6 	addi.w	$r6,$r6,-1028(0xbfc)
1c003c24:	02806005 	addi.w	$r5,$r0,24(0x18)
1c003c28:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003c2c:	02a99084 	addi.w	$r4,$r4,-1436(0xa64)
1c003c30:	57e073ff 	bl	-8080(0xfffe070) # 1c001ca0 <myprintf>
1c003c34:	02800805 	addi.w	$r5,$r0,2(0x2)
1c003c38:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003c3c:	03808184 	ori	$r4,$r12,0x20
1c003c40:	57f93bff 	bl	-1736(0xffff938) # 1c003578 <EXTI_ClearITPendingBit>
1c003c44:	03400000 	andi	$r0,$r0,0x0
1c003c48:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003c4c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003c50:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003c54:	4c000020 	jirl	$r0,$r1,0

1c003c58 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c003c58:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003c5c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003c60:	29802076 	st.w	$r22,$r3,8(0x8)
1c003c64:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003c68:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003c6c:	02af20c6 	addi.w	$r6,$r6,-1080(0xbc8)
1c003c70:	02807405 	addi.w	$r5,$r0,29(0x1d)
1c003c74:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003c78:	02a86084 	addi.w	$r4,$r4,-1512(0xa18)
1c003c7c:	57e027ff 	bl	-8156(0xfffe024) # 1c001ca0 <myprintf>
1c003c80:	02801005 	addi.w	$r5,$r0,4(0x4)
1c003c84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003c88:	03808184 	ori	$r4,$r12,0x20
1c003c8c:	57f8efff 	bl	-1812(0xffff8ec) # 1c003578 <EXTI_ClearITPendingBit>
1c003c90:	03400000 	andi	$r0,$r0,0x0
1c003c94:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003c98:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003c9c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003ca0:	4c000020 	jirl	$r0,$r1,0

1c003ca4 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c003ca4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003ca8:	29803061 	st.w	$r1,$r3,12(0xc)
1c003cac:	29802076 	st.w	$r22,$r3,8(0x8)
1c003cb0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003cb4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003cb8:	02ae50c6 	addi.w	$r6,$r6,-1132(0xb94)
1c003cbc:	02808805 	addi.w	$r5,$r0,34(0x22)
1c003cc0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003cc4:	02a73084 	addi.w	$r4,$r4,-1588(0x9cc)
1c003cc8:	57dfdbff 	bl	-8232(0xfffdfd8) # 1c001ca0 <myprintf>
1c003ccc:	02802005 	addi.w	$r5,$r0,8(0x8)
1c003cd0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003cd4:	03808184 	ori	$r4,$r12,0x20
1c003cd8:	57f8a3ff 	bl	-1888(0xffff8a0) # 1c003578 <EXTI_ClearITPendingBit>
1c003cdc:	03400000 	andi	$r0,$r0,0x0
1c003ce0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003ce4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003ce8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003cec:	4c000020 	jirl	$r0,$r1,0

1c003cf0 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c003cf0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003cf4:	29803061 	st.w	$r1,$r3,12(0xc)
1c003cf8:	29802076 	st.w	$r22,$r3,8(0x8)
1c003cfc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003d00:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003d04:	02ad80c6 	addi.w	$r6,$r6,-1184(0xb60)
1c003d08:	02809c05 	addi.w	$r5,$r0,39(0x27)
1c003d0c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003d10:	02a60084 	addi.w	$r4,$r4,-1664(0x980)
1c003d14:	57df8fff 	bl	-8308(0xfffdf8c) # 1c001ca0 <myprintf>
1c003d18:	02804005 	addi.w	$r5,$r0,16(0x10)
1c003d1c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003d20:	03808184 	ori	$r4,$r12,0x20
1c003d24:	57f857ff 	bl	-1964(0xffff854) # 1c003578 <EXTI_ClearITPendingBit>
1c003d28:	03400000 	andi	$r0,$r0,0x0
1c003d2c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003d30:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003d34:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003d38:	4c000020 	jirl	$r0,$r1,0

1c003d3c <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c003d3c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003d40:	29803061 	st.w	$r1,$r3,12(0xc)
1c003d44:	29802076 	st.w	$r22,$r3,8(0x8)
1c003d48:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003d4c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003d50:	02acb0c6 	addi.w	$r6,$r6,-1236(0xb2c)
1c003d54:	0280b005 	addi.w	$r5,$r0,44(0x2c)
1c003d58:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003d5c:	02a4d084 	addi.w	$r4,$r4,-1740(0x934)
1c003d60:	57df43ff 	bl	-8384(0xfffdf40) # 1c001ca0 <myprintf>
1c003d64:	02808005 	addi.w	$r5,$r0,32(0x20)
1c003d68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003d6c:	03808184 	ori	$r4,$r12,0x20
1c003d70:	57f80bff 	bl	-2040(0xffff808) # 1c003578 <EXTI_ClearITPendingBit>
1c003d74:	03400000 	andi	$r0,$r0,0x0
1c003d78:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003d7c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003d80:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003d84:	4c000020 	jirl	$r0,$r1,0

1c003d88 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c003d88:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003d8c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003d90:	29802076 	st.w	$r22,$r3,8(0x8)
1c003d94:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003d98:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003d9c:	02abe0c6 	addi.w	$r6,$r6,-1288(0xaf8)
1c003da0:	0280c405 	addi.w	$r5,$r0,49(0x31)
1c003da4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003da8:	02a3a084 	addi.w	$r4,$r4,-1816(0x8e8)
1c003dac:	57def7ff 	bl	-8460(0xfffdef4) # 1c001ca0 <myprintf>
1c003db0:	02810005 	addi.w	$r5,$r0,64(0x40)
1c003db4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003db8:	03808184 	ori	$r4,$r12,0x20
1c003dbc:	57f7bfff 	bl	-2116(0xffff7bc) # 1c003578 <EXTI_ClearITPendingBit>
1c003dc0:	03400000 	andi	$r0,$r0,0x0
1c003dc4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003dc8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003dcc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003dd0:	4c000020 	jirl	$r0,$r1,0

1c003dd4 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c003dd4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003dd8:	29803061 	st.w	$r1,$r3,12(0xc)
1c003ddc:	29802076 	st.w	$r22,$r3,8(0x8)
1c003de0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003de4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003de8:	02ab10c6 	addi.w	$r6,$r6,-1340(0xac4)
1c003dec:	0280d805 	addi.w	$r5,$r0,54(0x36)
1c003df0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003df4:	02a27084 	addi.w	$r4,$r4,-1892(0x89c)
1c003df8:	57deabff 	bl	-8536(0xfffdea8) # 1c001ca0 <myprintf>
1c003dfc:	02820005 	addi.w	$r5,$r0,128(0x80)
1c003e00:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003e04:	03808184 	ori	$r4,$r12,0x20
1c003e08:	57f773ff 	bl	-2192(0xffff770) # 1c003578 <EXTI_ClearITPendingBit>
1c003e0c:	03400000 	andi	$r0,$r0,0x0
1c003e10:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003e14:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003e18:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003e1c:	4c000020 	jirl	$r0,$r1,0

1c003e20 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c003e20:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003e24:	29803061 	st.w	$r1,$r3,12(0xc)
1c003e28:	29802076 	st.w	$r22,$r3,8(0x8)
1c003e2c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003e30:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003e34:	02aa40c6 	addi.w	$r6,$r6,-1392(0xa90)
1c003e38:	0280ec05 	addi.w	$r5,$r0,59(0x3b)
1c003e3c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003e40:	02a14084 	addi.w	$r4,$r4,-1968(0x850)
1c003e44:	57de5fff 	bl	-8612(0xfffde5c) # 1c001ca0 <myprintf>
1c003e48:	02840005 	addi.w	$r5,$r0,256(0x100)
1c003e4c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003e50:	03808184 	ori	$r4,$r12,0x20
1c003e54:	57f727ff 	bl	-2268(0xffff724) # 1c003578 <EXTI_ClearITPendingBit>
1c003e58:	03400000 	andi	$r0,$r0,0x0
1c003e5c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003e60:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003e64:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003e68:	4c000020 	jirl	$r0,$r1,0

1c003e6c <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c003e6c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003e70:	29803061 	st.w	$r1,$r3,12(0xc)
1c003e74:	29802076 	st.w	$r22,$r3,8(0x8)
1c003e78:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003e7c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003e80:	02a970c6 	addi.w	$r6,$r6,-1444(0xa5c)
1c003e84:	02810005 	addi.w	$r5,$r0,64(0x40)
1c003e88:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003e8c:	02a01084 	addi.w	$r4,$r4,-2044(0x804)
1c003e90:	57de13ff 	bl	-8688(0xfffde10) # 1c001ca0 <myprintf>
1c003e94:	02880005 	addi.w	$r5,$r0,512(0x200)
1c003e98:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003e9c:	03808184 	ori	$r4,$r12,0x20
1c003ea0:	57f6dbff 	bl	-2344(0xffff6d8) # 1c003578 <EXTI_ClearITPendingBit>
1c003ea4:	03400000 	andi	$r0,$r0,0x0
1c003ea8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003eac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003eb0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003eb4:	4c000020 	jirl	$r0,$r1,0

1c003eb8 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c003eb8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003ebc:	29803061 	st.w	$r1,$r3,12(0xc)
1c003ec0:	29802076 	st.w	$r22,$r3,8(0x8)
1c003ec4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003ec8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003ecc:	02a8a0c6 	addi.w	$r6,$r6,-1496(0xa28)
1c003ed0:	02811405 	addi.w	$r5,$r0,69(0x45)
1c003ed4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003ed8:	029ee084 	addi.w	$r4,$r4,1976(0x7b8)
1c003edc:	57ddc7ff 	bl	-8764(0xfffddc4) # 1c001ca0 <myprintf>
1c003ee0:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c003ee4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003ee8:	03808184 	ori	$r4,$r12,0x20
1c003eec:	57f68fff 	bl	-2420(0xffff68c) # 1c003578 <EXTI_ClearITPendingBit>
1c003ef0:	03400000 	andi	$r0,$r0,0x0
1c003ef4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003ef8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003efc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003f00:	4c000020 	jirl	$r0,$r1,0

1c003f04 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c003f04:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003f08:	29803061 	st.w	$r1,$r3,12(0xc)
1c003f0c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003f10:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003f14:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003f18:	02a7d0c6 	addi.w	$r6,$r6,-1548(0x9f4)
1c003f1c:	02812805 	addi.w	$r5,$r0,74(0x4a)
1c003f20:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003f24:	029db084 	addi.w	$r4,$r4,1900(0x76c)
1c003f28:	57dd7bff 	bl	-8840(0xfffdd78) # 1c001ca0 <myprintf>
1c003f2c:	03a00005 	ori	$r5,$r0,0x800
1c003f30:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003f34:	03808184 	ori	$r4,$r12,0x20
1c003f38:	57f643ff 	bl	-2496(0xffff640) # 1c003578 <EXTI_ClearITPendingBit>
1c003f3c:	03400000 	andi	$r0,$r0,0x0
1c003f40:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003f44:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003f48:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003f4c:	4c000020 	jirl	$r0,$r1,0

1c003f50 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c003f50:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003f54:	29803061 	st.w	$r1,$r3,12(0xc)
1c003f58:	29802076 	st.w	$r22,$r3,8(0x8)
1c003f5c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003f60:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003f64:	02a700c6 	addi.w	$r6,$r6,-1600(0x9c0)
1c003f68:	02813c05 	addi.w	$r5,$r0,79(0x4f)
1c003f6c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003f70:	029c8084 	addi.w	$r4,$r4,1824(0x720)
1c003f74:	57dd2fff 	bl	-8916(0xfffdd2c) # 1c001ca0 <myprintf>
1c003f78:	14000025 	lu12i.w	$r5,1(0x1)
1c003f7c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003f80:	03808184 	ori	$r4,$r12,0x20
1c003f84:	57f5f7ff 	bl	-2572(0xffff5f4) # 1c003578 <EXTI_ClearITPendingBit>
1c003f88:	03400000 	andi	$r0,$r0,0x0
1c003f8c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003f90:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003f94:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003f98:	4c000020 	jirl	$r0,$r1,0

1c003f9c <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c003f9c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003fa0:	29803061 	st.w	$r1,$r3,12(0xc)
1c003fa4:	29802076 	st.w	$r22,$r3,8(0x8)
1c003fa8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003fac:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003fb0:	02a630c6 	addi.w	$r6,$r6,-1652(0x98c)
1c003fb4:	02815005 	addi.w	$r5,$r0,84(0x54)
1c003fb8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003fbc:	029b5084 	addi.w	$r4,$r4,1748(0x6d4)
1c003fc0:	57dce3ff 	bl	-8992(0xfffdce0) # 1c001ca0 <myprintf>
1c003fc4:	14000045 	lu12i.w	$r5,2(0x2)
1c003fc8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003fcc:	03808184 	ori	$r4,$r12,0x20
1c003fd0:	57f5abff 	bl	-2648(0xffff5a8) # 1c003578 <EXTI_ClearITPendingBit>
1c003fd4:	03400000 	andi	$r0,$r0,0x0
1c003fd8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003fdc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003fe0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003fe4:	4c000020 	jirl	$r0,$r1,0

1c003fe8 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c003fe8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003fec:	29803061 	st.w	$r1,$r3,12(0xc)
1c003ff0:	29802076 	st.w	$r22,$r3,8(0x8)
1c003ff4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003ff8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003ffc:	02a560c6 	addi.w	$r6,$r6,-1704(0x958)
1c004000:	02816405 	addi.w	$r5,$r0,89(0x59)
1c004004:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004008:	029a2084 	addi.w	$r4,$r4,1672(0x688)
1c00400c:	57dc97ff 	bl	-9068(0xfffdc94) # 1c001ca0 <myprintf>
1c004010:	14000085 	lu12i.w	$r5,4(0x4)
1c004014:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004018:	03808184 	ori	$r4,$r12,0x20
1c00401c:	57f55fff 	bl	-2724(0xffff55c) # 1c003578 <EXTI_ClearITPendingBit>
1c004020:	03400000 	andi	$r0,$r0,0x0
1c004024:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004028:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00402c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004030:	4c000020 	jirl	$r0,$r1,0

1c004034 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c004034:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004038:	29803061 	st.w	$r1,$r3,12(0xc)
1c00403c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004040:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004044:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004048:	02a490c6 	addi.w	$r6,$r6,-1756(0x924)
1c00404c:	02817805 	addi.w	$r5,$r0,94(0x5e)
1c004050:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004054:	0298f084 	addi.w	$r4,$r4,1596(0x63c)
1c004058:	57dc4bff 	bl	-9144(0xfffdc48) # 1c001ca0 <myprintf>
1c00405c:	14000105 	lu12i.w	$r5,8(0x8)
1c004060:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004064:	03808184 	ori	$r4,$r12,0x20
1c004068:	57f513ff 	bl	-2800(0xffff510) # 1c003578 <EXTI_ClearITPendingBit>
1c00406c:	03400000 	andi	$r0,$r0,0x0
1c004070:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004074:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004078:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00407c:	4c000020 	jirl	$r0,$r1,0

1c004080 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c004080:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004084:	29803061 	st.w	$r1,$r3,12(0xc)
1c004088:	29802076 	st.w	$r22,$r3,8(0x8)
1c00408c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004090:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004094:	02a3c0c6 	addi.w	$r6,$r6,-1808(0x8f0)
1c004098:	02819005 	addi.w	$r5,$r0,100(0x64)
1c00409c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0040a0:	0297c084 	addi.w	$r4,$r4,1520(0x5f0)
1c0040a4:	57dbffff 	bl	-9220(0xfffdbfc) # 1c001ca0 <myprintf>
1c0040a8:	14000205 	lu12i.w	$r5,16(0x10)
1c0040ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0040b0:	03808184 	ori	$r4,$r12,0x20
1c0040b4:	57f4c7ff 	bl	-2876(0xffff4c4) # 1c003578 <EXTI_ClearITPendingBit>
1c0040b8:	03400000 	andi	$r0,$r0,0x0
1c0040bc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0040c0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0040c4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0040c8:	4c000020 	jirl	$r0,$r1,0

1c0040cc <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c0040cc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0040d0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0040d4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0040d8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0040dc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0040e0:	02a2f0c6 	addi.w	$r6,$r6,-1860(0x8bc)
1c0040e4:	0281a405 	addi.w	$r5,$r0,105(0x69)
1c0040e8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0040ec:	02969084 	addi.w	$r4,$r4,1444(0x5a4)
1c0040f0:	57dbb3ff 	bl	-9296(0xfffdbb0) # 1c001ca0 <myprintf>
1c0040f4:	14000405 	lu12i.w	$r5,32(0x20)
1c0040f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0040fc:	03808184 	ori	$r4,$r12,0x20
1c004100:	57f47bff 	bl	-2952(0xffff478) # 1c003578 <EXTI_ClearITPendingBit>
1c004104:	03400000 	andi	$r0,$r0,0x0
1c004108:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00410c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004110:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004114:	4c000020 	jirl	$r0,$r1,0

1c004118 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c004118:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00411c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004120:	29802076 	st.w	$r22,$r3,8(0x8)
1c004124:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004128:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00412c:	02a220c6 	addi.w	$r6,$r6,-1912(0x888)
1c004130:	0281b805 	addi.w	$r5,$r0,110(0x6e)
1c004134:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004138:	02956084 	addi.w	$r4,$r4,1368(0x558)
1c00413c:	57db67ff 	bl	-9372(0xfffdb64) # 1c001ca0 <myprintf>
1c004140:	14000805 	lu12i.w	$r5,64(0x40)
1c004144:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004148:	03808184 	ori	$r4,$r12,0x20
1c00414c:	57f42fff 	bl	-3028(0xffff42c) # 1c003578 <EXTI_ClearITPendingBit>
1c004150:	03400000 	andi	$r0,$r0,0x0
1c004154:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004158:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00415c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004160:	4c000020 	jirl	$r0,$r1,0

1c004164 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c004164:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004168:	29803061 	st.w	$r1,$r3,12(0xc)
1c00416c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004170:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004174:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004178:	02a150c6 	addi.w	$r6,$r6,-1964(0x854)
1c00417c:	0281cc05 	addi.w	$r5,$r0,115(0x73)
1c004180:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004184:	02943084 	addi.w	$r4,$r4,1292(0x50c)
1c004188:	57db1bff 	bl	-9448(0xfffdb18) # 1c001ca0 <myprintf>
1c00418c:	14001005 	lu12i.w	$r5,128(0x80)
1c004190:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004194:	03808184 	ori	$r4,$r12,0x20
1c004198:	57f3e3ff 	bl	-3104(0xffff3e0) # 1c003578 <EXTI_ClearITPendingBit>
1c00419c:	03400000 	andi	$r0,$r0,0x0
1c0041a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041a4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0041a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041ac:	4c000020 	jirl	$r0,$r1,0

1c0041b0 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c0041b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0041b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0041b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0041bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0041c0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0041c4:	02a080c6 	addi.w	$r6,$r6,-2016(0x820)
1c0041c8:	0281e005 	addi.w	$r5,$r0,120(0x78)
1c0041cc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0041d0:	02930084 	addi.w	$r4,$r4,1216(0x4c0)
1c0041d4:	57dacfff 	bl	-9524(0xfffdacc) # 1c001ca0 <myprintf>
1c0041d8:	14002005 	lu12i.w	$r5,256(0x100)
1c0041dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041e0:	03808184 	ori	$r4,$r12,0x20
1c0041e4:	57f397ff 	bl	-3180(0xffff394) # 1c003578 <EXTI_ClearITPendingBit>
1c0041e8:	03400000 	andi	$r0,$r0,0x0
1c0041ec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041f0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0041f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041f8:	4c000020 	jirl	$r0,$r1,0

1c0041fc <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c0041fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004200:	29803061 	st.w	$r1,$r3,12(0xc)
1c004204:	29802076 	st.w	$r22,$r3,8(0x8)
1c004208:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00420c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c004210:	029fb0c6 	addi.w	$r6,$r6,2028(0x7ec)
1c004214:	0281f405 	addi.w	$r5,$r0,125(0x7d)
1c004218:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00421c:	0291d084 	addi.w	$r4,$r4,1140(0x474)
1c004220:	57da83ff 	bl	-9600(0xfffda80) # 1c001ca0 <myprintf>
1c004224:	14004005 	lu12i.w	$r5,512(0x200)
1c004228:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00422c:	03808184 	ori	$r4,$r12,0x20
1c004230:	57f34bff 	bl	-3256(0xffff348) # 1c003578 <EXTI_ClearITPendingBit>
1c004234:	03400000 	andi	$r0,$r0,0x0
1c004238:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00423c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004240:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004244:	4c000020 	jirl	$r0,$r1,0

1c004248 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c004248:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00424c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004250:	29802076 	st.w	$r22,$r3,8(0x8)
1c004254:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004258:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00425c:	029ee0c6 	addi.w	$r6,$r6,1976(0x7b8)
1c004260:	02820805 	addi.w	$r5,$r0,130(0x82)
1c004264:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004268:	0290a084 	addi.w	$r4,$r4,1064(0x428)
1c00426c:	57da37ff 	bl	-9676(0xfffda34) # 1c001ca0 <myprintf>
1c004270:	14008005 	lu12i.w	$r5,1024(0x400)
1c004274:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004278:	03808184 	ori	$r4,$r12,0x20
1c00427c:	57f2ffff 	bl	-3332(0xffff2fc) # 1c003578 <EXTI_ClearITPendingBit>
1c004280:	03400000 	andi	$r0,$r0,0x0
1c004284:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004288:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00428c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004290:	4c000020 	jirl	$r0,$r1,0

1c004294 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c004294:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004298:	29803061 	st.w	$r1,$r3,12(0xc)
1c00429c:	29802076 	st.w	$r22,$r3,8(0x8)
1c0042a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0042a4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0042a8:	029e10c6 	addi.w	$r6,$r6,1924(0x784)
1c0042ac:	02821c05 	addi.w	$r5,$r0,135(0x87)
1c0042b0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0042b4:	028f7084 	addi.w	$r4,$r4,988(0x3dc)
1c0042b8:	57d9ebff 	bl	-9752(0xfffd9e8) # 1c001ca0 <myprintf>
1c0042bc:	14010005 	lu12i.w	$r5,2048(0x800)
1c0042c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0042c4:	03808184 	ori	$r4,$r12,0x20
1c0042c8:	57f2b3ff 	bl	-3408(0xffff2b0) # 1c003578 <EXTI_ClearITPendingBit>
1c0042cc:	03400000 	andi	$r0,$r0,0x0
1c0042d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0042d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0042d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0042dc:	4c000020 	jirl	$r0,$r1,0

1c0042e0 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c0042e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0042e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0042e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0042ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0042f0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0042f4:	029d40c6 	addi.w	$r6,$r6,1872(0x750)
1c0042f8:	02823005 	addi.w	$r5,$r0,140(0x8c)
1c0042fc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004300:	028e4084 	addi.w	$r4,$r4,912(0x390)
1c004304:	57d99fff 	bl	-9828(0xfffd99c) # 1c001ca0 <myprintf>
1c004308:	14020005 	lu12i.w	$r5,4096(0x1000)
1c00430c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004310:	03808184 	ori	$r4,$r12,0x20
1c004314:	57f267ff 	bl	-3484(0xffff264) # 1c003578 <EXTI_ClearITPendingBit>
1c004318:	03400000 	andi	$r0,$r0,0x0
1c00431c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004320:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004324:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004328:	4c000020 	jirl	$r0,$r1,0

1c00432c <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c00432c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004330:	29803061 	st.w	$r1,$r3,12(0xc)
1c004334:	29802076 	st.w	$r22,$r3,8(0x8)
1c004338:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00433c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c004340:	029c70c6 	addi.w	$r6,$r6,1820(0x71c)
1c004344:	02824405 	addi.w	$r5,$r0,145(0x91)
1c004348:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00434c:	028d1084 	addi.w	$r4,$r4,836(0x344)
1c004350:	57d953ff 	bl	-9904(0xfffd950) # 1c001ca0 <myprintf>
1c004354:	14040005 	lu12i.w	$r5,8192(0x2000)
1c004358:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00435c:	03808184 	ori	$r4,$r12,0x20
1c004360:	57f21bff 	bl	-3560(0xffff218) # 1c003578 <EXTI_ClearITPendingBit>
1c004364:	03400000 	andi	$r0,$r0,0x0
1c004368:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00436c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004370:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004374:	4c000020 	jirl	$r0,$r1,0

1c004378 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c004378:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00437c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004380:	29802076 	st.w	$r22,$r3,8(0x8)
1c004384:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004388:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00438c:	029ba0c6 	addi.w	$r6,$r6,1768(0x6e8)
1c004390:	02825805 	addi.w	$r5,$r0,150(0x96)
1c004394:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004398:	028be084 	addi.w	$r4,$r4,760(0x2f8)
1c00439c:	57d907ff 	bl	-9980(0xfffd904) # 1c001ca0 <myprintf>
1c0043a0:	14080005 	lu12i.w	$r5,16384(0x4000)
1c0043a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0043a8:	03808184 	ori	$r4,$r12,0x20
1c0043ac:	57f1cfff 	bl	-3636(0xffff1cc) # 1c003578 <EXTI_ClearITPendingBit>
1c0043b0:	03400000 	andi	$r0,$r0,0x0
1c0043b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0043b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0043bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0043c0:	4c000020 	jirl	$r0,$r1,0

1c0043c4 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c0043c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0043c8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0043cc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0043d0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0043d4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0043d8:	029ad0c6 	addi.w	$r6,$r6,1716(0x6b4)
1c0043dc:	02826c05 	addi.w	$r5,$r0,155(0x9b)
1c0043e0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0043e4:	028ab084 	addi.w	$r4,$r4,684(0x2ac)
1c0043e8:	57d8bbff 	bl	-10056(0xfffd8b8) # 1c001ca0 <myprintf>
1c0043ec:	14100005 	lu12i.w	$r5,32768(0x8000)
1c0043f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0043f4:	03808184 	ori	$r4,$r12,0x20
1c0043f8:	57f183ff 	bl	-3712(0xffff180) # 1c003578 <EXTI_ClearITPendingBit>
1c0043fc:	03400000 	andi	$r0,$r0,0x0
1c004400:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004404:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004408:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00440c:	4c000020 	jirl	$r0,$r1,0

1c004410 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c004410:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004414:	29803061 	st.w	$r1,$r3,12(0xc)
1c004418:	29802076 	st.w	$r22,$r3,8(0x8)
1c00441c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004420:	1c000026 	pcaddu12i	$r6,1(0x1)
1c004424:	029a00c6 	addi.w	$r6,$r6,1664(0x680)
1c004428:	02828005 	addi.w	$r5,$r0,160(0xa0)
1c00442c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004430:	02898084 	addi.w	$r4,$r4,608(0x260)
1c004434:	57d86fff 	bl	-10132(0xfffd86c) # 1c001ca0 <myprintf>
1c004438:	14200005 	lu12i.w	$r5,65536(0x10000)
1c00443c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004440:	03808184 	ori	$r4,$r12,0x20
1c004444:	57f137ff 	bl	-3788(0xffff134) # 1c003578 <EXTI_ClearITPendingBit>
1c004448:	03400000 	andi	$r0,$r0,0x0
1c00444c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004450:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004454:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004458:	4c000020 	jirl	$r0,$r1,0

1c00445c <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c00445c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004460:	29803061 	st.w	$r1,$r3,12(0xc)
1c004464:	29802076 	st.w	$r22,$r3,8(0x8)
1c004468:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00446c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c004470:	029930c6 	addi.w	$r6,$r6,1612(0x64c)
1c004474:	02829805 	addi.w	$r5,$r0,166(0xa6)
1c004478:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00447c:	02885084 	addi.w	$r4,$r4,532(0x214)
1c004480:	57d823ff 	bl	-10208(0xfffd820) # 1c001ca0 <myprintf>
1c004484:	14400005 	lu12i.w	$r5,131072(0x20000)
1c004488:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00448c:	03808184 	ori	$r4,$r12,0x20
1c004490:	57f0ebff 	bl	-3864(0xffff0e8) # 1c003578 <EXTI_ClearITPendingBit>
1c004494:	03400000 	andi	$r0,$r0,0x0
1c004498:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00449c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044a0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044a4:	4c000020 	jirl	$r0,$r1,0

1c0044a8 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c0044a8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044ac:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044b0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044b4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0044b8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0044bc:	029860c6 	addi.w	$r6,$r6,1560(0x618)
1c0044c0:	0282ac05 	addi.w	$r5,$r0,171(0xab)
1c0044c4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0044c8:	02872084 	addi.w	$r4,$r4,456(0x1c8)
1c0044cc:	57d7d7ff 	bl	-10284(0xfffd7d4) # 1c001ca0 <myprintf>
1c0044d0:	14800005 	lu12i.w	$r5,262144(0x40000)
1c0044d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0044d8:	03808184 	ori	$r4,$r12,0x20
1c0044dc:	57f09fff 	bl	-3940(0xffff09c) # 1c003578 <EXTI_ClearITPendingBit>
1c0044e0:	03400000 	andi	$r0,$r0,0x0
1c0044e4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044e8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044ec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044f0:	4c000020 	jirl	$r0,$r1,0

1c0044f4 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c0044f4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044f8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044fc:	29802076 	st.w	$r22,$r3,8(0x8)
1c004500:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004504:	1c000026 	pcaddu12i	$r6,1(0x1)
1c004508:	029790c6 	addi.w	$r6,$r6,1508(0x5e4)
1c00450c:	0282c005 	addi.w	$r5,$r0,176(0xb0)
1c004510:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004514:	0285f084 	addi.w	$r4,$r4,380(0x17c)
1c004518:	57d78bff 	bl	-10360(0xfffd788) # 1c001ca0 <myprintf>
1c00451c:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c004520:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004524:	03808184 	ori	$r4,$r12,0x20
1c004528:	57f053ff 	bl	-4016(0xffff050) # 1c003578 <EXTI_ClearITPendingBit>
1c00452c:	03400000 	andi	$r0,$r0,0x0
1c004530:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004534:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004538:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00453c:	4c000020 	jirl	$r0,$r1,0

1c004540 <ext_handler>:
ext_handler():
1c004540:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004544:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004548:	29806076 	st.w	$r22,$r3,24(0x18)
1c00454c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004550:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004554:	0380f18c 	ori	$r12,$r12,0x3c
1c004558:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c00455c:	2980018d 	st.w	$r13,$r12,0
1c004560:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004564:	0380818c 	ori	$r12,$r12,0x20
1c004568:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c00456c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004570:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004574:	0380818c 	ori	$r12,$r12,0x20
1c004578:	2880018c 	ld.w	$r12,$r12,0
1c00457c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004580:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004584:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004588:	0014b1ac 	and	$r12,$r13,$r12
1c00458c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004590:	03400000 	andi	$r0,$r0,0x0
1c004594:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004598:	50004000 	b	64(0x40) # 1c0045d8 <ext_handler+0x98>
1c00459c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0045a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0045a4:	0017b1ac 	srl.w	$r12,$r13,$r12
1c0045a8:	0340058c 	andi	$r12,$r12,0x1
1c0045ac:	40002180 	beqz	$r12,32(0x20) # 1c0045cc <ext_handler+0x8c>
1c0045b0:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c0045b4:	028631ad 	addi.w	$r13,$r13,396(0x18c)
1c0045b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0045bc:	0040898c 	slli.w	$r12,$r12,0x2
1c0045c0:	001031ac 	add.w	$r12,$r13,$r12
1c0045c4:	2880018c 	ld.w	$r12,$r12,0
1c0045c8:	4c000181 	jirl	$r1,$r12,0
1c0045cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0045d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0045d4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0045d8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0045dc:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c0045e0:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c00459c <ext_handler+0x5c>
1c0045e4:	03400000 	andi	$r0,$r0,0x0
1c0045e8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0045ec:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0045f0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0045f4:	4c000020 	jirl	$r0,$r1,0

1c0045f8 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c0045f8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0045fc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004600:	29806076 	st.w	$r22,$r3,24(0x18)
1c004604:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004608:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00460c:	0380f18c 	ori	$r12,$r12,0x3c
1c004610:	1400020d 	lu12i.w	$r13,16(0x10)
1c004614:	2980018d 	st.w	$r13,$r12,0
1c004618:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00461c:	0380118c 	ori	$r12,$r12,0x4
1c004620:	2880018c 	ld.w	$r12,$r12,0
1c004624:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004628:	57f0a3ff 	bl	-3936(0xffff0a0) # 1c0036c8 <WDG_DogFeed>
1c00462c:	02801804 	addi.w	$r4,$r0,6(0x6)
1c004630:	57ea5fff 	bl	-5540(0xfffea5c) # 1c00308c <Wake_Set>
1c004634:	03400000 	andi	$r0,$r0,0x0
1c004638:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00463c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004640:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004644:	4c000020 	jirl	$r0,$r1,0

1c004648 <TOUCH>:
TOUCH():
1c004648:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00464c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004650:	29806076 	st.w	$r22,$r3,24(0x18)
1c004654:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004658:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00465c:	0380118c 	ori	$r12,$r12,0x4
1c004660:	2880018c 	ld.w	$r12,$r12,0
1c004664:	0044c18c 	srli.w	$r12,$r12,0x10
1c004668:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00466c:	037ffd8c 	andi	$r12,$r12,0xfff
1c004670:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c004674:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004678:	0380118c 	ori	$r12,$r12,0x4
1c00467c:	2880018c 	ld.w	$r12,$r12,0
1c004680:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004684:	03403d8c 	andi	$r12,$r12,0xf
1c004688:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c00468c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004690:	0380f18c 	ori	$r12,$r12,0x3c
1c004694:	1400040d 	lu12i.w	$r13,32(0x20)
1c004698:	2980018d 	st.w	$r13,$r12,0
1c00469c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0046a0:	0380118c 	ori	$r12,$r12,0x4
1c0046a4:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c0046a8:	2980018d 	st.w	$r13,$r12,0
1c0046ac:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c0046b0:	00150184 	move	$r4,$r12
1c0046b4:	57f187ff 	bl	-3708(0xffff184) # 1c003838 <Printf_KeyType>
1c0046b8:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0046bc:	00150184 	move	$r4,$r12
1c0046c0:	57f0ffff 	bl	-3844(0xffff0fc) # 1c0037bc <Printf_KeyChannel>
1c0046c4:	57f203ff 	bl	-3584(0xffff200) # 1c0038c4 <Printf_KeyVal>
1c0046c8:	03400000 	andi	$r0,$r0,0x0
1c0046cc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0046d0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0046d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0046d8:	4c000020 	jirl	$r0,$r1,0

1c0046dc <UART2_INT>:
UART2_INT():
1c0046dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0046e0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0046e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0046e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046ec:	0380f18c 	ori	$r12,$r12,0x3c
1c0046f0:	1400080d 	lu12i.w	$r13,64(0x40)
1c0046f4:	2980018d 	st.w	$r13,$r12,0
1c0046f8:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c0046fc:	0380098c 	ori	$r12,$r12,0x2
1c004700:	2a00018c 	ld.bu	$r12,$r12,0
1c004704:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004708:	03400000 	andi	$r0,$r0,0x0
1c00470c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004710:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004714:	4c000020 	jirl	$r0,$r1,0

1c004718 <BAT_FAIL>:
BAT_FAIL():
1c004718:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00471c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004720:	29806076 	st.w	$r22,$r3,24(0x18)
1c004724:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004728:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00472c:	0380118c 	ori	$r12,$r12,0x4
1c004730:	2880018c 	ld.w	$r12,$r12,0
1c004734:	0044cd8c 	srli.w	$r12,$r12,0x13
1c004738:	03407d8c 	andi	$r12,$r12,0x1f
1c00473c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004740:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004744:	0380118c 	ori	$r12,$r12,0x4
1c004748:	2880018e 	ld.w	$r14,$r12,0
1c00474c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004750:	0380f18c 	ori	$r12,$r12,0x3c
1c004754:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c004758:	0014b5cd 	and	$r13,$r14,$r13
1c00475c:	2980018d 	st.w	$r13,$r12,0
1c004760:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004764:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004768:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c0047d8 <BAT_FAIL+0xc0>
1c00476c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004770:	0040898d 	slli.w	$r13,$r12,0x2
1c004774:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c004778:	0281218c 	addi.w	$r12,$r12,72(0x48)
1c00477c:	001031ac 	add.w	$r12,$r13,$r12
1c004780:	2880018c 	ld.w	$r12,$r12,0
1c004784:	4c000180 	jirl	$r0,$r12,0
1c004788:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00478c:	02bd2084 	addi.w	$r4,$r4,-184(0xf48)
1c004790:	57d513ff 	bl	-10992(0xfffd510) # 1c001ca0 <myprintf>
1c004794:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004798:	0380118c 	ori	$r12,$r12,0x4
1c00479c:	29800180 	st.w	$r0,$r12,0
1c0047a0:	50003c00 	b	60(0x3c) # 1c0047dc <BAT_FAIL+0xc4>
1c0047a4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0047a8:	02bd5084 	addi.w	$r4,$r4,-172(0xf54)
1c0047ac:	57d4f7ff 	bl	-11020(0xfffd4f4) # 1c001ca0 <myprintf>
1c0047b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0047b4:	0380118c 	ori	$r12,$r12,0x4
1c0047b8:	2880018e 	ld.w	$r14,$r12,0
1c0047bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0047c0:	0380118c 	ori	$r12,$r12,0x4
1c0047c4:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c0047c8:	03bffdad 	ori	$r13,$r13,0xfff
1c0047cc:	0014b5cd 	and	$r13,$r14,$r13
1c0047d0:	2980018d 	st.w	$r13,$r12,0
1c0047d4:	50000800 	b	8(0x8) # 1c0047dc <BAT_FAIL+0xc4>
1c0047d8:	03400000 	andi	$r0,$r0,0x0
1c0047dc:	03400000 	andi	$r0,$r0,0x0
1c0047e0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0047e4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0047e8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0047ec:	4c000020 	jirl	$r0,$r1,0

1c0047f0 <intc_handler>:
intc_handler():
1c0047f0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0047f4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0047f8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0047fc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004800:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004804:	0380158c 	ori	$r12,$r12,0x5
1c004808:	2a00018c 	ld.bu	$r12,$r12,0
1c00480c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004810:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004814:	0340058c 	andi	$r12,$r12,0x1
1c004818:	40001d80 	beqz	$r12,28(0x1c) # 1c004834 <intc_handler+0x44>
1c00481c:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004820:	57f2fbff 	bl	-3336(0xffff2f8) # 1c003b18 <TIM_GetITStatus>
1c004824:	0015008c 	move	$r12,$r4
1c004828:	40000d80 	beqz	$r12,12(0xc) # 1c004834 <intc_handler+0x44>
1c00482c:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004830:	57f337ff 	bl	-3276(0xffff334) # 1c003b64 <TIM_ClearIT>
1c004834:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004838:	0340118c 	andi	$r12,$r12,0x4
1c00483c:	40001580 	beqz	$r12,20(0x14) # 1c004850 <intc_handler+0x60>
1c004840:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004844:	03800d8c 	ori	$r12,$r12,0x3
1c004848:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c00484c:	2900018d 	st.b	$r13,$r12,0
1c004850:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004854:	0340218c 	andi	$r12,$r12,0x8
1c004858:	40007d80 	beqz	$r12,124(0x7c) # 1c0048d4 <intc_handler+0xe4>
1c00485c:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c004860:	0380098c 	ori	$r12,$r12,0x2
1c004864:	2a00018c 	ld.bu	$r12,$r12,0
1c004868:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00486c:	0340118c 	andi	$r12,$r12,0x4
1c004870:	40005580 	beqz	$r12,84(0x54) # 1c0048c4 <intc_handler+0xd4>
1c004874:	50003800 	b	56(0x38) # 1c0048ac <intc_handler+0xbc>
1c004878:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c00487c:	57e02bff 	bl	-8152(0xfffe028) # 1c0028a4 <UART_ReceiveData>
1c004880:	0015008c 	move	$r12,$r4
1c004884:	0015018d 	move	$r13,$r12
1c004888:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00488c:	029de18c 	addi.w	$r12,$r12,1912(0x778)
1c004890:	2900018d 	st.b	$r13,$r12,0
1c004894:	02800406 	addi.w	$r6,$r0,1(0x1)
1c004898:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c00489c:	029da0a5 	addi.w	$r5,$r5,1896(0x768)
1c0048a0:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0048a4:	289dc084 	ld.w	$r4,$r4,1904(0x770)
1c0048a8:	5401f000 	bl	496(0x1f0) # 1c004a98 <Queue_Wirte>
1c0048ac:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0048b0:	0380158c 	ori	$r12,$r12,0x5
1c0048b4:	2a00018c 	ld.bu	$r12,$r12,0
1c0048b8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0048bc:	0340058c 	andi	$r12,$r12,0x1
1c0048c0:	47ffb99f 	bnez	$r12,-72(0x7fffb8) # 1c004878 <intc_handler+0x88>
1c0048c4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0048c8:	03800d8c 	ori	$r12,$r12,0x3
1c0048cc:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c0048d0:	2900018d 	st.b	$r13,$r12,0
1c0048d4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0048d8:	03800d8c 	ori	$r12,$r12,0x3
1c0048dc:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c0048e0:	2900018d 	st.b	$r13,$r12,0
1c0048e4:	03400000 	andi	$r0,$r0,0x0
1c0048e8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0048ec:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0048f0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0048f4:	4c000020 	jirl	$r0,$r1,0

1c0048f8 <TIMER_HANDLER>:
TIMER_HANDLER():
1c0048f8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0048fc:	29803061 	st.w	$r1,$r3,12(0xc)
1c004900:	29802076 	st.w	$r22,$r3,8(0x8)
1c004904:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004908:	57e763ff 	bl	-6304(0xfffe760) # 1c003068 <Set_Timer_clear>
1c00490c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004910:	02b84084 	addi.w	$r4,$r4,-496(0xe10)
1c004914:	57d38fff 	bl	-11380(0xfffd38c) # 1c001ca0 <myprintf>
1c004918:	57e733ff 	bl	-6352(0xfffe730) # 1c003048 <Set_Timer_stop>
1c00491c:	03400000 	andi	$r0,$r0,0x0
1c004920:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004924:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004928:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00492c:	4c000020 	jirl	$r0,$r1,0

1c004930 <main>:
main():
1c004930:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004934:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004938:	29806076 	st.w	$r22,$r3,24(0x18)
1c00493c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004940:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004944:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c004948:	5404cc00 	bl	1228(0x4cc) # 1c004e14 <esp8266_init>
1c00494c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004950:	02805004 	addi.w	$r4,$r0,20(0x14)
1c004954:	57cc3bff 	bl	-13256(0xfffcc38) # 1c00158c <gpio_write_pin>
1c004958:	02819004 	addi.w	$r4,$r0,100(0x64)
1c00495c:	57eab7ff 	bl	-5452(0xfffeab4) # 1c003410 <delay_ms>
1c004960:	00150005 	move	$r5,$r0
1c004964:	02805004 	addi.w	$r4,$r0,20(0x14)
1c004968:	57cc27ff 	bl	-13276(0xfffcc24) # 1c00158c <gpio_write_pin>
1c00496c:	02819004 	addi.w	$r4,$r0,100(0x64)
1c004970:	57eaa3ff 	bl	-5472(0xfffeaa0) # 1c003410 <delay_ms>
1c004974:	53ffdbff 	b	-40(0xfffffd8) # 1c00494c <main+0x1c>

1c004978 <Queue_isEmpty>:
Queue_isEmpty():
1c004978:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00497c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004980:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004984:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004988:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00498c:	44000d80 	bnez	$r12,12(0xc) # 1c004998 <Queue_isEmpty+0x20>
1c004990:	0015000c 	move	$r12,$r0
1c004994:	50002400 	b	36(0x24) # 1c0049b8 <Queue_isEmpty+0x40>
1c004998:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00499c:	2a40018d 	ld.hu	$r13,$r12,0
1c0049a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0049a4:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c0049a8:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c0049b4 <Queue_isEmpty+0x3c>
1c0049ac:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0049b0:	50000800 	b	8(0x8) # 1c0049b8 <Queue_isEmpty+0x40>
1c0049b4:	0015000c 	move	$r12,$r0
1c0049b8:	00150184 	move	$r4,$r12
1c0049bc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0049c0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0049c4:	4c000020 	jirl	$r0,$r1,0

1c0049c8 <Queue_HadUse>:
Queue_HadUse():
1c0049c8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0049cc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0049d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0049d4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0049d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0049dc:	44000d80 	bnez	$r12,12(0xc) # 1c0049e8 <Queue_HadUse+0x20>
1c0049e0:	0015000c 	move	$r12,$r0
1c0049e4:	50003800 	b	56(0x38) # 1c004a1c <Queue_HadUse+0x54>
1c0049e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0049ec:	2a40098d 	ld.hu	$r13,$r12,2(0x2)
1c0049f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0049f4:	2a40018c 	ld.hu	$r12,$r12,0
1c0049f8:	001131ac 	sub.w	$r12,$r13,$r12
1c0049fc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004a00:	0284b18c 	addi.w	$r12,$r12,300(0x12c)
1c004a04:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c004a08:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c004a0c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c004a10:	5c000980 	bne	$r12,$r0,8(0x8) # 1c004a18 <Queue_HadUse+0x50>
1c004a14:	002a0007 	break	0x7
1c004a18:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c004a1c:	00150184 	move	$r4,$r12
1c004a20:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004a24:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004a28:	4c000020 	jirl	$r0,$r1,0

1c004a2c <Queue_NoUse>:
Queue_NoUse():
1c004a2c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004a30:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004a34:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004a38:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004a3c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a40:	44000d80 	bnez	$r12,12(0xc) # 1c004a4c <Queue_NoUse+0x20>
1c004a44:	0015000c 	move	$r12,$r0
1c004a48:	50004000 	b	64(0x40) # 1c004a88 <Queue_NoUse+0x5c>
1c004a4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a50:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c004a54:	0015018d 	move	$r13,$r12
1c004a58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a5c:	2a40018c 	ld.hu	$r12,$r12,0
1c004a60:	001131ac 	sub.w	$r12,$r13,$r12
1c004a64:	0284b18d 	addi.w	$r13,$r12,300(0x12c)
1c004a68:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c004a6c:	0020b1ae 	mod.w	$r14,$r13,$r12
1c004a70:	5c000980 	bne	$r12,$r0,8(0x8) # 1c004a78 <Queue_NoUse+0x4c>
1c004a74:	002a0007 	break	0x7
1c004a78:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c004a7c:	0284ac0d 	addi.w	$r13,$r0,299(0x12b)
1c004a80:	001131ac 	sub.w	$r12,$r13,$r12
1c004a84:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004a88:	00150184 	move	$r4,$r12
1c004a8c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004a90:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004a94:	4c000020 	jirl	$r0,$r1,0

1c004a98 <Queue_Wirte>:
Queue_Wirte():
1c004a98:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004a9c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004aa0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004aa4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004aa8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004aac:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004ab0:	001500cc 	move	$r12,$r6
1c004ab4:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c004ab8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004abc:	44000d80 	bnez	$r12,12(0xc) # 1c004ac8 <Queue_Wirte+0x30>
1c004ac0:	0015000c 	move	$r12,$r0
1c004ac4:	50009c00 	b	156(0x9c) # 1c004b60 <Queue_Wirte+0xc8>
1c004ac8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c004acc:	57ff63ff 	bl	-160(0xfffff60) # 1c004a2c <Queue_NoUse>
1c004ad0:	0015008c 	move	$r12,$r4
1c004ad4:	0015018d 	move	$r13,$r12
1c004ad8:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c004adc:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c004ae8 <Queue_Wirte+0x50>
1c004ae0:	0015000c 	move	$r12,$r0
1c004ae4:	50007c00 	b	124(0x7c) # 1c004b60 <Queue_Wirte+0xc8>
1c004ae8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004aec:	50006400 	b	100(0x64) # 1c004b50 <Queue_Wirte+0xb8>
1c004af0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004af4:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c004af8:	001031ac 	add.w	$r12,$r13,$r12
1c004afc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004b00:	2a4009ad 	ld.hu	$r13,$r13,2(0x2)
1c004b04:	001501ae 	move	$r14,$r13
1c004b08:	2a00018d 	ld.bu	$r13,$r12,0
1c004b0c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004b10:	0010398c 	add.w	$r12,$r12,$r14
1c004b14:	2900118d 	st.b	$r13,$r12,4(0x4)
1c004b18:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004b1c:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c004b20:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004b24:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c004b28:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c004b2c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c004b30:	5c000980 	bne	$r12,$r0,8(0x8) # 1c004b38 <Queue_Wirte+0xa0>
1c004b34:	002a0007 	break	0x7
1c004b38:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c004b3c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004b40:	2940098d 	st.h	$r13,$r12,2(0x2)
1c004b44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004b48:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004b4c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004b50:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c004b54:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004b58:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c004af0 <Queue_Wirte+0x58>
1c004b5c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004b60:	00150184 	move	$r4,$r12
1c004b64:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004b68:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004b6c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004b70:	4c000020 	jirl	$r0,$r1,0

1c004b74 <Queue_Read>:
Queue_Read():
1c004b74:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004b78:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004b7c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004b80:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004b84:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004b88:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004b8c:	001500cc 	move	$r12,$r6
1c004b90:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c004b94:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004b98:	44000d80 	bnez	$r12,12(0xc) # 1c004ba4 <Queue_Read+0x30>
1c004b9c:	0015000c 	move	$r12,$r0
1c004ba0:	50009c00 	b	156(0x9c) # 1c004c3c <Queue_Read+0xc8>
1c004ba4:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c004ba8:	57fe23ff 	bl	-480(0xffffe20) # 1c0049c8 <Queue_HadUse>
1c004bac:	0015008c 	move	$r12,$r4
1c004bb0:	0015018d 	move	$r13,$r12
1c004bb4:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c004bb8:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c004bc4 <Queue_Read+0x50>
1c004bbc:	0015000c 	move	$r12,$r0
1c004bc0:	50007c00 	b	124(0x7c) # 1c004c3c <Queue_Read+0xc8>
1c004bc4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004bc8:	50006400 	b	100(0x64) # 1c004c2c <Queue_Read+0xb8>
1c004bcc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004bd0:	2a40018c 	ld.hu	$r12,$r12,0
1c004bd4:	0015018e 	move	$r14,$r12
1c004bd8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004bdc:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c004be0:	001031ac 	add.w	$r12,$r13,$r12
1c004be4:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004be8:	001039ad 	add.w	$r13,$r13,$r14
1c004bec:	2a0011ad 	ld.bu	$r13,$r13,4(0x4)
1c004bf0:	2900018d 	st.b	$r13,$r12,0
1c004bf4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004bf8:	2a40018c 	ld.hu	$r12,$r12,0
1c004bfc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004c00:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c004c04:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c004c08:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c004c0c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c004c14 <Queue_Read+0xa0>
1c004c10:	002a0007 	break	0x7
1c004c14:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c004c18:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004c1c:	2940018d 	st.h	$r13,$r12,0
1c004c20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004c24:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004c28:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004c2c:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c004c30:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004c34:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c004bcc <Queue_Read+0x58>
1c004c38:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004c3c:	00150184 	move	$r4,$r12
1c004c40:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004c44:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004c48:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004c4c:	4c000020 	jirl	$r0,$r1,0

1c004c50 <esp8266_check_cmd>:
esp8266_check_cmd():
1c004c50:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004c54:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004c58:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004c5c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004c60:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004c64:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004c68:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004c6c:	288ea084 	ld.w	$r4,$r4,936(0x3a8)
1c004c70:	57fd0bff 	bl	-760(0xffffd08) # 1c004978 <Queue_isEmpty>
1c004c74:	0015008c 	move	$r12,$r4
1c004c78:	44009580 	bnez	$r12,148(0x94) # 1c004d0c <esp8266_check_cmd+0xbc>
1c004c7c:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004c80:	288e5084 	ld.w	$r4,$r4,916(0x394)
1c004c84:	57fd47ff 	bl	-700(0xffffd44) # 1c0049c8 <Queue_HadUse>
1c004c88:	0015008c 	move	$r12,$r4
1c004c8c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004c90:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004c94:	288de18c 	ld.w	$r12,$r12,888(0x378)
1c004c98:	2900018d 	st.b	$r13,$r12,0
1c004c9c:	0284b006 	addi.w	$r6,$r0,300(0x12c)
1c004ca0:	00150005 	move	$r5,$r0
1c004ca4:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004ca8:	288dd084 	ld.w	$r4,$r4,884(0x374)
1c004cac:	57e7a7ff 	bl	-6236(0xfffe7a4) # 1c003450 <memset>
1c004cb0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004cb4:	288d618c 	ld.w	$r12,$r12,856(0x358)
1c004cb8:	2a00018c 	ld.bu	$r12,$r12,0
1c004cbc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004cc0:	00150186 	move	$r6,$r12
1c004cc4:	1cc7ff85 	pcaddu12i	$r5,409596(0x63ffc)
1c004cc8:	288d50a5 	ld.w	$r5,$r5,852(0x354)
1c004ccc:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004cd0:	288d1084 	ld.w	$r4,$r4,836(0x344)
1c004cd4:	57fea3ff 	bl	-352(0xffffea0) # 1c004b74 <Queue_Read>
1c004cd8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004cdc:	288cc18c 	ld.w	$r12,$r12,816(0x330)
1c004ce0:	2a00018c 	ld.bu	$r12,$r12,0
1c004ce4:	0015018d 	move	$r13,$r12
1c004ce8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004cec:	288cc18c 	ld.w	$r12,$r12,816(0x330)
1c004cf0:	0010358c 	add.w	$r12,$r12,$r13
1c004cf4:	29000180 	st.b	$r0,$r12,0
1c004cf8:	1cc7ff85 	pcaddu12i	$r5,409596(0x63ffc)
1c004cfc:	288c80a5 	ld.w	$r5,$r5,800(0x320)
1c004d00:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004d04:	02b80084 	addi.w	$r4,$r4,-512(0xe00)
1c004d08:	57cf9bff 	bl	-12392(0xfffcf98) # 1c001ca0 <myprintf>
1c004d0c:	28bf72c5 	ld.w	$r5,$r22,-36(0xfdc)
1c004d10:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004d14:	288c2084 	ld.w	$r4,$r4,776(0x308)
1c004d18:	57e79bff 	bl	-6248(0xfffe798) # 1c0034b0 <pstrstr>
1c004d1c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004d20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004d24:	00150184 	move	$r4,$r12
1c004d28:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004d2c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004d30:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004d34:	4c000020 	jirl	$r0,$r1,0

1c004d38 <esp8266_send_cmd>:
esp8266_send_cmd():
1c004d38:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004d3c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004d40:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004d44:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004d48:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004d4c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004d50:	001500cc 	move	$r12,$r6
1c004d54:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c004d58:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004d5c:	28bf72c5 	ld.w	$r5,$r22,-36(0xfdc)
1c004d60:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004d64:	02b6e084 	addi.w	$r4,$r4,-584(0xdb8)
1c004d68:	57cf3bff 	bl	-12488(0xfffcf38) # 1c001ca0 <myprintf>
1c004d6c:	28bf72c6 	ld.w	$r6,$r22,-36(0xfdc)
1c004d70:	1c000025 	pcaddu12i	$r5,1(0x1)
1c004d74:	02b6d0a5 	addi.w	$r5,$r5,-588(0xdb4)
1c004d78:	00150004 	move	$r4,$r0
1c004d7c:	57d2cbff 	bl	-11576(0xfffd2c8) # 1c002044 <myprintf2>
1c004d80:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004d84:	40007980 	beqz	$r12,120(0x78) # 1c004dfc <esp8266_send_cmd+0xc4>
1c004d88:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c004d8c:	40007180 	beqz	$r12,112(0x70) # 1c004dfc <esp8266_send_cmd+0xc4>
1c004d90:	50003000 	b	48(0x30) # 1c004dc0 <esp8266_send_cmd+0x88>
1c004d94:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c004d98:	57e67bff 	bl	-6536(0xfffe678) # 1c003410 <delay_ms>
1c004d9c:	28bf62c4 	ld.w	$r4,$r22,-40(0xfd8)
1c004da0:	57feb3ff 	bl	-336(0xffffeb0) # 1c004c50 <esp8266_check_cmd>
1c004da4:	0015008c 	move	$r12,$r4
1c004da8:	40001980 	beqz	$r12,24(0x18) # 1c004dc0 <esp8266_send_cmd+0x88>
1c004dac:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c004db0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004db4:	02b5f084 	addi.w	$r4,$r4,-644(0xd7c)
1c004db8:	57ceebff 	bl	-12568(0xfffcee8) # 1c001ca0 <myprintf>
1c004dbc:	50001800 	b	24(0x18) # 1c004dd4 <esp8266_send_cmd+0x9c>
1c004dc0:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c004dc4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c004dc8:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c004dcc:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c004dd0:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c004d94 <esp8266_send_cmd+0x5c>
1c004dd4:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c004dd8:	44001180 	bnez	$r12,16(0x10) # 1c004de8 <esp8266_send_cmd+0xb0>
1c004ddc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004de0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004de4:	50001800 	b	24(0x18) # 1c004dfc <esp8266_send_cmd+0xc4>
1c004de8:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c004dec:	00150185 	move	$r5,$r12
1c004df0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004df4:	02b52084 	addi.w	$r4,$r4,-696(0xd48)
1c004df8:	57ceabff 	bl	-12632(0xfffcea8) # 1c001ca0 <myprintf>
1c004dfc:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c004e00:	00150184 	move	$r4,$r12
1c004e04:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004e08:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004e0c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004e10:	4c000020 	jirl	$r0,$r1,0

1c004e14 <esp8266_init>:
esp8266_init():
1c004e14:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004e18:	29803061 	st.w	$r1,$r3,12(0xc)
1c004e1c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004e20:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004e24:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004e28:	02b48084 	addi.w	$r4,$r4,-736(0xd20)
1c004e2c:	57ce77ff 	bl	-12684(0xfffce74) # 1c001ca0 <myprintf>
1c004e30:	03400000 	andi	$r0,$r0,0x0
1c004e34:	02825806 	addi.w	$r6,$r0,150(0x96)
1c004e38:	1c000025 	pcaddu12i	$r5,1(0x1)
1c004e3c:	02b470a5 	addi.w	$r5,$r5,-740(0xd1c)
1c004e40:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004e44:	02b46084 	addi.w	$r4,$r4,-744(0xd18)
1c004e48:	57fef3ff 	bl	-272(0xffffef0) # 1c004d38 <esp8266_send_cmd>
1c004e4c:	0015008c 	move	$r12,$r4
1c004e50:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004e34 <esp8266_init+0x20>
1c004e54:	0287d004 	addi.w	$r4,$r0,500(0x1f4)
1c004e58:	57e5bbff 	bl	-6728(0xfffe5b8) # 1c003410 <delay_ms>
1c004e5c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004e60:	02b42084 	addi.w	$r4,$r4,-760(0xd08)
1c004e64:	57ce3fff 	bl	-12740(0xfffce3c) # 1c001ca0 <myprintf>
1c004e68:	03400000 	andi	$r0,$r0,0x0
1c004e6c:	02864006 	addi.w	$r6,$r0,400(0x190)
1c004e70:	1c000025 	pcaddu12i	$r5,1(0x1)
1c004e74:	02b390a5 	addi.w	$r5,$r5,-796(0xce4)
1c004e78:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004e7c:	02b3e084 	addi.w	$r4,$r4,-776(0xcf8)
1c004e80:	57febbff 	bl	-328(0xffffeb8) # 1c004d38 <esp8266_send_cmd>
1c004e84:	0015008c 	move	$r12,$r4
1c004e88:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004e6c <esp8266_init+0x58>
1c004e8c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004e90:	02b3b084 	addi.w	$r4,$r4,-788(0xcec)
1c004e94:	57ce0fff 	bl	-12788(0xfffce0c) # 1c001ca0 <myprintf>
1c004e98:	03400000 	andi	$r0,$r0,0x0
1c004e9c:	0284b006 	addi.w	$r6,$r0,300(0x12c)
1c004ea0:	1c000025 	pcaddu12i	$r5,1(0x1)
1c004ea4:	02b2d0a5 	addi.w	$r5,$r5,-844(0xcb4)
1c004ea8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004eac:	02b3a084 	addi.w	$r4,$r4,-792(0xce8)
1c004eb0:	57fe8bff 	bl	-376(0xffffe88) # 1c004d38 <esp8266_send_cmd>
1c004eb4:	0015008c 	move	$r12,$r4
1c004eb8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004e9c <esp8266_init+0x88>
1c004ebc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004ec0:	02b3c084 	addi.w	$r4,$r4,-784(0xcf0)
1c004ec4:	57cddfff 	bl	-12836(0xfffcddc) # 1c001ca0 <myprintf>
1c004ec8:	03400000 	andi	$r0,$r0,0x0
1c004ecc:	02825806 	addi.w	$r6,$r0,150(0x96)
1c004ed0:	1c000025 	pcaddu12i	$r5,1(0x1)
1c004ed4:	02b210a5 	addi.w	$r5,$r5,-892(0xc84)
1c004ed8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004edc:	02b39084 	addi.w	$r4,$r4,-796(0xce4)
1c004ee0:	57fe5bff 	bl	-424(0xffffe58) # 1c004d38 <esp8266_send_cmd>
1c004ee4:	0015008c 	move	$r12,$r4
1c004ee8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004ecc <esp8266_init+0xb8>
1c004eec:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004ef0:	02b37084 	addi.w	$r4,$r4,-804(0xcdc)
1c004ef4:	57cdafff 	bl	-12884(0xfffcdac) # 1c001ca0 <myprintf>
1c004ef8:	03400000 	andi	$r0,$r0,0x0
1c004efc:	0284b006 	addi.w	$r6,$r0,300(0x12c)
1c004f00:	1c000025 	pcaddu12i	$r5,1(0x1)
1c004f04:	02b150a5 	addi.w	$r5,$r5,-940(0xc54)
1c004f08:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004f0c:	02b39084 	addi.w	$r4,$r4,-796(0xce4)
1c004f10:	57fe2bff 	bl	-472(0xffffe28) # 1c004d38 <esp8266_send_cmd>
1c004f14:	0015008c 	move	$r12,$r4
1c004f18:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004efc <esp8266_init+0xe8>
1c004f1c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004f20:	02b3e084 	addi.w	$r4,$r4,-776(0xcf8)
1c004f24:	57cd7fff 	bl	-12932(0xfffcd7c) # 1c001ca0 <myprintf>
1c004f28:	02825806 	addi.w	$r6,$r0,150(0x96)
1c004f2c:	1c000025 	pcaddu12i	$r5,1(0x1)
1c004f30:	02b0a0a5 	addi.w	$r5,$r5,-984(0xc28)
1c004f34:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004f38:	02b3c084 	addi.w	$r4,$r4,-784(0xcf0)
1c004f3c:	57fdffff 	bl	-516(0xffffdfc) # 1c004d38 <esp8266_send_cmd>
1c004f40:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004f44:	02b3d084 	addi.w	$r4,$r4,-780(0xcf4)
1c004f48:	57cd5bff 	bl	-12968(0xfffcd58) # 1c001ca0 <myprintf>
1c004f4c:	02825806 	addi.w	$r6,$r0,150(0x96)
1c004f50:	1c000025 	pcaddu12i	$r5,1(0x1)
1c004f54:	02b010a5 	addi.w	$r5,$r5,-1020(0xc04)
1c004f58:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004f5c:	02b3b084 	addi.w	$r4,$r4,-788(0xcec)
1c004f60:	57fddbff 	bl	-552(0xffffdd8) # 1c004d38 <esp8266_send_cmd>
1c004f64:	03400000 	andi	$r0,$r0,0x0
1c004f68:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004f6c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004f70:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004f74:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c004f80 <msg_wakeup>:
msg_wakeup():
1c004f80:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01bae0 <_sidata+0x15e8c>
1c004f84:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c004f89 <hexdecarr>:
hexdecarr():
1c004f89:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c004f8d:	37363534 	0x37363534
1c004f91:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfeb0c9 <_start-0x14f37>
1c004f95:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfeb4f9 <_start-0x14b07>
1c004f99:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c004f9d:	79654b0a 	0x79654b0a
1c004fa1:	73657220 	vssrani.wu.d	$vr0,$vr17,0x1c
1c004fa5:	0d217465 	xvbitsel.v	$xr5,$xr3,$xr29,$xr2
1c004fa9:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c004fad:	6970730a 	bltu	$r24,$r10,94320(0x17070) # 1c01c01d <_sidata+0x163c9>
1c004fb1:	6f6f6220 	bgeu	$r17,$r0,-37024(0x36f60) # 1bffbf11 <_start-0x40ef>
1c004fb5:	0d000074 	fsel	$f20,$f3,$f0,$fcc0
1c004fb9:	676f640a 	bge	$r0,$r10,-37020(0x36f64) # 1bffbf1d <_start-0x40e3>
1c004fbd:	72616220 	0x72616220
1c004fc1:	0a0d216b 	0x0a0d216b
1c004fc5:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c004fc9:	6b61770a 	bltu	$r24,$r10,-40588(0x36174) # 1bffb13d <_start-0x4ec3>
1c004fcd:	21705565 	sc.w	$r5,$r11,28756(0x7054)
1c004fd1:	c0000a0d 	0xc0000a0d
1c004fd5:	dc1c001e 	0xdc1c001e
1c004fd9:	dc1c001f 	0xdc1c001f
1c004fdd:	dc1c001f 	0xdc1c001f
1c004fe1:	dc1c001f 	0xdc1c001f
1c004fe5:	dc1c001f 	0xdc1c001f
1c004fe9:	dc1c001f 	0xdc1c001f
1c004fed:	dc1c001f 	0xdc1c001f
1c004ff1:	dc1c001f 	0xdc1c001f
1c004ff5:	dc1c001f 	0xdc1c001f
1c004ff9:	dc1c001f 	0xdc1c001f
1c004ffd:	d81c001f 	0xd81c001f
1c005001:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c006c01 <_sidata+0xfad>
1c005005:	601c001f 	blt	$r0,$r31,7168(0x1c00) # 1c006c05 <_sidata+0xfb1>
1c005009:	601c001f 	blt	$r0,$r31,7168(0x1c00) # 1c006c09 <_sidata+0xfb5>
1c00500d:	601c001f 	blt	$r0,$r31,7168(0x1c00) # 1c006c0d <_sidata+0xfb9>
1c005011:	601c001f 	blt	$r0,$r31,7168(0x1c00) # 1c006c11 <_sidata+0xfbd>
1c005015:	601c001f 	blt	$r0,$r31,7168(0x1c00) # 1c006c15 <_sidata+0xfc1>
1c005019:	601c001f 	blt	$r0,$r31,7168(0x1c00) # 1c006c19 <_sidata+0xfc5>
1c00501d:	601c001f 	blt	$r0,$r31,7168(0x1c00) # 1c006c1d <_sidata+0xfc9>
1c005021:	601c001f 	blt	$r0,$r31,7168(0x1c00) # 1c006c21 <_sidata+0xfcd>
1c005025:	dc1c001f 	0xdc1c001f
1c005029:	dc1c001f 	0xdc1c001f
1c00502d:	dc1c001f 	0xdc1c001f
1c005031:	dc1c001f 	0xdc1c001f
1c005035:	dc1c001f 	0xdc1c001f
1c005039:	dc1c001f 	0xdc1c001f
1c00503d:	dc1c001f 	0xdc1c001f
1c005041:	dc1c001f 	0xdc1c001f
1c005045:	dc1c001f 	0xdc1c001f
1c005049:	dc1c001f 	0xdc1c001f
1c00504d:	dc1c001f 	0xdc1c001f
1c005051:	dc1c001f 	0xdc1c001f
1c005055:	dc1c001f 	0xdc1c001f
1c005059:	dc1c001f 	0xdc1c001f
1c00505d:	dc1c001f 	0xdc1c001f
1c005061:	dc1c001f 	0xdc1c001f
1c005065:	dc1c001f 	0xdc1c001f
1c005069:	dc1c001f 	0xdc1c001f
1c00506d:	dc1c001f 	0xdc1c001f
1c005071:	dc1c001f 	0xdc1c001f
1c005075:	dc1c001f 	0xdc1c001f
1c005079:	dc1c001f 	0xdc1c001f
1c00507d:	dc1c001f 	0xdc1c001f
1c005081:	dc1c001f 	0xdc1c001f
1c005085:	dc1c001f 	0xdc1c001f
1c005089:	dc1c001f 	0xdc1c001f
1c00508d:	dc1c001f 	0xdc1c001f
1c005091:	dc1c001f 	0xdc1c001f
1c005095:	dc1c001f 	0xdc1c001f
1c005099:	dc1c001f 	0xdc1c001f
1c00509d:	dc1c001f 	0xdc1c001f
1c0050a1:	dc1c001f 	0xdc1c001f
1c0050a5:	dc1c001f 	0xdc1c001f
1c0050a9:	dc1c001f 	0xdc1c001f
1c0050ad:	dc1c001f 	0xdc1c001f
1c0050b1:	dc1c001f 	0xdc1c001f
1c0050b5:	dc1c001f 	0xdc1c001f
1c0050b9:	dc1c001f 	0xdc1c001f
1c0050bd:	dc1c001f 	0xdc1c001f
1c0050c1:	dc1c001f 	0xdc1c001f
1c0050c5:	501c001f 	b	8133632(0x7c1c00) # 1c7c6cc5 <_sidata+0x7c1071>
1c0050c9:	781c001e 	0x781c001e
1c0050cd:	e01c001d 	0xe01c001d
1c0050d1:	dc1c001d 	0xdc1c001d
1c0050d5:	dc1c001f 	0xdc1c001f
1c0050d9:	dc1c001f 	0xdc1c001f
1c0050dd:	dc1c001f 	0xdc1c001f
1c0050e1:	dc1c001f 	0xdc1c001f
1c0050e5:	dc1c001f 	0xdc1c001f
1c0050e9:	dc1c001f 	0xdc1c001f
1c0050ed:	dc1c001f 	0xdc1c001f
1c0050f1:	dc1c001f 	0xdc1c001f
1c0050f5:	dc1c001f 	0xdc1c001f
1c0050f9:	181c001f 	pcaddi	$r31,57344(0xe000)
1c0050fd:	881c001e 	0x881c001e
1c005101:	dc1c001e 	0xdc1c001e
1c005105:	dc1c001f 	0xdc1c001f
1c005109:	4c1c001f 	jirl	$r31,$r0,7168(0x1c00)
1c00510d:	dc1c001d 	0xdc1c001d
1c005111:	a81c001f 	0xa81c001f
1c005115:	dc1c001d 	0xdc1c001d
1c005119:	dc1c001f 	0xdc1c001f
1c00511d:	881c001f 	0x881c001f
1c005121:	b41c001e 	0xb41c001e
1c005125:	d81c0022 	0xd81c0022
1c005129:	d81c0023 	0xd81c0023
1c00512d:	d81c0023 	0xd81c0023
1c005131:	d81c0023 	0xd81c0023
1c005135:	d81c0023 	0xd81c0023
1c005139:	d81c0023 	0xd81c0023
1c00513d:	d81c0023 	0xd81c0023
1c005141:	d81c0023 	0xd81c0023
1c005145:	d81c0023 	0xd81c0023
1c005149:	d81c0023 	0xd81c0023
1c00514d:	d41c0023 	0xd41c0023
1c005151:	5c1c0022 	bne	$r1,$r2,7168(0x1c00) # 1c006d51 <_sidata+0x10fd>
1c005155:	5c1c0023 	bne	$r1,$r3,7168(0x1c00) # 1c006d55 <_sidata+0x1101>
1c005159:	5c1c0023 	bne	$r1,$r3,7168(0x1c00) # 1c006d59 <_sidata+0x1105>
1c00515d:	5c1c0023 	bne	$r1,$r3,7168(0x1c00) # 1c006d5d <_sidata+0x1109>
1c005161:	5c1c0023 	bne	$r1,$r3,7168(0x1c00) # 1c006d61 <_sidata+0x110d>
1c005165:	5c1c0023 	bne	$r1,$r3,7168(0x1c00) # 1c006d65 <_sidata+0x1111>
1c005169:	5c1c0023 	bne	$r1,$r3,7168(0x1c00) # 1c006d69 <_sidata+0x1115>
1c00516d:	5c1c0023 	bne	$r1,$r3,7168(0x1c00) # 1c006d6d <_sidata+0x1119>
1c005171:	5c1c0023 	bne	$r1,$r3,7168(0x1c00) # 1c006d71 <_sidata+0x111d>
1c005175:	d81c0023 	0xd81c0023
1c005179:	d81c0023 	0xd81c0023
1c00517d:	d81c0023 	0xd81c0023
1c005181:	d81c0023 	0xd81c0023
1c005185:	d81c0023 	0xd81c0023
1c005189:	d81c0023 	0xd81c0023
1c00518d:	d81c0023 	0xd81c0023
1c005191:	d81c0023 	0xd81c0023
1c005195:	d81c0023 	0xd81c0023
1c005199:	d81c0023 	0xd81c0023
1c00519d:	d81c0023 	0xd81c0023
1c0051a1:	d81c0023 	0xd81c0023
1c0051a5:	d81c0023 	0xd81c0023
1c0051a9:	d81c0023 	0xd81c0023
1c0051ad:	d81c0023 	0xd81c0023
1c0051b1:	d81c0023 	0xd81c0023
1c0051b5:	d81c0023 	0xd81c0023
1c0051b9:	d81c0023 	0xd81c0023
1c0051bd:	d81c0023 	0xd81c0023
1c0051c1:	d81c0023 	0xd81c0023
1c0051c5:	d81c0023 	0xd81c0023
1c0051c9:	d81c0023 	0xd81c0023
1c0051cd:	d81c0023 	0xd81c0023
1c0051d1:	d81c0023 	0xd81c0023
1c0051d5:	d81c0023 	0xd81c0023
1c0051d9:	d81c0023 	0xd81c0023
1c0051dd:	d81c0023 	0xd81c0023
1c0051e1:	d81c0023 	0xd81c0023
1c0051e5:	d81c0023 	0xd81c0023
1c0051e9:	d81c0023 	0xd81c0023
1c0051ed:	701c0023 	0x701c0023
1c0051f1:	d81c0022 	0xd81c0022
1c0051f5:	d81c0023 	0xd81c0023
1c0051f9:	d81c0023 	0xd81c0023
1c0051fd:	d81c0023 	0xd81c0023
1c005201:	d81c0023 	0xd81c0023
1c005205:	d81c0023 	0xd81c0023
1c005209:	d81c0023 	0xd81c0023
1c00520d:	d81c0023 	0xd81c0023
1c005211:	d81c0023 	0xd81c0023
1c005215:	2c1c0023 	vld	$vr3,$r1,1792(0x700)
1c005219:	281c0022 	ld.b	$r2,$r1,1792(0x700)
1c00521d:	a41c0021 	0xa41c0021
1c005221:	d81c0021 	0xd81c0021
1c005225:	d81c0023 	0xd81c0023
1c005229:	d81c0023 	0xd81c0023
1c00522d:	d81c0023 	0xd81c0023
1c005231:	d81c0023 	0xd81c0023
1c005235:	d81c0023 	0xd81c0023
1c005239:	d81c0023 	0xd81c0023
1c00523d:	d81c0023 	0xd81c0023
1c005241:	d81c0023 	0xd81c0023
1c005245:	d81c0023 	0xd81c0023
1c005249:	e81c0023 	0xe81c0023
1c00524d:	701c0021 	0x701c0021
1c005251:	d81c0022 	0xd81c0022
1c005255:	d81c0023 	0xd81c0023
1c005259:	f41c0023 	0xf41c0023
1c00525d:	d81c0020 	0xd81c0020
1c005261:	601c0023 	blt	$r1,$r3,7168(0x1c00) # 1c006e61 <_sidata+0x120d>
1c005265:	d81c0021 	0xd81c0021
1c005269:	d81c0023 	0xd81c0023
1c00526d:	701c0023 	0x701c0023
1c005271:	0a1c0022 	xvfmadd.s	$xr2,$xr1,$xr0,$xr24
1c005275:	7c000000 	0x7c000000
1c005279:	7c7c7c7c 	0x7c7c7c7c
1c00527d:	7c7c7c7c 	0x7c7c7c7c
1c005281:	7c7c7c7c 	0x7c7c7c7c
1c005285:	7c7c7c7c 	0x7c7c7c7c
1c005289:	7c7c7c7c 	0x7c7c7c7c
1c00528d:	7c7c7c7c 	0x7c7c7c7c
1c005291:	7c7c7c7c 	0x7c7c7c7c
1c005295:	7c7c7c7c 	0x7c7c7c7c
1c005299:	7c7c7c7c 	0x7c7c7c7c
1c00529d:	7c7c7c7c 	0x7c7c7c7c
1c0052a1:	7c7c7c7c 	0x7c7c7c7c
1c0052a5:	7c7c7c7c 	0x7c7c7c7c
1c0052a9:	7c7c7c7c 	0x7c7c7c7c
1c0052ad:	7c7c7c7c 	0x7c7c7c7c
1c0052b1:	7c7c7c7c 	0x7c7c7c7c
1c0052b5:	7c7c7c7c 	0x7c7c7c7c
1c0052b9:	7c7c7c7c 	0x7c7c7c7c
1c0052bd:	7c7c7c7c 	0x7c7c7c7c
1c0052c1:	7c7c7c7c 	0x7c7c7c7c
1c0052c5:	7c7c7c7c 	0x7c7c7c7c
1c0052c9:	7c7c7c7c 	0x7c7c7c7c
1c0052cd:	7c7c7c7c 	0x7c7c7c7c
1c0052d1:	7c7c7c7c 	0x7c7c7c7c
1c0052d5:	7c7c7c7c 	0x7c7c7c7c
1c0052d9:	7c00000a 	0x7c00000a
1c0052dd:	7c20207c 	0x7c20207c
1c0052e1:	7c7c7c7c 	0x7c7c7c7c
1c0052e5:	7c7c7c7c 	0x7c7c7c7c
1c0052e9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0052ed:	7c202020 	0x7c202020
1c0052f1:	7c7c7c7c 	0x7c7c7c7c
1c0052f5:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0052f9:	7c202020 	0x7c202020
1c0052fd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005301:	7c7c2020 	0x7c7c2020
1c005305:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005309:	7c7c7c20 	0x7c7c7c20
1c00530d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c005311:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c005315:	7c7c7c7c 	0x7c7c7c7c
1c005319:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00531d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c005321:	7c7c7c7c 	0x7c7c7c7c
1c005325:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c005329:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00532d:	7c7c7c7c 	0x7c7c7c7c
1c005331:	7c202020 	0x7c202020
1c005335:	7c7c7c7c 	0x7c7c7c7c
1c005339:	7c7c2020 	0x7c7c2020
1c00533d:	7c00000a 	0x7c00000a
1c005341:	7c20207c 	0x7c20207c
1c005345:	7c7c7c7c 	0x7c7c7c7c
1c005349:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00534d:	7c7c2020 	0x7c7c2020
1c005351:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c005355:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005359:	7c7c2020 	0x7c7c2020
1c00535d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c005361:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005365:	7c202020 	0x7c202020
1c005369:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00536d:	7c7c7c20 	0x7c7c7c20
1c005371:	7c20207c 	0x7c20207c
1c005375:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005379:	7c7c7c20 	0x7c7c7c20
1c00537d:	7c202020 	0x7c202020
1c005381:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005385:	7c7c7c20 	0x7c7c7c20
1c005389:	7c202020 	0x7c202020
1c00538d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005391:	7c7c7c20 	0x7c7c7c20
1c005395:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c005399:	7c7c7c7c 	0x7c7c7c7c
1c00539d:	7c7c2020 	0x7c7c2020
1c0053a1:	7c00000a 	0x7c00000a
1c0053a5:	7c20207c 	0x7c20207c
1c0053a9:	7c7c7c7c 	0x7c7c7c7c
1c0053ad:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0053b1:	7c7c7c20 	0x7c7c7c20
1c0053b5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0053b9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0053bd:	7c7c7c20 	0x7c7c7c20
1c0053c1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0053c5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0053c9:	20207c20 	ll.w	$r0,$r1,8316(0x207c)
1c0053cd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0053d1:	7c7c7c20 	0x7c7c7c20
1c0053d5:	7c7c2020 	0x7c7c2020
1c0053d9:	7c7c7c7c 	0x7c7c7c7c
1c0053dd:	7c7c7c7c 	0x7c7c7c7c
1c0053e1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0053e5:	7c7c7c20 	0x7c7c7c20
1c0053e9:	7c7c7c7c 	0x7c7c7c7c
1c0053ed:	7c7c2020 	0x7c7c2020
1c0053f1:	7c7c7c7c 	0x7c7c7c7c
1c0053f5:	7c7c7c20 	0x7c7c7c20
1c0053f9:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c0053fd:	7c7c7c20 	0x7c7c7c20
1c005401:	7c7c2020 	0x7c7c2020
1c005405:	7c00000a 	0x7c00000a
1c005409:	7c20207c 	0x7c20207c
1c00540d:	7c7c7c7c 	0x7c7c7c7c
1c005411:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005415:	7c7c7c20 	0x7c7c7c20
1c005419:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00541d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005421:	7c7c7c20 	0x7c7c7c20
1c005425:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005429:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00542d:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c005431:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c005435:	7c7c7c20 	0x7c7c7c20
1c005439:	7c7c2020 	0x7c7c2020
1c00543d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c005441:	7c7c7c20 	0x7c7c7c20
1c005445:	7c7c7c7c 	0x7c7c7c7c
1c005449:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00544d:	7c7c7c7c 	0x7c7c7c7c
1c005451:	7c7c2020 	0x7c7c2020
1c005455:	7c7c7c7c 	0x7c7c7c7c
1c005459:	7c7c7c20 	0x7c7c7c20
1c00545d:	7c7c2020 	0x7c7c2020
1c005461:	7c7c2020 	0x7c7c2020
1c005465:	7c7c2020 	0x7c7c2020
1c005469:	7c00000a 	0x7c00000a
1c00546d:	7c20207c 	0x7c20207c
1c005471:	7c7c7c7c 	0x7c7c7c7c
1c005475:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005479:	7c7c7c20 	0x7c7c7c20
1c00547d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005481:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005485:	7c7c7c20 	0x7c7c7c20
1c005489:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00548d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005491:	7c7c7c20 	0x7c7c7c20
1c005495:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c005499:	7c7c7c20 	0x7c7c7c20
1c00549d:	7c7c2020 	0x7c7c2020
1c0054a1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0054a5:	7c7c7c20 	0x7c7c7c20
1c0054a9:	7c7c7c7c 	0x7c7c7c7c
1c0054ad:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0054b1:	7c7c7c20 	0x7c7c7c20
1c0054b5:	7c7c2020 	0x7c7c2020
1c0054b9:	7c7c7c7c 	0x7c7c7c7c
1c0054bd:	7c7c7c20 	0x7c7c7c20
1c0054c1:	7c7c2020 	0x7c7c2020
1c0054c5:	7c20207c 	0x7c20207c
1c0054c9:	7c7c2020 	0x7c7c2020
1c0054cd:	7c00000a 	0x7c00000a
1c0054d1:	7c20207c 	0x7c20207c
1c0054d5:	7c7c7c7c 	0x7c7c7c7c
1c0054d9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0054dd:	7c7c2020 	0x7c7c2020
1c0054e1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0054e5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0054e9:	7c7c2020 	0x7c7c2020
1c0054ed:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0054f1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0054f5:	7c7c7c20 	0x7c7c7c20
1c0054f9:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0054fd:	7c7c7c20 	0x7c7c7c20
1c005501:	7c202020 	0x7c202020
1c005505:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005509:	7c7c7c20 	0x7c7c7c20
1c00550d:	7c202020 	0x7c202020
1c005511:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c005515:	7c7c7c7c 	0x7c7c7c7c
1c005519:	7c202020 	0x7c202020
1c00551d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005521:	7c7c7c20 	0x7c7c7c20
1c005525:	7c7c2020 	0x7c7c2020
1c005529:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c00552d:	7c7c2020 	0x7c7c2020
1c005531:	7c00000a 	0x7c00000a
1c005535:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c005539:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00553d:	7c7c7c7c 	0x7c7c7c7c
1c005541:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c005545:	7c202020 	0x7c202020
1c005549:	7c7c7c7c 	0x7c7c7c7c
1c00554d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c005551:	7c202020 	0x7c202020
1c005555:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005559:	7c7c7c20 	0x7c7c7c20
1c00555d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c005561:	7c7c7c20 	0x7c7c7c20
1c005565:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c005569:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00556d:	7c7c7c7c 	0x7c7c7c7c
1c005571:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c005575:	7c202020 	0x7c202020
1c005579:	7c7c7c7c 	0x7c7c7c7c
1c00557d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c005581:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c005585:	7c7c7c7c 	0x7c7c7c7c
1c005589:	7c7c2020 	0x7c7c2020
1c00558d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005591:	7c7c2020 	0x7c7c2020
1c005595:	7c00000a 	0x7c00000a
1c005599:	7c7c7c7c 	0x7c7c7c7c
1c00559d:	7c7c7c7c 	0x7c7c7c7c
1c0055a1:	7c7c7c7c 	0x7c7c7c7c
1c0055a5:	7c7c7c7c 	0x7c7c7c7c
1c0055a9:	7c7c7c7c 	0x7c7c7c7c
1c0055ad:	7c7c7c7c 	0x7c7c7c7c
1c0055b1:	7c7c7c7c 	0x7c7c7c7c
1c0055b5:	7c7c7c7c 	0x7c7c7c7c
1c0055b9:	7c7c7c7c 	0x7c7c7c7c
1c0055bd:	325b7c7c 	xvldrepl.h	$xr28,$r3,-578(0xdbe)
1c0055c1:	20303230 	ll.w	$r16,$r17,12336(0x3030)
1c0055c5:	4e4f4f4c 	jirl	$r12,$r26,-110772(0x24f4c)
1c0055c9:	4e4f5347 	jirl	$r7,$r26,-110768(0x24f50)
1c0055cd:	7c7c7c5d 	0x7c7c7c5d
1c0055d1:	7c7c7c7c 	0x7c7c7c7c
1c0055d5:	7c7c7c7c 	0x7c7c7c7c
1c0055d9:	7c7c7c7c 	0x7c7c7c7c
1c0055dd:	7c7c7c7c 	0x7c7c7c7c
1c0055e1:	7c7c7c7c 	0x7c7c7c7c
1c0055e5:	7c7c7c7c 	0x7c7c7c7c
1c0055e9:	7c7c7c7c 	0x7c7c7c7c
1c0055ed:	7c7c7c7c 	0x7c7c7c7c
1c0055f1:	7c7c7c7c 	0x7c7c7c7c
1c0055f5:	7c7c7c7c 	0x7c7c7c7c
1c0055f9:	0900000a 	0x0900000a
1c0055fd:	0a006425 	0x0a006425
1c005601:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c005605:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c005609:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c00560d:	0050550a 	0x0050550a
1c005611:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c005615:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00cb61 <_sidata+0x6f0d>
1c005619:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c00561d:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c005621:	756f430a 	0x756f430a
1c005625:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c005629:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c00562d:	3030090a 	0x3030090a
1c005631:	09313009 	0x09313009
1c005635:	30093230 	0x30093230
1c005639:	34300933 	0x34300933
1c00563d:	09353009 	0x09353009
1c005641:	30093630 	0x30093630
1c005645:	38300937 	fldx.s	$f23,$r9,$r2
1c005649:	09393009 	0x09393009
1c00564d:	31093031 	0x31093031
1c005651:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c005655:	746e630a 	0x746e630a
1c005659:	09000000 	0x09000000
1c00565d:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c005661:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c005665:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c005669:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00b7bd <_sidata+0x5b69>
1c00566d:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c005671:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfecbc1 <_start-0x1343f>
1c005675:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c005679:	09000000 	0x09000000
1c00567d:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c005681:	09000000 	0x09000000
1c005685:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c005689:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00568d:	203c200a 	ll.w	$r10,$r0,15392(0x3c20)
1c005691:	3a515249 	0x3a515249
1c005695:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c005699:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # 1bffc50d <_start-0x3af3>
1c00569d:	2073253a 	ll.w	$r26,$r9,29476(0x7324)
1c0056a1:	0d3e2020 	0x0d3e2020
1c0056a5:	0a00000a 	0x0a00000a
1c0056a9:	2e2e2e2e 	0x2e2e2e2e
1c0056ad:	2e2e2e2e 	0x2e2e2e2e
1c0056b1:	2e2e2e2e 	0x2e2e2e2e
1c0056b5:	464f532e 	bnez	$r25,3821392(0x3a4f50) # 1c3aa605 <_sidata+0x3a49b1>
1c0056b9:	4e495f54 	jirl	$r20,$r26,-112292(0x2495c)
1c0056bd:	2e2e2e54 	0x2e2e2e54
1c0056c1:	2e2e2e2e 	0x2e2e2e2e
1c0056c5:	2e2e2e2e 	0x2e2e2e2e
1c0056c9:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c0056cd:	0d00000d 	fsel	$f13,$f0,$f0,$fcc0
1c0056d1:	2e2e2e0a 	0x2e2e2e0a
1c0056d5:	2e2e2e2e 	0x2e2e2e2e
1c0056d9:	2e2e2e2e 	0x2e2e2e2e
1c0056dd:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c399909 <_sidata+0x393cb5>
1c0056e1:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd19d3d <_start-0x2e62c3>
1c0056e5:	2e2e4c49 	0x2e2e4c49
1c0056e9:	2e2e2e2e 	0x2e2e2e2e
1c0056ed:	2e2e2e2e 	0x2e2e2e2e
1c0056f1:	2e2e2e2e 	0x2e2e2e2e
1c0056f5:	0d000a0d 	fsel	$f13,$f16,$f2,$fcc0
1c0056f9:	2e2e2e0a 	0x2e2e2e0a
1c0056fd:	2e2e2e2e 	0x2e2e2e2e
1c005701:	2e2e2e2e 	0x2e2e2e2e
1c005705:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c389831 <_sidata+0x383bdd>
1c005709:	2e2e2e43 	0x2e2e2e43
1c00570d:	2e2e2e2e 	0x2e2e2e2e
1c005711:	2e2e2e2e 	0x2e2e2e2e
1c005715:	0d2e2e2e 	xvbitsel.v	$xr14,$xr17,$xr11,$xr28
1c005719:	4300000a 	beqz	$r0,2818048(0x2b0000) # 1c2b5719 <_sidata+0x2afac5>
1c00571d:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c005721:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01c489 <_sidata+0x16835>
1c005725:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00ba45 <_sidata+0x5df1>
1c005729:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c00572d:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01cb99 <_sidata+0x16f45>
1c005731:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c005735:	0d2e2e74 	xvbitsel.v	$xr20,$xr19,$xr11,$xr28
1c005739:	 	0xc000000a

1c00573c <Ext_IrqHandle>:
1c00573c:	1c003bc0 	pcaddu12i	$r0,478(0x1de)
1c005740:	1c003c0c 	pcaddu12i	$r12,480(0x1e0)
1c005744:	1c003c58 	pcaddu12i	$r24,482(0x1e2)
1c005748:	1c003ca4 	pcaddu12i	$r4,485(0x1e5)
1c00574c:	1c003cf0 	pcaddu12i	$r16,487(0x1e7)
1c005750:	1c003d3c 	pcaddu12i	$r28,489(0x1e9)
1c005754:	1c003d88 	pcaddu12i	$r8,492(0x1ec)
1c005758:	1c003dd4 	pcaddu12i	$r20,494(0x1ee)
1c00575c:	1c003e20 	pcaddu12i	$r0,497(0x1f1)
1c005760:	1c003e6c 	pcaddu12i	$r12,499(0x1f3)
1c005764:	1c003eb8 	pcaddu12i	$r24,501(0x1f5)
1c005768:	1c003f04 	pcaddu12i	$r4,504(0x1f8)
1c00576c:	1c003f50 	pcaddu12i	$r16,506(0x1fa)
1c005770:	1c003f9c 	pcaddu12i	$r28,508(0x1fc)
1c005774:	1c003fe8 	pcaddu12i	$r8,511(0x1ff)
1c005778:	1c004034 	pcaddu12i	$r20,513(0x201)
1c00577c:	1c004080 	pcaddu12i	$r0,516(0x204)
1c005780:	1c0040cc 	pcaddu12i	$r12,518(0x206)
1c005784:	1c004118 	pcaddu12i	$r24,520(0x208)
1c005788:	1c004164 	pcaddu12i	$r4,523(0x20b)
1c00578c:	1c0041b0 	pcaddu12i	$r16,525(0x20d)
1c005790:	1c0041fc 	pcaddu12i	$r28,527(0x20f)
1c005794:	1c004248 	pcaddu12i	$r8,530(0x212)
1c005798:	1c004294 	pcaddu12i	$r20,532(0x214)
1c00579c:	1c0042e0 	pcaddu12i	$r0,535(0x217)
1c0057a0:	1c00432c 	pcaddu12i	$r12,537(0x219)
1c0057a4:	1c004378 	pcaddu12i	$r24,539(0x21b)
1c0057a8:	1c0043c4 	pcaddu12i	$r4,542(0x21e)
1c0057ac:	1c004410 	pcaddu12i	$r16,544(0x220)
1c0057b0:	1c00445c 	pcaddu12i	$r28,546(0x222)
1c0057b4:	1c0044a8 	pcaddu12i	$r8,549(0x225)
1c0057b8:	1c0044f4 	pcaddu12i	$r20,551(0x227)
1c0057bc:	1c0047d8 	pcaddu12i	$r24,574(0x23e)
1c0057c0:	1c004788 	pcaddu12i	$r8,572(0x23c)
1c0057c4:	1c0047d8 	pcaddu12i	$r24,574(0x23e)
1c0057c8:	1c0047d8 	pcaddu12i	$r24,574(0x23e)
1c0057cc:	1c0047d8 	pcaddu12i	$r24,574(0x23e)
1c0057d0:	1c0047d8 	pcaddu12i	$r24,574(0x23e)
1c0057d4:	1c0047d8 	pcaddu12i	$r24,574(0x23e)
1c0057d8:	1c0047d8 	pcaddu12i	$r24,574(0x23e)
1c0057dc:	1c0047d8 	pcaddu12i	$r24,574(0x23e)
1c0057e0:	1c0047d8 	pcaddu12i	$r24,574(0x23e)
1c0057e4:	1c0047d8 	pcaddu12i	$r24,574(0x23e)
1c0057e8:	1c0047d8 	pcaddu12i	$r24,574(0x23e)
1c0057ec:	1c0047d8 	pcaddu12i	$r24,574(0x23e)
1c0057f0:	1c0047d8 	pcaddu12i	$r24,574(0x23e)
1c0057f4:	1c0047d8 	pcaddu12i	$r24,574(0x23e)
1c0057f8:	1c0047d8 	pcaddu12i	$r24,574(0x23e)
1c0057fc:	1c0047a4 	pcaddu12i	$r4,573(0x23d)

1c005800 <__FUNCTION__.1642>:
1c005800:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cc78 <_sidata+0x17024>
1c005804:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c868 <_sidata+0x16c14>
1c005808:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bff8868 <_start-0x7798>
1c00580c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffc97c <_start-0x3684>
1c005810:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c670 <_sidata+0x6a1c>
1c005814:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005818 <__FUNCTION__.1646>:
1c005818:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cc90 <_sidata+0x1703c>
1c00581c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c880 <_sidata+0x16c2c>
1c005820:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bff8980 <_start-0x7680>
1c005824:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffc994 <_start-0x366c>
1c005828:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c688 <_sidata+0x6a34>
1c00582c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005830 <__FUNCTION__.1650>:
1c005830:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cca8 <_sidata+0x17054>
1c005834:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c898 <_sidata+0x16c44>
1c005838:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bff8a98 <_start-0x7568>
1c00583c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffc9ac <_start-0x3654>
1c005840:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c6a0 <_sidata+0x6a4c>
1c005844:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005848 <__FUNCTION__.1654>:
1c005848:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ccc0 <_sidata+0x1706c>
1c00584c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c8b0 <_sidata+0x16c5c>
1c005850:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bff8bb0 <_start-0x7450>
1c005854:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffc9c4 <_start-0x363c>
1c005858:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c6b8 <_sidata+0x6a64>
1c00585c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005860 <__FUNCTION__.1658>:
1c005860:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ccd8 <_sidata+0x17084>
1c005864:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c8c8 <_sidata+0x16c74>
1c005868:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bff8cc8 <_start-0x7338>
1c00586c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffc9dc <_start-0x3624>
1c005870:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c6d0 <_sidata+0x6a7c>
1c005874:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005878 <__FUNCTION__.1662>:
1c005878:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ccf0 <_sidata+0x1709c>
1c00587c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c8e0 <_sidata+0x16c8c>
1c005880:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bff8de0 <_start-0x7220>
1c005884:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffc9f4 <_start-0x360c>
1c005888:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c6e8 <_sidata+0x6a94>
1c00588c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005890 <__FUNCTION__.1666>:
1c005890:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cd08 <_sidata+0x170b4>
1c005894:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c8f8 <_sidata+0x16ca4>
1c005898:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bff8ef8 <_start-0x7108>
1c00589c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffca0c <_start-0x35f4>
1c0058a0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c700 <_sidata+0x6aac>
1c0058a4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0058a8 <__FUNCTION__.1670>:
1c0058a8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cd20 <_sidata+0x170cc>
1c0058ac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c910 <_sidata+0x16cbc>
1c0058b0:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bff9010 <_start-0x6ff0>
1c0058b4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffca24 <_start-0x35dc>
1c0058b8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c718 <_sidata+0x6ac4>
1c0058bc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0058c0 <__FUNCTION__.1674>:
1c0058c0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cd38 <_sidata+0x170e4>
1c0058c4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c928 <_sidata+0x16cd4>
1c0058c8:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bff8928 <_start-0x76d8>
1c0058cc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffca3c <_start-0x35c4>
1c0058d0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c730 <_sidata+0x6adc>
1c0058d4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0058d8 <__FUNCTION__.1678>:
1c0058d8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cd50 <_sidata+0x170fc>
1c0058dc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c940 <_sidata+0x16cec>
1c0058e0:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bff8a40 <_start-0x75c0>
1c0058e4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffca54 <_start-0x35ac>
1c0058e8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c748 <_sidata+0x6af4>
1c0058ec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0058f0 <__FUNCTION__.1682>:
1c0058f0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cd68 <_sidata+0x17114>
1c0058f4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c958 <_sidata+0x16d04>
1c0058f8:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bff8b58 <_start-0x74a8>
1c0058fc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffca6c <_start-0x3594>
1c005900:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c760 <_sidata+0x6b0c>
1c005904:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005908 <__FUNCTION__.1686>:
1c005908:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cd80 <_sidata+0x1712c>
1c00590c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c970 <_sidata+0x16d1c>
1c005910:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bff8c70 <_start-0x7390>
1c005914:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffca84 <_start-0x357c>
1c005918:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c778 <_sidata+0x6b24>
1c00591c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005920 <__FUNCTION__.1690>:
1c005920:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cd98 <_sidata+0x17144>
1c005924:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c988 <_sidata+0x16d34>
1c005928:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bff8d88 <_start-0x7278>
1c00592c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffca9c <_start-0x3564>
1c005930:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c790 <_sidata+0x6b3c>
1c005934:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005938 <__FUNCTION__.1694>:
1c005938:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cdb0 <_sidata+0x1715c>
1c00593c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c9a0 <_sidata+0x16d4c>
1c005940:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bff8ea0 <_start-0x7160>
1c005944:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcab4 <_start-0x354c>
1c005948:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c7a8 <_sidata+0x6b54>
1c00594c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005950 <__FUNCTION__.1698>:
1c005950:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cdc8 <_sidata+0x17174>
1c005954:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c9b8 <_sidata+0x16d64>
1c005958:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bff8fb8 <_start-0x7048>
1c00595c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcacc <_start-0x3534>
1c005960:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c7c0 <_sidata+0x6b6c>
1c005964:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005968 <__FUNCTION__.1702>:
1c005968:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cde0 <_sidata+0x1718c>
1c00596c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c9d0 <_sidata+0x16d7c>
1c005970:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bff90d0 <_start-0x6f30>
1c005974:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcae4 <_start-0x351c>
1c005978:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c7d8 <_sidata+0x6b84>
1c00597c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005980 <__FUNCTION__.1706>:
1c005980:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cdf8 <_sidata+0x171a4>
1c005984:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c9e8 <_sidata+0x16d94>
1c005988:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bff89e8 <_start-0x7618>
1c00598c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcafc <_start-0x3504>
1c005990:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c7f0 <_sidata+0x6b9c>
1c005994:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005998 <__FUNCTION__.1710>:
1c005998:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ce10 <_sidata+0x171bc>
1c00599c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ca00 <_sidata+0x16dac>
1c0059a0:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bff8b00 <_start-0x7500>
1c0059a4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcb14 <_start-0x34ec>
1c0059a8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c808 <_sidata+0x6bb4>
1c0059ac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0059b0 <__FUNCTION__.1714>:
1c0059b0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ce28 <_sidata+0x171d4>
1c0059b4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ca18 <_sidata+0x16dc4>
1c0059b8:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bff8c18 <_start-0x73e8>
1c0059bc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcb2c <_start-0x34d4>
1c0059c0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c820 <_sidata+0x6bcc>
1c0059c4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0059c8 <__FUNCTION__.1718>:
1c0059c8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ce40 <_sidata+0x171ec>
1c0059cc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ca30 <_sidata+0x16ddc>
1c0059d0:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bff8d30 <_start-0x72d0>
1c0059d4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcb44 <_start-0x34bc>
1c0059d8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c838 <_sidata+0x6be4>
1c0059dc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0059e0 <__FUNCTION__.1722>:
1c0059e0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ce58 <_sidata+0x17204>
1c0059e4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ca48 <_sidata+0x16df4>
1c0059e8:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bff8e48 <_start-0x71b8>
1c0059ec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcb5c <_start-0x34a4>
1c0059f0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c850 <_sidata+0x6bfc>
1c0059f4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0059f8 <__FUNCTION__.1726>:
1c0059f8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ce70 <_sidata+0x1721c>
1c0059fc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ca60 <_sidata+0x16e0c>
1c005a00:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bff8f60 <_start-0x70a0>
1c005a04:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcb74 <_start-0x348c>
1c005a08:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c868 <_sidata+0x6c14>
1c005a0c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005a10 <__FUNCTION__.1730>:
1c005a10:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ce88 <_sidata+0x17234>
1c005a14:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ca78 <_sidata+0x16e24>
1c005a18:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bff9078 <_start-0x6f88>
1c005a1c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcb8c <_start-0x3474>
1c005a20:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c880 <_sidata+0x6c2c>
1c005a24:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005a28 <__FUNCTION__.1734>:
1c005a28:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cea0 <_sidata+0x1724c>
1c005a2c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ca90 <_sidata+0x16e3c>
1c005a30:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bff9190 <_start-0x6e70>
1c005a34:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcba4 <_start-0x345c>
1c005a38:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c898 <_sidata+0x6c44>
1c005a3c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005a40 <__FUNCTION__.1738>:
1c005a40:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ceb8 <_sidata+0x17264>
1c005a44:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01caa8 <_sidata+0x16e54>
1c005a48:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bff8aac <_start-0x7554>
1c005a4c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcbbc <_start-0x3444>
1c005a50:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c8b0 <_sidata+0x6c5c>
1c005a54:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005a58 <__FUNCTION__.1742>:
1c005a58:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ced0 <_sidata+0x1727c>
1c005a5c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01cac0 <_sidata+0x16e6c>
1c005a60:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bff8bc4 <_start-0x743c>
1c005a64:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcbd4 <_start-0x342c>
1c005a68:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c8c8 <_sidata+0x6c74>
1c005a6c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005a70 <__FUNCTION__.1746>:
1c005a70:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cee8 <_sidata+0x17294>
1c005a74:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01cad8 <_sidata+0x16e84>
1c005a78:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bff8cdc <_start-0x7324>
1c005a7c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcbec <_start-0x3414>
1c005a80:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c8e0 <_sidata+0x6c8c>
1c005a84:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005a88 <__FUNCTION__.1750>:
1c005a88:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cf00 <_sidata+0x172ac>
1c005a8c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01caf0 <_sidata+0x16e9c>
1c005a90:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bff8df4 <_start-0x720c>
1c005a94:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcc04 <_start-0x33fc>
1c005a98:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c8f8 <_sidata+0x6ca4>
1c005a9c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005aa0 <__FUNCTION__.1754>:
1c005aa0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cf18 <_sidata+0x172c4>
1c005aa4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01cb08 <_sidata+0x16eb4>
1c005aa8:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bff8f0c <_start-0x70f4>
1c005aac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcc1c <_start-0x33e4>
1c005ab0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c910 <_sidata+0x6cbc>
1c005ab4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005ab8 <__FUNCTION__.1758>:
1c005ab8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cf30 <_sidata+0x172dc>
1c005abc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01cb20 <_sidata+0x16ecc>
1c005ac0:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bff9024 <_start-0x6fdc>
1c005ac4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcc34 <_start-0x33cc>
1c005ac8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c928 <_sidata+0x6cd4>
1c005acc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005ad0 <__FUNCTION__.1762>:
1c005ad0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cf48 <_sidata+0x172f4>
1c005ad4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01cb38 <_sidata+0x16ee4>
1c005ad8:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bff913c <_start-0x6ec4>
1c005adc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcc4c <_start-0x33b4>
1c005ae0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c940 <_sidata+0x6cec>
1c005ae4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005ae8 <__FUNCTION__.1766>:
1c005ae8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cf60 <_sidata+0x1730c>
1c005aec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01cb50 <_sidata+0x16efc>
1c005af0:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bff9254 <_start-0x6dac>
1c005af4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcc64 <_start-0x339c>
1c005af8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c958 <_sidata+0x6d04>
1c005afc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
1c005b00:	63656863 	blt	$r3,$r3,-39576(0x36568) # 1bffc068 <_start-0x3f98>
1c005b04:	4155206b 	beqz	$r3,2970912(0x2d5520) # 1c2db024 <_sidata+0x2d53d0>
1c005b08:	5f305452 	bne	$r2,$r18,-53164(0x33054) # 1bff8b5c <_start-0x74a4>
1c005b0c:	425f5852 	beqz	$r2,-3514536(0x4a5f58) # 1bcaba64 <_start-0x35459c>
1c005b10:	253a4655 	stptr.w	$r21,$r18,14916(0x3a44)
1c005b14:	000a0d73 	0x000a0d73
1c005b18:	3a646d63 	0x3a646d63
1c005b1c:	0a0d7325 	0x0a0d7325
1c005b20:	00000000 	0x00000000
1c005b24:	0a0d7325 	0x0a0d7325
1c005b28:	00000000 	0x00000000
1c005b2c:	3a6b6361 	0x3a6b6361
1c005b30:	0a0d7325 	0x0a0d7325
1c005b34:	00000000 	0x00000000
1c005b38:	3a736572 	0x3a736572
1c005b3c:	0a0d6425 	0x0a0d6425
1c005b40:	00000000 	0x00000000
1c005b44:	432b5441 	beqz	$r2,469844(0x72b54) # 1c078698 <_sidata+0x72a44>
1c005b48:	444f4d57 	bnez	$r10,-2338996(0x5c4f4c) # 1bdcaa94 <_start-0x23556c>
1c005b4c:	0d313d45 	0x0d313d45
1c005b50:	0000000a 	0x0000000a
1c005b54:	00004b4f 	bitrev.4b	$r15,$r26
1c005b58:	432b5441 	beqz	$r2,469844(0x72b54) # 1c0786ac <_sidata+0x72a58>
1c005b5c:	444f4d57 	bnez	$r10,-2338996(0x5c4f4c) # 1bdcaaa8 <_start-0x235558>
1c005b60:	00313d45 	0x00313d45
1c005b64:	522b5441 	b	17181524(0x1062b54) # 1d0686b8 <_sidata+0x1062a64>
1c005b68:	0a0d5453 	0x0a0d5453
1c005b6c:	00000000 	0x00000000
1c005b70:	522b5441 	b	17181524(0x1062b54) # 1d0686c4 <_sidata+0x1062a70>
1c005b74:	00005453 	bitrev.d	$r19,$r2
1c005b78:	432b5441 	beqz	$r2,469844(0x72b54) # 1c0786cc <_sidata+0x72a78>
1c005b7c:	50414a57 	b	-111394488(0x95c4148) # 155c9cc4 <_start-0x6a3633c>
1c005b80:	3031783d 	0x3031783d
1c005b84:	3332312c 	xvstelm.w	$xr12,$r9,-464(0x230),0x4
1c005b88:	37363534 	0x37363534
1c005b8c:	000a0d38 	0x000a0d38
1c005b90:	432b5441 	beqz	$r2,469844(0x72b54) # 1c0786e4 <_sidata+0x72a90>
1c005b94:	50414a57 	b	-111394488(0x95c4148) # 155c9cdc <_start-0x6a36324>
1c005b98:	3178223d 	0x3178223d
1c005b9c:	222c2230 	ll.d	$r16,$r17,11296(0x2c20)
1c005ba0:	34333231 	0x34333231
1c005ba4:	38373635 	0x38373635
1c005ba8:	00000022 	0x00000022
1c005bac:	432b5441 	beqz	$r2,469844(0x72b54) # 1c078700 <_sidata+0x72aac>
1c005bb0:	554d5049 	bl	19221840(0x1254d50) # 1d25a900 <_sidata+0x1254cac>
1c005bb4:	0d303d58 	0x0d303d58
1c005bb8:	0000000a 	0x0000000a
1c005bbc:	432b5441 	beqz	$r2,469844(0x72b54) # 1c078710 <_sidata+0x72abc>
1c005bc0:	554d5049 	bl	19221840(0x1254d50) # 1d25a910 <_sidata+0x1254cbc>
1c005bc4:	00303d58 	0x00303d58
1c005bc8:	432b5441 	beqz	$r2,469844(0x72b54) # 1c07871c <_sidata+0x72ac8>
1c005bcc:	54535049 	bl	19157840(0x1245350) # 1d24af1c <_sidata+0x12452c8>
1c005bd0:	3d545241 	0x3d545241
1c005bd4:	2c504354 	vst	$vr20,$r26,1040(0x410)
1c005bd8:	2e323731 	0x2e323731
1c005bdc:	312e3032 	vstelm.w	$vr18,$r1,-464(0x230),0x3
1c005be0:	2c332e30 	vld	$vr16,$r17,-821(0xccb)
1c005be4:	30383038 	0x30383038
1c005be8:	00000a0d 	0x00000a0d
1c005bec:	432b5441 	beqz	$r2,469844(0x72b54) # 1c078740 <_sidata+0x72aec>
1c005bf0:	54535049 	bl	19157840(0x1245350) # 1d24af40 <_sidata+0x12452ec>
1c005bf4:	3d545241 	0x3d545241
1c005bf8:	50435422 	b	8930132(0x884354) # 1c889f4c <_sidata+0x8842f8>
1c005bfc:	31222c22 	vstelm.w	$vr2,$r1,-468(0x22c),0x0
1c005c00:	322e3237 	xvldrepl.w	$xr23,$r17,-464(0xe30)
1c005c04:	30312e30 	0x30312e30
1c005c08:	2c22332e 	vld	$vr14,$r25,-1908(0x88c)
1c005c0c:	30383038 	0x30383038
1c005c10:	00000000 	0x00000000
1c005c14:	432b5441 	beqz	$r2,469844(0x72b54) # 1c078768 <_sidata+0x72b14>
1c005c18:	4f4d5049 	jirl	$r9,$r2,-45744(0x34d50)
1c005c1c:	313d4544 	0x313d4544
1c005c20:	00000a0d 	0x00000a0d
1c005c24:	432b5441 	beqz	$r2,469844(0x72b54) # 1c078778 <_sidata+0x72b24>
1c005c28:	4f4d5049 	jirl	$r9,$r2,-45744(0x34d50)
1c005c2c:	313d4544 	0x313d4544
1c005c30:	00000000 	0x00000000
1c005c34:	432b5441 	beqz	$r2,469844(0x72b54) # 1c078788 <_sidata+0x72b34>
1c005c38:	45535049 	bnez	$r2,2446160(0x255350) # 1c25af88 <_sidata+0x255334>
1c005c3c:	0a0d444e 	0x0a0d444e
1c005c40:	00000000 	0x00000000
1c005c44:	432b5441 	beqz	$r2,469844(0x72b54) # 1c078798 <_sidata+0x72b44>
1c005c48:	45535049 	bnez	$r2,2446160(0x255350) # 1c25af98 <_sidata+0x255344>
1c005c4c:	0000444e 	revh.d	$r14,$r2
1c005c50:	00007325 	0x00007325

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c004f89 	pcaddu12i	$r9,636(0x27c)
80001008:	80000134 	0x80000134
8000100c:	8000101c 	0x8000101c
80001010:	80000004 	0x80000004
80001014:	1c004f80 	pcaddu12i	$r0,636(0x27c)
80001018:	80000138 	0x80000138

8000101c <g_SystemFreq>:
8000101c:	007a1200 	bstrins.w	$r0,$r16,0x1a,0x4

Disassembly of section .bss:

80000000 <_sbss>:
_sbss():
80000000:	00000000 	0x00000000

80000004 <Circular_queue>:
	...

80000134 <Read_length>:
80000134:	00000000 	0x00000000

80000138 <Read_Buffer>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
