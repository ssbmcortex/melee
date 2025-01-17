.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240

.global func_8037D0E4
func_8037D0E4:
/* 8037D0E4 00379CC4  7C 08 02 A6 */	mflr r0
/* 8037D0E8 00379CC8  90 01 00 04 */	stw r0, 4(r1)
/* 8037D0EC 00379CCC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8037D0F0 00379CD0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8037D0F4 00379CD4  3B E4 00 00 */	addi r31, r4, 0
/* 8037D0F8 00379CD8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8037D0FC 00379CDC  7C 7E 1B 79 */	or. r30, r3, r3
/* 8037D100 00379CE0  41 82 00 34 */	beq lbl_8037D134
/* 8037D104 00379CE4  28 1F 00 00 */	cmplwi r31, 0
/* 8037D108 00379CE8  41 82 00 2C */	beq lbl_8037D134
/* 8037D10C 00379CEC  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8037D110 00379CF0  28 03 00 00 */	cmplwi r3, 0
/* 8037D114 00379CF4  41 82 00 08 */	beq lbl_8037D11C
/* 8037D118 00379CF8  4B FE 73 B5 */	bl HSD_AObjRemove
lbl_8037D11C:
/* 8037D11C 00379CFC  80 7F 00 00 */	lwz r3, 0(r31)
/* 8037D120 00379D00  4B FE 72 7D */	bl HSD_AObjLoadDesc
/* 8037D124 00379D04  90 7E 00 18 */	stw r3, 0x18(r30)
/* 8037D128 00379D08  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8037D12C 00379D0C  80 9F 00 04 */	lwz r4, 4(r31)
/* 8037D130 00379D10  4B FF E0 71 */	bl func_8037B1A0
lbl_8037D134:
/* 8037D134 00379D14  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8037D138 00379D18  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8037D13C 00379D1C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8037D140 00379D20  38 21 00 18 */	addi r1, r1, 0x18
/* 8037D144 00379D24  7C 08 03 A6 */	mtlr r0
/* 8037D148 00379D28  4E 80 00 20 */	blr 
lbl_8037D14C:
/* 8037D14C 00379D2C  7C 08 02 A6 */	mflr r0
/* 8037D150 00379D30  90 01 00 04 */	stw r0, 4(r1)
/* 8037D154 00379D34  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8037D158 00379D38  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8037D15C 00379D3C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8037D160 00379D40  7C 7E 1B 79 */	or. r30, r3, r3
/* 8037D164 00379D44  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8037D168 00379D48  3B A5 00 00 */	addi r29, r5, 0
/* 8037D16C 00379D4C  41 82 01 14 */	beq lbl_8037D280
/* 8037D170 00379D50  2C 04 00 06 */	cmpwi r4, 6
/* 8037D174 00379D54  41 82 00 F0 */	beq lbl_8037D264
/* 8037D178 00379D58  40 80 00 14 */	bge lbl_8037D18C
/* 8037D17C 00379D5C  2C 04 00 04 */	cmpwi r4, 4
/* 8037D180 00379D60  41 82 00 18 */	beq lbl_8037D198
/* 8037D184 00379D64  40 80 00 D0 */	bge lbl_8037D254
/* 8037D188 00379D68  48 00 00 F8 */	b lbl_8037D280
lbl_8037D18C:
/* 8037D18C 00379D6C  2C 04 00 08 */	cmpwi r4, 8
/* 8037D190 00379D70  40 80 00 F0 */	bge lbl_8037D280
/* 8037D194 00379D74  48 00 00 E0 */	b lbl_8037D274
lbl_8037D198:
/* 8037D198 00379D78  C0 3D 00 00 */	lfs f1, 0(r29)
/* 8037D19C 00379D7C  C8 02 EC F0 */	lfd f0, lbl_804DE6D0@sda21(r2)
/* 8037D1A0 00379D80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8037D1A4 00379D84  40 80 00 0C */	bge lbl_8037D1B0
/* 8037D1A8 00379D88  C0 02 EC F8 */	lfs f0, lbl_804DE6D8@sda21(r2)
/* 8037D1AC 00379D8C  D0 1D 00 00 */	stfs f0, 0(r29)
lbl_8037D1B0:
/* 8037D1B0 00379D90  C8 22 ED 00 */	lfd f1, lbl_804DE6E0@sda21(r2)
/* 8037D1B4 00379D94  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8037D1B8 00379D98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8037D1BC 00379D9C  40 80 00 0C */	bge lbl_8037D1C8
/* 8037D1C0 00379DA0  C0 02 ED 08 */	lfs f0, lbl_804DE6E8@sda21(r2)
/* 8037D1C4 00379DA4  D0 1D 00 00 */	stfs f0, 0(r29)
lbl_8037D1C8:
/* 8037D1C8 00379DA8  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 8037D1CC 00379DAC  28 00 00 00 */	cmplwi r0, 0
/* 8037D1D0 00379DB0  40 82 00 18 */	bne lbl_8037D1E8
/* 8037D1D4 00379DB4  3C 60 80 40 */	lis r3, lbl_80407010@ha
/* 8037D1D8 00379DB8  38 A3 70 10 */	addi r5, r3, lbl_80407010@l
/* 8037D1DC 00379DBC  38 6D A8 58 */	addi r3, r13, lbl_804D5EF8@sda21
/* 8037D1E0 00379DC0  38 80 00 94 */	li r4, 0x94
/* 8037D1E4 00379DC4  48 00 B0 3D */	bl __assert
lbl_8037D1E8:
/* 8037D1E8 00379DC8  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8037D1EC 00379DCC  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 8037D1F0 00379DD0  28 1F 00 00 */	cmplwi r31, 0
/* 8037D1F4 00379DD4  40 82 00 14 */	bne lbl_8037D208
/* 8037D1F8 00379DD8  38 6D A8 58 */	addi r3, r13, lbl_804D5EF8@sda21
/* 8037D1FC 00379DDC  38 80 00 96 */	li r4, 0x96
/* 8037D200 00379DE0  38 AD A8 60 */	addi r5, r13, lbl_804D5F00@sda21
/* 8037D204 00379DE4  48 00 B0 1D */	bl __assert
lbl_8037D208:
/* 8037D208 00379DE8  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8037D20C 00379DEC  28 00 00 00 */	cmplwi r0, 0
/* 8037D210 00379DF0  40 82 00 18 */	bne lbl_8037D228
/* 8037D214 00379DF4  3C 60 80 40 */	lis r3, lbl_8040701C@ha
/* 8037D218 00379DF8  38 A3 70 1C */	addi r5, r3, lbl_8040701C@l
/* 8037D21C 00379DFC  38 6D A8 58 */	addi r3, r13, lbl_804D5EF8@sda21
/* 8037D220 00379E00  38 80 00 97 */	li r4, 0x97
/* 8037D224 00379E04  48 00 AF FD */	bl __assert
lbl_8037D228:
/* 8037D228 00379E08  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 8037D22C 00379E0C  38 61 00 14 */	addi r3, r1, 0x14
/* 8037D230 00379E10  C0 3D 00 00 */	lfs f1, 0(r29)
/* 8037D234 00379E14  4B FF C0 95 */	bl func_803792C8
/* 8037D238 00379E18  38 7E 00 00 */	addi r3, r30, 0
/* 8037D23C 00379E1C  38 81 00 14 */	addi r4, r1, 0x14
/* 8037D240 00379E20  48 00 02 1D */	bl func_8037D45C
/* 8037D244 00379E24  80 1E 00 08 */	lwz r0, 8(r30)
/* 8037D248 00379E28  60 00 00 01 */	ori r0, r0, 1
/* 8037D24C 00379E2C  90 1E 00 08 */	stw r0, 8(r30)
/* 8037D250 00379E30  48 00 00 30 */	b lbl_8037D280
lbl_8037D254:
/* 8037D254 00379E34  7F C3 F3 78 */	mr r3, r30
/* 8037D258 00379E38  C0 3D 00 00 */	lfs f1, 0(r29)
/* 8037D25C 00379E3C  48 00 02 49 */	bl func_8037D4A4
/* 8037D260 00379E40  48 00 00 20 */	b lbl_8037D280
lbl_8037D264:
/* 8037D264 00379E44  7F C3 F3 78 */	mr r3, r30
/* 8037D268 00379E48  C0 3D 00 00 */	lfs f1, 0(r29)
/* 8037D26C 00379E4C  48 00 03 0D */	bl func_8037D578
/* 8037D270 00379E50  48 00 00 10 */	b lbl_8037D280
lbl_8037D274:
/* 8037D274 00379E54  7F C3 F3 78 */	mr r3, r30
/* 8037D278 00379E58  C0 3D 00 00 */	lfs f1, 0(r29)
/* 8037D27C 00379E5C  48 00 03 D1 */	bl func_8037D64C
lbl_8037D280:
/* 8037D280 00379E60  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8037D284 00379E64  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8037D288 00379E68  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8037D28C 00379E6C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8037D290 00379E70  38 21 00 30 */	addi r1, r1, 0x30
/* 8037D294 00379E74  7C 08 03 A6 */	mtlr r0
/* 8037D298 00379E78  4E 80 00 20 */	blr 

.global func_8037D29C
func_8037D29C:
/* 8037D29C 00379E7C  7C 08 02 A6 */	mflr r0
/* 8037D2A0 00379E80  90 01 00 04 */	stw r0, 4(r1)
/* 8037D2A4 00379E84  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8037D2A8 00379E88  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8037D2AC 00379E8C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8037D2B0 00379E90  41 82 00 20 */	beq lbl_8037D2D0
/* 8037D2B4 00379E94  3C 80 80 38 */	lis r4, lbl_8037D14C@ha
/* 8037D2B8 00379E98  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8037D2BC 00379E9C  38 A4 D1 4C */	addi r5, r4, lbl_8037D14C@l
/* 8037D2C0 00379EA0  38 9F 00 00 */	addi r4, r31, 0
/* 8037D2C4 00379EA4  4B FE 6E CD */	bl HSD_AObjInterpretAnim
/* 8037D2C8 00379EA8  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8037D2CC 00379EAC  4B FF DC 8D */	bl HSD_RObjAnimAll
lbl_8037D2D0:
/* 8037D2D0 00379EB0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8037D2D4 00379EB4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8037D2D8 00379EB8  38 21 00 18 */	addi r1, r1, 0x18
/* 8037D2DC 00379EBC  7C 08 03 A6 */	mtlr r0
/* 8037D2E0 00379EC0  4E 80 00 20 */	blr 
lbl_8037D2E4:
/* 8037D2E4 00379EC4  7C 08 02 A6 */	mflr r0
/* 8037D2E8 00379EC8  90 01 00 04 */	stw r0, 4(r1)
/* 8037D2EC 00379ECC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8037D2F0 00379ED0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8037D2F4 00379ED4  3B E4 00 00 */	addi r31, r4, 0
/* 8037D2F8 00379ED8  38 9F 00 04 */	addi r4, r31, 4
/* 8037D2FC 00379EDC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8037D300 00379EE0  3B C3 00 00 */	addi r30, r3, 0
/* 8037D304 00379EE4  48 00 01 59 */	bl func_8037D45C
/* 8037D308 00379EE8  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8037D30C 00379EEC  28 03 00 00 */	cmplwi r3, 0
/* 8037D310 00379EF0  41 82 00 08 */	beq lbl_8037D318
/* 8037D314 00379EF4  4B FF F0 95 */	bl func_8037C3A8
lbl_8037D318:
/* 8037D318 00379EF8  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8037D31C 00379EFC  4B FF EE D1 */	bl func_8037C1EC
/* 8037D320 00379F00  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 8037D324 00379F04  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8037D328 00379F08  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 8037D32C 00379F0C  4B FF ED A1 */	bl func_8037C0CC
/* 8037D330 00379F10  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8037D334 00379F14  38 60 00 00 */	li r3, 0
/* 8037D338 00379F18  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8037D33C 00379F1C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8037D340 00379F20  38 21 00 18 */	addi r1, r1, 0x18
/* 8037D344 00379F24  7C 08 03 A6 */	mtlr r0
/* 8037D348 00379F28  4E 80 00 20 */	blr 

.global func_8037D34C
func_8037D34C:
/* 8037D34C 00379F2C  7C 08 02 A6 */	mflr r0
/* 8037D350 00379F30  90 01 00 04 */	stw r0, 4(r1)
/* 8037D354 00379F34  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8037D358 00379F38  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8037D35C 00379F3C  3B E4 00 00 */	addi r31, r4, 0
/* 8037D360 00379F40  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8037D364 00379F44  7C 7E 1B 79 */	or. r30, r3, r3
/* 8037D368 00379F48  41 82 00 44 */	beq lbl_8037D3AC
/* 8037D36C 00379F4C  28 1F 00 00 */	cmplwi r31, 0
/* 8037D370 00379F50  40 82 00 08 */	bne lbl_8037D378
/* 8037D374 00379F54  48 00 00 38 */	b lbl_8037D3AC
lbl_8037D378:
/* 8037D378 00379F58  38 7E 00 00 */	addi r3, r30, 0
/* 8037D37C 00379F5C  38 9F 00 04 */	addi r4, r31, 4
/* 8037D380 00379F60  48 00 00 DD */	bl func_8037D45C
/* 8037D384 00379F64  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8037D388 00379F68  28 03 00 00 */	cmplwi r3, 0
/* 8037D38C 00379F6C  41 82 00 08 */	beq lbl_8037D394
/* 8037D390 00379F70  4B FF F0 19 */	bl func_8037C3A8
lbl_8037D394:
/* 8037D394 00379F74  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8037D398 00379F78  4B FF EE 55 */	bl func_8037C1EC
/* 8037D39C 00379F7C  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 8037D3A0 00379F80  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8037D3A4 00379F84  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 8037D3A8 00379F88  4B FF ED 25 */	bl func_8037C0CC
lbl_8037D3AC:
/* 8037D3AC 00379F8C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8037D3B0 00379F90  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8037D3B4 00379F94  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8037D3B8 00379F98  38 21 00 18 */	addi r1, r1, 0x18
/* 8037D3BC 00379F9C  7C 08 03 A6 */	mtlr r0
/* 8037D3C0 00379FA0  4E 80 00 20 */	blr 

.global func_8037D3C4
func_8037D3C4:
/* 8037D3C4 00379FA4  7C 08 02 A6 */	mflr r0
/* 8037D3C8 00379FA8  90 01 00 04 */	stw r0, 4(r1)
/* 8037D3CC 00379FAC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8037D3D0 00379FB0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8037D3D4 00379FB4  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8037D3D8 00379FB8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8037D3DC 00379FBC  41 82 00 64 */	beq lbl_8037D440
/* 8037D3E0 00379FC0  80 7E 00 00 */	lwz r3, 0(r30)
/* 8037D3E4 00379FC4  28 03 00 00 */	cmplwi r3, 0
/* 8037D3E8 00379FC8  41 82 00 10 */	beq lbl_8037D3F8
/* 8037D3EC 00379FCC  48 00 54 29 */	bl hsdSearchClassInfo
/* 8037D3F0 00379FD0  28 03 00 00 */	cmplwi r3, 0
/* 8037D3F4 00379FD4  40 82 00 10 */	bne lbl_8037D404
lbl_8037D3F8:
/* 8037D3F8 00379FD8  48 00 04 11 */	bl func_8037D808
/* 8037D3FC 00379FDC  7C 7F 1B 78 */	mr r31, r3
/* 8037D400 00379FE0  48 00 00 20 */	b lbl_8037D420
lbl_8037D404:
/* 8037D404 00379FE4  48 00 4F 41 */	bl hsdNew
/* 8037D408 00379FE8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8037D40C 00379FEC  40 82 00 14 */	bne lbl_8037D420
/* 8037D410 00379FF0  38 6D A8 58 */	addi r3, r13, lbl_804D5EF8@sda21
/* 8037D414 00379FF4  38 80 00 FC */	li r4, 0xfc
/* 8037D418 00379FF8  38 AD A8 64 */	addi r5, r13, lbl_804D5F04@sda21
/* 8037D41C 00379FFC  48 00 AE 05 */	bl __assert
lbl_8037D420:
/* 8037D420 0037A000  80 BF 00 00 */	lwz r5, 0(r31)
/* 8037D424 0037A004  38 7F 00 00 */	addi r3, r31, 0
/* 8037D428 0037A008  38 9E 00 00 */	addi r4, r30, 0
/* 8037D42C 0037A00C  81 85 00 3C */	lwz r12, 0x3c(r5)
/* 8037D430 0037A010  7D 88 03 A6 */	mtlr r12
/* 8037D434 0037A014  4E 80 00 21 */	blrl 
/* 8037D438 0037A018  7F E3 FB 78 */	mr r3, r31
/* 8037D43C 0037A01C  48 00 00 08 */	b lbl_8037D444
lbl_8037D440:
/* 8037D440 0037A020  38 60 00 00 */	li r3, 0
lbl_8037D444:
/* 8037D444 0037A024  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8037D448 0037A028  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8037D44C 0037A02C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8037D450 0037A030  38 21 00 18 */	addi r1, r1, 0x18
/* 8037D454 0037A034  7C 08 03 A6 */	mtlr r0
/* 8037D458 0037A038  4E 80 00 20 */	blr 

.global func_8037D45C
func_8037D45C:
/* 8037D45C 0037A03C  28 03 00 00 */	cmplwi r3, 0
/* 8037D460 0037A040  4D 82 00 20 */	beqlr 
/* 8037D464 0037A044  28 04 00 00 */	cmplwi r4, 0
/* 8037D468 0037A048  40 82 00 08 */	bne lbl_8037D470
/* 8037D46C 0037A04C  4E 80 00 20 */	blr 
lbl_8037D470:
/* 8037D470 0037A050  80 A4 00 00 */	lwz r5, 0(r4)
/* 8037D474 0037A054  80 04 00 04 */	lwz r0, 4(r4)
/* 8037D478 0037A058  90 A3 00 0C */	stw r5, 0xc(r3)
/* 8037D47C 0037A05C  90 03 00 10 */	stw r0, 0x10(r3)
/* 8037D480 0037A060  80 04 00 08 */	lwz r0, 8(r4)
/* 8037D484 0037A064  90 03 00 14 */	stw r0, 0x14(r3)
/* 8037D488 0037A068  80 03 00 08 */	lwz r0, 8(r3)
/* 8037D48C 0037A06C  60 00 00 02 */	ori r0, r0, 2
/* 8037D490 0037A070  90 03 00 08 */	stw r0, 8(r3)
/* 8037D494 0037A074  80 03 00 08 */	lwz r0, 8(r3)
/* 8037D498 0037A078  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8037D49C 0037A07C  90 03 00 08 */	stw r0, 8(r3)
/* 8037D4A0 0037A080  4E 80 00 20 */	blr 

.global func_8037D4A4
func_8037D4A4:
/* 8037D4A4 0037A084  7C 08 02 A6 */	mflr r0
/* 8037D4A8 0037A088  90 01 00 04 */	stw r0, 4(r1)
/* 8037D4AC 0037A08C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037D4B0 0037A090  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8037D4B4 0037A094  FF E0 08 90 */	fmr f31, f1
/* 8037D4B8 0037A098  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8037D4BC 0037A09C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8037D4C0 0037A0A0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8037D4C4 0037A0A4  41 82 00 98 */	beq lbl_8037D55C
/* 8037D4C8 0037A0A8  80 1E 00 08 */	lwz r0, 8(r30)
/* 8037D4CC 0037A0AC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8037D4D0 0037A0B0  41 82 00 7C */	beq lbl_8037D54C
/* 8037D4D4 0037A0B4  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8037D4D8 0037A0B8  28 03 00 00 */	cmplwi r3, 0
/* 8037D4DC 0037A0BC  41 82 00 64 */	beq lbl_8037D540
/* 8037D4E0 0037A0C0  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 8037D4E4 0037A0C4  28 1F 00 00 */	cmplwi r31, 0
/* 8037D4E8 0037A0C8  41 82 00 58 */	beq lbl_8037D540
/* 8037D4EC 0037A0CC  41 82 00 44 */	beq lbl_8037D530
/* 8037D4F0 0037A0D0  40 82 00 14 */	bne lbl_8037D504
/* 8037D4F4 0037A0D4  38 6D A8 6C */	addi r3, r13, lbl_804D5F0C@sda21
/* 8037D4F8 0037A0D8  38 80 02 34 */	li r4, 0x234
/* 8037D4FC 0037A0DC  38 AD A8 74 */	addi r5, r13, lbl_804D5F14@sda21
/* 8037D500 0037A0E0  48 00 AD 21 */	bl __assert
lbl_8037D504:
/* 8037D504 0037A0E4  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8037D508 0037A0E8  38 60 00 00 */	li r3, 0
/* 8037D50C 0037A0EC  54 80 02 11 */	rlwinm. r0, r4, 0, 8, 8
/* 8037D510 0037A0F0  40 82 00 10 */	bne lbl_8037D520
/* 8037D514 0037A0F4  54 80 06 73 */	rlwinm. r0, r4, 0, 0x19, 0x19
/* 8037D518 0037A0F8  41 82 00 08 */	beq lbl_8037D520
/* 8037D51C 0037A0FC  38 60 00 01 */	li r3, 1
lbl_8037D520:
/* 8037D520 0037A100  2C 03 00 00 */	cmpwi r3, 0
/* 8037D524 0037A104  41 82 00 0C */	beq lbl_8037D530
/* 8037D528 0037A108  7F E3 FB 78 */	mr r3, r31
/* 8037D52C 0037A10C  4B FF 5B 4D */	bl HSD_JObjSetupMatrixSub
lbl_8037D530:
/* 8037D530 0037A110  38 9E 00 0C */	addi r4, r30, 0xc
/* 8037D534 0037A114  38 A4 00 00 */	addi r5, r4, 0
/* 8037D538 0037A118  38 7F 00 44 */	addi r3, r31, 0x44
/* 8037D53C 0037A11C  4B FC 55 6D */	bl PSMTXMUltiVec
lbl_8037D540:
/* 8037D540 0037A120  80 1E 00 08 */	lwz r0, 8(r30)
/* 8037D544 0037A124  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8037D548 0037A128  90 1E 00 08 */	stw r0, 8(r30)
lbl_8037D54C:
/* 8037D54C 0037A12C  D3 FE 00 0C */	stfs f31, 0xc(r30)
/* 8037D550 0037A130  80 1E 00 08 */	lwz r0, 8(r30)
/* 8037D554 0037A134  60 00 00 02 */	ori r0, r0, 2
/* 8037D558 0037A138  90 1E 00 08 */	stw r0, 8(r30)
lbl_8037D55C:
/* 8037D55C 0037A13C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037D560 0037A140  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8037D564 0037A144  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8037D568 0037A148  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8037D56C 0037A14C  38 21 00 20 */	addi r1, r1, 0x20
/* 8037D570 0037A150  7C 08 03 A6 */	mtlr r0
/* 8037D574 0037A154  4E 80 00 20 */	blr 

.global func_8037D578
func_8037D578:
/* 8037D578 0037A158  7C 08 02 A6 */	mflr r0
/* 8037D57C 0037A15C  90 01 00 04 */	stw r0, 4(r1)
/* 8037D580 0037A160  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037D584 0037A164  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8037D588 0037A168  FF E0 08 90 */	fmr f31, f1
/* 8037D58C 0037A16C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8037D590 0037A170  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8037D594 0037A174  7C 7E 1B 79 */	or. r30, r3, r3
/* 8037D598 0037A178  41 82 00 98 */	beq lbl_8037D630
/* 8037D59C 0037A17C  80 1E 00 08 */	lwz r0, 8(r30)
/* 8037D5A0 0037A180  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8037D5A4 0037A184  41 82 00 7C */	beq lbl_8037D620
/* 8037D5A8 0037A188  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8037D5AC 0037A18C  28 03 00 00 */	cmplwi r3, 0
/* 8037D5B0 0037A190  41 82 00 64 */	beq lbl_8037D614
/* 8037D5B4 0037A194  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 8037D5B8 0037A198  28 1F 00 00 */	cmplwi r31, 0
/* 8037D5BC 0037A19C  41 82 00 58 */	beq lbl_8037D614
/* 8037D5C0 0037A1A0  41 82 00 44 */	beq lbl_8037D604
/* 8037D5C4 0037A1A4  40 82 00 14 */	bne lbl_8037D5D8
/* 8037D5C8 0037A1A8  38 6D A8 6C */	addi r3, r13, lbl_804D5F0C@sda21
/* 8037D5CC 0037A1AC  38 80 02 34 */	li r4, 0x234
/* 8037D5D0 0037A1B0  38 AD A8 74 */	addi r5, r13, lbl_804D5F14@sda21
/* 8037D5D4 0037A1B4  48 00 AC 4D */	bl __assert
lbl_8037D5D8:
/* 8037D5D8 0037A1B8  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8037D5DC 0037A1BC  38 60 00 00 */	li r3, 0
/* 8037D5E0 0037A1C0  54 80 02 11 */	rlwinm. r0, r4, 0, 8, 8
/* 8037D5E4 0037A1C4  40 82 00 10 */	bne lbl_8037D5F4
/* 8037D5E8 0037A1C8  54 80 06 73 */	rlwinm. r0, r4, 0, 0x19, 0x19
/* 8037D5EC 0037A1CC  41 82 00 08 */	beq lbl_8037D5F4
/* 8037D5F0 0037A1D0  38 60 00 01 */	li r3, 1
lbl_8037D5F4:
/* 8037D5F4 0037A1D4  2C 03 00 00 */	cmpwi r3, 0
/* 8037D5F8 0037A1D8  41 82 00 0C */	beq lbl_8037D604
/* 8037D5FC 0037A1DC  7F E3 FB 78 */	mr r3, r31
/* 8037D600 0037A1E0  4B FF 5A 79 */	bl HSD_JObjSetupMatrixSub
lbl_8037D604:
/* 8037D604 0037A1E4  38 9E 00 0C */	addi r4, r30, 0xc
/* 8037D608 0037A1E8  38 A4 00 00 */	addi r5, r4, 0
/* 8037D60C 0037A1EC  38 7F 00 44 */	addi r3, r31, 0x44
/* 8037D610 0037A1F0  4B FC 54 99 */	bl PSMTXMUltiVec
lbl_8037D614:
/* 8037D614 0037A1F4  80 1E 00 08 */	lwz r0, 8(r30)
/* 8037D618 0037A1F8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8037D61C 0037A1FC  90 1E 00 08 */	stw r0, 8(r30)
lbl_8037D620:
/* 8037D620 0037A200  D3 FE 00 10 */	stfs f31, 0x10(r30)
/* 8037D624 0037A204  80 1E 00 08 */	lwz r0, 8(r30)
/* 8037D628 0037A208  60 00 00 02 */	ori r0, r0, 2
/* 8037D62C 0037A20C  90 1E 00 08 */	stw r0, 8(r30)
lbl_8037D630:
/* 8037D630 0037A210  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037D634 0037A214  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8037D638 0037A218  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8037D63C 0037A21C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8037D640 0037A220  38 21 00 20 */	addi r1, r1, 0x20
/* 8037D644 0037A224  7C 08 03 A6 */	mtlr r0
/* 8037D648 0037A228  4E 80 00 20 */	blr 

.global func_8037D64C
func_8037D64C:
/* 8037D64C 0037A22C  7C 08 02 A6 */	mflr r0
/* 8037D650 0037A230  90 01 00 04 */	stw r0, 4(r1)
/* 8037D654 0037A234  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037D658 0037A238  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8037D65C 0037A23C  FF E0 08 90 */	fmr f31, f1
/* 8037D660 0037A240  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8037D664 0037A244  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8037D668 0037A248  7C 7E 1B 79 */	or. r30, r3, r3
/* 8037D66C 0037A24C  41 82 00 98 */	beq lbl_8037D704
/* 8037D670 0037A250  80 1E 00 08 */	lwz r0, 8(r30)
/* 8037D674 0037A254  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8037D678 0037A258  41 82 00 7C */	beq lbl_8037D6F4
/* 8037D67C 0037A25C  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8037D680 0037A260  28 03 00 00 */	cmplwi r3, 0
/* 8037D684 0037A264  41 82 00 64 */	beq lbl_8037D6E8
/* 8037D688 0037A268  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 8037D68C 0037A26C  28 1F 00 00 */	cmplwi r31, 0
/* 8037D690 0037A270  41 82 00 58 */	beq lbl_8037D6E8
/* 8037D694 0037A274  41 82 00 44 */	beq lbl_8037D6D8
/* 8037D698 0037A278  40 82 00 14 */	bne lbl_8037D6AC
/* 8037D69C 0037A27C  38 6D A8 6C */	addi r3, r13, lbl_804D5F0C@sda21
/* 8037D6A0 0037A280  38 80 02 34 */	li r4, 0x234
/* 8037D6A4 0037A284  38 AD A8 74 */	addi r5, r13, lbl_804D5F14@sda21
/* 8037D6A8 0037A288  48 00 AB 79 */	bl __assert
lbl_8037D6AC:
/* 8037D6AC 0037A28C  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8037D6B0 0037A290  38 60 00 00 */	li r3, 0
/* 8037D6B4 0037A294  54 80 02 11 */	rlwinm. r0, r4, 0, 8, 8
/* 8037D6B8 0037A298  40 82 00 10 */	bne lbl_8037D6C8
/* 8037D6BC 0037A29C  54 80 06 73 */	rlwinm. r0, r4, 0, 0x19, 0x19
/* 8037D6C0 0037A2A0  41 82 00 08 */	beq lbl_8037D6C8
/* 8037D6C4 0037A2A4  38 60 00 01 */	li r3, 1
lbl_8037D6C8:
/* 8037D6C8 0037A2A8  2C 03 00 00 */	cmpwi r3, 0
/* 8037D6CC 0037A2AC  41 82 00 0C */	beq lbl_8037D6D8
/* 8037D6D0 0037A2B0  7F E3 FB 78 */	mr r3, r31
/* 8037D6D4 0037A2B4  4B FF 59 A5 */	bl HSD_JObjSetupMatrixSub
lbl_8037D6D8:
/* 8037D6D8 0037A2B8  38 9E 00 0C */	addi r4, r30, 0xc
/* 8037D6DC 0037A2BC  38 A4 00 00 */	addi r5, r4, 0
/* 8037D6E0 0037A2C0  38 7F 00 44 */	addi r3, r31, 0x44
/* 8037D6E4 0037A2C4  4B FC 53 C5 */	bl PSMTXMUltiVec
lbl_8037D6E8:
/* 8037D6E8 0037A2C8  80 1E 00 08 */	lwz r0, 8(r30)
/* 8037D6EC 0037A2CC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8037D6F0 0037A2D0  90 1E 00 08 */	stw r0, 8(r30)
lbl_8037D6F4:
/* 8037D6F4 0037A2D4  D3 FE 00 14 */	stfs f31, 0x14(r30)
/* 8037D6F8 0037A2D8  80 1E 00 08 */	lwz r0, 8(r30)
/* 8037D6FC 0037A2DC  60 00 00 02 */	ori r0, r0, 2
/* 8037D700 0037A2E0  90 1E 00 08 */	stw r0, 8(r30)
lbl_8037D704:
/* 8037D704 0037A2E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037D708 0037A2E8  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8037D70C 0037A2EC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8037D710 0037A2F0  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8037D714 0037A2F4  38 21 00 20 */	addi r1, r1, 0x20
/* 8037D718 0037A2F8  7C 08 03 A6 */	mtlr r0
/* 8037D71C 0037A2FC  4E 80 00 20 */	blr 

.global func_8037D720
func_8037D720:
/* 8037D720 0037A300  7C 08 02 A6 */	mflr r0
/* 8037D724 0037A304  90 01 00 04 */	stw r0, 4(r1)
/* 8037D728 0037A308  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037D72C 0037A30C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8037D730 0037A310  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8037D734 0037A314  3B C4 00 00 */	addi r30, r4, 0
/* 8037D738 0037A318  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8037D73C 0037A31C  7C 7D 1B 79 */	or. r29, r3, r3
/* 8037D740 0037A320  41 82 00 AC */	beq lbl_8037D7EC
/* 8037D744 0037A324  28 1E 00 00 */	cmplwi r30, 0
/* 8037D748 0037A328  40 82 00 08 */	bne lbl_8037D750
/* 8037D74C 0037A32C  48 00 00 A0 */	b lbl_8037D7EC
lbl_8037D750:
/* 8037D750 0037A330  80 1D 00 08 */	lwz r0, 8(r29)
/* 8037D754 0037A334  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8037D758 0037A338  41 82 00 7C */	beq lbl_8037D7D4
/* 8037D75C 0037A33C  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8037D760 0037A340  28 03 00 00 */	cmplwi r3, 0
/* 8037D764 0037A344  41 82 00 64 */	beq lbl_8037D7C8
/* 8037D768 0037A348  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 8037D76C 0037A34C  28 1F 00 00 */	cmplwi r31, 0
/* 8037D770 0037A350  41 82 00 58 */	beq lbl_8037D7C8
/* 8037D774 0037A354  41 82 00 44 */	beq lbl_8037D7B8
/* 8037D778 0037A358  40 82 00 14 */	bne lbl_8037D78C
/* 8037D77C 0037A35C  38 6D A8 6C */	addi r3, r13, lbl_804D5F0C@sda21
/* 8037D780 0037A360  38 80 02 34 */	li r4, 0x234
/* 8037D784 0037A364  38 AD A8 74 */	addi r5, r13, lbl_804D5F14@sda21
/* 8037D788 0037A368  48 00 AA 99 */	bl __assert
lbl_8037D78C:
/* 8037D78C 0037A36C  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8037D790 0037A370  38 60 00 00 */	li r3, 0
/* 8037D794 0037A374  54 80 02 11 */	rlwinm. r0, r4, 0, 8, 8
/* 8037D798 0037A378  40 82 00 10 */	bne lbl_8037D7A8
/* 8037D79C 0037A37C  54 80 06 73 */	rlwinm. r0, r4, 0, 0x19, 0x19
/* 8037D7A0 0037A380  41 82 00 08 */	beq lbl_8037D7A8
/* 8037D7A4 0037A384  38 60 00 01 */	li r3, 1
lbl_8037D7A8:
/* 8037D7A8 0037A388  2C 03 00 00 */	cmpwi r3, 0
/* 8037D7AC 0037A38C  41 82 00 0C */	beq lbl_8037D7B8
/* 8037D7B0 0037A390  7F E3 FB 78 */	mr r3, r31
/* 8037D7B4 0037A394  4B FF 58 C5 */	bl HSD_JObjSetupMatrixSub
lbl_8037D7B8:
/* 8037D7B8 0037A398  38 9D 00 0C */	addi r4, r29, 0xc
/* 8037D7BC 0037A39C  38 A4 00 00 */	addi r5, r4, 0
/* 8037D7C0 0037A3A0  38 7F 00 44 */	addi r3, r31, 0x44
/* 8037D7C4 0037A3A4  4B FC 52 E5 */	bl PSMTXMUltiVec
lbl_8037D7C8:
/* 8037D7C8 0037A3A8  80 1D 00 08 */	lwz r0, 8(r29)
/* 8037D7CC 0037A3AC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8037D7D0 0037A3B0  90 1D 00 08 */	stw r0, 8(r29)
lbl_8037D7D4:
/* 8037D7D4 0037A3B4  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8037D7D8 0037A3B8  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 8037D7DC 0037A3BC  90 7E 00 00 */	stw r3, 0(r30)
/* 8037D7E0 0037A3C0  90 1E 00 04 */	stw r0, 4(r30)
/* 8037D7E4 0037A3C4  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 8037D7E8 0037A3C8  90 1E 00 08 */	stw r0, 8(r30)
lbl_8037D7EC:
/* 8037D7EC 0037A3CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037D7F0 0037A3D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037D7F4 0037A3D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8037D7F8 0037A3D8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8037D7FC 0037A3DC  38 21 00 20 */	addi r1, r1, 0x20
/* 8037D800 0037A3E0  7C 08 03 A6 */	mtlr r0
/* 8037D804 0037A3E4  4E 80 00 20 */	blr 

.global func_8037D808
func_8037D808:
/* 8037D808 0037A3E8  7C 08 02 A6 */	mflr r0
/* 8037D80C 0037A3EC  90 01 00 04 */	stw r0, 4(r1)
/* 8037D810 0037A3F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037D814 0037A3F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037D818 0037A3F8  80 6D C0 50 */	lwz r3, lbl_804D76F0@sda21(r13)
/* 8037D81C 0037A3FC  28 03 00 00 */	cmplwi r3, 0
/* 8037D820 0037A400  41 82 00 08 */	beq lbl_8037D828
/* 8037D824 0037A404  48 00 00 0C */	b lbl_8037D830
lbl_8037D828:
/* 8037D828 0037A408  3C 60 80 40 */	lis r3, lbl_80406FD0@ha
/* 8037D82C 0037A40C  38 63 6F D0 */	addi r3, r3, lbl_80406FD0@l
lbl_8037D830:
/* 8037D830 0037A410  48 00 4B 15 */	bl hsdNew
/* 8037D834 0037A414  7C 7F 1B 79 */	or. r31, r3, r3
/* 8037D838 0037A418  40 82 00 14 */	bne lbl_8037D84C
/* 8037D83C 0037A41C  38 6D A8 58 */	addi r3, r13, lbl_804D5EF8@sda21
/* 8037D840 0037A420  38 80 02 4F */	li r4, 0x24f
/* 8037D844 0037A424  38 AD A8 64 */	addi r5, r13, lbl_804D5F04@sda21
/* 8037D848 0037A428  48 00 A9 D9 */	bl __assert
lbl_8037D84C:
/* 8037D84C 0037A42C  7F E3 FB 78 */	mr r3, r31
/* 8037D850 0037A430  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037D854 0037A434  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037D858 0037A438  38 21 00 10 */	addi r1, r1, 0x10
/* 8037D85C 0037A43C  7C 08 03 A6 */	mtlr r0
/* 8037D860 0037A440  4E 80 00 20 */	blr 
lbl_8037D864:
/* 8037D864 0037A444  7C 08 02 A6 */	mflr r0
/* 8037D868 0037A448  90 01 00 04 */	stw r0, 4(r1)
/* 8037D86C 0037A44C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8037D870 0037A450  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8037D874 0037A454  7C 7F 1B 78 */	mr r31, r3
/* 8037D878 0037A458  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8037D87C 0037A45C  4B FF EB 2D */	bl func_8037C3A8
/* 8037D880 0037A460  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8037D884 0037A464  4B FE 6C 49 */	bl HSD_AObjRemove
/* 8037D888 0037A468  3C 60 80 40 */	lis r3, lbl_80406FD0@ha
/* 8037D88C 0037A46C  38 63 6F D0 */	addi r3, r3, lbl_80406FD0@l
/* 8037D890 0037A470  80 83 00 14 */	lwz r4, 0x14(r3)
/* 8037D894 0037A474  7F E3 FB 78 */	mr r3, r31
/* 8037D898 0037A478  81 84 00 30 */	lwz r12, 0x30(r4)
/* 8037D89C 0037A47C  7D 88 03 A6 */	mtlr r12
/* 8037D8A0 0037A480  4E 80 00 21 */	blrl 
/* 8037D8A4 0037A484  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8037D8A8 0037A488  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8037D8AC 0037A48C  38 21 00 18 */	addi r1, r1, 0x18
/* 8037D8B0 0037A490  7C 08 03 A6 */	mtlr r0
/* 8037D8B4 0037A494  4E 80 00 20 */	blr 
lbl_8037D8B8:
/* 8037D8B8 0037A498  7C 08 02 A6 */	mflr r0
/* 8037D8BC 0037A49C  90 01 00 04 */	stw r0, 4(r1)
/* 8037D8C0 0037A4A0  94 21 FF F8 */	stwu r1, -8(r1)
/* 8037D8C4 0037A4A4  80 0D C0 50 */	lwz r0, lbl_804D76F0@sda21(r13)
/* 8037D8C8 0037A4A8  7C 03 00 40 */	cmplw r3, r0
/* 8037D8CC 0037A4AC  40 82 00 0C */	bne lbl_8037D8D8
/* 8037D8D0 0037A4B0  38 00 00 00 */	li r0, 0
/* 8037D8D4 0037A4B4  90 0D C0 50 */	stw r0, lbl_804D76F0@sda21(r13)
lbl_8037D8D8:
/* 8037D8D8 0037A4B8  3C 80 80 40 */	lis r4, lbl_80406FD0@ha
/* 8037D8DC 0037A4BC  38 84 6F D0 */	addi r4, r4, lbl_80406FD0@l
/* 8037D8E0 0037A4C0  80 84 00 14 */	lwz r4, 0x14(r4)
/* 8037D8E4 0037A4C4  81 84 00 38 */	lwz r12, 0x38(r4)
/* 8037D8E8 0037A4C8  7D 88 03 A6 */	mtlr r12
/* 8037D8EC 0037A4CC  4E 80 00 21 */	blrl 
/* 8037D8F0 0037A4D0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8037D8F4 0037A4D4  38 21 00 08 */	addi r1, r1, 8
/* 8037D8F8 0037A4D8  7C 08 03 A6 */	mtlr r0
/* 8037D8FC 0037A4DC  4E 80 00 20 */	blr 

.global func_8037D900
func_8037D900:
/* 8037D900 0037A4E0  7C 08 02 A6 */	mflr r0
/* 8037D904 0037A4E4  3C 60 80 40 */	lis r3, lbl_80406FD0@ha
/* 8037D908 0037A4E8  90 01 00 04 */	stw r0, 4(r1)
/* 8037D90C 0037A4EC  38 E0 00 40 */	li r7, 0x40
/* 8037D910 0037A4F0  39 00 00 20 */	li r8, 0x20
/* 8037D914 0037A4F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037D918 0037A4F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037D91C 0037A4FC  3B E3 6F D0 */	addi r31, r3, lbl_80406FD0@l
/* 8037D920 0037A500  3C 60 80 40 */	lis r3, hsdObj@ha
/* 8037D924 0037A504  38 83 72 A8 */	addi r4, r3, hsdObj@l
/* 8037D928 0037A508  38 7F 00 00 */	addi r3, r31, 0
/* 8037D92C 0037A50C  38 BF 00 80 */	addi r5, r31, 0x80
/* 8037D930 0037A510  38 DF 00 98 */	addi r6, r31, 0x98
/* 8037D934 0037A514  48 00 42 E5 */	bl hsdInitClassInfo
/* 8037D938 0037A518  3C 60 80 38 */	lis r3, lbl_8037D864@ha
/* 8037D93C 0037A51C  38 03 D8 64 */	addi r0, r3, lbl_8037D864@l
/* 8037D940 0037A520  3C 60 80 38 */	lis r3, lbl_8037D8B8@ha
/* 8037D944 0037A524  90 1F 00 30 */	stw r0, 0x30(r31)
/* 8037D948 0037A528  38 03 D8 B8 */	addi r0, r3, lbl_8037D8B8@l
/* 8037D94C 0037A52C  3C 60 80 38 */	lis r3, lbl_8037D2E4@ha
/* 8037D950 0037A530  90 1F 00 38 */	stw r0, 0x38(r31)
/* 8037D954 0037A534  38 03 D2 E4 */	addi r0, r3, lbl_8037D2E4@l
/* 8037D958 0037A538  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 8037D95C 0037A53C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037D960 0037A540  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037D964 0037A544  38 21 00 10 */	addi r1, r1, 0x10
/* 8037D968 0037A548  7C 08 03 A6 */	mtlr r0
/* 8037D96C 0037A54C  4E 80 00 20 */	blr 


.section .data

.global lbl_80406FD0
lbl_80406FD0:
    .4byte func_8037D900
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte NULL
.global lbl_80407010
lbl_80407010:
    .asciz "wobj->aobj"
    .balign 4
.global lbl_8040701C
lbl_8040701C:
    .asciz "jp->u.spline"
    .balign 4
    .asciz "hsdIsDescendantOf(info, &hsdWObj)"
    .balign 4
    .asciz "sysdolphin_base_library"
    .balign 4
    .asciz "had_wobj"
    .balign 4
    .4byte NULL


.section .sdata

.global lbl_804D5EF8
lbl_804D5EF8:
    .asciz "wobj.c"
    .balign 4
.global lbl_804D5F00
lbl_804D5F00:
    .asciz "jp"
    .balign 4
.global lbl_804D5F04
lbl_804D5F04:
    .asciz "wobj"
    .balign 4
.global lbl_804D5F0C
lbl_804D5F0C:
    .asciz "jobj.h"
    .balign 4
.global lbl_804D5F14
lbl_804D5F14:
    .asciz "jobj"
    .balign 4
    .4byte NULL


.section .sbss

.global lbl_804D76F0
lbl_804D76F0:
	.skip 0x8


.section .sdata2

.global lbl_804DE6D0
lbl_804DE6D0:
	.4byte 0x00000000
	.4byte 0x00000000
.global lbl_804DE6D8
lbl_804DE6D8:
	.4byte 0x00000000
	.4byte 0x00000000
.global lbl_804DE6E0
lbl_804DE6E0:
	.4byte 0x3FF00000
	.4byte 0x00000000
.global lbl_804DE6E8
lbl_804DE6E8:
	.4byte 0x3F800000
	.4byte 0x00000000
