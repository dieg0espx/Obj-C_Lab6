//
//  roll.h
//  Lab6
//
//  Created by Diego Espinosa on 2020-04-08.
//  Copyright © 2020 Diego Espinosa. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface roll : NSObject
@property (nonatomic, assign) int myNum;

- (instancetype)initWithMyNum:(int) myNum;
- (int) rollingDice:(int) num;

@end


