//
//  GameController.h
//  Threelow
//
//  Created by Callum Davies on 2017-02-08.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property NSArray *diceArray;
@property NSMutableSet *heldDice;

-(instancetype)initWithDice;
-(void)holdDie:(Dice *)dice;
-(void)reset;
-(void)roll;
-(void)printScore;

@end
