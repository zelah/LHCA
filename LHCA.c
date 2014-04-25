#include <stdio.h>
#include <stdlib.h>
 
typedef unsigned char uchar;
typedef unsigned int uint;
typedef unsigned long long ulonglong;
 
#define DEFINE_ZED_TYPE(type_) typedef type_ * type_##P;typedef struct type_##List type_##List;typedef struct type_##GarbageList type_##GarbageList;struct type_##GarbageList{struct type_##List *garbage;struct type_##GarbageList *next;};struct type_##List{type_ value;struct type_##List *values;struct type_##List *next;type_##GarbageList *garbage};typedef struct type_##List * type_##ListP;typedef struct type_##GarbageList * type_##GarbageListP;typedef type_ ZED##type_;typedef type_##P ZED##type_##P;typedef struct type_##GarbageList ZED##type_##GarbageList;typedef type_##GarbageListP ZED##type_##GarbageListP;typedef struct type_##List ZED##type_##List;typedef type_##ListP ZED##type_##ListP;type_##P type_##ArrayNew(ulonglong size){return malloc(size*sizeof(type_));}type_ type_##ArrayRef(ulonglong index,type_##P array){return array[index-1];}type_##P type_##ArraySet(ulonglong index,type_ value,type_##P array){array[index-1]=value;return array;}type_##ListP type_##ListNew();type_##ListP type_##ListValuePush(type_ value,type_##ListP list);type_##ListP type_##ListValuesPush(type_##ListP values,type_##ListP list);type_##ListP type_##ListPop(type_##ListP list);uchar type_##ListAssertNull(type_##ListP list);uchar type_##ListAssertValues(type_##ListP list);uchar type_##ListFree(type_##ListP list);static uchar type_##GarbageListFree(type_##GarbageListP garbage);type_ type_##ListValueTop(type_##ListP list);type_##ListP type_##ListValuesTop(type_##ListP list);static void type_##ListCollect(type_##ListP list);static void type_##GarbageListFeed(type_##GarbageListP garbage1,type_##GarbageListP garbage2);static void type_##ListCollect1(type_##GarbageListP all,type_##GarbageListP garbage);type_##ListP type_##ListValuesTop(type_##ListP list){return list->values;}type_ type_##ListValueTop(type_##ListP list){return list->value;}static void type_##ListCollect(type_##ListP list){type_##GarbageListFeed(list->values->garbage,list->garbage);type_##ListCollect1(list->garbage,list->garbage->next);}static void type_##ListCollect1(type_##GarbageListP all,type_##GarbageListP garbage){if(garbage->next==NULL){garbage->garbage->garbage=all;}else{garbage->garbage->garbage=all;type_##ListCollect1(all,garbage->next);}}static void type_##GarbageListFeed(type_##GarbageListP garbage1,type_##GarbageListP garbage2){if(garbage2->next==NULL){garbage2->next=garbage1;}else{type_##GarbageListFeed(garbage1,garbage2->next);}}type_##ListP type_##ListNew(){type_##ListP list=malloc(sizeof(type_##List));type_##GarbageListP garbage=malloc(sizeof(type_##GarbageList));list->next=NULL;list->garbage=garbage;garbage->next=NULL;garbage->garbage=list;return list;}type_##ListP type_##ListValuePush(type_ value,type_##ListP list){type_##ListP tempList=malloc(sizeof(type_##List));type_##GarbageListP tempGarbageList=malloc(sizeof(type_##GarbageList));tempList->value=list->value;tempList->values=list->values;tempList->garbage=list->garbage->next;tempList->next=list->next;list->value=value;list->values=NULL;list->garbage->garbage=list;list->garbage->next=tempGarbageList;list->next=tempList;tempGarbageList->garbage=tempList;tempGarbageList->next=tempList->garbage;tempList->garbage=list->garbage;return list;}type_##ListP type_##ListValuesPush(type_##ListP values,type_##ListP list){type_##ListP tempList=malloc(sizeof(type_##List));type_##GarbageListP tempGarbageList=malloc(sizeof(type_##GarbageList));tempList->value=list->value;tempList->values=list->values;tempList->garbage=list->garbage->next;tempList->next=list->next;list->values=values;list->garbage->garbage=list;list->garbage->next=tempGarbageList;list->next=tempList;tempGarbageList->garbage=tempList;tempGarbageList->next=tempList->garbage;tempList->garbage=list->garbage;type_##ListCollect(list);return list;}type_##ListP type_##ListPop(type_##ListP list){return list->next;}uchar type_##ListAssertNull(type_##ListP list){return list->next==NULL;}uchar type_##ListAssertValues(type_##ListP list){return !(list->values==NULL);}uchar type_##ListFree(type_##ListP list){type_##GarbageListFree(list->garbage);return 0;}static uchar type_##GarbageListFree(type_##GarbageListP garbage){type_##GarbageListP next=garbage->next;free(garbage->garbage);free(garbage);if(next==NULL){return 0;}else{return type_##GarbageListFree(next);}}
 
DEFINE_ZED_TYPE(uchar)
DEFINE_ZED_TYPE(uint)
DEFINE_ZED_TYPE(ulonglong)
 
#define suchar static uchar
#define sucharP static ucharP
#define suint static uint
#define suintP static uintP
#define sulonglong static ulonglong
#define sulonglongP static ulonglongP
#define ZEDsuchar static uchar
#define ZEDsucharP static ucharP
#define ZEDsuint static uint
#define ZEDsuintP static uintP
#define ZEDsulonglong static ulonglong
#define ZEDsulonglongP static ulonglongP
 
sucharP ZEDbitTableBackwardCaseOneFalse;
sucharP ZEDbitTableBackwardCaseOneTrue;
sucharP ZEDbitTableBackwardCaseTwoFalseFalse;
sucharP ZEDbitTableBackwardCaseTwoFalseTrue;
sucharP ZEDbitTableBackwardCaseTwoTrueFalse;
sucharP ZEDbitTableBackwardCaseTwoTrueTrue;
sucharP ZEDbyteTableBackwardCaseOneFalse;
sucharP ZEDbyteTableBackwardCaseOneTrue;
sucharP ZEDbyteTableBackwardCaseTwoFalseFalse;
sucharP ZEDbyteTableBackwardCaseTwoFalseTrue;
sucharP ZEDbyteTableBackwardCaseTwoTrueFalse;
sucharP ZEDbyteTableBackwardCaseTwoTrueTrue;
sucharP ZEDbyteTableForwardCaseOneFalse;
sucharP ZEDbyteTableForwardCaseOneTrue;
sucharP ZEDbyteTableForwardCaseTwoFalseFalse;
sucharP ZEDbyteTableForwardCaseTwoFalseTrue;
sucharP ZEDbyteTableForwardCaseTwoTrueFalse;
sucharP ZEDbyteTableForwardCaseTwoTrueTrue;
sucharP ZEDstate;
 
suchar bitBack(uchar bit0 , uchar bit1 , uchar byte);
suchar bitBackwardCaseOneFalse(uchar byte);
suchar bitBackwardCaseOneTrue(uchar byte);
suchar bitBackwardCaseTwoFalseFalse(uchar byte);
suchar bitBackwardCaseTwoFalseTrue(uchar byte);
suchar bitBackwardCaseTwoTrueFalse(uchar byte);
suchar bitBackwardCaseTwoTrueTrue(uchar byte);
suchar byteBack(uchar bit0 , uchar bit1 , uchar byte);
suchar byteBackwardCaseOneFalse(uchar byte);
suchar byteBackwardCaseOneTrue(uchar byte);
suchar byteBackwardCaseTwoFalseFalse(uchar byte);
suchar byteBackwardCaseTwoFalseTrue(uchar byte);
suchar byteBackwardCaseTwoTrueFalse(uchar byte);
suchar byteBackwardCaseTwoTrueTrue(uchar byte);
suchar byteForwardCaseOneFalse(uchar byte);
suchar byteForwardCaseOneTrue(uchar byte);
suchar byteForwardCaseTwoFalseFalse(uchar byte);
suchar byteForwardCaseTwoFalseTrue(uchar byte);
suchar byteForwardCaseTwoTrueFalse(uchar byte);
suchar byteForwardCaseTwoTrueTrue(uchar byte);
sucharP ucharArrayMap(uchar (*function)(ZEDuchar),ulonglong count,ucharP array);
uchar lhcaBackward();
uchar lhcaForward();
uchar lhcaInitialize();
uchar lhcaOne();
uchar lhcaTwo();
uchar lhcaThree();
uchar lhcaFour();
uchar lhcaFive();
uchar lhcaSix();
uchar lhcaSeven();
uchar lhcaEight();
uchar lhcaSeed(uchar one,uchar two,uchar three,uchar four,uchar five,uchar six,uchar seven,uchar eight);
sulonglong ulonglongCastUchar(uchar character);
suchar test1(uint count);
suchar test2(uint count);
 
REPLACE
 
suchar bitBack(uchar bit0 , uchar bit1 , uchar byte){return(bit0)?((bit1)?(ZEDucharTableBackward(byte,ZEDbitTableBackwardCaseTwoTrueTrue)):(ZEDucharTableBackward(byte,ZEDbitTableBackwardCaseTwoTrueFalse))):((bit1)?(ZEDucharTableBackward(byte,ZEDbitTableBackwardCaseTwoFalseTrue)):(ZEDucharTableBackward(byte,ZEDbitTableBackwardCaseTwoFalseFalse)));}
suchar bitBackwardCaseOneFalse(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsBackwardCaseOne(0,before);uchar result=ZEDucharArrayRef(9,after);free(before);free(after);return result;}
suchar bitBackwardCaseOneTrue(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsBackwardCaseOne(1,before);uchar result=ZEDucharArrayRef(9,after);free(before);free(after);return result;}
suchar bitBackwardCaseTwoFalseFalse(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsBackwardCaseTwo(0,0,before);uchar result=ZEDucharArrayRef(9,after);free(before);free(after);return result;}
suchar bitBackwardCaseTwoFalseTrue(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsBackwardCaseTwo(0,1,before);uchar result=ZEDucharArrayRef(9,after);free(before);free(after);return result;}
suchar bitBackwardCaseTwoTrueFalse(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsBackwardCaseTwo(1,0,before);uchar result=ZEDucharArrayRef(9,after);free(before);free(after);return result;}
suchar bitBackwardCaseTwoTrueTrue(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsBackwardCaseTwo(1,1,before);uchar result=ZEDucharArrayRef(9,after);free(before);free(after);return result;}
suchar byteBack(uchar bit0 , uchar bit1 , uchar byte){return(bit0)?((bit1)?(ZEDucharTableBackward(byte,ZEDbyteTableBackwardCaseTwoTrueTrue)):(ZEDucharTableBackward(byte,ZEDbyteTableBackwardCaseTwoTrueFalse))):((bit1)?(ZEDucharTableBackward(byte,ZEDbyteTableBackwardCaseTwoFalseTrue)):(ZEDucharTableBackward(byte,ZEDbyteTableBackwardCaseTwoFalseFalse)));}
suchar byteBackwardCaseOneFalse(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsBackwardCaseOne(0,before);uchar result=ZEDbyteBits(after);free(before);free(after);return result;}
suchar byteBackwardCaseOneTrue(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsBackwardCaseOne(1,before);uchar result=ZEDbyteBits(after);free(before);free(after);return result;}
suchar byteBackwardCaseTwoFalseFalse(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsBackwardCaseTwo(0,0,before);uchar result=ZEDbyteBits(after);free(before);free(after);return result;}
suchar byteBackwardCaseTwoFalseTrue(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsBackwardCaseTwo(0,1,before);uchar result=ZEDbyteBits(after);free(before);free(after);return result;}
suchar byteBackwardCaseTwoTrueFalse(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsBackwardCaseTwo(1,0,before);uchar result=ZEDbyteBits(after);free(before);free(after);return result;}
suchar byteBackwardCaseTwoTrueTrue(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsBackwardCaseTwo(1,1,before);uchar result=ZEDbyteBits(after);free(before);free(after);return result;}
suchar byteForwardCaseOneFalse(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsForwardCaseOne(0,0,before);uchar result=ZEDbyteBits(after);free(before);free(after);return result;}
suchar byteForwardCaseOneTrue(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsForwardCaseOne(0,1,before);uchar result=ZEDbyteBits(after);free(before);free(after);return result;}
suchar byteForwardCaseTwoFalseFalse(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsForwardCaseTwo(0,0,before);uchar result=ZEDbyteBits(after);free(before);free(after);return result;}
suchar byteForwardCaseTwoFalseTrue(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsForwardCaseTwo(0,1,before);uchar result=ZEDbyteBits(after);free(before);free(after);return result;}
suchar byteForwardCaseTwoTrueFalse(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsForwardCaseTwo(1,0,before);uchar result=ZEDbyteBits(after);free(before);free(after);return result;}
suchar byteForwardCaseTwoTrueTrue(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsForwardCaseTwo(1,1,before);uchar result=ZEDbyteBits(after);free(before);free(after);return result;}
sucharP ucharArrayMap(uchar (*function)(uchar),ulonglong count,ucharP array){if(count==0) return array; else return ucharArrayMap(function,count-1,ucharArraySet(count,(*function)(ucharArrayRef(count,array)),array));}
uchar lhcaBackward(){uchar bit0,bit1,bit2,bit3,bit4,bit5,bit6,bit7,bit8,byte1,byte2,byte3,byte4,byte5,byte6,byte7,byte8,result;result=(ZEDstate[0]>127);byte1=ZEDucharArrayRef(1+((ZEDulonglong)ZEDstate[0]),ZEDbyteTableBackwardCaseOneFalse);bit1=ZEDucharArrayRef(1+((ZEDulonglong)ZEDstate[0]),ZEDbitTableBackwardCaseOneFalse);bit0=(byte1%2);byte2=ZEDbyteBack(bit0,bit1,ZEDstate[1]);bit2=ZEDbitBack(bit0,bit1,ZEDstate[1]);bit0=(byte2%2);byte3=ZEDbyteBack(bit0,bit2,ZEDstate[2]);bit3=ZEDbitBack(bit0,bit2,ZEDstate[2]);bit0=(byte3%2);byte4=ZEDbyteBack(bit0,bit3,ZEDstate[3]);bit4=ZEDbitBack(bit0,bit3,ZEDstate[3]);bit0=(byte4%2);byte5=ZEDbyteBack(bit0,bit4,ZEDstate[4]);bit5=ZEDbitBack(bit0,bit4,ZEDstate[4]);bit0=(byte5%2);byte6=ZEDbyteBack(bit0,bit5,ZEDstate[5]);bit6=ZEDbitBack(bit0,bit5,ZEDstate[5]);bit0=(byte6%2);byte7=ZEDbyteBack(bit0,bit6,ZEDstate[6]);bit7=ZEDbitBack(bit0,bit6,ZEDstate[6]);bit0=(byte7%2);byte8=ZEDbyteBack(bit0,bit7,ZEDstate[7]);bit8=ZEDbitBack(bit0,bit7,ZEDstate[7]);if(bit8){byte1=ZEDucharArrayRef(1+((ZEDulonglong)ZEDstate[0]),ZEDbyteTableBackwardCaseOneTrue);bit1=ZEDucharArrayRef(1+((ZEDulonglong)ZEDstate[0]),ZEDbitTableBackwardCaseOneTrue);bit0=(byte1%2);byte2=ZEDbyteBack(bit0,bit1,ZEDstate[1]);bit2=ZEDbitBack(bit0,bit1,ZEDstate[1]);bit0=(byte2%2);byte3=ZEDbyteBack(bit0,bit2,ZEDstate[2]);bit3=ZEDbitBack(bit0,bit2,ZEDstate[2]);bit0=(byte3%2);byte4=ZEDbyteBack(bit0,bit3,ZEDstate[3]);bit4=ZEDbitBack(bit0,bit3,ZEDstate[3]);bit0=(byte4%2);byte5=ZEDbyteBack(bit0,bit4,ZEDstate[4]);bit5=ZEDbitBack(bit0,bit4,ZEDstate[4]);bit0=(byte5%2);byte6=ZEDbyteBack(bit0,bit5,ZEDstate[5]);bit6=ZEDbitBack(bit0,bit5,ZEDstate[5]);bit0=(byte6%2);byte7=ZEDbyteBack(bit0,bit6,ZEDstate[6]);bit7=ZEDbitBack(bit0,bit6,ZEDstate[6]);bit0=(byte7%2);byte8=ZEDbyteBack(bit0,bit7,ZEDstate[7]);bit8=ZEDbitBack(bit0,bit7,ZEDstate[7]);}ZEDstate[0]=byte1;ZEDstate[1]=byte2;ZEDstate[2]=byte3;ZEDstate[3]=byte4;ZEDstate[4]=byte5;ZEDstate[5]=byte6;ZEDstate[6]=byte7;ZEDstate[7]=byte8;return result;}
uchar lhcaForward(){uchar one=ZEDbyteOneForward();uchar two=ZEDbyteTwoForward();uchar three=ZEDbyteThreeForward();uchar four=ZEDbyteFourForward();uchar five=ZEDbyteFiveForward();uchar six=ZEDbyteSixForward();uchar seven=ZEDbyteSevenForward();uchar eight=ZEDbyteEightForward();ZEDbyteOneSet(one);ZEDbyteTwoSet(two);ZEDbyteThreeSet(three);ZEDbyteFourSet(four);ZEDbyteFiveSet(five);ZEDbyteSixSet(six);ZEDbyteSevenSet(seven);ZEDbyteEightSet(eight);return one>127;}
uchar lhcaInitialize(){ZEDbitTableBackwardCaseOneFalse=ZEDbitsBackwardCaseOneFalse();
ZEDbitTableBackwardCaseOneTrue=ZEDbitsBackwardCaseOneTrue();
ZEDbitTableBackwardCaseTwoFalseFalse=ZEDbitsBackwardCaseTwoFalseFalse();ZEDbitTableBackwardCaseTwoFalseTrue=ZEDbitsBackwardCaseTwoFalseTrue();ZEDbitTableBackwardCaseTwoTrueFalse=ZEDbitsBackwardCaseTwoTrueFalse();ZEDbitTableBackwardCaseTwoTrueTrue=ZEDbitsBackwardCaseTwoTrueTrue();ZEDbyteTableBackwardCaseOneFalse=ZEDbytesBackwardCaseOneFalse();ZEDbyteTableBackwardCaseOneTrue=ZEDbytesBackwardCaseOneTrue();ZEDbyteTableBackwardCaseTwoFalseFalse=ZEDbytesBackwardCaseTwoFalseFalse();ZEDbyteTableBackwardCaseTwoFalseTrue=ZEDbytesBackwardCaseTwoFalseTrue();ZEDbyteTableBackwardCaseTwoTrueFalse=ZEDbytesBackwardCaseTwoTrueFalse();ZEDbyteTableBackwardCaseTwoTrueTrue=ZEDbytesBackwardCaseTwoTrueTrue();ZEDbyteTableForwardCaseOneFalse=ZEDbytesForwardCaseOneFalse();ZEDbyteTableForwardCaseOneTrue=ZEDbytesForwardCaseOneTrue();ZEDbyteTableForwardCaseTwoFalseFalse=ZEDbytesForwardCaseTwoFalseFalse();ZEDbyteTableForwardCaseTwoFalseTrue=ZEDbytesForwardCaseTwoFalseTrue();ZEDbyteTableForwardCaseTwoTrueFalse=ZEDbytesForwardCaseTwoTrueFalse();ZEDbyteTableForwardCaseTwoTrueTrue=ZEDbytesForwardCaseTwoTrueTrue();
ZEDstate=ZEDbytesState();}
uchar lhcaOne(){return ZEDstate[0];}
uchar lhcaTwo(){return ZEDstate[1];}
uchar lhcaThree(){return ZEDstate[2];}
uchar lhcaFour(){return ZEDstate[3];}
uchar lhcaFive(){return ZEDstate[4];}
uchar lhcaSix(){return ZEDstate[5];}
uchar lhcaSeven(){return ZEDstate[6];}
uchar lhcaEight(){return ZEDstate[7];}
uchar lhcaSeed(uchar one,uchar two,uchar three,uchar four,uchar five,uchar six,uchar seven,uchar eight){ZEDstate[0]=one;ZEDstate[1]=two;ZEDstate[2]=three;ZEDstate[3]=four;ZEDstate[4]=five;ZEDstate[5]=six;ZEDstate[6]=seven;ZEDstate[7]=eight;return 0;}
sulonglong ulonglongCastUchar(uchar character){return(ZEDulonglong)character;}
suchar test1(uint count){if(count==0) {return(0);} else{printf("%d",ZEDlhcaForward());return test1(count-1);}}
suchar test2(uint count){if(count==0) {return(0);} else{printf("%d",ZEDlhcaBackward());return test2(count-1);}}
 
int main() {
lhcaInitialize();
test1(256*61);
printf("\n\n\n");
test2(256*61);
return 0;
}
