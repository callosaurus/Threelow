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
    if (!self.isHeld) {
    _currentDiceValue = arc4random_uniform(6)+1;
    }
}

-(void)print {
    if (!self.isHeld) {
        switch (self.currentDiceValue) {
            case 1:
                NSLog(@"⚀");
                break;
            case 2:
                NSLog(@"⚁");
                break;
            case 3:
                NSLog(@"⚂");
                break;
            case 4:
                NSLog(@"⚃");
                break;
            case 5:
                NSLog(@"⚄");
                break;
            case 6:
                NSLog(@"⚅");
                break;
        }
    }
    if (self.isHeld) {
        switch (self.currentDiceValue) {
            case 1:
                NSLog(@"[⚀]");
                break;
            case 2:
                NSLog(@"[⚁]");
                break;
            case 3:
                NSLog(@"[⚂]");
                break;
            case 4:
                NSLog(@"[⚃]");
                break;
            case 5:
                NSLog(@"[⚄]");
                break;
            case 6:
                NSLog(@"[⚅]");
                break;
        }
    }
}
@end
