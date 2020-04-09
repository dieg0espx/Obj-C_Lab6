//
//  roll.m
//  Lab6
//
//  Created by Diego Espinosa on 2020-04-08.
//  Copyright © 2020 Diego Espinosa. All rights reserved.
//

#import "roll.h"

@interface roll() {
}
@end
@implementation roll

- (instancetype)initWithMyNum:(int)myNum{
    self = [super init];
    if (self) {
        _myNum = myNum;
    }
    return self;
}


- (int) rollingDice:(int) num {
    int rn = 0+random()%num;
    return (rn);
}


@end
