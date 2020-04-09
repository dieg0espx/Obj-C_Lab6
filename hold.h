//
//  hold.h
//  Lab6
//
//  Created by Diego Espinosa on 2020-04-08.
//  Copyright © 2020 Diego Espinosa. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface hold : NSObject

@property (nonatomic, assign) int myNum1;
@property (nonatomic, assign) int myNum2;
@property (nonatomic, assign) int myNum3;
@property (nonatomic, assign) int myNum4;
@property (nonatomic, assign) int myNum5;

- (instancetype)initWithMyNum1:(int)myNum1 andMyNum2:(int)myNum2 andMyNum3:(int)myNum3 andMyNum4:(int)myNum4 andMyNum5:(int)myNum5;

@end

