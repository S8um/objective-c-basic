//
//  Operation.m
//  Lesson_06
//
//  Created by admin on 22.02.2021.
//

#import "Operation.h"

@implementation Operation

- (void)start {
    NSLog(@"OPERATION START");
}

- (void)main {
    NSLog(@"RESULT");
}

- (BOOL)isCancelled {
    NSLog(@"isCancelled");
    return [super isCancelled];
}

- (BOOL)isFinished {
    NSLog(@"isFinished");
    return [super isFinished];
}

-(BOOL)isReady {
    NSLog(@"isReady");
    return [super isReady];
}

@end
