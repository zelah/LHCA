#include <stdio.h>
#include <stdlib.h>
#include <Foundation/Foundation.h>

#include "MACRO.h"
typedef unsigned char uchar;
typedef unsigned int uint;
typedef unsigned long long ulonglong;
DEFINE_ZED_TYPE(uchar)
DEFINE_ZED_TYPE(uint)
DEFINE_ZED_TYPE(ulonglong)

#include "LHCA.h"

static void test2(LHCA* lhca,ulonglong count){printf("%d",[lhca backward]);if(count==1){printf("\n");}else{test2(lhca,count-1);}}

static void test1(LHCA* lhca,ulonglong count,ulonglong progress){if(progress==0){printf("\n\n");test2(lhca,count);}else{printf("%d",[lhca forward]);test1(lhca,count,progress-1);}}

static void test(LHCA* lhca){test1(lhca,128*61,128*61);}

int main()
{
    LHCA* lhca1=[LHCA new];
    LHCA* lhca2=[LHCA new];
    [lhca1 initialize];
    [lhca2 initialize];
    [lhca1 seed:'0':'5':'2':'9':'2':'0':'1':'4'];
    test(lhca1);
    printf("\n\n");
    test(lhca2);
    
    return 0;
}
