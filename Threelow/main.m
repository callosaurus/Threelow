//
//  main.m
//  Threelow
//
//  Created by Callum Davies on 2017-02-08.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Dice *dice1 = [[Dice alloc] init];
        [dice1 randomizeValue];
        NSLog(@"%d", dice1.currentDiceFace);
        
        Dice *dice2 = [[Dice alloc] init];
        [dice2 randomizeValue];
        NSLog(@"%d", dice2.currentDiceFace);
        
        Dice *dice3 = [[Dice alloc] init];
        [dice3 randomizeValue];
        NSLog(@"%d", dice3.currentDiceFace);
        
        Dice *dice4 = [[Dice alloc] init];
        [dice4 randomizeValue];
        NSLog(@"%d", dice4.currentDiceFace);
        
        Dice *dice5 = [[Dice alloc] init];
        [dice5 randomizeValue];
        NSLog(@"%d", dice5.currentDiceFace);
        
    }
    return 0;
}
