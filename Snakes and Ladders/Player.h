//
//  Player.h
//  Snakes and Ladders
//
//  Created by Colin on 2018-04-15.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property NSInteger currentSquare;

- (void)roll;

@end
