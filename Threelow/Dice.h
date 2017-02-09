//
//  Dice.h
//  Threelow
//
//  Created by Callum Davies on 2017-02-08.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property int currentDiceValue;
@property BOOL isHeld;

-(void)randomizeValue;
-(void)print;

@end
