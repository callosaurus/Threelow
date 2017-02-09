//
//  main.m
//  Threelow
//
//  Created by Callum Davies on 2017-02-08.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "Gamecontroller.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL keepRolling = YES;
        
        GameController *controller = [[GameController alloc] initWithDice];
        
        while (keepRolling) {
            
            NSLog(@"Welcome to Threelow, enter 'roll' or 'hold#' or 'quit'");
            InputHandler *inputter = [[InputHandler alloc] init];
            NSString *trimmedString = [inputter getString];
            
            if ([trimmedString isEqualToString:@"roll"]) {
                
                [controller roll];
                
                
            } else if ([trimmedString isEqualToString:@"hold1"]) {
                
                [controller holdDie:[controller.diceArray objectAtIndex:0]];
                
                
            } else if ([trimmedString isEqualToString:@"hold2"]) {
                
                [controller holdDie:[controller.diceArray objectAtIndex:1]];
                
            } else if ([trimmedString isEqualToString:@"hold3"]) {
                
                [controller holdDie:[controller.diceArray objectAtIndex:2]];
                
            } else if ([trimmedString isEqualToString:@"hold4"]) {
                
                [controller holdDie:[controller.diceArray objectAtIndex:3]];
                
            } else if ([trimmedString isEqualToString:@"hold5"]) {
                
                [controller holdDie:[controller.diceArray objectAtIndex:4]];
                
            } else if ([trimmedString isEqualToString:@"quit"]) {
                
                NSLog(@"TOODLES!");
                keepRolling = NO;
                break;
                
            } else {
                
                NSLog(@"You didn't enter one of those three");
                
            }
        }
        
    }
    return 0;
}
