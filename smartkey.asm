//Deviec:MS86Fxx02
//-----------------------Variable---------------------------------
		_timeOut		EQU		5CH
		_timeTick		EQU		5EH
		_mtState		EQU		61H
		_PwInNum		EQU		60H
		_keyID		EQU		62H
		_buffTag		EQU		25H
//-----------------------Variable END---------------------------------
		ORG		0000H
		LJUMP 	0AH 			//0000 	380A
		ORG		0004H
		STR 	7EH 			//0004 	01FE
		SWAPR 	STATUS,0 		//0005 	0703
		STR 	70H 			//0006 	01F0
		LDR 	PCLATH,0 		//0007 	080A
		STR 	71H 			//0008 	01F1
		LJUMP 	618H 			//0009 	3E18
		LJUMP 	554H 			//000A 	3D54

		//;MAIN.C: 162: unsigned char idop,tmp,idState=0;
		CLRR 	59H 			//000B 	0159
		ORG		000CH

		//;MAIN.C: 163: unsigned char t1;
		//;MAIN.C: 164: unsigned char buzFre=0;
		CLRR 	58H 			//000C 	0158
		CLRWDT	 			//000D 	0001

		//;MAIN.C: 168: sys_init();
		LCALL 	608H 			//000E 	3608

		//;MAIN.C: 169: gpio_init();
		LCALL 	5ADH 			//000F 	35AD

		//;MAIN.C: 171: timer_init();
		LCALL 	61FH 			//0010 	361F

		//;MAIN.C: 172: int_init();
		LCALL 	5E4H 			//0011 	35E4

		//;MAIN.C: 178: eepromWriteByte(0xFF,0xAA);
		LDWI 	AAH 			//0012 	2AAA
		STR 	72H 			//0013 	01F2
		ORG		0014H
		LDWI 	FFH 			//0014 	2AFF
		LCALL 	44AH 			//0015 	344A

		//;MAIN.C: 179: eepromWriteByte(0xFF,0xAA);
		LDWI 	AAH 			//0016 	2AAA
		STR 	72H 			//0017 	01F2
		LDWI 	FFH 			//0018 	2AFF
		LCALL 	44AH 			//0019 	344A

		//;MAIN.C: 182: TRISC &=0xfe;
		BSR 	STATUS,5 		//001A 	1A83
		BCR 	7H,0 			//001B 	1007
		ORG		001CH

		//;MAIN.C: 184: SET_EPWM_ON();
		LCALL 	48AH 			//001C 	348A

		//;MAIN.C: 193: if(eepromReadByte(0x02) == 0xff) eepromWriteByte(0x02,0);
		LDWI 	2H 			//001D 	2A02
		LCALL 	610H 			//001E 	3610
		XORWI 	FFH 			//001F 	26FF
		BTSS 	STATUS,2 		//0020 	1D03
		LJUMP 	25H 			//0021 	3825
		LDWI 	2H 			//0022 	2A02
		CLRR 	72H 			//0023 	0172
		ORG		0024H
		LCALL 	44AH 			//0024 	344A

		//;MAIN.C: 194: if(eepromReadByte(0x01)==0xff)eepromWriteByte(0x01,0);
		LDWI 	1H 			//0025 	2A01
		LCALL 	610H 			//0026 	3610
		XORWI 	FFH 			//0027 	26FF
		BTSS 	STATUS,2 		//0028 	1D03
		LJUMP 	2DH 			//0029 	382D
		LDWI 	1H 			//002A 	2A01
		CLRR 	72H 			//002B 	0172
		ORG		002CH
		LCALL 	44AH 			//002C 	344A

		//;MAIN.C: 196: if(eepromReadByte(0x06)!=0){
		LDWI 	6H 			//002D 	2A06
		LCALL 	610H 			//002E 	3610
		XORWI 	0H 			//002F 	2600
		BTSC 	STATUS,2 		//0030 	1503
		LJUMP 	44H 			//0031 	3844
		LDWI 	6H 			//0032 	2A06

		//;MAIN.C: 200: eepromWriteByte(0x06,0);
		CLRR 	72H 			//0033 	0172
		ORG		0034H
		LCALL 	44AH 			//0034 	344A
		LDWI 	7H 			//0035 	2A07

		//;MAIN.C: 201: eepromWriteByte(0x06+1,0);
		CLRR 	72H 			//0036 	0172
		LCALL 	44AH 			//0037 	344A

		//;MAIN.C: 202: eepromWriteByte(0x06+2,0x81);
		LDWI 	81H 			//0038 	2A81
		STR 	72H 			//0039 	01F2
		LDWI 	8H 			//003A 	2A08
		LCALL 	44AH 			//003B 	344A
		ORG		003CH

		//;MAIN.C: 203: eepromWriteByte(0x06+3,0x2f);
		LDWI 	2FH 			//003C 	2A2F
		STR 	72H 			//003D 	01F2
		LDWI 	9H 			//003E 	2A09
		LCALL 	44AH 			//003F 	344A

		//;MAIN.C: 204: eepromWriteByte(0x06+4,0x22);
		LDWI 	22H 			//0040 	2A22
		STR 	72H 			//0041 	01F2
		LDWI 	AH 			//0042 	2A0A
		LCALL 	44AH 			//0043 	344A
		ORG		0044H

		//;MAIN.C: 206: }
		//;MAIN.C: 207: eepromReadBlock(0x06,buffTag,5*5);
		LDWI 	25H 			//0044 	2A25
		STR 	74H 			//0045 	01F4
		LDWI 	19H 			//0046 	2A19
		STR 	75H 			//0047 	01F5
		LDWI 	6H 			//0048 	2A06
		LCALL 	57DH 			//0049 	357D

		//;MAIN.C: 210: {
		//;MAIN.C: 211: if( eepromReadByte(0x00) == 7){
		LDWI 	0H 			//004A 	2A00
		LCALL 	610H 			//004B 	3610
		ORG		004CH
		XORWI 	7H 			//004C 	2607
		BTSS 	STATUS,2 		//004D 	1D03
		LJUMP 	9AH 			//004E 	389A

		//;MAIN.C: 212: tmp = eepromReadByte(0x02);
		LDWI 	2H 			//004F 	2A02
		LCALL 	610H 			//0050 	3610
		BCR 	STATUS,5 		//0051 	1283
		STR 	5BH 			//0052 	01DB

		//;MAIN.C: 213: t1 = tmp;
		STR 	57H 			//0053 	01D7
		ORG		0054H

		//;MAIN.C: 215: if(t1 == 3){
		XORWI 	3H 			//0054 	2603
		BTSS 	STATUS,2 		//0055 	1D03
		LJUMP 	8BH 			//0056 	388B

		//;MAIN.C: 220: if((eepromReadByte(0x03)==8) && (eepromReadByte(0x04)==3)&&(eepromReadByte
		//+                          (0x05)==3)){
		LDWI 	3H 			//0057 	2A03
		LCALL 	610H 			//0058 	3610
		XORWI 	8H 			//0059 	2608
		BTSS 	STATUS,2 		//005A 	1D03
		LJUMP 	72H 			//005B 	3872
		ORG		005CH
		LDWI 	4H 			//005C 	2A04
		LCALL 	610H 			//005D 	3610
		XORWI 	3H 			//005E 	2603
		BTSS 	STATUS,2 		//005F 	1D03
		LJUMP 	72H 			//0060 	3872
		LDWI 	5H 			//0061 	2A05
		LCALL 	610H 			//0062 	3610
		XORWI 	3H 			//0063 	2603
		ORG		0064H
		BTSS 	STATUS,2 		//0064 	1D03
		LJUMP 	72H 			//0065 	3872
		LDWI 	1H 			//0066 	2A01

		//;MAIN.C: 221: eepromWriteByte(0x01,1);
		CLRR 	72H 			//0067 	0172
		INCR	72H,1 			//0068 	09F2
		LCALL 	44AH 			//0069 	344A
		LDWI 	0H 			//006A 	2A00

		//;MAIN.C: 222: setState(0,0);
		CLRR 	72H 			//006B 	0172
		ORG		006CH
		CLRR 	73H 			//006C 	0173
		LCALL 	5F0H 			//006D 	35F0

		//;MAIN.C: 223: beep(20,2);
		LDWI 	2H 			//006E 	2A02
		STR 	78H 			//006F 	01F8
		LDWI 	14H 			//0070 	2A14
		LJUMP 	7AH 			//0071 	387A

		//;MAIN.C: 224: }
		//;MAIN.C: 225: else{
		//;MAIN.C: 226: setState(1,12);
		LDWI 	CH 			//0072 	2A0C
		STR 	72H 			//0073 	01F2
		ORG		0074H
		LDWI 	1H 			//0074 	2A01
		CLRR 	73H 			//0075 	0173
		LCALL 	5F0H 			//0076 	35F0

		//;MAIN.C: 227: beep(10,5);
		LDWI 	5H 			//0077 	2A05
		STR 	78H 			//0078 	01F8
		LDWI 	AH 			//0079 	2A0A
		LCALL 	3D5H 			//007A 	33D5
		LDWI 	0H 			//007B 	2A00
		ORG		007CH

		//;MAIN.C: 228: }
		//;MAIN.C: 230: eepromWriteByte(0x00,0);
		CLRR 	72H 			//007C 	0172
		LCALL 	44AH 			//007D 	344A
		LDWI 	2H 			//007E 	2A02

		//;MAIN.C: 231: eepromWriteByte(0x02,0);
		CLRR 	72H 			//007F 	0172
		LCALL 	44AH 			//0080 	344A
		LDWI 	5H 			//0081 	2A05

		//;MAIN.C: 232: eepromWriteByte(0x05,0);
		CLRR 	72H 			//0082 	0172
		LCALL 	44AH 			//0083 	344A
		ORG		0084H
		LDWI 	4H 			//0084 	2A04

		//;MAIN.C: 233: eepromWriteByte(0x04,0);
		CLRR 	72H 			//0085 	0172
		LCALL 	44AH 			//0086 	344A
		LDWI 	3H 			//0087 	2A03

		//;MAIN.C: 234: eepromWriteByte(0x03,0);
		CLRR 	72H 			//0088 	0172
		LCALL 	44AH 			//0089 	344A

		//;MAIN.C: 236: }
		LJUMP 	9FH 			//008A 	389F

		//;MAIN.C: 237: else{
		//;MAIN.C: 238: tmp = eepromReadByte(0x02) ;
		LDWI 	2H 			//008B 	2A02
		ORG		008CH
		LCALL 	610H 			//008C 	3610
		BCR 	STATUS,5 		//008D 	1283
		STR 	5BH 			//008E 	01DB

		//;MAIN.C: 239: tmp++;
		INCR	5BH,1 			//008F 	09DB

		//;MAIN.C: 240: eepromWriteByte(0x02,tmp);
		LDR 	5BH,0 			//0090 	085B
		STR 	72H 			//0091 	01F2
		LDWI 	2H 			//0092 	2A02
		LCALL 	44AH 			//0093 	344A
		ORG		0094H
		LDWI 	7H 			//0094 	2A07

		//;MAIN.C: 241: PwInNum=0;
		BCR 	STATUS,5 		//0095 	1283
		CLRR 	60H 			//0096 	0160
		CLRR 	72H 			//0097 	0172
		INCR	72H,1 			//0098 	09F2
		LJUMP 	9DH 			//0099 	389D

		//;MAIN.C: 246: else{
		//;MAIN.C: 247: setState(1,12);
		LDWI 	CH 			//009A 	2A0C
		STR 	72H 			//009B 	01F2
		ORG		009CH
		LDWI 	1H 			//009C 	2A01
		CLRR 	73H 			//009D 	0173
		LCALL 	5F0H 			//009E 	35F0

		//;MAIN.C: 248: }
		//;MAIN.C: 250: if(eepromReadByte(0x01)== 1){
		LDWI 	1H 			//009F 	2A01
		LCALL 	610H 			//00A0 	3610
		XORWI 	1H 			//00A1 	2601
		BTSS 	STATUS,2 		//00A2 	1D03
		LJUMP 	A8H 			//00A3 	38A8
		ORG		00A4H
		LDWI 	0H 			//00A4 	2A00

		//;MAIN.C: 251: setState(0,0);
		CLRR 	72H 			//00A5 	0172
		CLRR 	73H 			//00A6 	0173
		LCALL 	5F0H 			//00A7 	35F0

		//;MAIN.C: 252: }
		//;MAIN.C: 253: }
		//;MAIN.C: 258: tmp=0;
		BCR 	STATUS,5 		//00A8 	1283
		CLRR 	5BH 			//00A9 	015B

		//;MAIN.C: 263: idop = get_RFID();
		LCALL 	250H 			//00AA 	3250
		STR 	5AH 			//00AB 	01DA
		ORG		00ACH

		//;MAIN.C: 265: if(idop){
		LDR 	5AH,0 			//00AC 	085A
		BTSC 	STATUS,2 		//00AD 	1503
		LJUMP 	1A5H 			//00AE 	39A5

		//;MAIN.C: 266: swUartSendString("\nTag: ");
		LDWI 	1H 			//00AF 	2A01
		LCALL 	5D7H 			//00B0 	35D7

		//;MAIN.C: 268: SendNum(keyID[1]);
		BCR 	STATUS,5 		//00B1 	1283
		LDR 	63H,0 			//00B2 	0863
		LCALL 	400H 			//00B3 	3400
		ORG		00B4H

		//;MAIN.C: 269: SendNum(keyID[2]);
		BCR 	STATUS,5 		//00B4 	1283
		LDR 	64H,0 			//00B5 	0864
		LCALL 	400H 			//00B6 	3400

		//;MAIN.C: 270: SendNum(keyID[3]);
		BCR 	STATUS,5 		//00B7 	1283
		LDR 	65H,0 			//00B8 	0865
		LCALL 	400H 			//00B9 	3400

		//;MAIN.C: 271: SendNum(keyID[4]);
		BCR 	STATUS,5 		//00BA 	1283
		LDR 	66H,0 			//00BB 	0866
		ORG		00BCH
		LCALL 	400H 			//00BC 	3400

		//;MAIN.C: 272: idop = id_search(keyID,buffTag);
		LDWI 	25H 			//00BD 	2A25
		STR 	7AH 			//00BE 	01FA
		LDWI 	62H 			//00BF 	2A62
		LCALL 	505H 			//00C0 	3505
		STR 	5AH 			//00C1 	01DA

		//;MAIN.C: 273: switch (mtState){
		LJUMP 	189H 			//00C2 	3989

		//;MAIN.C: 276: case 1:
		//;MAIN.C: 277: case 2:
		//;MAIN.C: 279: if((idop>1) && (idop <6))
		LDWI 	2H 			//00C3 	2A02
		ORG		00C4H
		SUBWR 	5AH,0 			//00C4 	0C5A
		BTSS 	STATUS,0 		//00C5 	1C03
		LJUMP 	EDH 			//00C6 	38ED
		LDWI 	6H 			//00C7 	2A06
		SUBWR 	5AH,0 			//00C8 	0C5A
		BTSC 	STATUS,0 		//00C9 	1403
		LJUMP 	EDH 			//00CA 	38ED

		//;MAIN.C: 280: {
		//;MAIN.C: 281: if( eepromReadByte(0x00) == 7) eepromWriteByte(0x00,0);
		LDWI 	0H 			//00CB 	2A00
		ORG		00CCH
		LCALL 	610H 			//00CC 	3610
		XORWI 	7H 			//00CD 	2607
		BTSS 	STATUS,2 		//00CE 	1D03
		LJUMP 	D3H 			//00CF 	38D3
		LDWI 	0H 			//00D0 	2A00
		CLRR 	72H 			//00D1 	0172
		LCALL 	44AH 			//00D2 	344A

		//;MAIN.C: 282: if(mtState==7){
		BCR 	STATUS,5 		//00D3 	1283
		ORG		00D4H
		LDR 	61H,0 			//00D4 	0861
		XORWI 	7H 			//00D5 	2607
		BTSS 	STATUS,2 		//00D6 	1D03
		LJUMP 	E4H 			//00D7 	38E4
		LDWI 	2H 			//00D8 	2A02

		//;MAIN.C: 283: eepromWriteByte(0x02,0);
		CLRR 	72H 			//00D9 	0172
		LCALL 	44AH 			//00DA 	344A
		LDWI 	5H 			//00DB 	2A05
		ORG		00DCH

		//;MAIN.C: 284: eepromWriteByte(0x05,0);
		CLRR 	72H 			//00DC 	0172
		LCALL 	44AH 			//00DD 	344A
		LDWI 	4H 			//00DE 	2A04

		//;MAIN.C: 285: eepromWriteByte(0x04,0);
		CLRR 	72H 			//00DF 	0172
		LCALL 	44AH 			//00E0 	344A
		LDWI 	3H 			//00E1 	2A03

		//;MAIN.C: 286: eepromWriteByte(0x03,0);
		CLRR 	72H 			//00E2 	0172
		LCALL 	44AH 			//00E3 	344A
		ORG		00E4H
		LDWI 	0H 			//00E4 	2A00

		//;MAIN.C: 287: }
		//;MAIN.C: 288: setState(0,0);
		CLRR 	72H 			//00E5 	0172
		CLRR 	73H 			//00E6 	0173
		LCALL 	5F0H 			//00E7 	35F0
		LDWI 	AH 			//00E8 	2A0A

		//;MAIN.C: 289: beep(10,1);
		CLRR 	78H 			//00E9 	0178
		INCR	78H,1 			//00EA 	09F8
		LCALL 	3D5H 			//00EB 	33D5
		ORG		00ECH

		//;MAIN.C: 290: }
		LJUMP 	194H 			//00EC 	3994

		//;MAIN.C: 292: else if(idop==1)
		DECRSZ 	5AH,0 		//00ED 	0E5A
		LJUMP 	194H 			//00EE 	3994

		//;MAIN.C: 293: {
		//;MAIN.C: 295: id_clear(2,5);
		LDWI 	5H 			//00EF 	2A05
		STR 	42H 			//00F0 	01C2
		LDWI 	2H 			//00F1 	2A02
		LCALL 	46BH 			//00F2 	346B
		LDWI 	3H 			//00F3 	2A03
		ORG		00F4H

		//;MAIN.C: 296: setState(3,0);
		CLRR 	72H 			//00F4 	0172
		CLRR 	73H 			//00F5 	0173
		LCALL 	5F0H 			//00F6 	35F0
		LDWI 	3H 			//00F7 	2A03

		//;MAIN.C: 297: tmp=1;
		CLRR 	5BH 			//00F8 	015B
		INCR	5BH,1 			//00F9 	09DB

		//;MAIN.C: 298: beep(10,3);
		STR 	78H 			//00FA 	01F8
		LDWI 	AH 			//00FB 	2A0A
		ORG		00FCH
		LCALL 	3D5H 			//00FC 	33D5
		LJUMP 	194H 			//00FD 	3994

		//;MAIN.C: 304: if(idop<=5 && idop!=1 ){
		LDWI 	6H 			//00FE 	2A06
		SUBWR 	5AH,0 			//00FF 	0C5A
		BTSC 	STATUS,0 		//0100 	1403
		LJUMP 	112H 			//0101 	3912
		DECR 	5AH,0 			//0102 	0D5A
		BTSC 	STATUS,2 		//0103 	1503
		ORG		0104H
		LJUMP 	112H 			//0104 	3912

		//;MAIN.C: 305: if(eepromReadByte(0x01)==1){
		LDWI 	1H 			//0105 	2A01
		LCALL 	610H 			//0106 	3610
		XORWI 	1H 			//0107 	2601
		BTSS 	STATUS,2 		//0108 	1D03
		LJUMP 	194H 			//0109 	3994
		LDWI 	1H 			//010A 	2A01

		//;MAIN.C: 306: eepromWriteByte(0x01,0);
		CLRR 	72H 			//010B 	0172
		ORG		010CH
		LCALL 	44AH 			//010C 	344A

		//;MAIN.C: 307: beep(10,2);
		LDWI 	2H 			//010D 	2A02
		STR 	78H 			//010E 	01F8
		LDWI 	AH 			//010F 	2A0A
		LCALL 	3D5H 			//0110 	33D5
		LJUMP 	194H 			//0111 	3994

		//;MAIN.C: 311: else if(idop==1){
		DECRSZ 	5AH,0 		//0112 	0E5A
		LJUMP 	194H 			//0113 	3994
		ORG		0114H

		//;MAIN.C: 312: id_clear(2,5);
		LDWI 	5H 			//0114 	2A05
		STR 	42H 			//0115 	01C2
		LDWI 	2H 			//0116 	2A02
		LCALL 	46BH 			//0117 	346B
		LDWI 	3H 			//0118 	2A03

		//;MAIN.C: 313: setState(3,0);
		CLRR 	72H 			//0119 	0172
		CLRR 	73H 			//011A 	0173
		LCALL 	5F0H 			//011B 	35F0
		ORG		011CH
		LDWI 	3H 			//011C 	2A03

		//;MAIN.C: 314: tmp=1;
		CLRR 	5BH 			//011D 	015B
		INCR	5BH,1 			//011E 	09DB

		//;MAIN.C: 315: beep(10,3);
		STR 	78H 			//011F 	01F8
		LDWI 	AH 			//0120 	2A0A
		LCALL 	3D5H 			//0121 	33D5
		LJUMP 	194H 			//0122 	3994

		//;MAIN.C: 321: if(idop==1 && idState == 0){
		DECRSZ 	5AH,0 		//0123 	0E5A
		ORG		0124H
		LJUMP 	137H 			//0124 	3937
		LDR 	59H,1 			//0125 	08D9
		BTSS 	STATUS,2 		//0126 	1D03
		LJUMP 	137H 			//0127 	3937

		//;MAIN.C: 323: id_clear(2,5);
		LDWI 	5H 			//0128 	2A05
		STR 	42H 			//0129 	01C2
		LDWI 	2H 			//012A 	2A02
		LCALL 	46BH 			//012B 	346B
		ORG		012CH
		LDWI 	3H 			//012C 	2A03

		//;MAIN.C: 324: setState(3,0);
		CLRR 	72H 			//012D 	0172
		CLRR 	73H 			//012E 	0173
		LCALL 	5F0H 			//012F 	35F0
		LDWI 	3H 			//0130 	2A03

		//;MAIN.C: 325: tmp=1;
		CLRR 	5BH 			//0131 	015B
		INCR	5BH,1 			//0132 	09DB

		//;MAIN.C: 326: beep(10,3);
		STR 	78H 			//0133 	01F8
		ORG		0134H
		LDWI 	AH 			//0134 	2A0A
		LCALL 	3D5H 			//0135 	33D5

		//;MAIN.C: 327: }
		LJUMP 	194H 			//0136 	3994

		//;MAIN.C: 329: else if(idop==2 && idState == 0){
		LDR 	5AH,0 			//0137 	085A
		XORWI 	2H 			//0138 	2602
		BTSS 	STATUS,2 		//0139 	1D03
		LJUMP 	194H 			//013A 	3994
		LDR 	59H,1 			//013B 	08D9
		ORG		013CH
		BTSS 	STATUS,2 		//013C 	1D03
		LJUMP 	194H 			//013D 	3994

		//;MAIN.C: 331: id_clear(3,5);
		LDWI 	5H 			//013E 	2A05
		STR 	42H 			//013F 	01C2
		LDWI 	3H 			//0140 	2A03
		LCALL 	46BH 			//0141 	346B
		LDWI 	5H 			//0142 	2A05

		//;MAIN.C: 332: setState(5,0);
		CLRR 	72H 			//0143 	0172
		ORG		0144H
		CLRR 	73H 			//0144 	0173
		LCALL 	5F0H 			//0145 	35F0

		//;MAIN.C: 333: tmp=2;
		LDWI 	2H 			//0146 	2A02
		STR 	5BH 			//0147 	01DB

		//;MAIN.C: 334: beep(10,2);
		STR 	78H 			//0148 	01F8
		LDWI 	AH 			//0149 	2A0A
		LCALL 	3D5H 			//014A 	33D5
		LJUMP 	194H 			//014B 	3994
		ORG		014CH

		//;MAIN.C: 340: if (idState == 0){
		LDR 	59H,1 			//014C 	08D9
		BTSS 	STATUS,2 		//014D 	1D03
		LJUMP 	165H 			//014E 	3965

		//;MAIN.C: 347: if( idop !=1){
		DECR 	5AH,0 			//014F 	0D5A
		BTSC 	STATUS,2 		//0150 	1503
		LJUMP 	194H 			//0151 	3994
		LDWI 	6H 			//0152 	2A06

		//;MAIN.C: 348: tmp++;
		INCR	5BH,1 			//0153 	09DB
		ORG		0154H

		//;MAIN.C: 350: if(tmp <=5){
		SUBWR 	5BH,0 			//0154 	0C5B
		BTSC 	STATUS,0 		//0155 	1403
		LJUMP 	194H 			//0156 	3994

		//;MAIN.C: 351: id_replate(tmp,keyID,buffTag);
		LDWI 	62H 			//0157 	2A62
		STR 	3EH 			//0158 	01BE
		LDWI 	25H 			//0159 	2A25
		STR 	3FH 			//015A 	01BF
		LDR 	5BH,0 			//015B 	085B
		ORG		015CH
		LCALL 	39AH 			//015C 	339A
		LDWI 	AH 			//015D 	2A0A

		//;MAIN.C: 352: timeTick=0;
		BCR 	STATUS,5 		//015E 	1283
		CLRR 	5EH 			//015F 	015E
		CLRR 	5FH 			//0160 	015F
		CLRR 	78H 			//0161 	0178
		INCR	78H,1 			//0162 	09F8
		LCALL 	3D5H 			//0163 	33D5
		ORG		0164H
		LJUMP 	194H 			//0164 	3994
		LDWI 	AH 			//0165 	2A0A

		//;MAIN.C: 359: beep(10,1);
		CLRR 	78H 			//0166 	0178
		INCR	78H,1 			//0167 	09F8
		LCALL 	3D5H 			//0168 	33D5
		LJUMP 	194H 			//0169 	3994

		//;MAIN.C: 365: if(idState == 0){
		LDR 	59H,1 			//016A 	08D9
		BTSS 	STATUS,2 		//016B 	1D03
		ORG		016CH
		LJUMP 	184H 			//016C 	3984

		//;MAIN.C: 366: if( idop >2){
		LDWI 	3H 			//016D 	2A03
		SUBWR 	5AH,0 			//016E 	0C5A
		BTSS 	STATUS,0 		//016F 	1C03
		LJUMP 	194H 			//0170 	3994
		LDWI 	6H 			//0171 	2A06

		//;MAIN.C: 367: tmp++;
		INCR	5BH,1 			//0172 	09DB

		//;MAIN.C: 369: if(tmp <=5){
		SUBWR 	5BH,0 			//0173 	0C5B
		ORG		0174H
		BTSC 	STATUS,0 		//0174 	1403
		LJUMP 	194H 			//0175 	3994

		//;MAIN.C: 370: id_replate(tmp,keyID,buffTag);
		LDWI 	62H 			//0176 	2A62
		STR 	3EH 			//0177 	01BE
		LDWI 	25H 			//0178 	2A25
		STR 	3FH 			//0179 	01BF
		LDR 	5BH,0 			//017A 	085B
		LCALL 	39AH 			//017B 	339A
		ORG		017CH
		LDWI 	AH 			//017C 	2A0A

		//;MAIN.C: 371: timeTick=0;
		BCR 	STATUS,5 		//017D 	1283
		CLRR 	5EH 			//017E 	015E
		CLRR 	5FH 			//017F 	015F
		CLRR 	78H 			//0180 	0178
		INCR	78H,1 			//0181 	09F8
		LCALL 	3D5H 			//0182 	33D5
		LJUMP 	194H 			//0183 	3994
		ORG		0184H
		LDWI 	AH 			//0184 	2A0A

		//;MAIN.C: 378: beep(10,1);
		CLRR 	78H 			//0185 	0178
		INCR	78H,1 			//0186 	09F8
		LCALL 	3D5H 			//0187 	33D5
		LJUMP 	194H 			//0188 	3994
		LDR 	61H,0 			//0189 	0861
		STR 	FSR 			//018A 	0184
		LDWI 	8H 			//018B 	2A08
		ORG		018CH
		SUBWR 	FSR,0 			//018C 	0C04
		BTSC 	STATUS,0 		//018D 	1403
		LJUMP 	194H 			//018E 	3994
		LDWI 	6H 			//018F 	2A06
		STR 	PCLATH 			//0190 	018A
		LDWI 	0H 			//0191 	2A00
		ADDWR 	FSR,0 			//0192 	0B04
		STR 	PCL 			//0193 	0182
		ORG		0194H

		//;MAIN.C: 384: idState = 1;
		BCR 	STATUS,5 		//0194 	1283
		CLRR 	59H 			//0195 	0159
		INCR	59H,1 			//0196 	09D9

		//;MAIN.C: 385: if(mtState != 2) _delay((unsigned long)((61)*(8000000/4000.0)));
		LDR 	61H,0 			//0197 	0861
		XORWI 	2H 			//0198 	2602
		BTSC 	STATUS,2 		//0199 	1503
		LJUMP 	1B6H 			//019A 	39B6
		LDWI 	9FH 			//019B 	2A9F
		ORG		019CH
		STR 	53H 			//019C 	01D3
		LDWI 	6FH 			//019D 	2A6F
		STR 	52H 			//019E 	01D2
		DECRSZ 	52H,1 		//019F 	0ED2
		LJUMP 	19FH 			//01A0 	399F
		DECRSZ 	53H,1 		//01A1 	0ED3
		LJUMP 	19FH 			//01A2 	399F
		LJUMP 	1A4H 			//01A3 	39A4
		ORG		01A4H
		LJUMP 	1B6H 			//01A4 	39B6

		//;MAIN.C: 387: else{
		//;MAIN.C: 388: idState =0;
		CLRR 	59H 			//01A5 	0159

		//;MAIN.C: 389: if(mtState != 2) _delay((unsigned long)((150)*(8000000/4000.0)));
		LDR 	61H,0 			//01A6 	0861
		XORWI 	2H 			//01A7 	2602
		BTSC 	STATUS,2 		//01A8 	1503
		LJUMP 	1B6H 			//01A9 	39B6
		LDWI 	2H 			//01AA 	2A02
		STR 	54H 			//01AB 	01D4
		ORG		01ACH
		LDWI 	86H 			//01AC 	2A86
		STR 	53H 			//01AD 	01D3
		LDWI 	99H 			//01AE 	2A99
		STR 	52H 			//01AF 	01D2
		DECRSZ 	52H,1 		//01B0 	0ED2
		LJUMP 	1B0H 			//01B1 	39B0
		DECRSZ 	53H,1 		//01B2 	0ED3
		LJUMP 	1B0H 			//01B3 	39B0
		ORG		01B4H
		DECRSZ 	54H,1 		//01B4 	0ED4
		LJUMP 	1B0H 			//01B5 	39B0

		//;MAIN.C: 390: }
		//;MAIN.C: 394: if((timeOut!=0)&&( timeTick > timeOut)){
		BCR 	STATUS,5 		//01B6 	1283
		LDR 	5DH,0 			//01B7 	085D
		IORWR 	5CH,0 			//01B8 	035C
		BTSC 	STATUS,2 		//01B9 	1503
		LJUMP 	208H 			//01BA 	3A08
		LDR 	5FH,0 			//01BB 	085F
		ORG		01BCH
		SUBWR 	5DH,0 			//01BC 	0C5D
		BTSS 	STATUS,2 		//01BD 	1D03
		LJUMP 	1C1H 			//01BE 	39C1
		LDR 	5EH,0 			//01BF 	085E
		SUBWR 	5CH,0 			//01C0 	0C5C
		BTSS 	STATUS,0 		//01C1 	1C03
		LJUMP 	1FAH 			//01C2 	39FA
		LJUMP 	208H 			//01C3 	3A08
		ORG		01C4H

		//;MAIN.C: 399: setState(2,15);
		LDWI 	FH 			//01C4 	2A0F
		STR 	72H 			//01C5 	01F2
		LDWI 	2H 			//01C6 	2A02
		CLRR 	73H 			//01C7 	0173
		LCALL 	5F0H 			//01C8 	35F0

		//;MAIN.C: 401: break;
		LJUMP 	208H 			//01C9 	3A08

		//;MAIN.C: 403: setState(6,7);
		LDWI 	7H 			//01CA 	2A07
		STR 	72H 			//01CB 	01F2
		ORG		01CCH
		LDWI 	6H 			//01CC 	2A06
		CLRR 	73H 			//01CD 	0173
		LCALL 	5F0H 			//01CE 	35F0

		//;MAIN.C: 404: break;
		LJUMP 	208H 			//01CF 	3A08
		LDWI 	2H 			//01D0 	2A02

		//;MAIN.C: 406: setState(2,0);
		CLRR 	72H 			//01D1 	0172
		CLRR 	73H 			//01D2 	0173
		LCALL 	5F0H 			//01D3 	35F0
		ORG		01D4H

		//;MAIN.C: 408: eepromWriteByte(0x00,7);
		LDWI 	7H 			//01D4 	2A07
		STR 	72H 			//01D5 	01F2
		LDWI 	0H 			//01D6 	2A00
		LCALL 	44AH 			//01D7 	344A
		LDWI 	2H 			//01D8 	2A02

		//;MAIN.C: 409: eepromWriteByte(0x02,0);
		CLRR 	72H 			//01D9 	0172
		LCALL 	44AH 			//01DA 	344A

		//;MAIN.C: 410: break;
		LJUMP 	208H 			//01DB 	3A08
		ORG		01DCH

		//;MAIN.C: 411: case 7:
		//;MAIN.C: 413: if(RC1==1){
		BTSS 	7H,1 			//01DC 	1C87
		LJUMP 	208H 			//01DD 	3A08
		LDWI 	2H 			//01DE 	2A02

		//;MAIN.C: 414: PwInNum++;
		INCR	60H,1 			//01DF 	09E0

		//;MAIN.C: 415: tmp = eepromReadByte(0x02);
		LCALL 	610H 			//01E0 	3610
		BCR 	STATUS,5 		//01E1 	1283
		STR 	5BH 			//01E2 	01DB

		//;MAIN.C: 416: if(tmp>0&&tmp<4){
		LDR 	5BH,0 			//01E3 	085B
		ORG		01E4H
		BTSC 	STATUS,2 		//01E4 	1503
		LJUMP 	1F0H 			//01E5 	39F0
		LDWI 	4H 			//01E6 	2A04
		SUBWR 	5BH,0 			//01E7 	0C5B
		BTSC 	STATUS,0 		//01E8 	1403
		LJUMP 	1F0H 			//01E9 	39F0

		//;MAIN.C: 417: tmp--;
		DECR 	5BH,1 			//01EA 	0DDB

		//;MAIN.C: 418: eepromWriteByte(0x03+tmp,PwInNum);
		LDR 	60H,0 			//01EB 	0860
		ORG		01ECH
		STR 	72H 			//01EC 	01F2
		LDR 	5BH,0 			//01ED 	085B
		ADDWI 	3H 			//01EE 	2703
		LCALL 	44AH 			//01EF 	344A
		LDWI 	AH 			//01F0 	2A0A

		//;MAIN.C: 419: }
		//;MAIN.C: 421: beep(10,1);
		CLRR 	78H 			//01F1 	0178
		INCR	78H,1 			//01F2 	09F8
		LCALL 	3D5H 			//01F3 	33D5
		ORG		01F4H
		LDWI 	7H 			//01F4 	2A07

		//;MAIN.C: 422: setState(7,1);
		CLRR 	72H 			//01F5 	0172
		INCR	72H,1 			//01F6 	09F2
		CLRR 	73H 			//01F7 	0173
		LCALL 	5F0H 			//01F8 	35F0
		LJUMP 	208H 			//01F9 	3A08
		LDR 	61H,0 			//01FA 	0861
		XORWI 	1H 			//01FB 	2601
		ORG		01FCH
		BTSC 	STATUS,2 		//01FC 	1503
		LJUMP 	1C4H 			//01FD 	39C4
		XORWI 	3H 			//01FE 	2603
		BTSC 	STATUS,2 		//01FF 	1503
		LJUMP 	1CAH 			//0200 	39CA
		XORWI 	4H 			//0201 	2604
		BTSC 	STATUS,2 		//0202 	1503
		LJUMP 	1D0H 			//0203 	39D0
		ORG		0204H
		XORWI 	1H 			//0204 	2601
		BTSC 	STATUS,2 		//0205 	1503
		LJUMP 	1DCH 			//0206 	39DC
		LJUMP 	208H 			//0207 	3A08

		//;MAIN.C: 442: }
		//;MAIN.C: 445: if(mtState==0) RA3 = 1;
		BCR 	STATUS,5 		//0208 	1283
		LDR 	61H,1 			//0209 	08E1
		BTSS 	STATUS,2 		//020A 	1D03
		LJUMP 	20EH 			//020B 	3A0E
		ORG		020CH
		BSR 	5H,3 			//020C 	1985
		LJUMP 	20FH 			//020D 	3A0F

		//;MAIN.C: 446: else RA3 =0;
		BCR 	5H,3 			//020E 	1185

		//;MAIN.C: 452: if(mtState == 2) {
		LDR 	61H,0 			//020F 	0861
		XORWI 	2H 			//0210 	2602
		BTSS 	STATUS,2 		//0211 	1D03
		LJUMP 	23EH 			//0212 	3A3E

		//;MAIN.C: 456: if(buzFre) t = 1600;
		LDR 	58H,0 			//0213 	0858
		ORG		0214H
		BTSC 	STATUS,2 		//0214 	1503
		LJUMP 	21AH 			//0215 	3A1A
		LDWI 	40H 			//0216 	2A40
		STR 	55H 			//0217 	01D5
		LDWI 	6H 			//0218 	2A06
		LJUMP 	21DH 			//0219 	3A1D

		//;MAIN.C: 457: else t = 2666;
		LDWI 	6AH 			//021A 	2A6A
		STR 	55H 			//021B 	01D5
		ORG		021CH
		LDWI 	AH 			//021C 	2A0A
		STR 	56H 			//021D 	01D6
		LDWI 	1H 			//021E 	2A01
		BCR 	STATUS,5 		//021F 	1283
		SUBWR 	55H,1 			//0220 	0CD5
		LDWI 	0H 			//0221 	2A00
		BTSS 	STATUS,0 		//0222 	1C03
		DECR 	56H,1 			//0223 	0DD6
		ORG		0224H
		SUBWR 	56H,1 			//0224 	0CD6
		INCR	55H,0 			//0225 	0955
		BTSC 	STATUS,2 		//0226 	1503
		INCR	56H,0 			//0227 	0956
		BTSC 	STATUS,2 		//0228 	1503
		LJUMP 	23BH 			//0229 	3A3B

		//;MAIN.C: 460: RC0 = ~RC0;
		LDWI 	1H 			//022A 	2A01
		XORWR 	7H,1 			//022B 	0487
		ORG		022CH

		//;MAIN.C: 461: if(buzFre) {_delay((unsigned long)((480)*(8000000/4000000.0)));}
		LDR 	58H,0 			//022C 	0858
		BTSC 	STATUS,2 		//022D 	1503
		LJUMP 	236H 			//022E 	3A36
		LDWI 	89H 			//022F 	2A89
		STR 	52H 			//0230 	01D2
		LJUMP 	232H 			//0231 	3A32
		LJUMP 	233H 			//0232 	3A33
		DECRSZ 	52H,1 		//0233 	0ED2
		ORG		0234H
		LJUMP 	231H 			//0234 	3A31
		LJUMP 	21EH 			//0235 	3A1E

		//;MAIN.C: 462: else {_delay((unsigned long)((290)*(8000000/4000000.0)));}
		LDWI 	C1H 			//0236 	2AC1
		STR 	52H 			//0237 	01D2
		DECRSZ 	52H,1 		//0238 	0ED2
		LJUMP 	238H 			//0239 	3A38
		LJUMP 	21EH 			//023A 	3A1E

		//;MAIN.C: 463: }
		//;MAIN.C: 464: buzFre =~buzFre;
		LDWI 	FFH 			//023B 	2AFF
		ORG		023CH
		XORWR 	58H,1 			//023C 	04D8

		//;MAIN.C: 466: }
		LJUMP 	24BH 			//023D 	3A4B

		//;MAIN.C: 467: else {_delay((unsigned long)((800)*(8000000/4000.0)));}
		LDWI 	9H 			//023E 	2A09
		STR 	54H 			//023F 	01D4
		LDWI 	1EH 			//0240 	2A1E
		STR 	53H 			//0241 	01D3
		LDWI 	EBH 			//0242 	2AEB
		STR 	52H 			//0243 	01D2
		ORG		0244H
		DECRSZ 	52H,1 		//0244 	0ED2
		LJUMP 	244H 			//0245 	3A44
		DECRSZ 	53H,1 		//0246 	0ED3
		LJUMP 	244H 			//0247 	3A44
		DECRSZ 	54H,1 		//0248 	0ED4
		LJUMP 	244H 			//0249 	3A44
		CLRWDT	 			//024A 	0001

		//;MAIN.C: 470: timeTick++;
		BCR 	STATUS,5 		//024B 	1283
		ORG		024CH
		INCR	5EH,1 			//024C 	09DE
		BTSC 	STATUS,2 		//024D 	1503
		INCR	5FH,1 			//024E 	09DF
		LJUMP 	AAH 			//024F 	38AA
		LDWI 	10H 			//0250 	2A10

		//;rfid125.c: 23: unsigned char RF_serial_55bits[11];
		//;rfid125.c: 24: unsigned int timeOutVal;
		//;rfid125.c: 25: unsigned char i,ii,j;
		//;rfid125.c: 26: unsigned char flag_RFID_syn, flag_RFID_last;
		//;rfid125.c: 27: unsigned char even_row, even_col;
		//;rfid125.c: 30: flag_RFID_syn = 0;
		CLRR 	49H 			//0251 	0149

		//;rfid125.c: 33: i=16;
		STR 	4DH 			//0252 	01CD

		//;rfid125.c: 35: {
		//;rfid125.c: 36: timeOutVal=timerOut(1,150);
		LDWI 	96H 			//0253 	2A96
		ORG		0254H
		STR 	72H 			//0254 	01F2
		LDWI 	1H 			//0255 	2A01
		CLRR 	73H 			//0256 	0173
		LCALL 	4A9H 			//0257 	34A9

		//;rfid125.c: 37: if(timeOutVal==0) return 0;
		LCALL 	388H 			//0258 	3388
		BTSC 	STATUS,2 		//0259 	1503
		RETW 	0H 			//025A 	2100

		//;rfid125.c: 39: timeOutVal=timerOut(0,150);
		LDWI 	96H 			//025B 	2A96
		ORG		025CH
		STR 	72H 			//025C 	01F2
		LDWI 	0H 			//025D 	2A00
		CLRR 	73H 			//025E 	0173
		LCALL 	4A9H 			//025F 	34A9

		//;rfid125.c: 40: if(timeOutVal==0) return 0;
		LCALL 	388H 			//0260 	3388
		BTSC 	STATUS,2 		//0261 	1503
		RETW 	0H 			//0262 	2100
		LDWI 	0H 			//0263 	2A00
		ORG		0264H

		//;rfid125.c: 42: i--;
		DECR 	4DH,1 			//0264 	0DCD

		//;rfid125.c: 43: }
		//;rfid125.c: 44: while(timeOutVal<72 && i>0);
		SUBWR 	50H,0 			//0265 	0C50
		LDWI 	48H 			//0266 	2A48
		BTSC 	STATUS,2 		//0267 	1503
		SUBWR 	4FH,0 			//0268 	0C4F
		BTSC 	STATUS,0 		//0269 	1403
		LJUMP 	26EH 			//026A 	3A6E
		LDR 	4DH,1 			//026B 	08CD
		ORG		026CH
		BTSS 	STATUS,2 		//026C 	1D03
		LJUMP 	253H 			//026D 	3A53

		//;rfid125.c: 45: flag_RFID_last = 1;
		CLRR 	4EH 			//026E 	014E
		INCR	4EH,1 			//026F 	09CE

		//;rfid125.c: 46: i = 0;
		CLRR 	4DH 			//0270 	014D

		//;rfid125.c: 47: while(i<64)
		LDWI 	40H 			//0271 	2A40
		SUBWR 	4DH,0 			//0272 	0C4D
		BTSC 	STATUS,0 		//0273 	1403
		ORG		0274H
		LJUMP 	2C9H 			//0274 	3AC9

		//;rfid125.c: 48: {
		//;rfid125.c: 49: for(ii=0;ii<9;ii++)
		CLRR 	51H 			//0275 	0151

		//;rfid125.c: 50: {
		//;rfid125.c: 51: timeOutVal=timerOut(flag_RFID_last,150);
		LCALL 	395H 			//0276 	3395
		LCALL 	4A9H 			//0277 	34A9

		//;rfid125.c: 52: if(timeOutVal==0) return 0;
		LCALL 	388H 			//0278 	3388
		BTSC 	STATUS,2 		//0279 	1503
		RETW 	0H 			//027A 	2100

		//;rfid125.c: 54: if(0==flag_RFID_last && timeOutVal<=72 ||
		//;rfid125.c: 55: 1==flag_RFID_last && timeOutVal>72)
		LDR 	4EH,1 			//027B 	08CE
		ORG		027CH
		BTSS 	STATUS,2 		//027C 	1D03
		LJUMP 	285H 			//027D 	3A85
		LDWI 	0H 			//027E 	2A00
		SUBWR 	50H,0 			//027F 	0C50
		LDWI 	49H 			//0280 	2A49
		BTSC 	STATUS,2 		//0281 	1503
		SUBWR 	4FH,0 			//0282 	0C4F
		BTSS 	STATUS,0 		//0283 	1C03
		ORG		0284H
		LJUMP 	28EH 			//0284 	3A8E
		DECRSZ 	4EH,0 		//0285 	0E4E
		LJUMP 	29CH 			//0286 	3A9C
		LDWI 	0H 			//0287 	2A00
		SUBWR 	50H,0 			//0288 	0C50
		LDWI 	49H 			//0289 	2A49
		BTSC 	STATUS,2 		//028A 	1503
		SUBWR 	4FH,0 			//028B 	0C4F
		ORG		028CH
		BTSS 	STATUS,0 		//028C 	1C03
		LJUMP 	29CH 			//028D 	3A9C

		//;rfid125.c: 56: {
		//;rfid125.c: 57: if(!flag_RFID_last)
		LDR 	4EH,1 			//028E 	08CE
		BTSS 	STATUS,2 		//028F 	1D03
		LJUMP 	299H 			//0290 	3A99

		//;rfid125.c: 58: {
		//;rfid125.c: 59: timeOutVal=timerOut(1,72);
		LDWI 	48H 			//0291 	2A48
		STR 	72H 			//0292 	01F2
		LDWI 	1H 			//0293 	2A01
		ORG		0294H
		CLRR 	73H 			//0294 	0173
		LCALL 	4A9H 			//0295 	34A9

		//;rfid125.c: 60: if(timeOutVal==0) return 0;
		LCALL 	388H 			//0296 	3388
		BTSC 	STATUS,2 		//0297 	1503
		RETW 	0H 			//0298 	2100

		//;rfid125.c: 61: }
		//;rfid125.c: 62: flag_RFID_last = 0;
		CLRR 	4EH 			//0299 	014E

		//;rfid125.c: 63: i++;
		INCR	4DH,1 			//029A 	09CD

		//;rfid125.c: 64: }
		LJUMP 	2BEH 			//029B 	3ABE
		ORG		029CH

		//;rfid125.c: 65: else
		//;rfid125.c: 66: if(0==flag_RFID_last && timeOutVal>72 ||
		//;rfid125.c: 67: 1==flag_RFID_last && timeOutVal<=72)
		LDR 	4EH,1 			//029C 	08CE
		BTSS 	STATUS,2 		//029D 	1D03
		LJUMP 	2A6H 			//029E 	3AA6
		LDWI 	0H 			//029F 	2A00
		SUBWR 	50H,0 			//02A0 	0C50
		LDWI 	49H 			//02A1 	2A49
		BTSC 	STATUS,2 		//02A2 	1503
		SUBWR 	4FH,0 			//02A3 	0C4F
		ORG		02A4H
		BTSC 	STATUS,0 		//02A4 	1403
		LJUMP 	2AFH 			//02A5 	3AAF
		DECRSZ 	4EH,0 		//02A6 	0E4E
		LJUMP 	2BEH 			//02A7 	3ABE
		LDWI 	0H 			//02A8 	2A00
		SUBWR 	50H,0 			//02A9 	0C50
		LDWI 	49H 			//02AA 	2A49
		BTSC 	STATUS,2 		//02AB 	1503
		ORG		02ACH
		SUBWR 	4FH,0 			//02AC 	0C4F
		BTSC 	STATUS,0 		//02AD 	1403
		LJUMP 	2BEH 			//02AE 	3ABE

		//;rfid125.c: 68: {
		//;rfid125.c: 69: if(flag_RFID_last)
		LDR 	4EH,0 			//02AF 	084E
		BTSC 	STATUS,2 		//02B0 	1503
		LJUMP 	2BAH 			//02B1 	3ABA

		//;rfid125.c: 70: {
		//;rfid125.c: 71: timeOutVal=timerOut(0,72);
		LDWI 	48H 			//02B2 	2A48
		STR 	72H 			//02B3 	01F2
		ORG		02B4H
		LDWI 	0H 			//02B4 	2A00
		CLRR 	73H 			//02B5 	0173
		LCALL 	4A9H 			//02B6 	34A9

		//;rfid125.c: 72: if(timeOutVal==0) return 0;
		LCALL 	388H 			//02B7 	3388
		BTSC 	STATUS,2 		//02B8 	1503
		RETW 	0H 			//02B9 	2100

		//;rfid125.c: 73: }
		//;rfid125.c: 74: flag_RFID_last = 1;
		CLRR 	4EH 			//02BA 	014E
		INCR	4EH,1 			//02BB 	09CE
		ORG		02BCH

		//;rfid125.c: 75: i++;
		INCR	4DH,1 			//02BC 	09CD

		//;rfid125.c: 77: break;
		LJUMP 	2C3H 			//02BD 	3AC3
		LDWI 	9H 			//02BE 	2A09
		INCR	51H,1 			//02BF 	09D1
		SUBWR 	51H,0 			//02C0 	0C51
		BTSS 	STATUS,0 		//02C1 	1C03
		LJUMP 	276H 			//02C2 	3A76

		//;rfid125.c: 78: }
		//;rfid125.c: 80: }
		//;rfid125.c: 81: if(9==ii)
		LDR 	51H,0 			//02C3 	0851
		ORG		02C4H
		XORWI 	9H 			//02C4 	2609
		BTSS 	STATUS,2 		//02C5 	1D03
		LJUMP 	271H 			//02C6 	3A71

		//;rfid125.c: 82: {
		//;rfid125.c: 83: flag_RFID_syn = 1;
		CLRR 	49H 			//02C7 	0149
		INCR	49H,1 			//02C8 	09C9

		//;rfid125.c: 84: break;
		//;rfid125.c: 85: }
		//;rfid125.c: 86: }
		//;rfid125.c: 88: if(!flag_RFID_syn)
		LDR 	49H,1 			//02C9 	08C9
		BTSC 	STATUS,2 		//02CA 	1503
		RETW 	0H 			//02CB 	2100
		ORG		02CCH

		//;rfid125.c: 91: }
		//;rfid125.c: 92: for(ii=0;ii<55;ii++)
		CLRR 	51H 			//02CC 	0151

		//;rfid125.c: 93: {
		//;rfid125.c: 94: i = ii/5;
		LDWI 	5H 			//02CD 	2A05
		STR 	72H 			//02CE 	01F2
		LDR 	51H,0 			//02CF 	0851
		LCALL 	520H 			//02D0 	3520
		STR 	4DH 			//02D1 	01CD

		//;rfid125.c: 95: timeOutVal=timerOut(flag_RFID_last,150);
		LCALL 	395H 			//02D2 	3395
		LCALL 	4A9H 			//02D3 	34A9
		ORG		02D4H

		//;rfid125.c: 96: if(timeOutVal==0) return 0;
		LCALL 	388H 			//02D4 	3388
		BTSC 	STATUS,2 		//02D5 	1503
		RETW 	0H 			//02D6 	2100

		//;rfid125.c: 98: if(0==flag_RFID_last && timeOutVal<=72 ||
		//;rfid125.c: 99: 1==flag_RFID_last && timeOutVal>72)
		LDR 	4EH,1 			//02D7 	08CE
		BTSS 	STATUS,2 		//02D8 	1D03
		LJUMP 	2E1H 			//02D9 	3AE1
		LDWI 	0H 			//02DA 	2A00
		SUBWR 	50H,0 			//02DB 	0C50
		ORG		02DCH
		LDWI 	49H 			//02DC 	2A49
		BTSC 	STATUS,2 		//02DD 	1503
		SUBWR 	4FH,0 			//02DE 	0C4F
		BTSS 	STATUS,0 		//02DF 	1C03
		LJUMP 	2EAH 			//02E0 	3AEA
		DECRSZ 	4EH,0 		//02E1 	0E4E
		LJUMP 	2FCH 			//02E2 	3AFC
		LDWI 	0H 			//02E3 	2A00
		ORG		02E4H
		SUBWR 	50H,0 			//02E4 	0C50
		LDWI 	49H 			//02E5 	2A49
		BTSC 	STATUS,2 		//02E6 	1503
		SUBWR 	4FH,0 			//02E7 	0C4F
		BTSS 	STATUS,0 		//02E8 	1C03
		LJUMP 	2FCH 			//02E9 	3AFC

		//;rfid125.c: 100: {
		//;rfid125.c: 101: if(!flag_RFID_last)
		LDR 	4EH,1 			//02EA 	08CE
		BTSS 	STATUS,2 		//02EB 	1D03
		ORG		02ECH
		LJUMP 	2F5H 			//02EC 	3AF5

		//;rfid125.c: 102: {
		//;rfid125.c: 103: timeOutVal=timerOut(1,72);
		LDWI 	48H 			//02ED 	2A48
		STR 	72H 			//02EE 	01F2
		LDWI 	1H 			//02EF 	2A01
		CLRR 	73H 			//02F0 	0173
		LCALL 	4A9H 			//02F1 	34A9

		//;rfid125.c: 104: if(timeOutVal==0) return 0;
		LCALL 	388H 			//02F2 	3388
		BTSC 	STATUS,2 		//02F3 	1503
		ORG		02F4H
		RETW 	0H 			//02F4 	2100

		//;rfid125.c: 105: }
		//;rfid125.c: 106: flag_RFID_last = 0;
		CLRR 	4EH 			//02F5 	014E

		//;rfid125.c: 107: RF_serial_55bits[i] <<= 1;
		LCALL 	38EH 			//02F6 	338E

		//;rfid125.c: 108: RF_serial_55bits[i] |= 0x01;
		LDR 	4DH,0 			//02F7 	084D
		ADDWI 	3EH 			//02F8 	273E
		STR 	FSR 			//02F9 	0184
		BSR 	INDF,0 			//02FA 	1800

		//;rfid125.c: 109: }
		LJUMP 	31DH 			//02FB 	3B1D
		ORG		02FCH

		//;rfid125.c: 110: else
		//;rfid125.c: 111: if(0==flag_RFID_last && timeOutVal>72 ||
		//;rfid125.c: 112: 1==flag_RFID_last && timeOutVal<=72)
		LDR 	4EH,1 			//02FC 	08CE
		BTSS 	STATUS,2 		//02FD 	1D03
		LJUMP 	306H 			//02FE 	3B06
		LDWI 	0H 			//02FF 	2A00
		SUBWR 	50H,0 			//0300 	0C50
		LDWI 	49H 			//0301 	2A49
		BTSC 	STATUS,2 		//0302 	1503
		SUBWR 	4FH,0 			//0303 	0C4F
		ORG		0304H
		BTSC 	STATUS,0 		//0304 	1403
		LJUMP 	30FH 			//0305 	3B0F
		DECRSZ 	4EH,0 		//0306 	0E4E
		LJUMP 	31DH 			//0307 	3B1D
		LDWI 	0H 			//0308 	2A00
		SUBWR 	50H,0 			//0309 	0C50
		LDWI 	49H 			//030A 	2A49
		BTSC 	STATUS,2 		//030B 	1503
		ORG		030CH
		SUBWR 	4FH,0 			//030C 	0C4F
		BTSC 	STATUS,0 		//030D 	1403
		LJUMP 	31DH 			//030E 	3B1D

		//;rfid125.c: 113: {
		//;rfid125.c: 114: if(flag_RFID_last)
		LDR 	4EH,0 			//030F 	084E
		BTSC 	STATUS,2 		//0310 	1503
		LJUMP 	31AH 			//0311 	3B1A

		//;rfid125.c: 115: {
		//;rfid125.c: 116: timeOutVal=timerOut(0,150);
		LDWI 	96H 			//0312 	2A96
		STR 	72H 			//0313 	01F2
		ORG		0314H
		LDWI 	0H 			//0314 	2A00
		CLRR 	73H 			//0315 	0173
		LCALL 	4A9H 			//0316 	34A9

		//;rfid125.c: 117: if(timeOutVal==0) return 0;
		LCALL 	388H 			//0317 	3388
		BTSC 	STATUS,2 		//0318 	1503
		RETW 	0H 			//0319 	2100

		//;rfid125.c: 118: }
		//;rfid125.c: 119: flag_RFID_last = 1;
		CLRR 	4EH 			//031A 	014E
		INCR	4EH,1 			//031B 	09CE
		ORG		031CH

		//;rfid125.c: 120: RF_serial_55bits[i] <<= 1;
		LCALL 	38EH 			//031C 	338E
		LDWI 	37H 			//031D 	2A37
		INCR	51H,1 			//031E 	09D1
		SUBWR 	51H,0 			//031F 	0C51
		BTSS 	STATUS,0 		//0320 	1C03
		LJUMP 	2CDH 			//0321 	3ACD

		//;rfid125.c: 121: }
		//;rfid125.c: 122: }
		//;rfid125.c: 123: if(55==ii)
		LDR 	51H,0 			//0322 	0851
		XORWI 	37H 			//0323 	2637
		ORG		0324H
		BTSS 	STATUS,2 		//0324 	1D03
		RETW 	0H 			//0325 	2100

		//;rfid125.c: 124: {
		//;rfid125.c: 125: even_col = 0;
		CLRR 	4AH 			//0326 	014A

		//;rfid125.c: 126: for(ii=0;ii<10;ii++)
		CLRR 	51H 			//0327 	0151

		//;rfid125.c: 127: {
		//;rfid125.c: 128: even_row = (RF_serial_55bits[ii] & 0x01);
		LDR 	51H,0 			//0328 	0851
		ADDWI 	3EH 			//0329 	273E
		STR 	FSR 			//032A 	0184
		BCR 	STATUS,7 		//032B 	1383
		ORG		032CH
		LDR 	INDF,0 			//032C 	0800
		STR 	4BH 			//032D 	01CB
		LDWI 	1H 			//032E 	2A01
		ANDWR 	4BH,1 			//032F 	02CB

		//;rfid125.c: 129: for(j=1;j<5;j++)
		CLRR 	4CH 			//0330 	014C
		INCR	4CH,1 			//0331 	09CC

		//;rfid125.c: 130: {
		//;rfid125.c: 131: even_row = even_row ^ ((RF_serial_55bits[ii]>>j) & 0x01);
		LDR 	51H,0 			//0332 	0851
		ADDWI 	3EH 			//0333 	273E
		ORG		0334H
		STR 	FSR 			//0334 	0184
		LDR 	INDF,0 			//0335 	0800
		STR 	77H 			//0336 	01F7
		INCR	4CH,0 			//0337 	094C
		LJUMP 	33BH 			//0338 	3B3B
		BCR 	STATUS,0 		//0339 	1003
		RRR	77H,1 			//033A 	06F7
		ADDWI 	FFH 			//033B 	27FF
		ORG		033CH
		BTSS 	STATUS,2 		//033C 	1D03
		LJUMP 	339H 			//033D 	3B39
		LDR 	77H,0 			//033E 	0877
		ANDWI 	1H 			//033F 	2401
		XORWR 	4BH,1 			//0340 	04CB
		LDWI 	5H 			//0341 	2A05
		INCR	4CH,1 			//0342 	09CC
		SUBWR 	4CH,0 			//0343 	0C4C
		ORG		0344H
		BTSS 	STATUS,0 		//0344 	1C03
		LJUMP 	332H 			//0345 	3B32

		//;rfid125.c: 132: }
		//;rfid125.c: 133: if(even_row & 0x01)
		BTSC 	4BH,0 			//0346 	144B
		RETW 	0H 			//0347 	2100

		//;rfid125.c: 136: }
		//;rfid125.c: 138: RF_serial_55bits[ii] <<= 3;
		LDR 	51H,0 			//0348 	0851
		ADDWI 	3EH 			//0349 	273E
		STR 	FSR 			//034A 	0184
		RLR 	INDF,1 			//034B 	0580
		ORG		034CH
		RLR 	INDF,1 			//034C 	0580
		RLR 	INDF,0 			//034D 	0500
		ANDWI 	F8H 			//034E 	24F8
		STR 	INDF 			//034F 	0180

		//;rfid125.c: 140: i = RF_serial_55bits[ii];
		LDR 	51H,0 			//0350 	0851
		ADDWI 	3EH 			//0351 	273E
		STR 	FSR 			//0352 	0184
		LDR 	INDF,0 			//0353 	0800
		ORG		0354H
		STR 	4DH 			//0354 	01CD

		//;rfid125.c: 141: if( 0==ii%2 )
		BTSC 	51H,0 			//0355 	1451
		LJUMP 	364H 			//0356 	3B64

		//;rfid125.c: 142: {
		//;rfid125.c: 143: keyID[ii/2] = (i & 0xF0);
		BCR 	STATUS,0 		//0357 	1003
		RRR	51H,0 			//0358 	0651
		ADDWI 	62H 			//0359 	2762
		STR 	FSR 			//035A 	0184
		LDR 	4DH,0 			//035B 	084D
		ORG		035CH
		STR 	INDF 			//035C 	0180
		BCR 	STATUS,0 		//035D 	1003
		RRR	51H,0 			//035E 	0651
		ADDWI 	62H 			//035F 	2762
		STR 	FSR 			//0360 	0184
		LDWI 	F0H 			//0361 	2AF0
		ANDWR 	INDF,1 		//0362 	0280

		//;rfid125.c: 144: }
		LJUMP 	36EH 			//0363 	3B6E
		ORG		0364H
		LDWI 	FH 			//0364 	2A0F

		//;rfid125.c: 145: else
		//;rfid125.c: 146: {
		//;rfid125.c: 147: i >>=4;
		SWAPR 	4DH,1 			//0365 	07CD
		ANDWR 	4DH,1 			//0366 	02CD

		//;rfid125.c: 148: keyID[ii/2] |= (i & 0x0F);
		BCR 	STATUS,0 		//0367 	1003
		RRR	51H,0 			//0368 	0651
		ADDWI 	62H 			//0369 	2762
		STR 	FSR 			//036A 	0184
		LDR 	4DH,0 			//036B 	084D
		ORG		036CH
		ANDWI 	FH 			//036C 	240F
		IORWR 	INDF,1 		//036D 	0380

		//;rfid125.c: 149: }
		//;rfid125.c: 150: even_col ^= RF_serial_55bits[ii];
		LDR 	51H,0 			//036E 	0851
		ADDWI 	3EH 			//036F 	273E
		STR 	FSR 			//0370 	0184
		LDR 	INDF,0 			//0371 	0800
		XORWR 	4AH,1 			//0372 	04CA
		LDWI 	AH 			//0373 	2A0A
		ORG		0374H
		INCR	51H,1 			//0374 	09D1
		SUBWR 	51H,0 			//0375 	0C51
		BTSS 	STATUS,0 		//0376 	1C03
		LJUMP 	328H 			//0377 	3B28

		//;rfid125.c: 151: }
		//;rfid125.c: 152: RF_serial_55bits[10] <<= 3;
		RLR 	48H,1 			//0378 	05C8
		RLR 	48H,1 			//0379 	05C8
		RLR 	48H,0 			//037A 	0548
		ANDWI 	F8H 			//037B 	24F8
		ORG		037CH
		STR 	48H 			//037C 	01C8
		LDWI 	F0H 			//037D 	2AF0

		//;rfid125.c: 153: keyID[0] =0x00;
		CLRR 	62H 			//037E 	0162

		//;rfid125.c: 154: if(((RF_serial_55bits[10] & 0xf0)==(even_col & 0xf0)) && (0==(RF_serial
		//+                          _55bits[10]&0x08)))
		ANDWR 	4AH,0 			//037F 	024A
		STR 	77H 			//0380 	01F7
		LDR 	48H,0 			//0381 	0848
		ANDWI 	F0H 			//0382 	24F0
		XORWR 	77H,0 			//0383 	0477
		ORG		0384H
		BTSC 	STATUS,2 		//0384 	1503
		BTSC 	48H,3 			//0385 	15C8
		RETW 	0H 			//0386 	2100

		//;rfid125.c: 155: {
		//;rfid125.c: 157: return 1;
		RETW 	1H 			//0387 	2101
		LDR 	73H,0 			//0388 	0873
		STR 	50H 			//0389 	01D0
		LDR 	72H,0 			//038A 	0872
		STR 	4FH 			//038B 	01CF
		ORG		038CH
		IORWR 	50H,0 			//038C 	0350
		RET		 					//038D 	0004
		LDR 	4DH,0 			//038E 	084D
		ADDWI 	3EH 			//038F 	273E
		STR 	FSR 			//0390 	0184
		BCR 	STATUS,7 		//0391 	1383
		BCR 	STATUS,0 		//0392 	1003
		RLR 	INDF,1 			//0393 	0580
		ORG		0394H
		RET		 					//0394 	0004
		LDWI 	96H 			//0395 	2A96
		STR 	72H 			//0396 	01F2
		CLRR 	73H 			//0397 	0173
		LDR 	4EH,0 			//0398 	084E
		RET		 					//0399 	0004
		STR 	7BH 			//039A 	01FB

		//;MAIN.C: 122: id=(id-1)*5;
		LDWI 	5H 			//039B 	2A05
		ORG		039CH
		STR 	72H 			//039C 	01F2
		LDR 	7BH,0 			//039D 	087B
		ADDWI 	FFH 			//039E 	27FF
		LCALL 	5BCH 			//039F 	35BC
		STR 	7BH 			//03A0 	01FB

		//;MAIN.C: 123: {
		//;MAIN.C: 124: {
		//;MAIN.C: 125: *(buff+id) = *Cont;
		LDR 	3EH,0 			//03A1 	083E
		STR 	FSR 			//03A2 	0184
		BCR 	STATUS,7 		//03A3 	1383
		ORG		03A4H
		LDR 	INDF,0 			//03A4 	0800
		STR 	40H 			//03A5 	01C0
		LDR 	7BH,0 			//03A6 	087B
		ADDWR 	3FH,0 			//03A7 	0B3F
		STR 	41H 			//03A8 	01C1
		STR 	FSR 			//03A9 	0184
		LDR 	40H,0 			//03AA 	0840
		STR 	INDF 			//03AB 	0180
		ORG		03ACH

		//;MAIN.C: 126: *(buff+1+id) = *(Cont+1);
		LDR 	3EH,0 			//03AC 	083E
		ADDWI 	1H 			//03AD 	2701
		LCALL 	3CEH 			//03AE 	33CE
		ADDWI 	1H 			//03AF 	2701
		STR 	FSR 			//03B0 	0184
		LDR 	40H,0 			//03B1 	0840
		STR 	INDF 			//03B2 	0180

		//;MAIN.C: 127: *(buff+2+id) = *(Cont+2);
		LDR 	3EH,0 			//03B3 	083E
		ORG		03B4H
		ADDWI 	2H 			//03B4 	2702
		LCALL 	3CEH 			//03B5 	33CE
		ADDWI 	2H 			//03B6 	2702
		STR 	FSR 			//03B7 	0184
		LDR 	40H,0 			//03B8 	0840
		STR 	INDF 			//03B9 	0180

		//;MAIN.C: 128: *(buff+3+id) = *(Cont+3);
		LDR 	3EH,0 			//03BA 	083E
		ADDWI 	3H 			//03BB 	2703
		ORG		03BCH
		LCALL 	3CEH 			//03BC 	33CE
		ADDWI 	3H 			//03BD 	2703
		STR 	FSR 			//03BE 	0184
		LDR 	40H,0 			//03BF 	0840
		STR 	INDF 			//03C0 	0180

		//;MAIN.C: 129: *(buff+4+id) = *(Cont+4);
		LDR 	3EH,0 			//03C1 	083E
		ADDWI 	4H 			//03C2 	2704
		LCALL 	3CEH 			//03C3 	33CE
		ORG		03C4H
		ADDWI 	4H 			//03C4 	2704
		STR 	FSR 			//03C5 	0184
		LDR 	40H,0 			//03C6 	0840
		STR 	INDF 			//03C7 	0180

		//;MAIN.C: 130: }
		//;MAIN.C: 131: }
		//;MAIN.C: 133: eepromWriteBlock(0x06,buffTag,25);
		LDWI 	25H 			//03C8 	2A25
		STR 	76H 			//03C9 	01F6
		LDWI 	19H 			//03CA 	2A19
		STR 	77H 			//03CB 	01F7
		ORG		03CCH
		LDWI 	6H 			//03CC 	2A06
		LJUMP 	56BH 			//03CD 	3D6B
		STR 	FSR 			//03CE 	0184
		LDR 	INDF,0 			//03CF 	0800
		STR 	40H 			//03D0 	01C0
		LDR 	7BH,0 			//03D1 	087B
		ADDWR 	3FH,0 			//03D2 	0B3F
		STR 	41H 			//03D3 	01C1
		ORG		03D4H
		RET		 					//03D4 	0004
		BCR 	STATUS,5 		//03D5 	1283
		STR 	40H 			//03D6 	01C0

		//;MAIN.C: 29: unsigned int t;
		//;MAIN.C: 31: while(rep--){
		DECR 	78H,1 			//03D7 	0DF8
		LDR 	78H,0 			//03D8 	0878
		XORWI 	FFH 			//03D9 	26FF
		BTSC 	STATUS,2 		//03DA 	1503
		RET		 					//03DB 	0004
		ORG		03DCH

		//;MAIN.C: 32: t=25*delay;
		BCR 	STATUS,5 		//03DC 	1283
		LDR 	40H,0 			//03DD 	0840
		STR 	72H 			//03DE 	01F2
		LDWI 	19H 			//03DF 	2A19
		CLRR 	73H 			//03E0 	0173
		STR 	74H 			//03E1 	01F4
		CLRR 	75H 			//03E2 	0175
		LCALL 	53BH 			//03E3 	353B
		ORG		03E4H
		LDR 	73H,0 			//03E4 	0873
		STR 	3FH 			//03E5 	01BF
		LDR 	72H,0 			//03E6 	0872
		STR 	3EH 			//03E7 	01BE

		//;MAIN.C: 33: while(t--){
		LDWI 	1H 			//03E8 	2A01
		BCR 	STATUS,5 		//03E9 	1283
		SUBWR 	3EH,1 			//03EA 	0CBE
		LDWI 	0H 			//03EB 	2A00
		ORG		03ECH
		BTSS 	STATUS,0 		//03EC 	1C03
		DECR 	3FH,1 			//03ED 	0DBF
		SUBWR 	3FH,1 			//03EE 	0CBF
		INCR	3EH,0 			//03EF 	093E
		BTSC 	STATUS,2 		//03F0 	1503
		INCR	3FH,0 			//03F1 	093F
		BTSC 	STATUS,2 		//03F2 	1503
		LJUMP 	3FCH 			//03F3 	3BFC
		ORG		03F4H

		//;MAIN.C: 34: RC0 = ~RC0;
		LDWI 	1H 			//03F4 	2A01
		XORWR 	7H,1 			//03F5 	0487

		//;MAIN.C: 35: _delay((unsigned long)((428)*(8000000/4000000.0)));
		LDWI 	ABH 			//03F6 	2AAB
		STR 	79H 			//03F7 	01F9
		LJUMP 	3F9H 			//03F8 	3BF9
		DECRSZ 	79H,1 		//03F9 	0EF9
		LJUMP 	3F8H 			//03FA 	3BF8
		LJUMP 	3E8H 			//03FB 	3BE8
		ORG		03FCH

		//;MAIN.C: 37: }
		//;MAIN.C: 38: RC0 =0;
		BCR 	7H,0 			//03FC 	1007

		//;MAIN.C: 39: delay_x10ms(delay);
		LDR 	40H,0 			//03FD 	0840
		LCALL 	58EH 			//03FE 	358E
		LJUMP 	3D7H 			//03FF 	3BD7
		STR 	79H 			//0400 	01F9

		//;SWUART.C: 43: unsigned char nib = num>>4;
		SWAPR 	79H,0 			//0401 	0779
		ANDWI 	FH 			//0402 	240F
		STR 	7AH 			//0403 	01FA
		ORG		0404H

		//;SWUART.C: 44: swUartSendByte(nib <10 ? (nib+'0') :(nib+'A'-10));
		LDWI 	AH 			//0404 	2A0A
		SUBWR 	7AH,0 			//0405 	0C7A
		LDR 	7AH,0 			//0406 	087A
		STR 	75H 			//0407 	01F5
		BTSS 	STATUS,0 		//0408 	1C03
		LJUMP 	40CH 			//0409 	3C0C
		LDWI 	37H 			//040A 	2A37
		LJUMP 	40DH 			//040B 	3C0D
		ORG		040CH
		LDWI 	30H 			//040C 	2A30
		CLRR 	76H 			//040D 	0176
		ADDWR 	75H,1 			//040E 	0BF5
		BTSC 	STATUS,0 		//040F 	1403
		INCR	76H,1 			//0410 	09F6
		LDR 	75H,0 			//0411 	0875
		LCALL 	426H 			//0412 	3426

		//;SWUART.C: 45: nib = num&0x0f;
		LDR 	79H,0 			//0413 	0879
		ORG		0414H
		STR 	7AH 			//0414 	01FA
		LDWI 	FH 			//0415 	2A0F
		ANDWR 	7AH,1 			//0416 	02FA

		//;SWUART.C: 46: swUartSendByte(nib <10 ? (nib+'0') :(nib+'A'-10));
		LDWI 	AH 			//0417 	2A0A
		SUBWR 	7AH,0 			//0418 	0C7A
		LDR 	7AH,0 			//0419 	087A
		STR 	77H 			//041A 	01F7
		BTSS 	STATUS,0 		//041B 	1C03
		ORG		041CH
		LJUMP 	41FH 			//041C 	3C1F
		LDWI 	37H 			//041D 	2A37
		LJUMP 	420H 			//041E 	3C20
		LDWI 	30H 			//041F 	2A30
		CLRR 	78H 			//0420 	0178
		ADDWR 	77H,1 			//0421 	0BF7
		BTSC 	STATUS,0 		//0422 	1403
		INCR	78H,1 			//0423 	09F8
		ORG		0424H
		LDR 	77H,0 			//0424 	0877
		LJUMP 	426H 			//0425 	3C26
		STR 	73H 			//0426 	01F3
		LDWI 	8AH 			//0427 	2A8A

		//;SWUART.C: 14: unsigned char i;
		//;SWUART.C: 16: RA2 = 0;
		BCR 	STATUS,5 		//0428 	1283
		BCR 	5H,2 			//0429 	1105

		//;SWUART.C: 18: _delay((unsigned long)(((2000000/9600))*(8000000/4000000.0)));
		STR 	72H 			//042A 	01F2
		DECRSZ 	72H,1 		//042B 	0EF2
		ORG		042CH
		LJUMP 	42BH 			//042C 	3C2B
		CLRWDT	 			//042D 	0001

		//;SWUART.C: 19: for(i=0;i<8;i++){
		CLRR 	74H 			//042E 	0174

		//;SWUART.C: 20: RA2 = (dat&1);
		BTSS 	73H,0 			//042F 	1C73
		LJUMP 	434H 			//0430 	3C34
		BCR 	STATUS,5 		//0431 	1283
		BSR 	5H,2 			//0432 	1905
		LJUMP 	436H 			//0433 	3C36
		ORG		0434H
		BCR 	STATUS,5 		//0434 	1283
		BCR 	5H,2 			//0435 	1105
		LDWI 	8AH 			//0436 	2A8A

		//;SWUART.C: 21: dat=dat>>1;
		BCR 	STATUS,0 		//0437 	1003
		RRR	73H,1 			//0438 	06F3

		//;SWUART.C: 23: _delay((unsigned long)(((2000000/9600))*(8000000/4000000.0)));
		STR 	72H 			//0439 	01F2
		DECRSZ 	72H,1 		//043A 	0EF2
		LJUMP 	43AH 			//043B 	3C3A
		ORG		043CH
		CLRWDT	 			//043C 	0001
		LDWI 	8H 			//043D 	2A08
		INCR	74H,1 			//043E 	09F4
		SUBWR 	74H,0 			//043F 	0C74
		BTSS 	STATUS,0 		//0440 	1C03
		LJUMP 	42FH 			//0441 	3C2F
		LDWI 	8AH 			//0442 	2A8A

		//;SWUART.C: 24: }
		//;SWUART.C: 29: RA2 = 1;
		BCR 	STATUS,5 		//0443 	1283
		ORG		0444H
		BSR 	5H,2 			//0444 	1905

		//;SWUART.C: 31: _delay((unsigned long)(((2000000/9600))*(8000000/4000000.0)));
		STR 	72H 			//0445 	01F2
		DECRSZ 	72H,1 		//0446 	0EF2
		LJUMP 	446H 			//0447 	3C46
		CLRWDT	 			//0448 	0001
		RET		 					//0449 	0004
		STR 	75H 			//044A 	01F5

		//;ms82_eeprom.c: 27: GIE = 0;
		BCR 	INTCON,7 		//044B 	138B
		ORG		044CH

		//;ms82_eeprom.c: 29: {
		//;ms82_eeprom.c: 30: while(GIE) asm("clrwdt");
		BTSS 	INTCON,7 		//044C 	1F8B
		LJUMP 	450H 			//044D 	3C50
		CLRWDT	 			//044E 	0001
		LJUMP 	44CH 			//044F 	3C4C

		//;ms82_eeprom.c: 31: EEADR = EEAddr;
		LDR 	75H,0 			//0450 	0875
		BSR 	STATUS,5 		//0451 	1A83
		STR 	1BH 			//0452 	019B

		//;ms82_eeprom.c: 32: EEDAT = EEData;
		LDR 	72H,0 			//0453 	0872
		ORG		0454H
		STR 	1AH 			//0454 	019A
		LDWI 	34H 			//0455 	2A34

		//;ms82_eeprom.c: 33: EEIF = 0;
		BCR 	STATUS,5 		//0456 	1283
		BCR 	CH,7 			//0457 	138C

		//;ms82_eeprom.c: 34: EECON1 = 0x34;
		BSR 	STATUS,5 		//0458 	1A83
		STR 	1CH 			//0459 	019C

		//;ms82_eeprom.c: 35: WR = 1;
		BSR 	1DH,0 			//045A 	181D

		//;ms82_eeprom.c: 36: while(WR) asm("clrwdt");
		BSR 	STATUS,5 		//045B 	1A83
		ORG		045CH
		BTSS 	1DH,0 			//045C 	1C1D
		LJUMP 	460H 			//045D 	3C60
		CLRWDT	 			//045E 	0001
		LJUMP 	45BH 			//045F 	3C5B

		//;ms82_eeprom.c: 37: _delay((unsigned long)((2)*(8000000/4000.0)));
		LDWI 	6H 			//0460 	2A06
		STR 	74H 			//0461 	01F4
		LDWI 	30H 			//0462 	2A30
		STR 	73H 			//0463 	01F3
		ORG		0464H
		DECRSZ 	73H,1 		//0464 	0EF3
		LJUMP 	464H 			//0465 	3C64
		DECRSZ 	74H,1 		//0466 	0EF4
		LJUMP 	464H 			//0467 	3C64
		CLRWDT	 			//0468 	0001

		//;ms82_eeprom.c: 38: }
		//;ms82_eeprom.c: 39: GIE = 1;
		BSR 	INTCON,7 		//0469 	1B8B
		RET		 					//046A 	0004
		STR 	48H 			//046B 	01C8
		ORG		046CH

		//;MAIN.C: 136: unsigned char tmp[5]={0xff,0xff,0xff,0xff,0xff};
		LDWI 	43H 			//046C 	2A43
		STR 	FSR 			//046D 	0184
		LDR 	20H,0 			//046E 	0820
		BCR 	STATUS,7 		//046F 	1383
		STR 	INDF 			//0470 	0180
		INCR	FSR,1 			//0471 	0984
		LDR 	21H,0 			//0472 	0821
		STR 	INDF 			//0473 	0180
		ORG		0474H
		INCR	FSR,1 			//0474 	0984
		LDR 	22H,0 			//0475 	0822
		STR 	INDF 			//0476 	0180
		INCR	FSR,1 			//0477 	0984
		LDR 	23H,0 			//0478 	0823
		STR 	INDF 			//0479 	0180
		INCR	FSR,1 			//047A 	0984
		LDR 	24H,0 			//047B 	0824
		ORG		047CH
		STR 	INDF 			//047C 	0180
		LDR 	48H,0 			//047D 	0848
		SUBWR 	42H,0 			//047E 	0C42
		BTSS 	STATUS,0 		//047F 	1C03
		RET		 					//0480 	0004

		//;MAIN.C: 138: id_replate(idMin,tmp,buffTag);
		LDWI 	43H 			//0481 	2A43
		STR 	3EH 			//0482 	01BE
		LDWI 	25H 			//0483 	2A25
		ORG		0484H
		STR 	3FH 			//0484 	01BF
		LDR 	48H,0 			//0485 	0848
		LCALL 	39AH 			//0486 	339A
		BCR 	STATUS,5 		//0487 	1283
		INCR	48H,1 			//0488 	09C8
		LJUMP 	47DH 			//0489 	3C7D

		//;ms82_pwm.c: 12: TRISC |= 0B00100000;
		BSR 	7H,5 			//048A 	1A87

		//;ms82_pwm.c: 13: T2CON0 = 0B00000001;
		LDWI 	1H 			//048B 	2A01
		ORG		048CH
		BCR 	STATUS,5 		//048C 	1283
		STR 	12H 			//048D 	0192

		//;ms82_pwm.c: 14: T2CON1 = 0B00000000;
		BSR 	STATUS,5 		//048E 	1A83
		CLRR 	1EH 			//048F 	011E

		//;ms82_pwm.c: 15: PR2H = 0;
		CLRR 	12H 			//0490 	0112

		//;ms82_pwm.c: 16: PR2L = 7;
		LDWI 	7H 			//0491 	2A07
		STR 	11H 			//0492 	0191

		//;ms82_pwm.c: 17: P1ADTH = 0;
		BCR 	STATUS,5 		//0493 	1283
		ORG		0494H
		CLRR 	14H 			//0494 	0114

		//;ms82_pwm.c: 18: P1ADTL = 4;
		LDWI 	4H 			//0495 	2A04
		STR 	EH 			//0496 	018E

		//;ms82_pwm.c: 20: P1OE = 0B00000001;
		LDWI 	1H 			//0497 	2A01
		BSR 	STATUS,5 		//0498 	1A83
		STR 	10H 			//0499 	0190

		//;ms82_pwm.c: 21: P1POL = 0B00000000;
		CLRR 	19H 			//049A 	0119

		//;ms82_pwm.c: 22: P1CON = 0B00000000;
		BCR 	STATUS,5 		//049B 	1283
		ORG		049CH
		CLRR 	16H 			//049C 	0116

		//;ms82_pwm.c: 24: TMR2H = 0;
		CLRR 	13H 			//049D 	0113

		//;ms82_pwm.c: 25: TMR2L = 0;
		CLRR 	11H 			//049E 	0111

		//;ms82_pwm.c: 26: TMR2IF = 0;
		BCR 	CH,1 			//049F 	108C

		//;ms82_pwm.c: 27: TMR2ON = 1;
		BSR 	12H,2 			//04A0 	1912

		//;ms82_pwm.c: 28: while(TMR2IF==0) asm("clrwdt");
		BCR 	STATUS,5 		//04A1 	1283
		BTSC 	CH,1 			//04A2 	148C
		LJUMP 	4A6H 			//04A3 	3CA6
		ORG		04A4H
		CLRWDT	 			//04A4 	0001
		LJUMP 	4A1H 			//04A5 	3CA1

		//;ms82_pwm.c: 29: TRISC &= 0B11011111;
		BSR 	STATUS,5 		//04A6 	1A83
		BCR 	7H,5 			//04A7 	1287
		RET		 					//04A8 	0004
		STR 	74H 			//04A9 	01F4

		//;rfid125.c: 7: unsigned int CurTimer;
		//;rfid125.c: 8: T0ON = 0;
		BCR 	1FH,3 			//04AA 	119F

		//;rfid125.c: 10: TMR0 = 0;
		CLRR 	1H 			//04AB 	0101
		ORG		04ACH

		//;rfid125.c: 11: T0IF = 0;
		BCR 	INTCON,2 		//04AC 	110B

		//;rfid125.c: 12: T0ON = 1;
		BSR 	1FH,3 			//04AD 	199F

		//;rfid125.c: 13: while(RA5==Logic){
		LDWI 	0H 			//04AE 	2A00
		BTSC 	5H,5 			//04AF 	1685
		LDWI 	1H 			//04B0 	2A01
		XORWR 	74H,0 			//04B1 	0474
		BTSS 	STATUS,2 		//04B2 	1D03
		LJUMP 	4C3H 			//04B3 	3CC3
		ORG		04B4H

		//;rfid125.c: 14: CurTimer= (0 <<8 )| TMR0;
		CLRR 	75H 			//04B4 	0175
		CLRR 	76H 			//04B5 	0176
		LDR 	1H,0 			//04B6 	0801
		IORWR 	75H,1 			//04B7 	03F5

		//;rfid125.c: 15: if(CurTimer>time)
		LDR 	76H,0 			//04B8 	0876
		SUBWR 	73H,0 			//04B9 	0C73
		BTSS 	STATUS,2 		//04BA 	1D03
		LJUMP 	4BEH 			//04BB 	3CBE
		ORG		04BCH
		LDR 	75H,0 			//04BC 	0875
		SUBWR 	72H,0 			//04BD 	0C72
		BTSC 	STATUS,0 		//04BE 	1403
		LJUMP 	4AEH 			//04BF 	3CAE

		//;rfid125.c: 16: return 0;
		CLRR 	72H 			//04C0 	0172
		CLRR 	73H 			//04C1 	0173
		RET		 					//04C2 	0004

		//;rfid125.c: 17: }
		//;rfid125.c: 18: return CurTimer;
		LDR 	76H,0 			//04C3 	0876
		ORG		04C4H
		STR 	73H 			//04C4 	01F3
		LDR 	75H,0 			//04C5 	0875
		STR 	72H 			//04C6 	01F2
		RET		 					//04C7 	0004
		STR 	78H 			//04C8 	01F8

		//;ms82_eeprom.c: 53: unsigned char i;
		//;ms82_eeprom.c: 55: if(len1!=len2)
		LDR 	73H,0 			//04C9 	0873
		XORWR 	74H,0 			//04CA 	0474
		BTSS 	STATUS,2 		//04CB 	1D03
		ORG		04CCH

		//;ms82_eeprom.c: 56: return 0;
		RETW 	0H 			//04CC 	2100

		//;ms82_eeprom.c: 57: else{
		//;ms82_eeprom.c: 58: for(i=0;i<len1;i++){
		CLRR 	79H 			//04CD 	0179
		LDR 	73H,0 			//04CE 	0873
		SUBWR 	79H,0 			//04CF 	0C79

		//;ms82_eeprom.c: 59: if(*(arr1+i) != *(arr2+i)){
		LDR 	79H,0 			//04D0 	0879
		BTSC 	STATUS,0 		//04D1 	1403
		LJUMP 	4E3H 			//04D2 	3CE3
		ADDWR 	72H,0 			//04D3 	0B72
		ORG		04D4H
		STR 	75H 			//04D4 	01F5
		STR 	FSR 			//04D5 	0184
		BCR 	STATUS,7 		//04D6 	1383
		LDR 	INDF,0 			//04D7 	0800
		STR 	76H 			//04D8 	01F6
		LDR 	79H,0 			//04D9 	0879
		ADDWR 	78H,0 			//04DA 	0B78
		STR 	77H 			//04DB 	01F7
		ORG		04DCH
		STR 	FSR 			//04DC 	0184
		LDR 	INDF,0 			//04DD 	0800
		XORWR 	76H,0 			//04DE 	0476
		BTSS 	STATUS,2 		//04DF 	1D03
		RETW 	0H 			//04E0 	2100
		INCR	79H,1 			//04E1 	09F9
		LJUMP 	4CEH 			//04E2 	3CCE

		//;ms82_eeprom.c: 61: }
		//;ms82_eeprom.c: 62: }
		//;ms82_eeprom.c: 63: if(i==len1)
		XORWR 	73H,0 			//04E3 	0473
		ORG		04E4H
		BTSC 	STATUS,2 		//04E4 	1503

		//;ms82_eeprom.c: 64: return 1;
		RETW 	1H 			//04E5 	2101
		RETW 	0H 			//04E6 	2100
		RETW 	FFH 			//04E7 	21FF
		RETW 	FFH 			//04E8 	21FF
		RETW 	FFH 			//04E9 	21FF
		RETW 	FFH 			//04EA 	21FF
		RETW 	FFH 			//04EB 	21FF
		ORG		04ECH
		RETW 	0H 			//04EC 	2100
		RETW 	0H 			//04ED 	2100
		RETW 	11H 			//04EE 	2111
		RETW 	BH 			//04EF 	210B
		RETW 	4FH 			//04F0 	214F
		RETW 	0H 			//04F1 	2100
		RETW 	0H 			//04F2 	2100
		RETW 	81H 			//04F3 	2181
		ORG		04F4H
		RETW 	2FH 			//04F4 	212F
		RETW 	22H 			//04F5 	2122
		RETW 	0H 			//04F6 	2100
		RETW 	0H 			//04F7 	2100
		RETW 	7DH 			//04F8 	217D
		RETW 	67H 			//04F9 	2167
		RETW 	5H 			//04FA 	2105
		RETW 	0H 			//04FB 	2100
		ORG		04FCH
		RETW 	0H 			//04FC 	2100
		RETW 	7EH 			//04FD 	217E
		RETW 	31H 			//04FE 	2131
		RETW 	E7H 			//04FF 	21E7
		RETW 	0H 			//0500 	2100
		RETW 	0H 			//0501 	2100
		RETW 	7EH 			//0502 	217E
		RETW 	51H 			//0503 	2151
		ORG		0504H
		RETW 	E6H 			//0504 	21E6
		BCR 	STATUS,5 		//0505 	1283
		STR 	3EH 			//0506 	01BE

		//;MAIN.C: 114: unsigned char i;
		//;MAIN.C: 115: for(i=0;i<21;i+=5){
		CLRR 	3FH 			//0507 	013F

		//;MAIN.C: 116: if(comArr(id_input,buff+i,5,5))
		LDR 	3FH,0 			//0508 	083F
		ADDWR 	7AH,0 			//0509 	0B7A
		STR 	72H 			//050A 	01F2
		LDWI 	5H 			//050B 	2A05
		ORG		050CH
		STR 	73H 			//050C 	01F3
		STR 	74H 			//050D 	01F4
		LDR 	3EH,0 			//050E 	083E
		LCALL 	4C8H 			//050F 	34C8
		XORWI 	0H 			//0510 	2600

		//;MAIN.C: 117: return i/5 +1;
		LDWI 	5H 			//0511 	2A05
		BTSC 	STATUS,2 		//0512 	1503
		LJUMP 	51AH 			//0513 	3D1A
		ORG		0514H
		STR 	72H 			//0514 	01F2
		LDR 	3FH,0 			//0515 	083F
		LCALL 	520H 			//0516 	3520
		STR 	7BH 			//0517 	01FB
		INCR	7BH,0 			//0518 	097B
		RET		 					//0519 	0004
		ADDWR 	3FH,1 			//051A 	0BBF
		LDWI 	15H 			//051B 	2A15
		ORG		051CH
		SUBWR 	3FH,0 			//051C 	0C3F
		BTSC 	STATUS,0 		//051D 	1403

		//;MAIN.C: 118: }
		//;MAIN.C: 119: return 255;
		RETW 	FFH 			//051E 	21FF
		LJUMP 	508H 			//051F 	3D08
		STR 	73H 			//0520 	01F3
		CLRR 	75H 			//0521 	0175
		LDR 	72H,0 			//0522 	0872
		BTSC 	STATUS,2 		//0523 	1503
		ORG		0524H
		LJUMP 	539H 			//0524 	3D39
		CLRR 	74H 			//0525 	0174
		INCR	74H,1 			//0526 	09F4
		BTSC 	72H,7 			//0527 	17F2
		LJUMP 	52CH 			//0528 	3D2C
		BCR 	STATUS,0 		//0529 	1003
		RLR 	72H,1 			//052A 	05F2
		LJUMP 	526H 			//052B 	3D26
		ORG		052CH
		BCR 	STATUS,0 		//052C 	1003
		RLR 	75H,1 			//052D 	05F5
		LDR 	72H,0 			//052E 	0872
		SUBWR 	73H,0 			//052F 	0C73
		BTSS 	STATUS,0 		//0530 	1C03
		LJUMP 	536H 			//0531 	3D36
		LDR 	72H,0 			//0532 	0872
		SUBWR 	73H,1 			//0533 	0CF3
		ORG		0534H
		BSR 	75H,0 			//0534 	1875
		BCR 	STATUS,0 		//0535 	1003
		RRR	72H,1 			//0536 	06F2
		DECRSZ 	74H,1 		//0537 	0EF4
		LJUMP 	52CH 			//0538 	3D2C
		LDR 	75H,0 			//0539 	0875
		RET		 					//053A 	0004
		CLRR 	76H 			//053B 	0176
		ORG		053CH
		CLRR 	77H 			//053C 	0177
		BTSS 	72H,0 			//053D 	1C72
		LJUMP 	545H 			//053E 	3D45
		LDR 	74H,0 			//053F 	0874
		ADDWR 	76H,1 			//0540 	0BF6
		BTSC 	STATUS,0 		//0541 	1403
		INCR	77H,1 			//0542 	09F7
		LDR 	75H,0 			//0543 	0875
		ORG		0544H
		ADDWR 	77H,1 			//0544 	0BF7
		BCR 	STATUS,0 		//0545 	1003
		RLR 	74H,1 			//0546 	05F4
		RLR 	75H,1 			//0547 	05F5
		BCR 	STATUS,0 		//0548 	1003
		RRR	73H,1 			//0549 	06F3
		RRR	72H,1 			//054A 	06F2
		LDR 	73H,0 			//054B 	0873
		ORG		054CH
		IORWR 	72H,0 			//054C 	0372
		BTSS 	STATUS,2 		//054D 	1D03
		LJUMP 	53DH 			//054E 	3D3D
		LDR 	77H,0 			//054F 	0877
		STR 	73H 			//0550 	01F3
		LDR 	76H,0 			//0551 	0876
		STR 	72H 			//0552 	01F2
		RET		 					//0553 	0004
		ORG		0554H
		LDWI 	3EH 			//0554 	2A3E
		CLRR 	5CH 			//0555 	015C
		CLRR 	5DH 			//0556 	015D
		CLRR 	5EH 			//0557 	015E
		CLRR 	5FH 			//0558 	015F
		CLRR 	60H 			//0559 	0160
		CLRR 	61H 			//055A 	0161
		CLRR 	62H 			//055B 	0162
		ORG		055CH
		CLRR 	63H 			//055C 	0163
		CLRR 	64H 			//055D 	0164
		CLRR 	65H 			//055E 	0165
		CLRR 	66H 			//055F 	0166
		BCR 	STATUS,7 		//0560 	1383
		STR 	7DH 			//0561 	01FD
		LDWI 	4H 			//0562 	2A04
		STR 	7EH 			//0563 	01FE
		ORG		0564H
		LDWI 	E7H 			//0564 	2AE7
		STR 	7FH 			//0565 	01FF
		LDWI 	20H 			//0566 	2A20
		STR 	FSR 			//0567 	0184
		LCALL 	5A2H 			//0568 	35A2
		CLRR 	STATUS 			//0569 	0103
		LJUMP 	0BH 			//056A 	380B
		STR 	79H 			//056B 	01F9
		ORG		056CH

		//;ms82_eeprom.c: 44: unsigned char i;
		//;ms82_eeprom.c: 45: for(i=0;i<len;i++){
		CLRR 	7AH 			//056C 	017A
		LDR 	77H,0 			//056D 	0877
		SUBWR 	7AH,0 			//056E 	0C7A
		BTSC 	STATUS,0 		//056F 	1403
		RET		 					//0570 	0004

		//;ms82_eeprom.c: 46: eepromWriteByte(addStart+i,buff[i]);
		LDR 	7AH,0 			//0571 	087A
		ADDWR 	76H,0 			//0572 	0B76
		STR 	78H 			//0573 	01F8
		ORG		0574H
		STR 	FSR 			//0574 	0184
		BCR 	STATUS,7 		//0575 	1383
		LDR 	INDF,0 			//0576 	0800
		STR 	72H 			//0577 	01F2
		LDR 	7AH,0 			//0578 	087A
		ADDWR 	79H,0 			//0579 	0B79
		LCALL 	44AH 			//057A 	344A
		INCR	7AH,1 			//057B 	09FA
		ORG		057CH
		LJUMP 	56DH 			//057C 	3D6D
		STR 	77H 			//057D 	01F7

		//;ms82_eeprom.c: 19: unsigned char i;
		//;ms82_eeprom.c: 20: for(i=0;i<len;i++){
		CLRR 	78H 			//057E 	0178
		LDR 	75H,0 			//057F 	0875
		SUBWR 	78H,0 			//0580 	0C78
		BTSC 	STATUS,0 		//0581 	1403
		RET		 					//0582 	0004

		//;ms82_eeprom.c: 21: buff[i] = eepromReadByte(addStart+i);
		LDR 	78H,0 			//0583 	0878
		ORG		0584H
		ADDWR 	74H,0 			//0584 	0B74
		STR 	76H 			//0585 	01F6
		STR 	FSR 			//0586 	0184
		LDR 	78H,0 			//0587 	0878
		ADDWR 	77H,0 			//0588 	0B77
		LCALL 	610H 			//0589 	3610
		BCR 	STATUS,7 		//058A 	1383
		STR 	INDF 			//058B 	0180
		ORG		058CH
		INCR	78H,1 			//058C 	09F8
		LJUMP 	57FH 			//058D 	3D7F
		STR 	74H 			//058E 	01F4

		//;MAIN.C: 25: while(t--)
		DECR 	74H,1 			//058F 	0DF4
		LDR 	74H,0 			//0590 	0874
		XORWI 	FFH 			//0591 	26FF
		BTSC 	STATUS,2 		//0592 	1503
		RET		 					//0593 	0004
		ORG		0594H

		//;MAIN.C: 26: _delay((unsigned long)((10)*(8000000/4000.0)));
		LDWI 	1AH 			//0594 	2A1A
		STR 	73H 			//0595 	01F3
		LDWI 	F8H 			//0596 	2AF8
		STR 	72H 			//0597 	01F2
		DECRSZ 	72H,1 		//0598 	0EF2
		LJUMP 	598H 			//0599 	3D98
		DECRSZ 	73H,1 		//059A 	0EF3
		LJUMP 	598H 			//059B 	3D98
		ORG		059CH
		CLRWDT	 			//059C 	0001
		LJUMP 	58FH 			//059D 	3D8F
		LDR 	7EH,0 			//059E 	087E
		STR 	PCLATH 			//059F 	018A
		LDR 	7FH,0 			//05A0 	087F
		STR 	PCL 			//05A1 	0182
		LCALL 	59EH 			//05A2 	359E
		STR 	INDF 			//05A3 	0180
		ORG		05A4H
		INCR	FSR,1 			//05A4 	0984
		LDR 	FSR,0 			//05A5 	0804
		XORWR 	7DH,0 			//05A6 	047D
		BTSC 	STATUS,2 		//05A7 	1503
		RETW 	0H 			//05A8 	2100
		INCR	7FH,1 			//05A9 	09FF
		BTSC 	STATUS,2 		//05AA 	1503
		INCR	7EH,1 			//05AB 	09FE
		ORG		05ACH
		LJUMP 	5A2H 			//05AC 	3DA2

		//;sysinit.c: 34: PORTA = 0B00000000;
		BCR 	STATUS,5 		//05AD 	1283
		CLRR 	5H 			//05AE 	0105

		//;sysinit.c: 35: TRISA = 0B01110011;
		LDWI 	73H 			//05AF 	2A73
		BSR 	STATUS,5 		//05B0 	1A83
		STR 	5H 			//05B1 	0185

		//;sysinit.c: 36: WPUA = 0B10000000;
		LDWI 	80H 			//05B2 	2A80
		STR 	15H 			//05B3 	0195
		ORG		05B4H

		//;sysinit.c: 37: PORTC = 0B00000010;
		LDWI 	2H 			//05B4 	2A02
		BCR 	STATUS,5 		//05B5 	1283
		STR 	7H 			//05B6 	0187

		//;sysinit.c: 38: TRISC = 0B11111110;
		LDWI 	FEH 			//05B7 	2AFE
		BSR 	STATUS,5 		//05B8 	1A83
		STR 	7H 			//05B9 	0187

		//;sysinit.c: 39: WPUC = 0B00000000;
		CLRR 	13H 			//05BA 	0113
		RET		 					//05BB 	0004
		ORG		05BCH
		STR 	74H 			//05BC 	01F4
		CLRR 	73H 			//05BD 	0173
		LDR 	72H,0 			//05BE 	0872
		BTSC 	74H,0 			//05BF 	1474
		ADDWR 	73H,1 			//05C0 	0BF3
		BCR 	STATUS,0 		//05C1 	1003
		RLR 	72H,1 			//05C2 	05F2
		BCR 	STATUS,0 		//05C3 	1003
		ORG		05C4H
		RRR	74H,1 			//05C4 	06F4
		LDR 	74H,1 			//05C5 	08F4
		BTSS 	STATUS,2 		//05C6 	1D03
		LJUMP 	5BEH 			//05C7 	3DBE
		LDR 	73H,0 			//05C8 	0873
		RET		 					//05C9 	0004
		LDWI 	5H 			//05CA 	2A05
		STR 	PCLATH 			//05CB 	018A
		ORG		05CCH
		LDR 	FSR,0 			//05CC 	0804
		INCR	FSR,1 			//05CD 	0984
		ADDWR 	PCL,1 			//05CE 	0B82
		RETW 	0H 			//05CF 	2100
		RETW 	AH 			//05D0 	210A
		RETW 	54H 			//05D1 	2154
		RETW 	61H 			//05D2 	2161
		RETW 	67H 			//05D3 	2167
		ORG		05D4H
		RETW 	3AH 			//05D4 	213A
		RETW 	20H 			//05D5 	2120
		RETW 	0H 			//05D6 	2100
		STR 	75H 			//05D7 	01F5

		//;SWUART.C: 36: while(*str){
		LDR 	75H,0 			//05D8 	0875
		STR 	FSR 			//05D9 	0184
		LCALL 	5CAH 			//05DA 	35CA
		IORWI 	0H 			//05DB 	2500
		ORG		05DCH
		BTSC 	STATUS,2 		//05DC 	1503
		RET		 					//05DD 	0004

		//;SWUART.C: 37: swUartSendByte((char)*str);
		LDR 	75H,0 			//05DE 	0875
		STR 	FSR 			//05DF 	0184
		LCALL 	5CAH 			//05E0 	35CA
		LCALL 	426H 			//05E1 	3426

		//;SWUART.C: 38: str++;
		INCR	75H,1 			//05E2 	09F5
		LJUMP 	5D8H 			//05E3 	3DD8
		ORG		05E4H

		//;sysinit.c: 72: INTCON = 0B00000000;
		CLRR 	INTCON 			//05E4 	010B

		//;sysinit.c: 73: PIE1 = 0B00000000;
		CLRR 	CH 			//05E5 	010C

		//;sysinit.c: 74: PIR1 = 0B00000000;
		BCR 	STATUS,5 		//05E6 	1283
		CLRR 	CH 			//05E7 	010C

		//;sysinit.c: 87: T0IF = 0;
		BCR 	INTCON,2 		//05E8 	110B

		//;sysinit.c: 88: T0IE = 0;
		BCR 	INTCON,5 		//05E9 	128B

		//;sysinit.c: 92: TMR2IF = 0;
		BCR 	CH,1 			//05EA 	108C

		//;sysinit.c: 93: TMR2IE = 1;
		BSR 	STATUS,5 		//05EB 	1A83
		ORG		05ECH
		BSR 	CH,1 			//05EC 	188C

		//;sysinit.c: 99: PEIE = 0;
		BCR 	INTCON,6 		//05ED 	130B

		//;sysinit.c: 101: GIE = 1;
		BSR 	INTCON,7 		//05EE 	1B8B
		RET		 					//05EF 	0004
		STR 	74H 			//05F0 	01F4

		//;MAIN.C: 108: mtState = stt;
		BCR 	STATUS,5 		//05F1 	1283
		STR 	61H 			//05F2 	01E1

		//;MAIN.C: 109: timeTick =0;
		CLRR 	5EH 			//05F3 	015E
		ORG		05F4H
		CLRR 	5FH 			//05F4 	015F

		//;MAIN.C: 110: timeOut = _tOut;
		LDR 	73H,0 			//05F5 	0873
		STR 	5DH 			//05F6 	01DD
		LDR 	72H,0 			//05F7 	0872
		STR 	5CH 			//05F8 	01DC
		RET		 					//05F9 	0004
		ORG		0600H
		LJUMP 	FEH 			//0600 	38FE
		LJUMP 	C3H 			//0601 	38C3
		LJUMP 	C3H 			//0602 	38C3
		LJUMP 	14CH 			//0603 	394C
		LJUMP 	194H 			//0604 	3994
		LJUMP 	16AH 			//0605 	396A
		LJUMP 	123H 			//0606 	3923
		LJUMP 	C3H 			//0607 	38C3
		ORG		0608H

		//;sysinit.c: 21: OSCCON = 0B01100001;
		LDWI 	61H 			//0608 	2A61
		BSR 	STATUS,5 		//0609 	1A83
		STR 	FH 			//060A 	018F

		//;sysinit.c: 22: _nop();
		NOP		 					//060B 	0000

		//;sysinit.c: 28: while(HTS==0);
		BSR 	STATUS,5 		//060C 	1A83
		BTSC 	FH,2 			//060D 	150F
		RET		 					//060E 	0004
		LJUMP 	60CH 			//060F 	3E0C
		ORG		0610H
		STR 	72H 			//0610 	01F2

		//;ms82_eeprom.c: 8: unsigned char ReEepromData;
		//;ms82_eeprom.c: 10: EEADR = EEAddr;
		BSR 	STATUS,5 		//0611 	1A83
		STR 	1BH 			//0612 	019B

		//;ms82_eeprom.c: 11: RD = 1;
		BSR 	1CH,0 			//0613 	181C

		//;ms82_eeprom.c: 12: ReEepromData = EEDAT;
		LDR 	1AH,0 			//0614 	081A
		STR 	73H 			//0615 	01F3

		//;ms82_eeprom.c: 13: RD = 0;
		BCR 	1CH,0 			//0616 	101C

		//;ms82_eeprom.c: 14: return ReEepromData;
		RET		 					//0617 	0004
		ORG		0618H
		LDR 	71H,0 			//0618 	0871
		STR 	PCLATH 			//0619 	018A
		SWAPR 	70H,0 			//061A 	0770
		STR 	STATUS 			//061B 	0183
		SWAPR 	7EH,1 			//061C 	07FE
		SWAPR 	7EH,0 			//061D 	077E
		RETI		 			//061E 	0009

		//;sysinit.c: 46: OPTION = 0B00000011;
		LDWI 	3H 			//061F 	2A03
		ORG		0620H
		STR 	1H 			//0620 	0181
		RET		 					//0621 	0004
			END
