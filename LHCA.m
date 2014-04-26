#include <stdio.h>
#include <stdlib.h>
#include <Foundation/Foundation.h>
 
typedef unsigned char uchar;
typedef unsigned int uint;
typedef unsigned long long ulonglong;
 
#define DEFINE_ZED_TYPE(type_) typedef type_ * type_##P;typedef struct type_##List type_##List;typedef struct type_##GarbageList type_##GarbageList;struct type_##GarbageList{struct type_##List *garbage;struct type_##GarbageList *next;};struct type_##List{type_ value;struct type_##List *values;struct type_##List *next;type_##GarbageList *garbage};typedef struct type_##List * type_##ListP;typedef struct type_##GarbageList * type_##GarbageListP;typedef type_ ZED##type_;typedef type_##P ZED##type_##P;typedef struct type_##GarbageList ZED##type_##GarbageList;typedef type_##GarbageListP ZED##type_##GarbageListP;typedef struct type_##List ZED##type_##List;typedef type_##ListP ZED##type_##ListP;type_##P type_##ArrayNew(ulonglong size){return malloc(size*sizeof(type_));}type_ type_##ArrayRef(ulonglong index,type_##P array){return array[index-1];}type_##P type_##ArraySet(ulonglong index,type_ value,type_##P array){array[index-1]=value;return array;}type_##ListP type_##ListNew();type_##ListP type_##ListValuePush(type_ value,type_##ListP list);type_##ListP type_##ListValuesPush(type_##ListP values,type_##ListP list);type_##ListP type_##ListPop(type_##ListP list);uchar type_##ListAssertNull(type_##ListP list);uchar type_##ListAssertValues(type_##ListP list);uchar type_##ListFree(type_##ListP list);static uchar type_##GarbageListFree(type_##GarbageListP garbage);type_ type_##ListValueTop(type_##ListP list);type_##ListP type_##ListValuesTop(type_##ListP list);static void type_##ListCollect(type_##ListP list);static void type_##GarbageListFeed(type_##GarbageListP garbage1,type_##GarbageListP garbage2);static void type_##ListCollect1(type_##GarbageListP all,type_##GarbageListP garbage);type_##ListP type_##ListValuesTop(type_##ListP list){return list->values;}type_ type_##ListValueTop(type_##ListP list){return list->value;}static void type_##ListCollect(type_##ListP list){type_##GarbageListFeed(list->values->garbage,list->garbage);type_##ListCollect1(list->garbage,list->garbage->next);}static void type_##ListCollect1(type_##GarbageListP all,type_##GarbageListP garbage){if(garbage->next==NULL){garbage->garbage->garbage=all;}else{garbage->garbage->garbage=all;type_##ListCollect1(all,garbage->next);}}static void type_##GarbageListFeed(type_##GarbageListP garbage1,type_##GarbageListP garbage2){if(garbage2->next==NULL){garbage2->next=garbage1;}else{type_##GarbageListFeed(garbage1,garbage2->next);}}type_##ListP type_##ListNew(){type_##ListP list=malloc(sizeof(type_##List));type_##GarbageListP garbage=malloc(sizeof(type_##GarbageList));list->next=NULL;list->garbage=garbage;garbage->next=NULL;garbage->garbage=list;return list;}type_##ListP type_##ListValuePush(type_ value,type_##ListP list){type_##ListP tempList=malloc(sizeof(type_##List));type_##GarbageListP tempGarbageList=malloc(sizeof(type_##GarbageList));tempList->value=list->value;tempList->values=list->values;tempList->garbage=list->garbage->next;tempList->next=list->next;list->value=value;list->values=NULL;list->garbage->garbage=list;list->garbage->next=tempGarbageList;list->next=tempList;tempGarbageList->garbage=tempList;tempGarbageList->next=tempList->garbage;tempList->garbage=list->garbage;return list;}type_##ListP type_##ListValuesPush(type_##ListP values,type_##ListP list){type_##ListP tempList=malloc(sizeof(type_##List));type_##GarbageListP tempGarbageList=malloc(sizeof(type_##GarbageList));tempList->value=list->value;tempList->values=list->values;tempList->garbage=list->garbage->next;tempList->next=list->next;list->values=values;list->garbage->garbage=list;list->garbage->next=tempGarbageList;list->next=tempList;tempGarbageList->garbage=tempList;tempGarbageList->next=tempList->garbage;tempList->garbage=list->garbage;type_##ListCollect(list);return list;}type_##ListP type_##ListPop(type_##ListP list){return list->next;}uchar type_##ListAssertNull(type_##ListP list){return list->next==NULL;}uchar type_##ListAssertValues(type_##ListP list){return !(list->values==NULL);}uchar type_##ListFree(type_##ListP list){type_##GarbageListFree(list->garbage);return 0;}static uchar type_##GarbageListFree(type_##GarbageListP garbage){type_##GarbageListP next=garbage->next;free(garbage->garbage);free(garbage);if(next==NULL){return 0;}else{return type_##GarbageListFree(next);}}
 
DEFINE_ZED_TYPE(uchar)
DEFINE_ZED_TYPE(uint)
DEFINE_ZED_TYPE(ulonglong)
 
@interface LHCA : NSObject
-(uchar) forward;
-(uchar) backward;
-(uchar) initialize;
-(uchar) one;
-(uchar) two;
-(uchar) three;
-(uchar) four;
-(uchar) five;
-(uchar) six;
-(uchar) seven;
-(uchar) eight;
-(uchar) seed: (uchar) one and: (uchar) two and: (uchar) three and: (uchar) four and: (uchar) five and: (uchar) six and: (uchar) seven and: (uchar) eight;
-(uchar) test;
@end
 
@implementation LHCA
ucharP ZEDbitTableBackwardCaseOneFalse;
ucharP ZEDbitTableBackwardCaseOneTrue;
ucharP ZEDbitTableBackwardCaseTwoFalseFalse;
ucharP ZEDbitTableBackwardCaseTwoFalseTrue;
ucharP ZEDbitTableBackwardCaseTwoTrueFalse;
ucharP ZEDbitTableBackwardCaseTwoTrueTrue;
ucharP ZEDbyteTableBackwardCaseOneFalse;
ucharP ZEDbyteTableBackwardCaseOneTrue;
ucharP ZEDbyteTableBackwardCaseTwoFalseFalse;
ucharP ZEDbyteTableBackwardCaseTwoFalseTrue;
ucharP ZEDbyteTableBackwardCaseTwoTrueFalse;
ucharP ZEDbyteTableBackwardCaseTwoTrueTrue;
ucharP ZEDbyteTableForwardCaseOneFalse;
ucharP ZEDbyteTableForwardCaseOneTrue;
ucharP ZEDbyteTableForwardCaseTwoFalseFalse;
ucharP ZEDbyteTableForwardCaseTwoFalseTrue;
ucharP ZEDbyteTableForwardCaseTwoTrueFalse;
ucharP ZEDbyteTableForwardCaseTwoTrueTrue;
ucharP ZEDstate;
 
uchar bitBack(uchar bit0 , uchar bit1 , uchar byte);
uchar bitBackwardCaseOneFalse(uchar byte);
uchar bitBackwardCaseOneTrue(uchar byte);
uchar bitBackwardCaseTwoFalseFalse(uchar byte);
uchar bitBackwardCaseTwoFalseTrue(uchar byte);
uchar bitBackwardCaseTwoTrueFalse(uchar byte);
uchar bitBackwardCaseTwoTrueTrue(uchar byte);
uchar byteBack(uchar bit0 , uchar bit1 , uchar byte);
uchar byteBackwardCaseOneFalse(uchar byte);
uchar byteBackwardCaseOneTrue(uchar byte);
uchar byteBackwardCaseTwoFalseFalse(uchar byte);
uchar byteBackwardCaseTwoFalseTrue(uchar byte);
uchar byteBackwardCaseTwoTrueFalse(uchar byte);
uchar byteBackwardCaseTwoTrueTrue(uchar byte);
uchar byteForwardCaseOneFalse(uchar byte);
uchar byteForwardCaseOneTrue(uchar byte);
uchar byteForwardCaseTwoFalseFalse(uchar byte);
uchar byteForwardCaseTwoFalseTrue(uchar byte);
uchar byteForwardCaseTwoTrueFalse(uchar byte);
uchar byteForwardCaseTwoTrueTrue(uchar byte);
ucharP ucharArrayMap(uchar (*function)(ZEDuchar),ulonglong count,ucharP array);
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
ulonglong ulonglongCastUchar(uchar character);
uchar test1(uint count);
uchar test2(uint count);
 
ZEDuchar ZEDbitBack(ZEDuchar ZEDbit0 , ZEDuchar ZEDbit1 , ZEDuchar ZEDbyte);ZEDuchar ZEDbitBackwardCaseOneFalse(ZEDuchar ZEDbyte);ZEDuchar ZEDbitBackwardCaseOneTrue(ZEDuchar ZEDbyte);ZEDuchar ZEDbitBackwardCaseTwoFalseFalse(ZEDuchar ZEDbyte);ZEDuchar ZEDbitBackwardCaseTwoFalseTrue(ZEDuchar ZEDbyte);ZEDuchar ZEDbitBackwardCaseTwoTrueFalse(ZEDuchar ZEDbyte);ZEDuchar ZEDbitBackwardCaseTwoTrueTrue(ZEDuchar ZEDbyte);ZEDuchar ZEDbitRule(ZEDuchar ZEDrule , ZEDuchar ZEDone , ZEDuchar ZEDtwo , ZEDuchar ZEDthree);ZEDuchar ZEDbitRuleNinety(ZEDuchar ZEDone , ZEDuchar ZEDtwo , ZEDuchar ZEDthree);ZEDuchar ZEDbitRuleOneFifty(ZEDuchar ZEDone , ZEDuchar ZEDtwo , ZEDuchar ZEDthree);ZEDuchar ZEDbitXor(ZEDuchar ZEDone , ZEDuchar ZEDtwo);ZEDucharP ZEDbitsBackwardCaseOne(ZEDuchar ZEDbit , ZEDucharP ZEDbits);ZEDucharP ZEDbitsBackwardCaseOne1(ZEDuchar ZEDbit , ZEDucharP ZEDinput , ZEDucharP ZEDoutput);ZEDucharP ZEDbitsBackwardCaseOne1a(ZEDucharP ZEDinput , ZEDucharP ZEDoutput);ZEDucharP ZEDbitsBackwardCaseOne1b(ZEDucharP ZEDinput , ZEDucharP ZEDoutput);ZEDucharP ZEDbitsBackwardCaseOne1c(ZEDucharP ZEDinput , ZEDucharP ZEDoutput);ZEDucharP ZEDbitsBackwardCaseOne1d(ZEDucharP ZEDinput , ZEDucharP ZEDoutput);ZEDucharP ZEDbitsBackwardCaseOne1e(ZEDucharP ZEDinput , ZEDucharP ZEDoutput);ZEDucharP ZEDbitsBackwardCaseOne1f(ZEDucharP ZEDinput , ZEDucharP ZEDoutput);ZEDucharP ZEDbitsBackwardCaseOne1g(ZEDucharP ZEDinput , ZEDucharP ZEDoutput);ZEDucharP ZEDbitsBackwardCaseOneFalse();ZEDucharP ZEDbitsBackwardCaseOneTrue();ZEDucharP ZEDbitsBackwardCaseTwo(ZEDuchar ZEDbit1 , ZEDuchar ZEDbit2 , ZEDucharP ZEDbits);ZEDucharP ZEDbitsBackwardCaseTwo1(ZEDuchar ZEDbit1 , ZEDuchar ZEDbit2 , ZEDucharP ZEDinput , ZEDucharP ZEDoutput);ZEDucharP ZEDbitsBackwardCaseTwo1a(ZEDucharP ZEDinput , ZEDucharP ZEDoutput);ZEDucharP ZEDbitsBackwardCaseTwo1b(ZEDucharP ZEDinput , ZEDucharP ZEDoutput);ZEDucharP ZEDbitsBackwardCaseTwo1c(ZEDucharP ZEDinput , ZEDucharP ZEDoutput);ZEDucharP ZEDbitsBackwardCaseTwo1d(ZEDucharP ZEDinput , ZEDucharP ZEDoutput);ZEDucharP ZEDbitsBackwardCaseTwo1e(ZEDucharP ZEDinput , ZEDucharP ZEDoutput);ZEDucharP ZEDbitsBackwardCaseTwo1f(ZEDucharP ZEDinput , ZEDucharP ZEDoutput);ZEDucharP ZEDbitsBackwardCaseTwo1g(ZEDucharP ZEDinput , ZEDucharP ZEDoutput);ZEDucharP ZEDbitsBackwardCaseTwoFalseFalse();ZEDucharP ZEDbitsBackwardCaseTwoFalseTrue();ZEDucharP ZEDbitsBackwardCaseTwoTrueFalse();ZEDucharP ZEDbitsBackwardCaseTwoTrueTrue();ZEDucharP ZEDbitsByte(ZEDuchar ZEDbyte);ZEDucharP ZEDbitsByte1(ZEDuchar ZEDbyte , ZEDuchar ZEDcount);ZEDucharP ZEDbitsForwardCaseOne(ZEDuchar ZEDleftBit , ZEDuchar ZEDrightBit , ZEDucharP ZEDbits);ZEDucharP ZEDbitsForwardCaseTwo(ZEDuchar ZEDleftBit , ZEDuchar ZEDrightBit , ZEDucharP ZEDbits);ZEDuchar ZEDbyteBack(ZEDuchar ZEDbit0 , ZEDuchar ZEDbit1 , ZEDuchar ZEDbyte);ZEDuchar ZEDbyteBackwardCaseOneFalse(ZEDuchar ZEDbyte);ZEDuchar ZEDbyteBackwardCaseOneTrue(ZEDuchar ZEDbyte);ZEDuchar ZEDbyteBackwardCaseTwoFalseFalse(ZEDuchar ZEDbyte);ZEDuchar ZEDbyteBackwardCaseTwoFalseTrue(ZEDuchar ZEDbyte);ZEDuchar ZEDbyteBackwardCaseTwoTrueFalse(ZEDuchar ZEDbyte);ZEDuchar ZEDbyteBackwardCaseTwoTrueTrue(ZEDuchar ZEDbyte);ZEDuchar ZEDbyteBits(ZEDucharP ZEDbits);ZEDuchar ZEDbyteBits1(ZEDucharP ZEDbits , ZEDuchar ZEDbyte , ZEDuchar ZEDcount);ZEDuchar ZEDbyteEightForward();ZEDuchar ZEDbyteEightRef();ZEDucharP ZEDbyteEightSet(ZEDuchar ZEDcharacter);ZEDuchar ZEDbyteFiveForward();ZEDuchar ZEDbyteFiveRef();ZEDucharP ZEDbyteFiveSet(ZEDuchar ZEDcharacter);ZEDuchar ZEDbyteForwardCaseOneFalse(ZEDuchar ZEDbyte);ZEDuchar ZEDbyteForwardCaseOneTrue(ZEDuchar ZEDbyte);ZEDuchar ZEDbyteForwardCaseTwoFalseFalse(ZEDuchar ZEDbyte);ZEDuchar ZEDbyteForwardCaseTwoFalseTrue(ZEDuchar ZEDbyte);ZEDuchar ZEDbyteForwardCaseTwoTrueFalse(ZEDuchar ZEDbyte);ZEDuchar ZEDbyteForwardCaseTwoTrueTrue(ZEDuchar ZEDbyte);ZEDuchar ZEDbyteFourForward();ZEDuchar ZEDbyteFourRef();ZEDucharP ZEDbyteFourSet(ZEDuchar ZEDcharacter);ZEDuchar ZEDbyteOneForward();ZEDuchar ZEDbyteOneForward1(ZEDuchar ZEDone , ZEDuchar ZEDtwo);ZEDuchar ZEDbyteOneRef();ZEDucharP ZEDbyteOneSet(ZEDuchar ZEDcharacter);ZEDuchar ZEDbyteSevenForward();ZEDuchar ZEDbyteSevenRef();ZEDucharP ZEDbyteSevenSet(ZEDuchar ZEDcharacter);ZEDuchar ZEDbyteSixForward();ZEDuchar ZEDbyteSixRef();ZEDucharP ZEDbyteSixSet(ZEDuchar ZEDcharacter);ZEDuchar ZEDbyteThreeForward();ZEDuchar ZEDbyteThreeRef();ZEDucharP ZEDbyteThreeSet(ZEDuchar ZEDcharacter);ZEDuchar ZEDbyteTwoForward();ZEDuchar ZEDbyteTwoForward1(ZEDuchar ZEDone , ZEDuchar ZEDtwo , ZEDuchar ZEDthree);ZEDuchar ZEDbyteTwoRef();ZEDucharP ZEDbyteTwoSet(ZEDuchar ZEDcharacter);ZEDucharP ZEDbytesBackwardCaseOneFalse();ZEDucharP ZEDbytesBackwardCaseOneTrue();ZEDucharP ZEDbytesBackwardCaseTwoFalseFalse();ZEDucharP ZEDbytesBackwardCaseTwoFalseTrue();ZEDucharP ZEDbytesBackwardCaseTwoTrueFalse();ZEDucharP ZEDbytesBackwardCaseTwoTrueTrue();ZEDucharP ZEDbytesForwardCaseOneFalse();ZEDucharP ZEDbytesForwardCaseOneTrue();ZEDucharP ZEDbytesForwardCaseTwoFalseFalse();ZEDucharP ZEDbytesForwardCaseTwoFalseTrue();ZEDucharP ZEDbytesForwardCaseTwoTrueFalse();ZEDucharP ZEDbytesForwardCaseTwoTrueTrue();ZEDucharP ZEDbytesState();ZEDuchar ZEDucharAdd(ZEDuchar ZEDone , ZEDuchar ZEDtwo);ZEDucharP ZEDucharArrayNew(ZEDulonglong ZEDsize);ZEDucharP ZEDucharArrayPrepare(ZEDulonglong ZEDsize , ZEDucharP ZEDarray);ZEDuchar ZEDucharArrayRef(ZEDulonglong ZEDindex , ZEDucharP ZEDarray);ZEDucharP ZEDucharArraySet(ZEDulonglong ZEDindex , ZEDuchar ZEDcharacter , ZEDucharP ZEDarray);ZEDuchar ZEDucharShiftLeft(ZEDuchar ZEDcharacter);ZEDuchar ZEDucharTableBackward(ZEDuchar ZEDbyte , ZEDucharP ZEDtable);ZEDulonglong ZEDulonglongAdd(ZEDulonglong ZEDone , ZEDulonglong ZEDtwo);ZEDulonglong ZEDulonglongCastUchar(ZEDuchar ZEDcharacter);ZEDuchar ZEDbitBack(ZEDuchar ZEDbit0 , ZEDuchar ZEDbit1 , ZEDuchar ZEDbyte){return(1)?(bitBack(ZEDbit0,ZEDbit1,ZEDbyte)):(0);}ZEDuchar ZEDbitBackwardCaseOneFalse(ZEDuchar ZEDbyte){return(1)?(bitBackwardCaseOneFalse(ZEDbyte)):(0);}ZEDuchar ZEDbitBackwardCaseOneTrue(ZEDuchar ZEDbyte){return(1)?(bitBackwardCaseOneTrue(ZEDbyte)):(0);}ZEDuchar ZEDbitBackwardCaseTwoFalseFalse(ZEDuchar ZEDbyte){return(1)?(bitBackwardCaseTwoFalseFalse(ZEDbyte)):(0);}ZEDuchar ZEDbitBackwardCaseTwoFalseTrue(ZEDuchar ZEDbyte){return(1)?(bitBackwardCaseTwoFalseTrue(ZEDbyte)):(0);}ZEDuchar ZEDbitBackwardCaseTwoTrueFalse(ZEDuchar ZEDbyte){return(1)?(bitBackwardCaseTwoTrueFalse(ZEDbyte)):(0);}ZEDuchar ZEDbitBackwardCaseTwoTrueTrue(ZEDuchar ZEDbyte){return(1)?(bitBackwardCaseTwoTrueTrue(ZEDbyte)):(0);}ZEDuchar ZEDbitRule(ZEDuchar ZEDrule , ZEDuchar ZEDone , ZEDuchar ZEDtwo , ZEDuchar ZEDthree){return(ZEDrule)?(ZEDbitRuleOneFifty(ZEDone,ZEDtwo,ZEDthree)):((1)?(ZEDbitRuleNinety(ZEDone,ZEDtwo,ZEDthree)):(0));}ZEDuchar ZEDbitRuleNinety(ZEDuchar ZEDone , ZEDuchar ZEDtwo , ZEDuchar ZEDthree){return(1)?(ZEDbitXor(ZEDone,ZEDthree)):(0);}ZEDuchar ZEDbitRuleOneFifty(ZEDuchar ZEDone , ZEDuchar ZEDtwo , ZEDuchar ZEDthree){return(1)?(ZEDbitXor(ZEDtwo,ZEDbitXor(ZEDone,ZEDthree))):(0);}ZEDuchar ZEDbitXor(ZEDuchar ZEDone , ZEDuchar ZEDtwo){return(1)?(ZEDone!=ZEDtwo):(0);}ZEDucharP ZEDbitsBackwardCaseOne(ZEDuchar ZEDbit , ZEDucharP ZEDbits){return(1)?(ZEDbitsBackwardCaseOne1(ZEDbit,ZEDbits,ZEDucharArrayNew(9))):(0);}ZEDucharP ZEDbitsBackwardCaseOne1(ZEDuchar ZEDbit , ZEDucharP ZEDinput , ZEDucharP ZEDoutput){return(1)?(ZEDbitsBackwardCaseOne1a(ZEDinput,ZEDucharArraySet(1,ZEDbit,ZEDucharArraySet(2,ZEDbitRule(0,0,ZEDbit,ZEDucharArrayRef(1,ZEDinput)),ZEDoutput)))):(0);}ZEDucharP ZEDbitsBackwardCaseOne1a(ZEDucharP ZEDinput , ZEDucharP ZEDoutput){return(1)?(ZEDbitsBackwardCaseOne1b(ZEDinput,ZEDucharArraySet(3,ZEDbitRule(0,ZEDucharArrayRef(1,ZEDoutput),ZEDucharArrayRef(2,ZEDoutput),ZEDucharArrayRef(2,ZEDinput)),ZEDoutput))):(0);}ZEDucharP ZEDbitsBackwardCaseOne1b(ZEDucharP ZEDinput , ZEDucharP ZEDoutput){return(1)?(ZEDbitsBackwardCaseOne1c(ZEDinput,ZEDucharArraySet(4,ZEDbitRule(1,ZEDucharArrayRef(2,ZEDoutput),ZEDucharArrayRef(3,ZEDoutput),ZEDucharArrayRef(3,ZEDinput)),ZEDoutput))):(0);}ZEDucharP ZEDbitsBackwardCaseOne1c(ZEDucharP ZEDinput , ZEDucharP ZEDoutput){return(1)?(ZEDbitsBackwardCaseOne1d(ZEDinput,ZEDucharArraySet(5,ZEDbitRule(0,ZEDucharArrayRef(3,ZEDoutput),ZEDucharArrayRef(4,ZEDoutput),ZEDucharArrayRef(4,ZEDinput)),ZEDoutput))):(0);}ZEDucharP ZEDbitsBackwardCaseOne1d(ZEDucharP ZEDinput , ZEDucharP ZEDoutput){return(1)?(ZEDbitsBackwardCaseOne1e(ZEDinput,ZEDucharArraySet(6,ZEDbitRule(1,ZEDucharArrayRef(4,ZEDoutput),ZEDucharArrayRef(5,ZEDoutput),ZEDucharArrayRef(5,ZEDinput)),ZEDoutput))):(0);}ZEDucharP ZEDbitsBackwardCaseOne1e(ZEDucharP ZEDinput , ZEDucharP ZEDoutput){return(1)?(ZEDbitsBackwardCaseOne1f(ZEDinput,ZEDucharArraySet(7,ZEDbitRule(0,ZEDucharArrayRef(5,ZEDoutput),ZEDucharArrayRef(6,ZEDoutput),ZEDucharArrayRef(6,ZEDinput)),ZEDoutput))):(0);}ZEDucharP ZEDbitsBackwardCaseOne1f(ZEDucharP ZEDinput , ZEDucharP ZEDoutput){return(1)?(ZEDbitsBackwardCaseOne1g(ZEDinput,ZEDucharArraySet(8,ZEDbitRule(0,ZEDucharArrayRef(6,ZEDoutput),ZEDucharArrayRef(7,ZEDoutput),ZEDucharArrayRef(7,ZEDinput)),ZEDoutput))):(0);}ZEDucharP ZEDbitsBackwardCaseOne1g(ZEDucharP ZEDinput , ZEDucharP ZEDoutput){return(1)?(ZEDucharArraySet(9,ZEDbitRule(0,ZEDucharArrayRef(7,ZEDoutput),ZEDucharArrayRef(8,ZEDoutput),ZEDucharArrayRef(8,ZEDinput)),ZEDoutput)):(0);}ZEDucharP ZEDbitsBackwardCaseOneFalse(){return(1)?(ucharArrayMap(&ZEDbitBackwardCaseOneFalse,256,ZEDucharArrayPrepare(256,ZEDucharArrayNew(256)))):(0);}ZEDucharP ZEDbitsBackwardCaseOneTrue(){return(1)?(ucharArrayMap(&ZEDbitBackwardCaseOneTrue,256,ZEDucharArrayPrepare(256,ZEDucharArrayNew(256)))):(0);}ZEDucharP ZEDbitsBackwardCaseTwo(ZEDuchar ZEDbit1 , ZEDuchar ZEDbit2 , ZEDucharP ZEDbits){return(1)?(ZEDbitsBackwardCaseTwo1(ZEDbit1,ZEDbit2,ZEDbits,ZEDucharArrayNew(9))):(0);}ZEDucharP ZEDbitsBackwardCaseTwo1(ZEDuchar ZEDbit1 , ZEDuchar ZEDbit2 , ZEDucharP ZEDinput , ZEDucharP ZEDoutput){return(1)?(ZEDbitsBackwardCaseTwo1a(ZEDinput,ZEDucharArraySet(1,ZEDbit2,ZEDucharArraySet(2,ZEDbitRule(0,ZEDbit1,ZEDbit2,ZEDucharArrayRef(1,ZEDinput)),ZEDoutput)))):(0);}ZEDucharP ZEDbitsBackwardCaseTwo1a(ZEDucharP ZEDinput , ZEDucharP ZEDoutput){return(1)?(ZEDbitsBackwardCaseTwo1b(ZEDinput,ZEDucharArraySet(3,ZEDbitRule(0,ZEDucharArrayRef(1,ZEDoutput),ZEDucharArrayRef(2,ZEDoutput),ZEDucharArrayRef(2,ZEDinput)),ZEDoutput))):(0);}ZEDucharP ZEDbitsBackwardCaseTwo1b(ZEDucharP ZEDinput , ZEDucharP ZEDoutput){return(1)?(ZEDbitsBackwardCaseTwo1c(ZEDinput,ZEDucharArraySet(4,ZEDbitRule(0,ZEDucharArrayRef(2,ZEDoutput),ZEDucharArrayRef(3,ZEDoutput),ZEDucharArrayRef(3,ZEDinput)),ZEDoutput))):(0);}ZEDucharP ZEDbitsBackwardCaseTwo1c(ZEDucharP ZEDinput , ZEDucharP ZEDoutput){return(1)?(ZEDbitsBackwardCaseTwo1d(ZEDinput,ZEDucharArraySet(5,ZEDbitRule(0,ZEDucharArrayRef(3,ZEDoutput),ZEDucharArrayRef(4,ZEDoutput),ZEDucharArrayRef(4,ZEDinput)),ZEDoutput))):(0);}ZEDucharP ZEDbitsBackwardCaseTwo1d(ZEDucharP ZEDinput , ZEDucharP ZEDoutput){return(1)?(ZEDbitsBackwardCaseTwo1e(ZEDinput,ZEDucharArraySet(6,ZEDbitRule(0,ZEDucharArrayRef(4,ZEDoutput),ZEDucharArrayRef(5,ZEDoutput),ZEDucharArrayRef(5,ZEDinput)),ZEDoutput))):(0);}ZEDucharP ZEDbitsBackwardCaseTwo1e(ZEDucharP ZEDinput , ZEDucharP ZEDoutput){return(1)?(ZEDbitsBackwardCaseTwo1f(ZEDinput,ZEDucharArraySet(7,ZEDbitRule(0,ZEDucharArrayRef(5,ZEDoutput),ZEDucharArrayRef(6,ZEDoutput),ZEDucharArrayRef(6,ZEDinput)),ZEDoutput))):(0);}ZEDucharP ZEDbitsBackwardCaseTwo1f(ZEDucharP ZEDinput , ZEDucharP ZEDoutput){return(1)?(ZEDbitsBackwardCaseTwo1g(ZEDinput,ZEDucharArraySet(8,ZEDbitRule(0,ZEDucharArrayRef(6,ZEDoutput),ZEDucharArrayRef(7,ZEDoutput),ZEDucharArrayRef(7,ZEDinput)),ZEDoutput))):(0);}ZEDucharP ZEDbitsBackwardCaseTwo1g(ZEDucharP ZEDinput , ZEDucharP ZEDoutput){return(1)?(ZEDucharArraySet(9,ZEDbitRule(0,ZEDucharArrayRef(7,ZEDoutput),ZEDucharArrayRef(8,ZEDoutput),ZEDucharArrayRef(8,ZEDinput)),ZEDoutput)):(0);}ZEDucharP ZEDbitsBackwardCaseTwoFalseFalse(){return(1)?(ucharArrayMap(&ZEDbitBackwardCaseTwoFalseFalse,256,ZEDucharArrayPrepare(256,ZEDucharArrayNew(256)))):(0);}ZEDucharP ZEDbitsBackwardCaseTwoFalseTrue(){return(1)?(ucharArrayMap(&ZEDbitBackwardCaseTwoFalseTrue,256,ZEDucharArrayPrepare(256,ZEDucharArrayNew(256)))):(0);}ZEDucharP ZEDbitsBackwardCaseTwoTrueFalse(){return(1)?(ucharArrayMap(&ZEDbitBackwardCaseTwoTrueFalse,256,ZEDucharArrayPrepare(256,ZEDucharArrayNew(256)))):(0);}ZEDucharP ZEDbitsBackwardCaseTwoTrueTrue(){return(1)?(ucharArrayMap(&ZEDbitBackwardCaseTwoTrueTrue,256,ZEDucharArrayPrepare(256,ZEDucharArrayNew(256)))):(0);}ZEDucharP ZEDbitsByte(ZEDuchar ZEDbyte){return(1)?(ZEDbitsByte1(ZEDbyte,1)):(0);}ZEDucharP ZEDbitsByte1(ZEDuchar ZEDbyte , ZEDuchar ZEDcount){return(ZEDcount>8)?(ZEDucharArrayNew(8)):((ZEDbyte>127)?(ZEDucharArraySet(ZEDcount,1,ZEDbitsByte1(ZEDbyte<<1,ZEDcount+1))):((1)?(ZEDucharArraySet(ZEDcount,0,ZEDbitsByte1(ZEDbyte<<1,ZEDcount+1))):(0)));}ZEDucharP ZEDbitsForwardCaseOne(ZEDuchar ZEDleftBit , ZEDuchar ZEDrightBit , ZEDucharP ZEDbits){return(1)?(ZEDucharArraySet(1,ZEDbitRule(0,ZEDleftBit,ZEDucharArrayRef(1,ZEDbits),ZEDucharArrayRef(2,ZEDbits)),ZEDucharArraySet(2,ZEDbitRule(0,ZEDucharArrayRef(1,ZEDbits),ZEDucharArrayRef(2,ZEDbits),ZEDucharArrayRef(3,ZEDbits)),ZEDucharArraySet(3,ZEDbitRule(1,ZEDucharArrayRef(2,ZEDbits),ZEDucharArrayRef(3,ZEDbits),ZEDucharArrayRef(4,ZEDbits)),ZEDucharArraySet(4,ZEDbitRule(0,ZEDucharArrayRef(3,ZEDbits),ZEDucharArrayRef(4,ZEDbits),ZEDucharArrayRef(5,ZEDbits)),ZEDucharArraySet(5,ZEDbitRule(1,ZEDucharArrayRef(4,ZEDbits),ZEDucharArrayRef(5,ZEDbits),ZEDucharArrayRef(6,ZEDbits)),ZEDucharArraySet(6,ZEDbitRule(0,ZEDucharArrayRef(5,ZEDbits),ZEDucharArrayRef(6,ZEDbits),ZEDucharArrayRef(7,ZEDbits)),ZEDucharArraySet(7,ZEDbitRule(0,ZEDucharArrayRef(6,ZEDbits),ZEDucharArrayRef(7,ZEDbits),ZEDucharArrayRef(8,ZEDbits)),ZEDucharArraySet(8,ZEDbitRule(0,ZEDucharArrayRef(7,ZEDbits),ZEDucharArrayRef(8,ZEDbits),ZEDrightBit),ZEDucharArrayNew(8)))))))))):(0);}ZEDucharP ZEDbitsForwardCaseTwo(ZEDuchar ZEDleftBit , ZEDuchar ZEDrightBit , ZEDucharP ZEDbits){return(1)?(ZEDucharArraySet(1,ZEDbitRule(0,ZEDleftBit,ZEDucharArrayRef(1,ZEDbits),ZEDucharArrayRef(2,ZEDbits)),ZEDucharArraySet(2,ZEDbitRule(0,ZEDucharArrayRef(1,ZEDbits),ZEDucharArrayRef(2,ZEDbits),ZEDucharArrayRef(3,ZEDbits)),ZEDucharArraySet(3,ZEDbitRule(0,ZEDucharArrayRef(2,ZEDbits),ZEDucharArrayRef(3,ZEDbits),ZEDucharArrayRef(4,ZEDbits)),ZEDucharArraySet(4,ZEDbitRule(0,ZEDucharArrayRef(3,ZEDbits),ZEDucharArrayRef(4,ZEDbits),ZEDucharArrayRef(5,ZEDbits)),ZEDucharArraySet(5,ZEDbitRule(0,ZEDucharArrayRef(4,ZEDbits),ZEDucharArrayRef(5,ZEDbits),ZEDucharArrayRef(6,ZEDbits)),ZEDucharArraySet(6,ZEDbitRule(0,ZEDucharArrayRef(5,ZEDbits),ZEDucharArrayRef(6,ZEDbits),ZEDucharArrayRef(7,ZEDbits)),ZEDucharArraySet(7,ZEDbitRule(0,ZEDucharArrayRef(6,ZEDbits),ZEDucharArrayRef(7,ZEDbits),ZEDucharArrayRef(8,ZEDbits)),ZEDucharArraySet(8,ZEDbitRule(0,ZEDucharArrayRef(7,ZEDbits),ZEDucharArrayRef(8,ZEDbits),ZEDrightBit),ZEDucharArrayNew(8)))))))))):(0);}ZEDuchar ZEDbyteBack(ZEDuchar ZEDbit0 , ZEDuchar ZEDbit1 , ZEDuchar ZEDbyte){return(1)?(byteBack(ZEDbit0,ZEDbit1,ZEDbyte)):(0);}ZEDuchar ZEDbyteBackwardCaseOneFalse(ZEDuchar ZEDbyte){return(1)?(byteBackwardCaseOneFalse(ZEDbyte)):(0);}ZEDuchar ZEDbyteBackwardCaseOneTrue(ZEDuchar ZEDbyte){return(1)?(byteBackwardCaseOneTrue(ZEDbyte)):(0);}ZEDuchar ZEDbyteBackwardCaseTwoFalseFalse(ZEDuchar ZEDbyte){return(1)?(byteBackwardCaseTwoFalseFalse(ZEDbyte)):(0);}ZEDuchar ZEDbyteBackwardCaseTwoFalseTrue(ZEDuchar ZEDbyte){return(1)?(byteBackwardCaseTwoFalseTrue(ZEDbyte)):(0);}ZEDuchar ZEDbyteBackwardCaseTwoTrueFalse(ZEDuchar ZEDbyte){return(1)?(byteBackwardCaseTwoTrueFalse(ZEDbyte)):(0);}ZEDuchar ZEDbyteBackwardCaseTwoTrueTrue(ZEDuchar ZEDbyte){return(1)?(byteBackwardCaseTwoTrueTrue(ZEDbyte)):(0);}ZEDuchar ZEDbyteBits(ZEDucharP ZEDbits){return(1)?(ZEDbyteBits1(ZEDbits,0,1)):(0);}ZEDuchar ZEDbyteBits1(ZEDucharP ZEDbits , ZEDuchar ZEDbyte , ZEDuchar ZEDcount){return(ZEDcount==8)?(ZEDucharAdd(ZEDbyte,ZEDucharArrayRef(ZEDcount,ZEDbits))):((1)?(ZEDbyteBits1(ZEDbits,ZEDucharShiftLeft(ZEDucharAdd(ZEDbyte,ZEDucharArrayRef(ZEDcount,ZEDbits))),ZEDcount+1)):(0));}ZEDuchar ZEDbyteEightForward(){return(1)?(ZEDbyteTwoForward1(ZEDbyteSevenRef(),ZEDbyteEightRef(),0)):(0);}ZEDuchar ZEDbyteEightRef(){return(1)?(ZEDucharArrayRef(8,ZEDstate)):(0);}ZEDucharP ZEDbyteEightSet(ZEDuchar ZEDcharacter){return(1)?(ZEDucharArraySet(8,ZEDcharacter,ZEDstate)):(0);}ZEDuchar ZEDbyteFiveForward(){return(1)?(ZEDbyteTwoForward1(ZEDbyteFourRef(),ZEDbyteFiveRef(),ZEDbyteSixRef())):(0);}ZEDuchar ZEDbyteFiveRef(){return(1)?(ZEDucharArrayRef(5,ZEDstate)):(0);}ZEDucharP ZEDbyteFiveSet(ZEDuchar ZEDcharacter){return(1)?(ZEDucharArraySet(5,ZEDcharacter,ZEDstate)):(0);}ZEDuchar ZEDbyteForwardCaseOneFalse(ZEDuchar ZEDbyte){return(1)?(byteForwardCaseOneFalse(ZEDbyte)):(0);}ZEDuchar ZEDbyteForwardCaseOneTrue(ZEDuchar ZEDbyte){return(1)?(byteForwardCaseOneTrue(ZEDbyte)):(0);}ZEDuchar ZEDbyteForwardCaseTwoFalseFalse(ZEDuchar ZEDbyte){return(1)?(byteForwardCaseTwoFalseFalse(ZEDbyte)):(0);}ZEDuchar ZEDbyteForwardCaseTwoFalseTrue(ZEDuchar ZEDbyte){return(1)?(byteForwardCaseTwoFalseTrue(ZEDbyte)):(0);}ZEDuchar ZEDbyteForwardCaseTwoTrueFalse(ZEDuchar ZEDbyte){return(1)?(byteForwardCaseTwoTrueFalse(ZEDbyte)):(0);}ZEDuchar ZEDbyteForwardCaseTwoTrueTrue(ZEDuchar ZEDbyte){return(1)?(byteForwardCaseTwoTrueTrue(ZEDbyte)):(0);}ZEDuchar ZEDbyteFourForward(){return(1)?(ZEDbyteTwoForward1(ZEDbyteThreeRef(),ZEDbyteFourRef(),ZEDbyteFiveRef())):(0);}ZEDuchar ZEDbyteFourRef(){return(1)?(ZEDucharArrayRef(4,ZEDstate)):(0);}ZEDucharP ZEDbyteFourSet(ZEDuchar ZEDcharacter){return(1)?(ZEDucharArraySet(4,ZEDcharacter,ZEDstate)):(0);}ZEDuchar ZEDbyteOneForward(){return(1)?(ZEDbyteOneForward1(ZEDbyteOneRef(),ZEDbyteTwoRef())):(0);}ZEDuchar ZEDbyteOneForward1(ZEDuchar ZEDone , ZEDuchar ZEDtwo){return(ZEDtwo>127)?(ZEDucharArrayRef(ZEDone+1,ZEDbyteTableForwardCaseOneTrue)):((1)?(ZEDucharArrayRef(ZEDone+1,ZEDbyteTableForwardCaseOneFalse)):(0));}ZEDuchar ZEDbyteOneRef(){return(1)?(ZEDucharArrayRef(1,ZEDstate)):(0);}ZEDucharP ZEDbyteOneSet(ZEDuchar ZEDcharacter){return(1)?(ZEDucharArraySet(1,ZEDcharacter,ZEDstate)):(0);}ZEDuchar ZEDbyteSevenForward(){return(1)?(ZEDbyteTwoForward1(ZEDbyteSixRef(),ZEDbyteSevenRef(),ZEDbyteEightRef())):(0);}ZEDuchar ZEDbyteSevenRef(){return(1)?(ZEDucharArrayRef(7,ZEDstate)):(0);}ZEDucharP ZEDbyteSevenSet(ZEDuchar ZEDcharacter){return(1)?(ZEDucharArraySet(7,ZEDcharacter,ZEDstate)):(0);}ZEDuchar ZEDbyteSixForward(){return(1)?(ZEDbyteTwoForward1(ZEDbyteFiveRef(),ZEDbyteSixRef(),ZEDbyteSevenRef())):(0);}ZEDuchar ZEDbyteSixRef(){return(1)?(ZEDucharArrayRef(6,ZEDstate)):(0);}ZEDucharP ZEDbyteSixSet(ZEDuchar ZEDcharacter){return(1)?(ZEDucharArraySet(6,ZEDcharacter,ZEDstate)):(0);}ZEDuchar ZEDbyteThreeForward(){return(1)?(ZEDbyteTwoForward1(ZEDbyteTwoRef(),ZEDbyteThreeRef(),ZEDbyteFourRef())):(0);}ZEDuchar ZEDbyteThreeRef(){return(1)?(ZEDucharArrayRef(3,ZEDstate)):(0);}ZEDucharP ZEDbyteThreeSet(ZEDuchar ZEDcharacter){return(1)?(ZEDucharArraySet(3,ZEDcharacter,ZEDstate)):(0);}ZEDuchar ZEDbyteTwoForward(){return(1)?(ZEDbyteTwoForward1(ZEDbyteOneRef(),ZEDbyteTwoRef(),ZEDbyteThreeRef())):(0);}ZEDuchar ZEDbyteTwoForward1(ZEDuchar ZEDone , ZEDuchar ZEDtwo , ZEDuchar ZEDthree){return(ZEDone%2&&ZEDthree>127)?(ZEDucharArrayRef(ZEDtwo+1,ZEDbyteTableForwardCaseTwoTrueTrue)):((ZEDthree>127)?(ZEDucharArrayRef(ZEDtwo+1,ZEDbyteTableForwardCaseTwoFalseTrue)):((ZEDone%2==1)?(ZEDucharArrayRef(ZEDtwo+1,ZEDbyteTableForwardCaseTwoTrueFalse)):((1)?(ZEDucharArrayRef(ZEDtwo+1,ZEDbyteTableForwardCaseTwoFalseFalse)):(0))));}ZEDuchar ZEDbyteTwoRef(){return(1)?(ZEDucharArrayRef(2,ZEDstate)):(0);}ZEDucharP ZEDbyteTwoSet(ZEDuchar ZEDcharacter){return(1)?(ZEDucharArraySet(2,ZEDcharacter,ZEDstate)):(0);}ZEDucharP ZEDbytesBackwardCaseOneFalse(){return(1)?(ucharArrayMap(&ZEDbyteBackwardCaseOneFalse,256,ZEDucharArrayPrepare(256,ZEDucharArrayNew(256)))):(0);}ZEDucharP ZEDbytesBackwardCaseOneTrue(){return(1)?(ucharArrayMap(&ZEDbyteBackwardCaseOneTrue,256,ZEDucharArrayPrepare(256,ZEDucharArrayNew(256)))):(0);}ZEDucharP ZEDbytesBackwardCaseTwoFalseFalse(){return(1)?(ucharArrayMap(&ZEDbyteBackwardCaseTwoFalseFalse,256,ZEDucharArrayPrepare(256,ZEDucharArrayNew(256)))):(0);}ZEDucharP ZEDbytesBackwardCaseTwoFalseTrue(){return(1)?(ucharArrayMap(&ZEDbyteBackwardCaseTwoFalseTrue,256,ZEDucharArrayPrepare(256,ZEDucharArrayNew(256)))):(0);}ZEDucharP ZEDbytesBackwardCaseTwoTrueFalse(){return(1)?(ucharArrayMap(&ZEDbyteBackwardCaseTwoTrueFalse,256,ZEDucharArrayPrepare(256,ZEDucharArrayNew(256)))):(0);}ZEDucharP ZEDbytesBackwardCaseTwoTrueTrue(){return(1)?(ucharArrayMap(&ZEDbyteBackwardCaseTwoTrueTrue,256,ZEDucharArrayPrepare(256,ZEDucharArrayNew(256)))):(0);}ZEDucharP ZEDbytesForwardCaseOneFalse(){return(1)?(ucharArrayMap(&ZEDbyteForwardCaseOneFalse,256,ZEDucharArrayPrepare(256,ZEDucharArrayNew(256)))):(0);}ZEDucharP ZEDbytesForwardCaseOneTrue(){return(1)?(ucharArrayMap(&ZEDbyteForwardCaseOneTrue,256,ZEDucharArrayPrepare(256,ZEDucharArrayNew(256)))):(0);}ZEDucharP ZEDbytesForwardCaseTwoFalseFalse(){return(1)?(ucharArrayMap(&ZEDbyteForwardCaseTwoFalseFalse,256,ZEDucharArrayPrepare(256,ZEDucharArrayNew(256)))):(0);}ZEDucharP ZEDbytesForwardCaseTwoFalseTrue(){return(1)?(ucharArrayMap(&ZEDbyteForwardCaseTwoFalseTrue,256,ZEDucharArrayPrepare(256,ZEDucharArrayNew(256)))):(0);}ZEDucharP ZEDbytesForwardCaseTwoTrueFalse(){return(1)?(ucharArrayMap(&ZEDbyteForwardCaseTwoTrueFalse,256,ZEDucharArrayPrepare(256,ZEDucharArrayNew(256)))):(0);}ZEDucharP ZEDbytesForwardCaseTwoTrueTrue(){return(1)?(ucharArrayMap(&ZEDbyteForwardCaseTwoTrueTrue,256,ZEDucharArrayPrepare(256,ZEDucharArrayNew(256)))):(0);}ZEDucharP ZEDbytesState(){return(1)?(ZEDucharArraySet(1,49,ZEDucharArraySet(2,50,ZEDucharArraySet(3,50,ZEDucharArraySet(4,55,ZEDucharArraySet(5,49,ZEDucharArraySet(6,57,ZEDucharArraySet(7,55,ZEDucharArraySet(8,54,ZEDucharArrayNew(8)))))))))):(0);}ZEDuchar ZEDucharAdd(ZEDuchar ZEDone , ZEDuchar ZEDtwo){return(1)?(ZEDone+ZEDtwo):(0);}ZEDucharP ZEDucharArrayNew(ZEDulonglong ZEDsize){return(1)?(ucharArrayNew(ZEDsize)):(0);}ZEDucharP ZEDucharArrayPrepare(ZEDulonglong ZEDsize , ZEDucharP ZEDarray){return(ZEDsize==0)?(ZEDarray):((1)?(ZEDucharArrayPrepare(ZEDsize-1,ZEDucharArraySet(ZEDsize,ZEDsize-1,ZEDarray))):(0));}ZEDuchar ZEDucharArrayRef(ZEDulonglong ZEDindex , ZEDucharP ZEDarray){return(1)?(ucharArrayRef(ZEDindex,ZEDarray)):(0);}ZEDucharP ZEDucharArraySet(ZEDulonglong ZEDindex , ZEDuchar ZEDcharacter , ZEDucharP ZEDarray){return(1)?(ucharArraySet(ZEDindex,ZEDcharacter,ZEDarray)):(0);}ZEDuchar ZEDucharShiftLeft(ZEDuchar ZEDcharacter){return(1)?(ZEDcharacter<<1):(0);}ZEDuchar ZEDucharTableBackward(ZEDuchar ZEDbyte , ZEDucharP ZEDtable){return(1)?(ZEDucharArrayRef(ZEDulonglongAdd(1,ZEDulonglongCastUchar(ZEDbyte)),ZEDtable)):(0);}ZEDulonglong ZEDulonglongAdd(ZEDulonglong ZEDone , ZEDulonglong ZEDtwo){return(1)?(ZEDone+ZEDtwo):(0);}ZEDulonglong ZEDulonglongCastUchar(ZEDuchar ZEDcharacter){return(1)?(ulonglongCastUchar(ZEDcharacter)):(0);}
 
uchar bitBack(uchar bit0 , uchar bit1 , uchar byte){return(bit0)?((bit1)?(ZEDucharTableBackward(byte,ZEDbitTableBackwardCaseTwoTrueTrue)):(ZEDucharTableBackward(byte,ZEDbitTableBackwardCaseTwoTrueFalse))):((bit1)?(ZEDucharTableBackward(byte,ZEDbitTableBackwardCaseTwoFalseTrue)):(ZEDucharTableBackward(byte,ZEDbitTableBackwardCaseTwoFalseFalse)));}
uchar bitBackwardCaseOneFalse(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsBackwardCaseOne(0,before);uchar reult=ZEDucharArrayRef(9,after);free(before);free(after);return reult;}
uchar bitBackwardCaseOneTrue(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsBackwardCaseOne(1,before);uchar reult=ZEDucharArrayRef(9,after);free(before);free(after);return reult;}
uchar bitBackwardCaseTwoFalseFalse(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsBackwardCaseTwo(0,0,before);uchar reult=ZEDucharArrayRef(9,after);free(before);free(after);return reult;}
uchar bitBackwardCaseTwoFalseTrue(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsBackwardCaseTwo(0,1,before);uchar reult=ZEDucharArrayRef(9,after);free(before);free(after);return reult;}
uchar bitBackwardCaseTwoTrueFalse(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsBackwardCaseTwo(1,0,before);uchar reult=ZEDucharArrayRef(9,after);free(before);free(after);return reult;}
uchar bitBackwardCaseTwoTrueTrue(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsBackwardCaseTwo(1,1,before);uchar reult=ZEDucharArrayRef(9,after);free(before);free(after);return reult;}
uchar byteBack(uchar bit0 , uchar bit1 , uchar byte){return(bit0)?((bit1)?(ZEDucharTableBackward(byte,ZEDbyteTableBackwardCaseTwoTrueTrue)):(ZEDucharTableBackward(byte,ZEDbyteTableBackwardCaseTwoTrueFalse))):((bit1)?(ZEDucharTableBackward(byte,ZEDbyteTableBackwardCaseTwoFalseTrue)):(ZEDucharTableBackward(byte,ZEDbyteTableBackwardCaseTwoFalseFalse)));}
uchar byteBackwardCaseOneFalse(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsBackwardCaseOne(0,before);uchar reult=ZEDbyteBits(after);free(before);free(after);return reult;}
uchar byteBackwardCaseOneTrue(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsBackwardCaseOne(1,before);uchar reult=ZEDbyteBits(after);free(before);free(after);return reult;}
uchar byteBackwardCaseTwoFalseFalse(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsBackwardCaseTwo(0,0,before);uchar reult=ZEDbyteBits(after);free(before);free(after);return reult;}
uchar byteBackwardCaseTwoFalseTrue(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsBackwardCaseTwo(0,1,before);uchar reult=ZEDbyteBits(after);free(before);free(after);return reult;}
uchar byteBackwardCaseTwoTrueFalse(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsBackwardCaseTwo(1,0,before);uchar reult=ZEDbyteBits(after);free(before);free(after);return reult;}
uchar byteBackwardCaseTwoTrueTrue(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsBackwardCaseTwo(1,1,before);uchar reult=ZEDbyteBits(after);free(before);free(after);return reult;}
uchar byteForwardCaseOneFalse(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsForwardCaseOne(0,0,before);uchar reult=ZEDbyteBits(after);free(before);free(after);return reult;}
uchar byteForwardCaseOneTrue(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsForwardCaseOne(0,1,before);uchar reult=ZEDbyteBits(after);free(before);free(after);return reult;}
uchar byteForwardCaseTwoFalseFalse(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsForwardCaseTwo(0,0,before);uchar reult=ZEDbyteBits(after);free(before);free(after);return reult;}
uchar byteForwardCaseTwoFalseTrue(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsForwardCaseTwo(0,1,before);uchar reult=ZEDbyteBits(after);free(before);free(after);return reult;}
uchar byteForwardCaseTwoTrueFalse(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsForwardCaseTwo(1,0,before);uchar reult=ZEDbyteBits(after);free(before);free(after);return reult;}
uchar byteForwardCaseTwoTrueTrue(uchar byte){ucharP before=ZEDbitsByte(byte);ucharP after=ZEDbitsForwardCaseTwo(1,1,before);uchar reult=ZEDbyteBits(after);free(before);free(after);return reult;}
ucharP ucharArrayMap(uchar (*function)(uchar),ulonglong count,ucharP array){if(count==0) return array; else return ucharArrayMap(function,count-1,ucharArraySet(count,(*function)(ucharArrayRef(count,array)),array));}
uchar lhcaBackward(){uchar bit0,bit1,bit2,bit3,bit4,bit5,bit6,bit7,bit8,byte1,byte2,byte3,byte4,byte5,byte6,byte7,byte8,reult;reult=(ZEDstate[0]>127);byte1=ZEDucharArrayRef(1+((ZEDulonglong)ZEDstate[0]),ZEDbyteTableBackwardCaseOneFalse);bit1=ZEDucharArrayRef(1+((ZEDulonglong)ZEDstate[0]),ZEDbitTableBackwardCaseOneFalse);bit0=(byte1%2);byte2=ZEDbyteBack(bit0,bit1,ZEDstate[1]);bit2=ZEDbitBack(bit0,bit1,ZEDstate[1]);bit0=(byte2%2);byte3=ZEDbyteBack(bit0,bit2,ZEDstate[2]);bit3=ZEDbitBack(bit0,bit2,ZEDstate[2]);bit0=(byte3%2);byte4=ZEDbyteBack(bit0,bit3,ZEDstate[3]);bit4=ZEDbitBack(bit0,bit3,ZEDstate[3]);bit0=(byte4%2);byte5=ZEDbyteBack(bit0,bit4,ZEDstate[4]);bit5=ZEDbitBack(bit0,bit4,ZEDstate[4]);bit0=(byte5%2);byte6=ZEDbyteBack(bit0,bit5,ZEDstate[5]);bit6=ZEDbitBack(bit0,bit5,ZEDstate[5]);bit0=(byte6%2);byte7=ZEDbyteBack(bit0,bit6,ZEDstate[6]);bit7=ZEDbitBack(bit0,bit6,ZEDstate[6]);bit0=(byte7%2);byte8=ZEDbyteBack(bit0,bit7,ZEDstate[7]);bit8=ZEDbitBack(bit0,bit7,ZEDstate[7]);if(bit8){byte1=ZEDucharArrayRef(1+((ZEDulonglong)ZEDstate[0]),ZEDbyteTableBackwardCaseOneTrue);bit1=ZEDucharArrayRef(1+((ZEDulonglong)ZEDstate[0]),ZEDbitTableBackwardCaseOneTrue);bit0=(byte1%2);byte2=ZEDbyteBack(bit0,bit1,ZEDstate[1]);bit2=ZEDbitBack(bit0,bit1,ZEDstate[1]);bit0=(byte2%2);byte3=ZEDbyteBack(bit0,bit2,ZEDstate[2]);bit3=ZEDbitBack(bit0,bit2,ZEDstate[2]);bit0=(byte3%2);byte4=ZEDbyteBack(bit0,bit3,ZEDstate[3]);bit4=ZEDbitBack(bit0,bit3,ZEDstate[3]);bit0=(byte4%2);byte5=ZEDbyteBack(bit0,bit4,ZEDstate[4]);bit5=ZEDbitBack(bit0,bit4,ZEDstate[4]);bit0=(byte5%2);byte6=ZEDbyteBack(bit0,bit5,ZEDstate[5]);bit6=ZEDbitBack(bit0,bit5,ZEDstate[5]);bit0=(byte6%2);byte7=ZEDbyteBack(bit0,bit6,ZEDstate[6]);bit7=ZEDbitBack(bit0,bit6,ZEDstate[6]);bit0=(byte7%2);byte8=ZEDbyteBack(bit0,bit7,ZEDstate[7]);bit8=ZEDbitBack(bit0,bit7,ZEDstate[7]);}ZEDstate[0]=byte1;ZEDstate[1]=byte2;ZEDstate[2]=byte3;ZEDstate[3]=byte4;ZEDstate[4]=byte5;ZEDstate[5]=byte6;ZEDstate[6]=byte7;ZEDstate[7]=byte8;return reult;}
uchar lhcaForward(){uchar one=ZEDbyteOneForward();uchar two=ZEDbyteTwoForward();uchar three=ZEDbyteThreeForward();uchar four=ZEDbyteFourForward();uchar five=ZEDbyteFiveForward();uchar six=ZEDbyteSixForward();uchar seven=ZEDbyteSevenForward();uchar eight=ZEDbyteEightForward();ZEDbyteOneSet(one);ZEDbyteTwoSet(two);ZEDbyteThreeSet(three);ZEDbyteFourSet(four);ZEDbyteFiveSet(five);ZEDbyteSixSet(six);ZEDbyteSevenSet(seven);ZEDbyteEightSet(eight);return one>127;}
uchar lhcaInitialize(){ZEDbitTableBackwardCaseOneFalse=ZEDbitsBackwardCaseOneFalse();ZEDbitTableBackwardCaseOneTrue=ZEDbitsBackwardCaseOneTrue();ZEDbitTableBackwardCaseTwoFalseFalse=ZEDbitsBackwardCaseTwoFalseFalse();ZEDbitTableBackwardCaseTwoFalseTrue=ZEDbitsBackwardCaseTwoFalseTrue();ZEDbitTableBackwardCaseTwoTrueFalse=ZEDbitsBackwardCaseTwoTrueFalse();ZEDbitTableBackwardCaseTwoTrueTrue=ZEDbitsBackwardCaseTwoTrueTrue();ZEDbyteTableBackwardCaseOneFalse=ZEDbytesBackwardCaseOneFalse();ZEDbyteTableBackwardCaseOneTrue=ZEDbytesBackwardCaseOneTrue();ZEDbyteTableBackwardCaseTwoFalseFalse=ZEDbytesBackwardCaseTwoFalseFalse();ZEDbyteTableBackwardCaseTwoFalseTrue=ZEDbytesBackwardCaseTwoFalseTrue();ZEDbyteTableBackwardCaseTwoTrueFalse=ZEDbytesBackwardCaseTwoTrueFalse();ZEDbyteTableBackwardCaseTwoTrueTrue=ZEDbytesBackwardCaseTwoTrueTrue();ZEDbyteTableForwardCaseOneFalse=ZEDbytesForwardCaseOneFalse();ZEDbyteTableForwardCaseOneTrue=ZEDbytesForwardCaseOneTrue();ZEDbyteTableForwardCaseTwoFalseFalse=ZEDbytesForwardCaseTwoFalseFalse();ZEDbyteTableForwardCaseTwoFalseTrue=ZEDbytesForwardCaseTwoFalseTrue();ZEDbyteTableForwardCaseTwoTrueFalse=ZEDbytesForwardCaseTwoTrueFalse();ZEDbyteTableForwardCaseTwoTrueTrue=ZEDbytesForwardCaseTwoTrueTrue();ZEDstate=ZEDbytesState();return 0;}
uchar lhcaOne(){return ZEDstate[0];}
uchar lhcaTwo(){return ZEDstate[1];}
uchar lhcaThree(){return ZEDstate[2];}
uchar lhcaFour(){return ZEDstate[3];}
uchar lhcaFive(){return ZEDstate[4];}
uchar lhcaSix(){return ZEDstate[5];}
uchar lhcaSeven(){return ZEDstate[6];}
uchar lhcaEight(){return ZEDstate[7];}
uchar lhcaSeed(uchar one,uchar two,uchar three,uchar four,uchar five,uchar six,uchar seven,uchar eight){ZEDstate[0]=one;ZEDstate[1]=two;ZEDstate[2]=three;ZEDstate[3]=four;ZEDstate[4]=five;ZEDstate[5]=six;ZEDstate[6]=seven;ZEDstate[7]=eight;return 0;}
ulonglong ulonglongCastUchar(uchar character){return(ZEDulonglong)character;}
uchar test1(uint count){if(count==0) {return(0);} else{printf("%d",lhcaForward());return test1(count-1);}}
uchar test2(uint count){if(count==0) {return(0);} else{printf("%d",lhcaBackward());return test2(count-1);}}
-(uchar) forward{return lhcaForward();}
-(uchar) backward{return lhcaBackward();}
-(uchar) initialize{return lhcaInitialize();}
-(uchar) one{return lhcaOne();}
-(uchar) two{return lhcaTwo();}
-(uchar) three{return lhcaThree();}
-(uchar) four{return lhcaFour();}
-(uchar) five{return lhcaFive();}
-(uchar) six{return lhcaSix();}
-(uchar) seven{return lhcaSeven();}
-(uchar) eight{return lhcaEight();}
-(uchar) seed: (uchar) one and: (uchar) two and: (uchar) three and: (uchar) four and: (uchar) five and: (uchar) six and: (uchar) seven and: (uchar) eight{return lhcaSeed(one,two,three,four,five,six,seven,eight);}
-(uchar) test{test1(1024);printf("\n\n\n");test2(1024);return 0;}
@end
 
int main()
{
	LHCA* lhca=[LHCA new];
    [lhca initialize];
    [lhca seed: '0' and: '4' and: '2' and: '5' and: '2' and: '0' and: '1' and: '4'];
    [lhca test];
	return 0;
}