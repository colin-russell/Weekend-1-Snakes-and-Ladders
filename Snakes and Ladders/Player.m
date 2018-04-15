//
//  Player.m
//  Snakes and Ladders
//
//  Created by Colin on 2018-04-15.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = 0;
        _gameLogic = [NSDictionary dictionaryWithObjectsAndKeys:
                      @14, @"4",
                      @31, @"9",
                      @7, @"17",
                      @38, @"20",
                      @84, @"28",
                      @59, @"40",
                      @67, @"51",
                      @81, @"63",
                      @60, @"64",
                      @26, @"89",
                      @73, @"95",
                      @78, @"99",
                      nil];
    }
    return self;
}

- (void)roll {
    NSInteger randomDieValue = arc4random_uniform(6)+1;
    NSLog(@"You rolled a: %lu", randomDieValue);
    self.currentSquare+=randomDieValue;
    NSString *current = [NSString stringWithFormat:@"%ld",(long)self.currentSquare];
    
    if ([self.gameLogic objectForKey:current]){
        if ([[self.gameLogic valueForKey:current] integerValue] < self.currentSquare) {
            NSLog(@"Oh no, you landed on a snake!");
            self.currentSquare = [[self.gameLogic valueForKey:current] intValue];
            if(self.currentSquare < 100)NSLog(@"You slid back to square: %lu", self.currentSquare);
            
        }
        else {
            NSLog(@"Yay, you landed on a ladder!");
            self.currentSquare = [[self.gameLogic valueForKey:current] integerValue];
            if (self.currentSquare < 100)NSLog(@"You jumped to square: %lu", self.currentSquare);
        }
    }
    else {
        NSLog(@"You landed on square: %lu", self.currentSquare);
    }
    
    // check for a win
    if (self.currentSquare == 100){
        NSLog(@"You won the game!!");
    }
    else if (self.currentSquare > 100) {
        NSLog(@"You rolled past 100, go back %lu spaces to %lu", self.currentSquare-100, 100-(self.currentSquare-100));
        self.currentSquare = 100-(self.currentSquare-100);
    }
    
    
}

@end
