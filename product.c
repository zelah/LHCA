#include <stdio.h>
#include <stdlib.h>
#define ZEDchar unsigned char
#define ZEDcharP unsigned char*
#define ZEDint unsigned int
#define ZEDlonglong unsigned long long
#define ZEDpchar static unsigned char
#define ZEDpcharP static unsigned char*
#define ZEDpint static unsigned int
#define ZEDplonglong static unsigned long long
 
ZEDpcharP ZEDbitTableBackwardCaseOneFalse;
ZEDpcharP ZEDbitTableBackwardCaseOneTrue;
ZEDpcharP ZEDbitTableBackwardCaseTwoFalseFalse;
ZEDpcharP ZEDbitTableBackwardCaseTwoFalseTrue;
ZEDpcharP ZEDbitTableBackwardCaseTwoTrueFalse;
ZEDpcharP ZEDbitTableBackwardCaseTwoTrueTrue;
ZEDpcharP ZEDbyteTableBackwardCaseOneFalse;
ZEDpcharP ZEDbyteTableBackwardCaseOneTrue;
ZEDpcharP ZEDbyteTableBackwardCaseTwoFalseFalse;
ZEDpcharP ZEDbyteTableBackwardCaseTwoFalseTrue;
ZEDpcharP ZEDbyteTableBackwardCaseTwoTrueFalse;
ZEDpcharP ZEDbyteTableBackwardCaseTwoTrueTrue;
ZEDpcharP ZEDbyteTableForwardCaseOneFalse;
ZEDpcharP ZEDbyteTableForwardCaseOneTrue;
ZEDpcharP ZEDbyteTableForwardCaseTwoFalseFalse;
ZEDpcharP ZEDbyteTableForwardCaseTwoFalseTrue;
ZEDpcharP ZEDbyteTableForwardCaseTwoTrueFalse;
ZEDpcharP ZEDbyteTableForwardCaseTwoTrueTrue;
ZEDpcharP ZEDstate;
 
ZEDpchar bitBack(ZEDchar bit0 , ZEDchar bit1 , ZEDchar byte);
ZEDpchar bitBackwardCaseOneFalse(ZEDchar byte);
ZEDpchar bitBackwardCaseOneTrue(ZEDchar byte);
ZEDpchar bitBackwardCaseTwoFalseFalse(ZEDchar byte);
ZEDpchar bitBackwardCaseTwoFalseTrue(ZEDchar byte);
ZEDpchar bitBackwardCaseTwoTrueFalse(ZEDchar byte);
ZEDpchar bitBackwardCaseTwoTrueTrue(ZEDchar byte);
ZEDpchar byteBack(ZEDchar bit0 , ZEDchar bit1 , ZEDchar byte);
ZEDpchar byteBackwardCaseOneFalse(ZEDchar byte);
ZEDpchar byteBackwardCaseOneTrue(ZEDchar byte);
ZEDpchar byteBackwardCaseTwoFalseFalse(ZEDchar byte);
ZEDpchar byteBackwardCaseTwoFalseTrue(ZEDchar byte);
ZEDpchar byteBackwardCaseTwoTrueFalse(ZEDchar byte);
ZEDpchar byteBackwardCaseTwoTrueTrue(ZEDchar byte);
ZEDpchar byteForwardCaseOneFalse(ZEDchar byte);
ZEDpchar byteForwardCaseOneTrue(ZEDchar byte);
ZEDpchar byteForwardCaseTwoFalseFalse(ZEDchar byte);
ZEDpchar byteForwardCaseTwoFalseTrue(ZEDchar byte);
ZEDpchar byteForwardCaseTwoTrueFalse(ZEDchar byte);
ZEDpchar byteForwardCaseTwoTrueTrue(ZEDchar byte);
ZEDpcharP charArrayMap(ZEDchar (*function)(ZEDchar),ZEDlonglong count,ZEDcharP array);
ZEDpcharP charArrayNew(ZEDlonglong size);
ZEDpchar charArrayRef(ZEDlonglong index , ZEDcharP array);
ZEDpcharP charArraySet(ZEDlonglong index , ZEDchar character , ZEDcharP array);
ZEDpchar lhcaBackward();
ZEDpchar lhcaForward();
ZEDplonglong longlongCastChar(ZEDchar character);
ZEDpchar test1(ZEDint count);
ZEDpchar test2(ZEDint count);

ZEDpchar ZEDbitBack(ZEDchar ZEDbit0 , ZEDchar ZEDbit1 , ZEDchar ZEDbyte);ZEDpchar ZEDbitBackwardCaseOneFalse(ZEDchar ZEDbyte);ZEDpchar ZEDbitBackwardCaseOneTrue(ZEDchar ZEDbyte);ZEDpchar ZEDbitBackwardCaseTwoFalseFalse(ZEDchar ZEDbyte);ZEDpchar ZEDbitBackwardCaseTwoFalseTrue(ZEDchar ZEDbyte);ZEDpchar ZEDbitBackwardCaseTwoTrueFalse(ZEDchar ZEDbyte);ZEDpchar ZEDbitBackwardCaseTwoTrueTrue(ZEDchar ZEDbyte);ZEDpchar ZEDbitRule(ZEDchar ZEDrule , ZEDchar ZEDone , ZEDchar ZEDtwo , ZEDchar ZEDthree);ZEDpchar ZEDbitRuleNinety(ZEDchar ZEDone , ZEDchar ZEDtwo , ZEDchar ZEDthree);ZEDpchar ZEDbitRuleOneFifty(ZEDchar ZEDone , ZEDchar ZEDtwo , ZEDchar ZEDthree);ZEDpchar ZEDbitXor(ZEDchar ZEDone , ZEDchar ZEDtwo);ZEDpcharP ZEDbitsBackwardCaseOne(ZEDchar ZEDbit , ZEDcharP ZEDbits);ZEDpcharP ZEDbitsBackwardCaseOne1(ZEDchar ZEDbit , ZEDcharP ZEDinput , ZEDcharP ZEDoutput);ZEDpcharP ZEDbitsBackwardCaseOne1a(ZEDcharP ZEDinput , ZEDcharP ZEDoutput);ZEDpcharP ZEDbitsBackwardCaseOne1b(ZEDcharP ZEDinput , ZEDcharP ZEDoutput);ZEDpcharP ZEDbitsBackwardCaseOne1c(ZEDcharP ZEDinput , ZEDcharP ZEDoutput);ZEDpcharP ZEDbitsBackwardCaseOne1d(ZEDcharP ZEDinput , ZEDcharP ZEDoutput);ZEDpcharP ZEDbitsBackwardCaseOne1e(ZEDcharP ZEDinput , ZEDcharP ZEDoutput);ZEDpcharP ZEDbitsBackwardCaseOne1f(ZEDcharP ZEDinput , ZEDcharP ZEDoutput);ZEDpcharP ZEDbitsBackwardCaseOne1g(ZEDcharP ZEDinput , ZEDcharP ZEDoutput);ZEDpcharP ZEDbitsBackwardCaseOneFalse();ZEDpcharP ZEDbitsBackwardCaseOneTrue();ZEDpcharP ZEDbitsBackwardCaseTwo(ZEDchar ZEDbit1 , ZEDchar ZEDbit2 , ZEDcharP ZEDbits);ZEDpcharP ZEDbitsBackwardCaseTwo1(ZEDchar ZEDbit1 , ZEDchar ZEDbit2 , ZEDcharP ZEDinput , ZEDcharP ZEDoutput);ZEDpcharP ZEDbitsBackwardCaseTwo1a(ZEDcharP ZEDinput , ZEDcharP ZEDoutput);ZEDpcharP ZEDbitsBackwardCaseTwo1b(ZEDcharP ZEDinput , ZEDcharP ZEDoutput);ZEDpcharP ZEDbitsBackwardCaseTwo1c(ZEDcharP ZEDinput , ZEDcharP ZEDoutput);ZEDpcharP ZEDbitsBackwardCaseTwo1d(ZEDcharP ZEDinput , ZEDcharP ZEDoutput);ZEDpcharP ZEDbitsBackwardCaseTwo1e(ZEDcharP ZEDinput , ZEDcharP ZEDoutput);ZEDpcharP ZEDbitsBackwardCaseTwo1f(ZEDcharP ZEDinput , ZEDcharP ZEDoutput);ZEDpcharP ZEDbitsBackwardCaseTwo1g(ZEDcharP ZEDinput , ZEDcharP ZEDoutput);ZEDpcharP ZEDbitsBackwardCaseTwoFalseFalse();ZEDpcharP ZEDbitsBackwardCaseTwoFalseTrue();ZEDpcharP ZEDbitsBackwardCaseTwoTrueFalse();ZEDpcharP ZEDbitsBackwardCaseTwoTrueTrue();ZEDpcharP ZEDbitsByte(ZEDchar ZEDbyte);ZEDpcharP ZEDbitsByte1(ZEDchar ZEDbyte , ZEDchar ZEDcount);ZEDpcharP ZEDbitsForwardCaseOne(ZEDchar ZEDleftBit , ZEDchar ZEDrightBit , ZEDcharP ZEDbits);ZEDpcharP ZEDbitsForwardCaseTwo(ZEDchar ZEDleftBit , ZEDchar ZEDrightBit , ZEDcharP ZEDbits);ZEDpchar ZEDbyteBack(ZEDchar ZEDbit0 , ZEDchar ZEDbit1 , ZEDchar ZEDbyte);ZEDpchar ZEDbyteBackwardCaseOneFalse(ZEDchar ZEDbyte);ZEDpchar ZEDbyteBackwardCaseOneTrue(ZEDchar ZEDbyte);ZEDpchar ZEDbyteBackwardCaseTwoFalseFalse(ZEDchar ZEDbyte);ZEDpchar ZEDbyteBackwardCaseTwoFalseTrue(ZEDchar ZEDbyte);ZEDpchar ZEDbyteBackwardCaseTwoTrueFalse(ZEDchar ZEDbyte);ZEDpchar ZEDbyteBackwardCaseTwoTrueTrue(ZEDchar ZEDbyte);ZEDpchar ZEDbyteBits(ZEDcharP ZEDbits);ZEDpchar ZEDbyteBits1(ZEDcharP ZEDbits , ZEDchar ZEDbyte , ZEDchar ZEDcount);ZEDpchar ZEDbyteEightForward();ZEDpchar ZEDbyteEightRef();ZEDpcharP ZEDbyteEightSet(ZEDchar ZEDcharacter);ZEDpchar ZEDbyteFiveForward();ZEDpchar ZEDbyteFiveRef();ZEDpcharP ZEDbyteFiveSet(ZEDchar ZEDcharacter);ZEDpchar ZEDbyteForwardCaseOneFalse(ZEDchar ZEDbyte);ZEDpchar ZEDbyteForwardCaseOneTrue(ZEDchar ZEDbyte);ZEDpchar ZEDbyteForwardCaseTwoFalseFalse(ZEDchar ZEDbyte);ZEDpchar ZEDbyteForwardCaseTwoFalseTrue(ZEDchar ZEDbyte);ZEDpchar ZEDbyteForwardCaseTwoTrueFalse(ZEDchar ZEDbyte);ZEDpchar ZEDbyteForwardCaseTwoTrueTrue(ZEDchar ZEDbyte);ZEDpchar ZEDbyteFourForward();ZEDpchar ZEDbyteFourRef();ZEDpcharP ZEDbyteFourSet(ZEDchar ZEDcharacter);ZEDpchar ZEDbyteOneForward();ZEDpchar ZEDbyteOneForward1(ZEDchar ZEDone , ZEDchar ZEDtwo);ZEDpchar ZEDbyteOneRef();ZEDpcharP ZEDbyteOneSet(ZEDchar ZEDcharacter);ZEDpchar ZEDbyteSevenForward();ZEDpchar ZEDbyteSevenRef();ZEDpcharP ZEDbyteSevenSet(ZEDchar ZEDcharacter);ZEDpchar ZEDbyteSixForward();ZEDpchar ZEDbyteSixRef();ZEDpcharP ZEDbyteSixSet(ZEDchar ZEDcharacter);ZEDpchar ZEDbyteThreeForward();ZEDpchar ZEDbyteThreeRef();ZEDpcharP ZEDbyteThreeSet(ZEDchar ZEDcharacter);ZEDpchar ZEDbyteTwoForward();ZEDpchar ZEDbyteTwoForward1(ZEDchar ZEDone , ZEDchar ZEDtwo , ZEDchar ZEDthree);ZEDpchar ZEDbyteTwoRef();ZEDpcharP ZEDbyteTwoSet(ZEDchar ZEDcharacter);ZEDpcharP ZEDbytesBackwardCaseOneFalse();ZEDpcharP ZEDbytesBackwardCaseOneTrue();ZEDpcharP ZEDbytesBackwardCaseTwoFalseFalse();ZEDpcharP ZEDbytesBackwardCaseTwoFalseTrue();ZEDpcharP ZEDbytesBackwardCaseTwoTrueFalse();ZEDpcharP ZEDbytesBackwardCaseTwoTrueTrue();ZEDpcharP ZEDbytesForwardCaseOneFalse();ZEDpcharP ZEDbytesForwardCaseOneTrue();ZEDpcharP ZEDbytesForwardCaseTwoFalseFalse();ZEDpcharP ZEDbytesForwardCaseTwoFalseTrue();ZEDpcharP ZEDbytesForwardCaseTwoTrueFalse();ZEDpcharP ZEDbytesForwardCaseTwoTrueTrue();ZEDpcharP ZEDbytesState();ZEDpchar ZEDcharAdd(ZEDchar ZEDone , ZEDchar ZEDtwo);ZEDpcharP ZEDcharArrayNew(ZEDlonglong ZEDsize);ZEDpcharP ZEDcharArrayPrepare(ZEDlonglong ZEDsize , ZEDcharP ZEDarray);ZEDpchar ZEDcharArrayRef(ZEDlonglong ZEDindex , ZEDcharP ZEDarray);ZEDpcharP ZEDcharArraySet(ZEDlonglong ZEDindex , ZEDchar ZEDcharacter , ZEDcharP ZEDarray);ZEDpchar ZEDcharShiftLeft(ZEDchar ZEDcharacter);ZEDpchar ZEDcharTableBackward(ZEDchar ZEDbyte , ZEDcharP ZEDtable);ZEDchar ZEDlhcaBackward();ZEDchar ZEDlhcaForward();ZEDplonglong ZEDlonglongAdd(ZEDlonglong ZEDone , ZEDlonglong ZEDtwo);ZEDplonglong ZEDlonglongCastChar(ZEDchar ZEDcharacter);ZEDpchar ZEDbitBack(ZEDchar ZEDbit0 , ZEDchar ZEDbit1 , ZEDchar ZEDbyte){return(1)?(bitBack(ZEDbit0,ZEDbit1,ZEDbyte)):(0);}ZEDpchar ZEDbitBackwardCaseOneFalse(ZEDchar ZEDbyte){return(1)?(bitBackwardCaseOneFalse(ZEDbyte)):(0);}ZEDpchar ZEDbitBackwardCaseOneTrue(ZEDchar ZEDbyte){return(1)?(bitBackwardCaseOneTrue(ZEDbyte)):(0);}ZEDpchar ZEDbitBackwardCaseTwoFalseFalse(ZEDchar ZEDbyte){return(1)?(bitBackwardCaseTwoFalseFalse(ZEDbyte)):(0);}ZEDpchar ZEDbitBackwardCaseTwoFalseTrue(ZEDchar ZEDbyte){return(1)?(bitBackwardCaseTwoFalseTrue(ZEDbyte)):(0);}ZEDpchar ZEDbitBackwardCaseTwoTrueFalse(ZEDchar ZEDbyte){return(1)?(bitBackwardCaseTwoTrueFalse(ZEDbyte)):(0);}ZEDpchar ZEDbitBackwardCaseTwoTrueTrue(ZEDchar ZEDbyte){return(1)?(bitBackwardCaseTwoTrueTrue(ZEDbyte)):(0);}ZEDpchar ZEDbitRule(ZEDchar ZEDrule , ZEDchar ZEDone , ZEDchar ZEDtwo , ZEDchar ZEDthree){return(ZEDrule)?(ZEDbitRuleOneFifty(ZEDone,ZEDtwo,ZEDthree)):((1)?(ZEDbitRuleNinety(ZEDone,ZEDtwo,ZEDthree)):(0));}ZEDpchar ZEDbitRuleNinety(ZEDchar ZEDone , ZEDchar ZEDtwo , ZEDchar ZEDthree){return(1)?(ZEDbitXor(ZEDone,ZEDthree)):(0);}ZEDpchar ZEDbitRuleOneFifty(ZEDchar ZEDone , ZEDchar ZEDtwo , ZEDchar ZEDthree){return(1)?(ZEDbitXor(ZEDtwo,ZEDbitXor(ZEDone,ZEDthree))):(0);}ZEDpchar ZEDbitXor(ZEDchar ZEDone , ZEDchar ZEDtwo){return(1)?(ZEDone!=ZEDtwo):(0);}ZEDpcharP ZEDbitsBackwardCaseOne(ZEDchar ZEDbit , ZEDcharP ZEDbits){return(1)?(ZEDbitsBackwardCaseOne1(ZEDbit,ZEDbits,ZEDcharArrayNew(9))):(0);}ZEDpcharP ZEDbitsBackwardCaseOne1(ZEDchar ZEDbit , ZEDcharP ZEDinput , ZEDcharP ZEDoutput){return(1)?(ZEDbitsBackwardCaseOne1a(ZEDinput,ZEDcharArraySet(1,ZEDbit,ZEDcharArraySet(2,ZEDbitRule(0,0,ZEDbit,ZEDcharArrayRef(1,ZEDinput)),ZEDoutput)))):(0);}ZEDpcharP ZEDbitsBackwardCaseOne1a(ZEDcharP ZEDinput , ZEDcharP ZEDoutput){return(1)?(ZEDbitsBackwardCaseOne1b(ZEDinput,ZEDcharArraySet(3,ZEDbitRule(0,ZEDcharArrayRef(1,ZEDoutput),ZEDcharArrayRef(2,ZEDoutput),ZEDcharArrayRef(2,ZEDinput)),ZEDoutput))):(0);}ZEDpcharP ZEDbitsBackwardCaseOne1b(ZEDcharP ZEDinput , ZEDcharP ZEDoutput){return(1)?(ZEDbitsBackwardCaseOne1c(ZEDinput,ZEDcharArraySet(4,ZEDbitRule(1,ZEDcharArrayRef(2,ZEDoutput),ZEDcharArrayRef(3,ZEDoutput),ZEDcharArrayRef(3,ZEDinput)),ZEDoutput))):(0);}ZEDpcharP ZEDbitsBackwardCaseOne1c(ZEDcharP ZEDinput , ZEDcharP ZEDoutput){return(1)?(ZEDbitsBackwardCaseOne1d(ZEDinput,ZEDcharArraySet(5,ZEDbitRule(0,ZEDcharArrayRef(3,ZEDoutput),ZEDcharArrayRef(4,ZEDoutput),ZEDcharArrayRef(4,ZEDinput)),ZEDoutput))):(0);}ZEDpcharP ZEDbitsBackwardCaseOne1d(ZEDcharP ZEDinput , ZEDcharP ZEDoutput){return(1)?(ZEDbitsBackwardCaseOne1e(ZEDinput,ZEDcharArraySet(6,ZEDbitRule(1,ZEDcharArrayRef(4,ZEDoutput),ZEDcharArrayRef(5,ZEDoutput),ZEDcharArrayRef(5,ZEDinput)),ZEDoutput))):(0);}ZEDpcharP ZEDbitsBackwardCaseOne1e(ZEDcharP ZEDinput , ZEDcharP ZEDoutput){return(1)?(ZEDbitsBackwardCaseOne1f(ZEDinput,ZEDcharArraySet(7,ZEDbitRule(0,ZEDcharArrayRef(5,ZEDoutput),ZEDcharArrayRef(6,ZEDoutput),ZEDcharArrayRef(6,ZEDinput)),ZEDoutput))):(0);}ZEDpcharP ZEDbitsBackwardCaseOne1f(ZEDcharP ZEDinput , ZEDcharP ZEDoutput){return(1)?(ZEDbitsBackwardCaseOne1g(ZEDinput,ZEDcharArraySet(8,ZEDbitRule(0,ZEDcharArrayRef(6,ZEDoutput),ZEDcharArrayRef(7,ZEDoutput),ZEDcharArrayRef(7,ZEDinput)),ZEDoutput))):(0);}ZEDpcharP ZEDbitsBackwardCaseOne1g(ZEDcharP ZEDinput , ZEDcharP ZEDoutput){return(1)?(ZEDcharArraySet(9,ZEDbitRule(0,ZEDcharArrayRef(7,ZEDoutput),ZEDcharArrayRef(8,ZEDoutput),ZEDcharArrayRef(8,ZEDinput)),ZEDoutput)):(0);}ZEDpcharP ZEDbitsBackwardCaseOneFalse(){return(1)?(charArrayMap(&ZEDbitBackwardCaseOneFalse,256,ZEDcharArrayPrepare(256,ZEDcharArrayNew(256)))):(0);}ZEDpcharP ZEDbitsBackwardCaseOneTrue(){return(1)?(charArrayMap(&ZEDbitBackwardCaseOneTrue,256,ZEDcharArrayPrepare(256,ZEDcharArrayNew(256)))):(0);}ZEDpcharP ZEDbitsBackwardCaseTwo(ZEDchar ZEDbit1 , ZEDchar ZEDbit2 , ZEDcharP ZEDbits){return(1)?(ZEDbitsBackwardCaseTwo1(ZEDbit1,ZEDbit2,ZEDbits,ZEDcharArrayNew(9))):(0);}ZEDpcharP ZEDbitsBackwardCaseTwo1(ZEDchar ZEDbit1 , ZEDchar ZEDbit2 , ZEDcharP ZEDinput , ZEDcharP ZEDoutput){return(1)?(ZEDbitsBackwardCaseTwo1a(ZEDinput,ZEDcharArraySet(1,ZEDbit2,ZEDcharArraySet(2,ZEDbitRule(0,ZEDbit1,ZEDbit2,ZEDcharArrayRef(1,ZEDinput)),ZEDoutput)))):(0);}ZEDpcharP ZEDbitsBackwardCaseTwo1a(ZEDcharP ZEDinput , ZEDcharP ZEDoutput){return(1)?(ZEDbitsBackwardCaseTwo1b(ZEDinput,ZEDcharArraySet(3,ZEDbitRule(0,ZEDcharArrayRef(1,ZEDoutput),ZEDcharArrayRef(2,ZEDoutput),ZEDcharArrayRef(2,ZEDinput)),ZEDoutput))):(0);}ZEDpcharP ZEDbitsBackwardCaseTwo1b(ZEDcharP ZEDinput , ZEDcharP ZEDoutput){return(1)?(ZEDbitsBackwardCaseTwo1c(ZEDinput,ZEDcharArraySet(4,ZEDbitRule(0,ZEDcharArrayRef(2,ZEDoutput),ZEDcharArrayRef(3,ZEDoutput),ZEDcharArrayRef(3,ZEDinput)),ZEDoutput))):(0);}ZEDpcharP ZEDbitsBackwardCaseTwo1c(ZEDcharP ZEDinput , ZEDcharP ZEDoutput){return(1)?(ZEDbitsBackwardCaseTwo1d(ZEDinput,ZEDcharArraySet(5,ZEDbitRule(0,ZEDcharArrayRef(3,ZEDoutput),ZEDcharArrayRef(4,ZEDoutput),ZEDcharArrayRef(4,ZEDinput)),ZEDoutput))):(0);}ZEDpcharP ZEDbitsBackwardCaseTwo1d(ZEDcharP ZEDinput , ZEDcharP ZEDoutput){return(1)?(ZEDbitsBackwardCaseTwo1e(ZEDinput,ZEDcharArraySet(6,ZEDbitRule(0,ZEDcharArrayRef(4,ZEDoutput),ZEDcharArrayRef(5,ZEDoutput),ZEDcharArrayRef(5,ZEDinput)),ZEDoutput))):(0);}ZEDpcharP ZEDbitsBackwardCaseTwo1e(ZEDcharP ZEDinput , ZEDcharP ZEDoutput){return(1)?(ZEDbitsBackwardCaseTwo1f(ZEDinput,ZEDcharArraySet(7,ZEDbitRule(0,ZEDcharArrayRef(5,ZEDoutput),ZEDcharArrayRef(6,ZEDoutput),ZEDcharArrayRef(6,ZEDinput)),ZEDoutput))):(0);}ZEDpcharP ZEDbitsBackwardCaseTwo1f(ZEDcharP ZEDinput , ZEDcharP ZEDoutput){return(1)?(ZEDbitsBackwardCaseTwo1g(ZEDinput,ZEDcharArraySet(8,ZEDbitRule(0,ZEDcharArrayRef(6,ZEDoutput),ZEDcharArrayRef(7,ZEDoutput),ZEDcharArrayRef(7,ZEDinput)),ZEDoutput))):(0);}ZEDpcharP ZEDbitsBackwardCaseTwo1g(ZEDcharP ZEDinput , ZEDcharP ZEDoutput){return(1)?(ZEDcharArraySet(9,ZEDbitRule(0,ZEDcharArrayRef(7,ZEDoutput),ZEDcharArrayRef(8,ZEDoutput),ZEDcharArrayRef(8,ZEDinput)),ZEDoutput)):(0);}ZEDpcharP ZEDbitsBackwardCaseTwoFalseFalse(){return(1)?(charArrayMap(&ZEDbitBackwardCaseTwoFalseFalse,256,ZEDcharArrayPrepare(256,ZEDcharArrayNew(256)))):(0);}ZEDpcharP ZEDbitsBackwardCaseTwoFalseTrue(){return(1)?(charArrayMap(&ZEDbitBackwardCaseTwoFalseTrue,256,ZEDcharArrayPrepare(256,ZEDcharArrayNew(256)))):(0);}ZEDpcharP ZEDbitsBackwardCaseTwoTrueFalse(){return(1)?(charArrayMap(&ZEDbitBackwardCaseTwoTrueFalse,256,ZEDcharArrayPrepare(256,ZEDcharArrayNew(256)))):(0);}ZEDpcharP ZEDbitsBackwardCaseTwoTrueTrue(){return(1)?(charArrayMap(&ZEDbitBackwardCaseTwoTrueTrue,256,ZEDcharArrayPrepare(256,ZEDcharArrayNew(256)))):(0);}ZEDpcharP ZEDbitsByte(ZEDchar ZEDbyte){return(1)?(ZEDbitsByte1(ZEDbyte,1)):(0);}ZEDpcharP ZEDbitsByte1(ZEDchar ZEDbyte , ZEDchar ZEDcount){return(ZEDcount>8)?(ZEDcharArrayNew(8)):((ZEDbyte>127)?(ZEDcharArraySet(ZEDcount,1,ZEDbitsByte1(ZEDbyte<<1,ZEDcount+1))):((1)?(ZEDcharArraySet(ZEDcount,0,ZEDbitsByte1(ZEDbyte<<1,ZEDcount+1))):(0)));}ZEDpcharP ZEDbitsForwardCaseOne(ZEDchar ZEDleftBit , ZEDchar ZEDrightBit , ZEDcharP ZEDbits){return(1)?(ZEDcharArraySet(1,ZEDbitRule(0,ZEDleftBit,ZEDcharArrayRef(1,ZEDbits),ZEDcharArrayRef(2,ZEDbits)),ZEDcharArraySet(2,ZEDbitRule(0,ZEDcharArrayRef(1,ZEDbits),ZEDcharArrayRef(2,ZEDbits),ZEDcharArrayRef(3,ZEDbits)),ZEDcharArraySet(3,ZEDbitRule(1,ZEDcharArrayRef(2,ZEDbits),ZEDcharArrayRef(3,ZEDbits),ZEDcharArrayRef(4,ZEDbits)),ZEDcharArraySet(4,ZEDbitRule(0,ZEDcharArrayRef(3,ZEDbits),ZEDcharArrayRef(4,ZEDbits),ZEDcharArrayRef(5,ZEDbits)),ZEDcharArraySet(5,ZEDbitRule(1,ZEDcharArrayRef(4,ZEDbits),ZEDcharArrayRef(5,ZEDbits),ZEDcharArrayRef(6,ZEDbits)),ZEDcharArraySet(6,ZEDbitRule(0,ZEDcharArrayRef(5,ZEDbits),ZEDcharArrayRef(6,ZEDbits),ZEDcharArrayRef(7,ZEDbits)),ZEDcharArraySet(7,ZEDbitRule(0,ZEDcharArrayRef(6,ZEDbits),ZEDcharArrayRef(7,ZEDbits),ZEDcharArrayRef(8,ZEDbits)),ZEDcharArraySet(8,ZEDbitRule(0,ZEDcharArrayRef(7,ZEDbits),ZEDcharArrayRef(8,ZEDbits),ZEDrightBit),ZEDcharArrayNew(8)))))))))):(0);}ZEDpcharP ZEDbitsForwardCaseTwo(ZEDchar ZEDleftBit , ZEDchar ZEDrightBit , ZEDcharP ZEDbits){return(1)?(ZEDcharArraySet(1,ZEDbitRule(0,ZEDleftBit,ZEDcharArrayRef(1,ZEDbits),ZEDcharArrayRef(2,ZEDbits)),ZEDcharArraySet(2,ZEDbitRule(0,ZEDcharArrayRef(1,ZEDbits),ZEDcharArrayRef(2,ZEDbits),ZEDcharArrayRef(3,ZEDbits)),ZEDcharArraySet(3,ZEDbitRule(0,ZEDcharArrayRef(2,ZEDbits),ZEDcharArrayRef(3,ZEDbits),ZEDcharArrayRef(4,ZEDbits)),ZEDcharArraySet(4,ZEDbitRule(0,ZEDcharArrayRef(3,ZEDbits),ZEDcharArrayRef(4,ZEDbits),ZEDcharArrayRef(5,ZEDbits)),ZEDcharArraySet(5,ZEDbitRule(0,ZEDcharArrayRef(4,ZEDbits),ZEDcharArrayRef(5,ZEDbits),ZEDcharArrayRef(6,ZEDbits)),ZEDcharArraySet(6,ZEDbitRule(0,ZEDcharArrayRef(5,ZEDbits),ZEDcharArrayRef(6,ZEDbits),ZEDcharArrayRef(7,ZEDbits)),ZEDcharArraySet(7,ZEDbitRule(0,ZEDcharArrayRef(6,ZEDbits),ZEDcharArrayRef(7,ZEDbits),ZEDcharArrayRef(8,ZEDbits)),ZEDcharArraySet(8,ZEDbitRule(0,ZEDcharArrayRef(7,ZEDbits),ZEDcharArrayRef(8,ZEDbits),ZEDrightBit),ZEDcharArrayNew(8)))))))))):(0);}ZEDpchar ZEDbyteBack(ZEDchar ZEDbit0 , ZEDchar ZEDbit1 , ZEDchar ZEDbyte){return(1)?(byteBack(ZEDbit0,ZEDbit1,ZEDbyte)):(0);}ZEDpchar ZEDbyteBackwardCaseOneFalse(ZEDchar ZEDbyte){return(1)?(byteBackwardCaseOneFalse(ZEDbyte)):(0);}ZEDpchar ZEDbyteBackwardCaseOneTrue(ZEDchar ZEDbyte){return(1)?(byteBackwardCaseOneTrue(ZEDbyte)):(0);}ZEDpchar ZEDbyteBackwardCaseTwoFalseFalse(ZEDchar ZEDbyte){return(1)?(byteBackwardCaseTwoFalseFalse(ZEDbyte)):(0);}ZEDpchar ZEDbyteBackwardCaseTwoFalseTrue(ZEDchar ZEDbyte){return(1)?(byteBackwardCaseTwoFalseTrue(ZEDbyte)):(0);}ZEDpchar ZEDbyteBackwardCaseTwoTrueFalse(ZEDchar ZEDbyte){return(1)?(byteBackwardCaseTwoTrueFalse(ZEDbyte)):(0);}ZEDpchar ZEDbyteBackwardCaseTwoTrueTrue(ZEDchar ZEDbyte){return(1)?(byteBackwardCaseTwoTrueTrue(ZEDbyte)):(0);}ZEDpchar ZEDbyteBits(ZEDcharP ZEDbits){return(1)?(ZEDbyteBits1(ZEDbits,0,1)):(0);}ZEDpchar ZEDbyteBits1(ZEDcharP ZEDbits , ZEDchar ZEDbyte , ZEDchar ZEDcount){return(ZEDcount==8)?(ZEDcharAdd(ZEDbyte,ZEDcharArrayRef(ZEDcount,ZEDbits))):((1)?(ZEDbyteBits1(ZEDbits,ZEDcharShiftLeft(ZEDcharAdd(ZEDbyte,ZEDcharArrayRef(ZEDcount,ZEDbits))),ZEDcount+1)):(0));}ZEDpchar ZEDbyteEightForward(){return(1)?(ZEDbyteTwoForward1(ZEDbyteSevenRef(),ZEDbyteEightRef(),0)):(0);}ZEDpchar ZEDbyteEightRef(){return(1)?(ZEDcharArrayRef(8,ZEDstate)):(0);}ZEDpcharP ZEDbyteEightSet(ZEDchar ZEDcharacter){return(1)?(ZEDcharArraySet(8,ZEDcharacter,ZEDstate)):(0);}ZEDpchar ZEDbyteFiveForward(){return(1)?(ZEDbyteTwoForward1(ZEDbyteFourRef(),ZEDbyteFiveRef(),ZEDbyteSixRef())):(0);}ZEDpchar ZEDbyteFiveRef(){return(1)?(ZEDcharArrayRef(5,ZEDstate)):(0);}ZEDpcharP ZEDbyteFiveSet(ZEDchar ZEDcharacter){return(1)?(ZEDcharArraySet(5,ZEDcharacter,ZEDstate)):(0);}ZEDpchar ZEDbyteForwardCaseOneFalse(ZEDchar ZEDbyte){return(1)?(byteForwardCaseOneFalse(ZEDbyte)):(0);}ZEDpchar ZEDbyteForwardCaseOneTrue(ZEDchar ZEDbyte){return(1)?(byteForwardCaseOneTrue(ZEDbyte)):(0);}ZEDpchar ZEDbyteForwardCaseTwoFalseFalse(ZEDchar ZEDbyte){return(1)?(byteForwardCaseTwoFalseFalse(ZEDbyte)):(0);}ZEDpchar ZEDbyteForwardCaseTwoFalseTrue(ZEDchar ZEDbyte){return(1)?(byteForwardCaseTwoFalseTrue(ZEDbyte)):(0);}ZEDpchar ZEDbyteForwardCaseTwoTrueFalse(ZEDchar ZEDbyte){return(1)?(byteForwardCaseTwoTrueFalse(ZEDbyte)):(0);}ZEDpchar ZEDbyteForwardCaseTwoTrueTrue(ZEDchar ZEDbyte){return(1)?(byteForwardCaseTwoTrueTrue(ZEDbyte)):(0);}ZEDpchar ZEDbyteFourForward(){return(1)?(ZEDbyteTwoForward1(ZEDbyteThreeRef(),ZEDbyteFourRef(),ZEDbyteFiveRef())):(0);}ZEDpchar ZEDbyteFourRef(){return(1)?(ZEDcharArrayRef(4,ZEDstate)):(0);}ZEDpcharP ZEDbyteFourSet(ZEDchar ZEDcharacter){return(1)?(ZEDcharArraySet(4,ZEDcharacter,ZEDstate)):(0);}ZEDpchar ZEDbyteOneForward(){return(1)?(ZEDbyteOneForward1(ZEDbyteOneRef(),ZEDbyteTwoRef())):(0);}ZEDpchar ZEDbyteOneForward1(ZEDchar ZEDone , ZEDchar ZEDtwo){return(ZEDtwo>127)?(ZEDcharArrayRef(ZEDone+1,ZEDbyteTableForwardCaseOneTrue)):((1)?(ZEDcharArrayRef(ZEDone+1,ZEDbyteTableForwardCaseOneFalse)):(0));}ZEDpchar ZEDbyteOneRef(){return(1)?(ZEDcharArrayRef(1,ZEDstate)):(0);}ZEDpcharP ZEDbyteOneSet(ZEDchar ZEDcharacter){return(1)?(ZEDcharArraySet(1,ZEDcharacter,ZEDstate)):(0);}ZEDpchar ZEDbyteSevenForward(){return(1)?(ZEDbyteTwoForward1(ZEDbyteSixRef(),ZEDbyteSevenRef(),ZEDbyteEightRef())):(0);}ZEDpchar ZEDbyteSevenRef(){return(1)?(ZEDcharArrayRef(7,ZEDstate)):(0);}ZEDpcharP ZEDbyteSevenSet(ZEDchar ZEDcharacter){return(1)?(ZEDcharArraySet(7,ZEDcharacter,ZEDstate)):(0);}ZEDpchar ZEDbyteSixForward(){return(1)?(ZEDbyteTwoForward1(ZEDbyteFiveRef(),ZEDbyteSixRef(),ZEDbyteSevenRef())):(0);}ZEDpchar ZEDbyteSixRef(){return(1)?(ZEDcharArrayRef(6,ZEDstate)):(0);}ZEDpcharP ZEDbyteSixSet(ZEDchar ZEDcharacter){return(1)?(ZEDcharArraySet(6,ZEDcharacter,ZEDstate)):(0);}ZEDpchar ZEDbyteThreeForward(){return(1)?(ZEDbyteTwoForward1(ZEDbyteTwoRef(),ZEDbyteThreeRef(),ZEDbyteFourRef())):(0);}ZEDpchar ZEDbyteThreeRef(){return(1)?(ZEDcharArrayRef(3,ZEDstate)):(0);}ZEDpcharP ZEDbyteThreeSet(ZEDchar ZEDcharacter){return(1)?(ZEDcharArraySet(3,ZEDcharacter,ZEDstate)):(0);}ZEDpchar ZEDbyteTwoForward(){return(1)?(ZEDbyteTwoForward1(ZEDbyteOneRef(),ZEDbyteTwoRef(),ZEDbyteThreeRef())):(0);}ZEDpchar ZEDbyteTwoForward1(ZEDchar ZEDone , ZEDchar ZEDtwo , ZEDchar ZEDthree){return(ZEDone%2==1&&ZEDthree>127)?(ZEDcharArrayRef(ZEDtwo+1,ZEDbyteTableForwardCaseTwoTrueTrue)):((ZEDthree>127)?(ZEDcharArrayRef(ZEDtwo+1,ZEDbyteTableForwardCaseTwoFalseTrue)):((ZEDone%2==1)?(ZEDcharArrayRef(ZEDtwo+1,ZEDbyteTableForwardCaseTwoTrueFalse)):((1)?(ZEDcharArrayRef(ZEDtwo+1,ZEDbyteTableForwardCaseTwoFalseFalse)):(0))));}ZEDpchar ZEDbyteTwoRef(){return(1)?(ZEDcharArrayRef(2,ZEDstate)):(0);}ZEDpcharP ZEDbyteTwoSet(ZEDchar ZEDcharacter){return(1)?(ZEDcharArraySet(2,ZEDcharacter,ZEDstate)):(0);}ZEDpcharP ZEDbytesBackwardCaseOneFalse(){return(1)?(charArrayMap(&ZEDbyteBackwardCaseOneFalse,256,ZEDcharArrayPrepare(256,ZEDcharArrayNew(256)))):(0);}ZEDpcharP ZEDbytesBackwardCaseOneTrue(){return(1)?(charArrayMap(&ZEDbyteBackwardCaseOneTrue,256,ZEDcharArrayPrepare(256,ZEDcharArrayNew(256)))):(0);}ZEDpcharP ZEDbytesBackwardCaseTwoFalseFalse(){return(1)?(charArrayMap(&ZEDbyteBackwardCaseTwoFalseFalse,256,ZEDcharArrayPrepare(256,ZEDcharArrayNew(256)))):(0);}ZEDpcharP ZEDbytesBackwardCaseTwoFalseTrue(){return(1)?(charArrayMap(&ZEDbyteBackwardCaseTwoFalseTrue,256,ZEDcharArrayPrepare(256,ZEDcharArrayNew(256)))):(0);}ZEDpcharP ZEDbytesBackwardCaseTwoTrueFalse(){return(1)?(charArrayMap(&ZEDbyteBackwardCaseTwoTrueFalse,256,ZEDcharArrayPrepare(256,ZEDcharArrayNew(256)))):(0);}ZEDpcharP ZEDbytesBackwardCaseTwoTrueTrue(){return(1)?(charArrayMap(&ZEDbyteBackwardCaseTwoTrueTrue,256,ZEDcharArrayPrepare(256,ZEDcharArrayNew(256)))):(0);}ZEDpcharP ZEDbytesForwardCaseOneFalse(){return(1)?(charArrayMap(&ZEDbyteForwardCaseOneFalse,256,ZEDcharArrayPrepare(256,ZEDcharArrayNew(256)))):(0);}ZEDpcharP ZEDbytesForwardCaseOneTrue(){return(1)?(charArrayMap(&ZEDbyteForwardCaseOneTrue,256,ZEDcharArrayPrepare(256,ZEDcharArrayNew(256)))):(0);}ZEDpcharP ZEDbytesForwardCaseTwoFalseFalse(){return(1)?(charArrayMap(&ZEDbyteForwardCaseTwoFalseFalse,256,ZEDcharArrayPrepare(256,ZEDcharArrayNew(256)))):(0);}ZEDpcharP ZEDbytesForwardCaseTwoFalseTrue(){return(1)?(charArrayMap(&ZEDbyteForwardCaseTwoFalseTrue,256,ZEDcharArrayPrepare(256,ZEDcharArrayNew(256)))):(0);}ZEDpcharP ZEDbytesForwardCaseTwoTrueFalse(){return(1)?(charArrayMap(&ZEDbyteForwardCaseTwoTrueFalse,256,ZEDcharArrayPrepare(256,ZEDcharArrayNew(256)))):(0);}ZEDpcharP ZEDbytesForwardCaseTwoTrueTrue(){return(1)?(charArrayMap(&ZEDbyteForwardCaseTwoTrueTrue,256,ZEDcharArrayPrepare(256,ZEDcharArrayNew(256)))):(0);}ZEDpcharP ZEDbytesState(){return(1)?(ZEDcharArraySet(1,49,ZEDcharArraySet(2,50,ZEDcharArraySet(3,50,ZEDcharArraySet(4,55,ZEDcharArraySet(5,49,ZEDcharArraySet(6,57,ZEDcharArraySet(7,55,ZEDcharArraySet(8,54,ZEDcharArrayNew(8)))))))))):(0);}ZEDpchar ZEDcharAdd(ZEDchar ZEDone , ZEDchar ZEDtwo){return(1)?(ZEDone+ZEDtwo):(0);}ZEDpcharP ZEDcharArrayNew(ZEDlonglong ZEDsize){return(1)?(charArrayNew(ZEDsize)):(0);}ZEDpcharP ZEDcharArrayPrepare(ZEDlonglong ZEDsize , ZEDcharP ZEDarray){return(ZEDsize==0)?(ZEDarray):((1)?(ZEDcharArrayPrepare(ZEDsize-1,ZEDcharArraySet(ZEDsize,ZEDsize-1,ZEDarray))):(0));}ZEDpchar ZEDcharArrayRef(ZEDlonglong ZEDindex , ZEDcharP ZEDarray){return(1)?(charArrayRef(ZEDindex,ZEDarray)):(0);}ZEDpcharP ZEDcharArraySet(ZEDlonglong ZEDindex , ZEDchar ZEDcharacter , ZEDcharP ZEDarray){return(1)?(charArraySet(ZEDindex,ZEDcharacter,ZEDarray)):(0);}ZEDpchar ZEDcharShiftLeft(ZEDchar ZEDcharacter){return(1)?(ZEDcharacter<<1):(0);}ZEDpchar ZEDcharTableBackward(ZEDchar ZEDbyte , ZEDcharP ZEDtable){return(1)?(ZEDcharArrayRef(ZEDlonglongAdd(1,ZEDlonglongCastChar(ZEDbyte)),ZEDtable)):(0);}ZEDchar ZEDlhcaBackward(){return(1)?(lhcaBackward()):(0);}ZEDchar ZEDlhcaForward(){return(1)?(lhcaForward()):(0);}ZEDplonglong ZEDlonglongAdd(ZEDlonglong ZEDone , ZEDlonglong ZEDtwo){return(1)?(ZEDone+ZEDtwo):(0);}ZEDplonglong ZEDlonglongCastChar(ZEDchar ZEDcharacter){return(1)?(longlongCastChar(ZEDcharacter)):(0);}

ZEDpchar bitBack(ZEDchar bit0 , ZEDchar bit1 , ZEDchar byte){return(bit0)?((bit1)?(ZEDcharTableBackward(byte,ZEDbitTableBackwardCaseTwoTrueTrue)):(ZEDcharTableBackward(byte,ZEDbitTableBackwardCaseTwoTrueFalse))):((bit1)?(ZEDcharTableBackward(byte,ZEDbitTableBackwardCaseTwoFalseTrue)):(ZEDcharTableBackward(byte,ZEDbitTableBackwardCaseTwoFalseFalse)));}
ZEDpchar bitBackwardCaseOneFalse(ZEDchar byte){ZEDcharP before=ZEDbitsByte(byte);ZEDcharP after=ZEDbitsBackwardCaseOne(0,before);ZEDchar result=ZEDcharArrayRef(9,after);free(before);free(after);return result;}
ZEDpchar bitBackwardCaseOneTrue(ZEDchar byte){ZEDcharP before=ZEDbitsByte(byte);ZEDcharP after=ZEDbitsBackwardCaseOne(1,before);ZEDchar result=ZEDcharArrayRef(9,after);free(before);free(after);return result;}
ZEDpchar bitBackwardCaseTwoFalseFalse(ZEDchar byte){ZEDcharP before=ZEDbitsByte(byte);ZEDcharP after=ZEDbitsBackwardCaseTwo(0,0,before);ZEDchar result=ZEDcharArrayRef(9,after);free(before);free(after);return result;}
ZEDpchar bitBackwardCaseTwoFalseTrue(ZEDchar byte){ZEDcharP before=ZEDbitsByte(byte);ZEDcharP after=ZEDbitsBackwardCaseTwo(0,1,before);ZEDchar result=ZEDcharArrayRef(9,after);free(before);free(after);return result;}
ZEDpchar bitBackwardCaseTwoTrueFalse(ZEDchar byte){ZEDcharP before=ZEDbitsByte(byte);ZEDcharP after=ZEDbitsBackwardCaseTwo(1,0,before);ZEDchar result=ZEDcharArrayRef(9,after);free(before);free(after);return result;}
ZEDpchar bitBackwardCaseTwoTrueTrue(ZEDchar byte){ZEDcharP before=ZEDbitsByte(byte);ZEDcharP after=ZEDbitsBackwardCaseTwo(1,1,before);ZEDchar result=ZEDcharArrayRef(9,after);free(before);free(after);return result;}
ZEDpchar byteBack(ZEDchar bit0 , ZEDchar bit1 , ZEDchar byte){return(bit0)?((bit1)?(ZEDcharTableBackward(byte,ZEDbyteTableBackwardCaseTwoTrueTrue)):(ZEDcharTableBackward(byte,ZEDbyteTableBackwardCaseTwoTrueFalse))):((bit1)?(ZEDcharTableBackward(byte,ZEDbyteTableBackwardCaseTwoFalseTrue)):(ZEDcharTableBackward(byte,ZEDbyteTableBackwardCaseTwoFalseFalse)));}
ZEDpchar byteBackwardCaseOneFalse(ZEDchar byte){ZEDcharP before=ZEDbitsByte(byte);ZEDcharP after=ZEDbitsBackwardCaseOne(0,before);ZEDchar result=ZEDbyteBits(after);free(before);free(after);return result;}
ZEDpchar byteBackwardCaseOneTrue(ZEDchar byte){ZEDcharP before=ZEDbitsByte(byte);ZEDcharP after=ZEDbitsBackwardCaseOne(1,before);ZEDchar result=ZEDbyteBits(after);free(before);free(after);return result;}
ZEDpchar byteBackwardCaseTwoFalseFalse(ZEDchar byte){ZEDcharP before=ZEDbitsByte(byte);ZEDcharP after=ZEDbitsBackwardCaseTwo(0,0,before);ZEDchar result=ZEDbyteBits(after);free(before);free(after);return result;}
ZEDpchar byteBackwardCaseTwoFalseTrue(ZEDchar byte){ZEDcharP before=ZEDbitsByte(byte);ZEDcharP after=ZEDbitsBackwardCaseTwo(0,1,before);ZEDchar result=ZEDbyteBits(after);free(before);free(after);return result;}
ZEDpchar byteBackwardCaseTwoTrueFalse(ZEDchar byte){ZEDcharP before=ZEDbitsByte(byte);ZEDcharP after=ZEDbitsBackwardCaseTwo(1,0,before);ZEDchar result=ZEDbyteBits(after);free(before);free(after);return result;}
ZEDpchar byteBackwardCaseTwoTrueTrue(ZEDchar byte){ZEDcharP before=ZEDbitsByte(byte);ZEDcharP after=ZEDbitsBackwardCaseTwo(1,1,before);ZEDchar result=ZEDbyteBits(after);free(before);free(after);return result;}
ZEDpchar byteForwardCaseOneFalse(ZEDchar byte){ZEDcharP before=ZEDbitsByte(byte);ZEDcharP after=ZEDbitsForwardCaseOne(0,0,before);ZEDchar result=ZEDbyteBits(after);free(before);free(after);return result;}
ZEDpchar byteForwardCaseOneTrue(ZEDchar byte){ZEDcharP before=ZEDbitsByte(byte);ZEDcharP after=ZEDbitsForwardCaseOne(0,1,before);ZEDchar result=ZEDbyteBits(after);free(before);free(after);return result;}
ZEDpchar byteForwardCaseTwoFalseFalse(ZEDchar byte){ZEDcharP before=ZEDbitsByte(byte);ZEDcharP after=ZEDbitsForwardCaseTwo(0,0,before);ZEDchar result=ZEDbyteBits(after);free(before);free(after);return result;}
ZEDpchar byteForwardCaseTwoFalseTrue(ZEDchar byte){ZEDcharP before=ZEDbitsByte(byte);ZEDcharP after=ZEDbitsForwardCaseTwo(0,1,before);ZEDchar result=ZEDbyteBits(after);free(before);free(after);return result;}
ZEDpchar byteForwardCaseTwoTrueFalse(ZEDchar byte){ZEDcharP before=ZEDbitsByte(byte);ZEDcharP after=ZEDbitsForwardCaseTwo(1,0,before);ZEDchar result=ZEDbyteBits(after);free(before);free(after);return result;}
ZEDpchar byteForwardCaseTwoTrueTrue(ZEDchar byte){ZEDcharP before=ZEDbitsByte(byte);ZEDcharP after=ZEDbitsForwardCaseTwo(1,1,before);ZEDchar result=ZEDbyteBits(after);free(before);free(after);return result;}
ZEDpcharP charArrayMap(ZEDchar (*function)(ZEDchar),ZEDlonglong count,ZEDcharP array){if(count==0) return array; else charArrayMap(function,count-1,charArraySet(count,(*function)(charArrayRef(count,array)),array));}
ZEDpcharP charArrayNew(ZEDlonglong size){return malloc(size*sizeof(char));}
ZEDpchar charArrayRef(ZEDlonglong index , ZEDcharP array){return array[index-1];}
ZEDpcharP charArraySet(ZEDlonglong index , ZEDchar character , ZEDcharP array){array[index-1]=character; return array;}
ZEDpchar lhcaBackward(){
ZEDchar bit0,bit1,bit2,bit3,bit4,bit5,bit6,bit7,bit8,byte1,byte2,byte3,byte4,byte5,byte6,byte7,byte8,result;
 
result=(ZEDstate[0]>127);
 
byte1=ZEDcharArrayRef(1+((ZEDlonglong)ZEDstate[0]),ZEDbyteTableBackwardCaseOneFalse);
 
bit1=ZEDcharArrayRef(1+((ZEDlonglong)ZEDstate[0]),ZEDbitTableBackwardCaseOneFalse);
 
bit0=(byte1%2);
byte2=ZEDbyteBack(bit0,bit1,ZEDstate[1]);
bit2=ZEDbitBack(bit0,bit1,ZEDstate[1]);
 
bit0=(byte2%2);
byte3=ZEDbyteBack(bit0,bit2,ZEDstate[2]);
bit3=ZEDbitBack(bit0,bit2,ZEDstate[2]);
 
bit0=(byte3%2);
byte4=ZEDbyteBack(bit0,bit3,ZEDstate[3]);
bit4=ZEDbitBack(bit0,bit3,ZEDstate[3]);
 
bit0=(byte4%2);
byte5=ZEDbyteBack(bit0,bit4,ZEDstate[4]);
bit5=ZEDbitBack(bit0,bit4,ZEDstate[4]);
 
bit0=(byte5%2);
byte6=ZEDbyteBack(bit0,bit5,ZEDstate[5]);
bit6=ZEDbitBack(bit0,bit5,ZEDstate[5]);
 
bit0=(byte6%2);
byte7=ZEDbyteBack(bit0,bit6,ZEDstate[6]);
bit7=ZEDbitBack(bit0,bit6,ZEDstate[6]);
 
bit0=(byte7%2);
byte8=ZEDbyteBack(bit0,bit7,ZEDstate[7]);
bit8=ZEDbitBack(bit0,bit7,ZEDstate[7]);
 
if(bit8)
{
byte1=ZEDcharArrayRef(1+((ZEDlonglong)ZEDstate[0]),ZEDbyteTableBackwardCaseOneTrue);
 
bit1=ZEDcharArrayRef(1+((ZEDlonglong)ZEDstate[0]),ZEDbitTableBackwardCaseOneTrue);
 
bit0=(byte1%2);
byte2=ZEDbyteBack(bit0,bit1,ZEDstate[1]);
bit2=ZEDbitBack(bit0,bit1,ZEDstate[1]);
 
bit0=(byte2%2);
byte3=ZEDbyteBack(bit0,bit2,ZEDstate[2]);
bit3=ZEDbitBack(bit0,bit2,ZEDstate[2]);
 
bit0=(byte3%2);
byte4=ZEDbyteBack(bit0,bit3,ZEDstate[3]);
bit4=ZEDbitBack(bit0,bit3,ZEDstate[3]);
 
bit0=(byte4%2);
byte5=ZEDbyteBack(bit0,bit4,ZEDstate[4]);
bit5=ZEDbitBack(bit0,bit4,ZEDstate[4]);
 
bit0=(byte5%2);
byte6=ZEDbyteBack(bit0,bit5,ZEDstate[5]);
bit6=ZEDbitBack(bit0,bit5,ZEDstate[5]);
 
bit0=(byte6%2);
byte7=ZEDbyteBack(bit0,bit6,ZEDstate[6]);
bit7=ZEDbitBack(bit0,bit6,ZEDstate[6]);
 
bit0=(byte7%2);
byte8=ZEDbyteBack(bit0,bit7,ZEDstate[7]);
bit8=ZEDbitBack(bit0,bit7,ZEDstate[7]);
}
 
ZEDstate[0]=byte1;
ZEDstate[1]=byte2;
ZEDstate[2]=byte3;
ZEDstate[3]=byte4;
ZEDstate[4]=byte5;
ZEDstate[5]=byte6;
ZEDstate[6]=byte7;
ZEDstate[7]=byte8;
return result;
}
ZEDpchar lhcaForward(){ZEDchar one=ZEDbyteOneForward();ZEDchar two=ZEDbyteTwoForward();ZEDchar three=ZEDbyteThreeForward();ZEDchar four=ZEDbyteFourForward();ZEDchar five=ZEDbyteFiveForward();ZEDchar six=ZEDbyteSixForward();ZEDchar seven=ZEDbyteSevenForward();ZEDchar eight=ZEDbyteEightForward();ZEDbyteOneSet(one);ZEDbyteTwoSet(two);ZEDbyteThreeSet(three);ZEDbyteFourSet(four);ZEDbyteFiveSet(five);ZEDbyteSixSet(six);ZEDbyteSevenSet(seven);ZEDbyteEightSet(eight);return one>127;}
ZEDplonglong longlongCastChar(ZEDchar character){return(ZEDlonglong)character;}
ZEDpchar test1(ZEDint count){if(count==0) {return(0);} else{printf("%d",ZEDlhcaForward());test1(count-1);}}
ZEDpchar test2(ZEDint count){if(count==0) {return(0);} else{printf("%d",ZEDlhcaBackward());test2(count-1);}}
 
int main(void) {
ZEDbitTableBackwardCaseOneFalse=ZEDbitsBackwardCaseOneFalse();
ZEDbitTableBackwardCaseOneTrue=ZEDbitsBackwardCaseOneTrue();
ZEDbitTableBackwardCaseTwoFalseFalse=ZEDbitsBackwardCaseTwoFalseFalse();
ZEDbitTableBackwardCaseTwoFalseTrue=ZEDbitsBackwardCaseTwoFalseTrue();
ZEDbitTableBackwardCaseTwoTrueFalse=ZEDbitsBackwardCaseTwoTrueFalse();
ZEDbitTableBackwardCaseTwoTrueTrue=ZEDbitsBackwardCaseTwoTrueTrue();
ZEDbyteTableBackwardCaseOneFalse=ZEDbytesBackwardCaseOneFalse();
ZEDbyteTableBackwardCaseOneTrue=ZEDbytesBackwardCaseOneTrue();
ZEDbyteTableBackwardCaseTwoFalseFalse=ZEDbytesBackwardCaseTwoFalseFalse();
ZEDbyteTableBackwardCaseTwoFalseTrue=ZEDbytesBackwardCaseTwoFalseTrue();
ZEDbyteTableBackwardCaseTwoTrueFalse=ZEDbytesBackwardCaseTwoTrueFalse();
ZEDbyteTableBackwardCaseTwoTrueTrue=ZEDbytesBackwardCaseTwoTrueTrue();
ZEDbyteTableForwardCaseOneFalse=ZEDbytesForwardCaseOneFalse();
ZEDbyteTableForwardCaseOneTrue=ZEDbytesForwardCaseOneTrue();
ZEDbyteTableForwardCaseTwoFalseFalse=ZEDbytesForwardCaseTwoFalseFalse();
ZEDbyteTableForwardCaseTwoFalseTrue=ZEDbytesForwardCaseTwoFalseTrue();
ZEDbyteTableForwardCaseTwoTrueFalse=ZEDbytesForwardCaseTwoTrueFalse();
ZEDbyteTableForwardCaseTwoTrueTrue=ZEDbytesForwardCaseTwoTrueTrue();
ZEDstate=ZEDbytesState();
test1(128*61);
printf("\n\n\n");
test2(128*61);
return 0;
}