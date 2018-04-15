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
