//
//  hold.m
//  Lab6
//
//  Created by Diego Espinosa on 2020-04-08.
//  Copyright © 2020 Diego Espinosa. All rights reserved.
//

#import "hold.h"

@interface hold() {}
@end
@implementation hold
- (instancetype)initWithMyNum1:(int)myNum1 andMyNum2:(int)myNum2 andMyNum3:(int)myNum3 andMyNum4:(int)myNum4 andMyNum5:(int)myNum5{
    self = [super init];
    if (self) {
        _myNum1 = myNum1;
        _myNum2 = myNum2;
        _myNum3 = myNum3;
        _myNum4 = myNum4;
        _myNum5 = myNum5;
    }
    return self;
}




@end
