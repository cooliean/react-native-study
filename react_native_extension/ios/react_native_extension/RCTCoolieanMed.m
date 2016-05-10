//
//  CoolieanMed.m
//  react_native_extension
//
//  Created by iCooliean on 16/5/10.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import "RCTCoolieanMed.h"
#import "RCTLog.h"
@implementation RCTCoolieanMed
@synthesize bridge = _bridge;

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(addEvent:(NSString *)name callBack:(RCTResponseSenderBlock)callBack )
{
  RCTLogInfo(@"RCTCoolieanMed %@", name);
  callBack(@[name]);
}
@end
