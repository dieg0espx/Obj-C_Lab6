//
//  main.m
//  Lab6
//
//  Created by Diego Espinosa on 2020-04-08.
//  Copyright © 2020 Diego Espinosa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "roll.h"
#import "hold.h"

NSString* getUserInput(){
    int maxLenght = 255;
    char inputChars[maxLenght];
    char *result = fgets(inputChars, maxLenght, stdin);
    if(result){
        NSString *theString = [[NSString stringWithUTF8String:inputChars]stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        return theString;
    }
    return @"";
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *numbers = [[NSMutableArray alloc] init];
        NSMutableArray *numbershold = [[NSMutableArray alloc] init];
        int sum = 0;
        for (int i= 0; i < 5; i++){
            [numbers addObject:@"0"];
        }
        roll *r = [[roll alloc] init];
        
        while (true){
            
            
            //hold *h =  [[hold alloc]init];
            //h.myNum1 = [numbershold objectAtIndex:0];
            //h.myNum2 = [numbershold objectAtIndex:1];
            //h.myNum3 = [numbershold objectAtIndex:2];
            //h.myNum4 = [numbershold objectAtIndex:3];
            //h.myNum5 = [numbershold objectAtIndex:4];
            
            
            NSLog(@"'roll' to roll the dice");
            NSLog(@"'hold' to hold a dice");
            NSLog(@"'reset' to un-hold all dice");
            NSLog(@"'show' to see current dice");
            NSLog(@"'done' to end the game");
            NSLog(@"'display' to show current stats");
            
            
            NSString *user_input = getUserInput();
            
            if ([user_input isEqualToString:@"roll"]){
                for (int i= 0; i < 5; i++){
                    if([[numbers objectAtIndex:i] isEqual:@"0"] ){
                        int a = [r rollingDice:6];
                        a = a +1;
                        if (a == 1){[numbers insertObject:@"1" atIndex:i];}
                        else if (a == 2){[numbers insertObject:@"2" atIndex:i];}
                        else if (a == 3){[numbers insertObject:@"3" atIndex:i];}
                        else if (a == 4){[numbers insertObject:@"4" atIndex:i];}
                        else if (a == 5){[numbers insertObject:@"5" atIndex:i];}
                        else if (a == 6){[numbers insertObject:@"6" atIndex:i];}
                    }
                }
                NSLog(@"-----------------");
                NSLog(@"--Current Dice --");
                NSLog(@"   %@ %@ %@ %@ %@", numbers[0], numbers[1], numbers[2], numbers[3], numbers[4]);
                NSLog(@"-- Total Score --");
                NSLog(@"%s%i","Score: ",sum);
                NSLog(@"-----------------");
            }
            
            if ([user_input isEqualToString:@"show"]){
                NSLog(@"-----------------");
                NSLog(@"--Current Dice --");
                NSLog(@"   %@ %@ %@ %@ %@", numbers[0], numbers[1], numbers[2], numbers[3], numbers[4]);
                NSLog(@"-- Total Score --");
                NSLog(@"%s%i","Score: ",sum);
                NSLog(@"-----------------");
            }
            
            if ([user_input isEqualToString:@"hold"]){
                NSString *num = getUserInput();
                if ([num isEqualToString:@"1"]){[numbershold addObject:numbers[0]];}
                if ([num isEqualToString:@"2"]){[numbershold addObject:numbers[1]];}
                if ([num isEqualToString:@"3"]){[numbershold addObject:numbers[2]];}
                if ([num isEqualToString:@"4"]){[numbershold addObject:numbers[3]];}
                if ([num isEqualToString:@"5"]){[numbershold addObject:numbers[4]];}
                for(int i = 0; i < 6 ; i ++){
                    if(![[numbershold objectAtIndex:i] isEqual:@"0"] ){
                        [numbers insertObject:[numbershold objectAtIndex:i] atIndex:i];
                        NSLog(@"%s%@","Holded:",numbershold);
                        break;
                    }else{
                        [numbers insertObject:@"0" atIndex:i];
                    }
                }
            }
            
            for (NSNumber * n in numbershold) {
                sum += [n intValue];
            }
        }
    }
    return 0;
}
