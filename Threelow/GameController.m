//
//  GameController.m
//  Threelow
//
//  Created by Callum Davies on 2017-02-08.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (instancetype)initWithDice
{
    self = [super init];
    if (self) {
        
        Dice *dice1 = [[Dice alloc] init];
        Dice *dice2 = [[Dice alloc] init];
        Dice *dice3 = [[Dice alloc] init];
        Dice *dice4 = [[Dice alloc] init];
        Dice *dice5 = [[Dice alloc] init];
        
        _diceArray = @[dice1, dice2, dice3, dice4, dice5];
    }
    return self;
}

-(void) reset {
    for (Dice *dice in self.diceArray) {
        dice.isHeld = NO;
    }
    [self roll];
    [self printScore];
}

-(void) roll {
    for (Dice *dice in self.diceArray) {
        [dice randomizeValue];
    }
    
    for (Dice *dice in self.diceArray) {
        [dice print];
    }
    [self printScore];
}

-(void)holdDie:(Dice *)dice {
    dice.isHeld = !dice.isHeld;
    for (Dice *dice in self.diceArray) {
        [dice print];
    }
    [self printScore];
}

-(void)printScore {
    int score = 0;
    for (Dice *dice in self.diceArray) {
        if (dice.isHeld) {
            if (dice.currentDiceValue != 3) {
                score = score + dice.currentDiceValue;
            }
        }
    }
    NSLog(@"Current Score: %i", score);
}


@end
