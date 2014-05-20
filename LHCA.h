#include "MACRO.h"

typedef unsigned char uchar;
typedef unsigned int uint;
typedef unsigned long long ulonglong;
DEFINE_ZED_TYPE(uchar)
DEFINE_ZED_TYPE(uint)
DEFINE_ZED_TYPE(ulonglong)

@interface LHCA : NSObject
{ucharP state;}
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
-(uchar) seed: (uchar) one : (uchar) two : (uchar) three : (uchar) four : (uchar) five : (uchar) six : (uchar) seven : (uchar) eight;
@end
