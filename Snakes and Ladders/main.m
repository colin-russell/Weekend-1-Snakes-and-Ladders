//
//  main.m
//  Snakes and Ladders
//
//  Created by Colin on 2018-04-15.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        Player *player = [Player new];
        
        NSLog(@"WELCOME TO SNAKES AND LADDERS! \nType \"roll\" or \"r\" to roll the die:");
        
        
        while (gameOn) {
            
            char str[100];
            fgets (str, 100, stdin);
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if ([inputString containsString:@"roll"] | [inputString containsString:@"r"]) {
                [player roll];
            }
            
            
        }
        
        
    }
    return 0;
}
