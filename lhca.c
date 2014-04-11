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

REPLACE

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
