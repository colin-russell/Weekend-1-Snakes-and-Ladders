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
        _gameLogic = @{@4: @14, @9: @31, @17: @7, @20: @38, @28: @84, @40: @59, @51: @67, @63: @81, @64: @60, @89: @26, @95: @73, @99: @78};
    }
    return self;
}

- (void)roll {
    NSInteger randomDieValue = arc4random_uniform(6)+1;
    self.currentSquare+=randomDieValue;
    NSLog(@"You rolled a: %lu", randomDieValue);
    NSLog(@"You are now on square: %lu", self.currentSquare);
}

@end
