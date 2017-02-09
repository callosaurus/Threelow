//
//  Dice.m
//  Threelow
//
//  Created by Callum Davies on 2017-02-08.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import "Dice.h"

@implementation Dice

-(void)randomizeValue {
    _currentDiceFace = arc4random_uniform(5)+1;
}

@end
